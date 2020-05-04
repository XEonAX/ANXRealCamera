package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;

/* compiled from: DialogFragment */
public class b extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    int f677a = 0;
    private Handler ae;
    private Runnable af = new Runnable() {
        public void run() {
            if (b.this.f != null) {
                b bVar = b.this;
                bVar.onDismiss(bVar.f);
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    int f678b = 0;
    boolean c = true;
    boolean d = true;
    int e = -1;
    Dialog f;
    boolean g;
    boolean h;
    boolean i;

    public int a() {
        return this.f678b;
    }

    public void a(Dialog dialog, int i2) {
        if (!(i2 == 1 || i2 == 2)) {
            if (i2 == 3) {
                dialog.getWindow().addFlags(24);
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }

    public void a(Context context) {
        super.a(context);
        if (!this.i) {
            this.h = false;
        }
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        this.ae = new Handler();
        this.d = this.F == 0;
        if (bundle != null) {
            this.f677a = bundle.getInt("android:style", 0);
            this.f678b = bundle.getInt("android:theme", 0);
            this.c = bundle.getBoolean("android:cancelable", true);
            this.d = bundle.getBoolean("android:showsDialog", this.d);
            this.e = bundle.getInt("android:backStackId", -1);
        }
    }

    public void a(h hVar, String str) {
        this.h = false;
        this.i = true;
        k a2 = hVar.a();
        a2.a((Fragment) this, str);
        a2.b();
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z, boolean z2) {
        if (!this.h) {
            this.h = true;
            this.i = false;
            Dialog dialog = this.f;
            if (dialog != null) {
                dialog.setOnDismissListener((DialogInterface.OnDismissListener) null);
                this.f.dismiss();
                if (!z2) {
                    if (Looper.myLooper() == this.ae.getLooper()) {
                        onDismiss(this.f);
                    } else {
                        this.ae.post(this.af);
                    }
                }
            }
            this.g = true;
            if (this.e >= 0) {
                t().a(this.e, 1);
                this.e = -1;
                return;
            }
            k a2 = t().a();
            a2.a((Fragment) this);
            if (z) {
                a2.c();
            } else {
                a2.b();
            }
        }
    }

    public LayoutInflater b(Bundle bundle) {
        if (!this.d) {
            return super.b(bundle);
        }
        this.f = c(bundle);
        Dialog dialog = this.f;
        if (dialog == null) {
            return (LayoutInflater) this.B.l().getSystemService("layout_inflater");
        }
        a(dialog, this.f677a);
        return (LayoutInflater) this.f.getContext().getSystemService("layout_inflater");
    }

    public Dialog c(Bundle bundle) {
        return new Dialog(n(), a());
    }

    public void d() {
        super.d();
        if (!this.i && !this.h) {
            this.h = true;
        }
    }

    public void d(Bundle bundle) {
        super.d(bundle);
        if (this.d) {
            View A = A();
            if (A != null) {
                if (A.getParent() == null) {
                    this.f.setContentView(A);
                } else {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
            }
            c o = o();
            if (o != null) {
                this.f.setOwnerActivity(o);
            }
            this.f.setCancelable(this.c);
            this.f.setOnCancelListener(this);
            this.f.setOnDismissListener(this);
            if (bundle != null) {
                Bundle bundle2 = bundle.getBundle("android:savedDialogState");
                if (bundle2 != null) {
                    this.f.onRestoreInstanceState(bundle2);
                }
            }
        }
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        Dialog dialog = this.f;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            if (onSaveInstanceState != null) {
                bundle.putBundle("android:savedDialogState", onSaveInstanceState);
            }
        }
        int i2 = this.f677a;
        if (i2 != 0) {
            bundle.putInt("android:style", i2);
        }
        int i3 = this.f678b;
        if (i3 != 0) {
            bundle.putInt("android:theme", i3);
        }
        boolean z = this.c;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.d;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i4 = this.e;
        if (i4 != -1) {
            bundle.putInt("android:backStackId", i4);
        }
    }

    public void f() {
        super.f();
        Dialog dialog = this.f;
        if (dialog != null) {
            this.g = false;
            dialog.show();
        }
    }

    public void g() {
        super.g();
        Dialog dialog = this.f;
        if (dialog != null) {
            dialog.hide();
        }
    }

    public void h() {
        super.h();
        Dialog dialog = this.f;
        if (dialog != null) {
            this.g = true;
            dialog.setOnDismissListener((DialogInterface.OnDismissListener) null);
            this.f.dismiss();
            if (!this.h) {
                onDismiss(this.f);
            }
            this.f = null;
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.g) {
            a(true, true);
        }
    }
}
