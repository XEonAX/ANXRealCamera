package androidx.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.b;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.b;
import androidx.fragment.app.c;
import androidx.preference.DialogPreference;

/* compiled from: PreferenceDialogFragmentCompat */
public abstract class f extends b implements DialogInterface.OnClickListener {
    private DialogPreference ae;
    private CharSequence af;
    private CharSequence ag;
    private CharSequence ah;
    private CharSequence ai;
    private int aj;
    private BitmapDrawable ak;
    private int al;

    private void a(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        Fragment l = l();
        if (l instanceof DialogPreference.a) {
            DialogPreference.a aVar = (DialogPreference.a) l;
            String string = j().getString("key");
            if (bundle == null) {
                this.ae = (DialogPreference) aVar.a(string);
                this.af = this.ae.a();
                this.ag = this.ae.d();
                this.ah = this.ae.e();
                this.ai = this.ae.b();
                this.aj = this.ae.f();
                Drawable c = this.ae.c();
                if (c == null || (c instanceof BitmapDrawable)) {
                    this.ak = (BitmapDrawable) c;
                    return;
                }
                Bitmap createBitmap = Bitmap.createBitmap(c.getIntrinsicWidth(), c.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                c.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                c.draw(canvas);
                this.ak = new BitmapDrawable(r(), createBitmap);
                return;
            }
            this.af = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.ag = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.ah = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.ai = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.aj = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.ak = new BitmapDrawable(r(), bitmap);
                return;
            }
            return;
        }
        throw new IllegalStateException("Target fragment must implement TargetFragment interface");
    }

    /* access modifiers changed from: protected */
    public void a(b.a aVar) {
    }

    /* access modifiers changed from: protected */
    public boolean am() {
        return false;
    }

    public DialogPreference an() {
        if (this.ae == null) {
            this.ae = (DialogPreference) ((DialogPreference.a) l()).a(j().getString("key"));
        }
        return this.ae;
    }

    /* access modifiers changed from: protected */
    public View b(Context context) {
        int i = this.aj;
        if (i == 0) {
            return null;
        }
        return LayoutInflater.from(context).inflate(i, (ViewGroup) null);
    }

    /* access modifiers changed from: protected */
    public void b(View view) {
        View findViewById = view.findViewById(16908299);
        if (findViewById != null) {
            CharSequence charSequence = this.ai;
            int i = 8;
            if (!TextUtils.isEmpty(charSequence)) {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i = 0;
            }
            if (findViewById.getVisibility() != i) {
                findViewById.setVisibility(i);
            }
        }
    }

    public Dialog c(Bundle bundle) {
        c o = o();
        this.al = -2;
        b.a b2 = new b.a(o).a(this.af).a((Drawable) this.ak).a(this.ag, (DialogInterface.OnClickListener) this).b(this.ah, this);
        View b3 = b((Context) o);
        if (b3 != null) {
            b(b3);
            b2.b(b3);
        } else {
            b2.b(this.ai);
        }
        a(b2);
        androidx.appcompat.app.b b4 = b2.b();
        if (am()) {
            a((Dialog) b4);
        }
        return b4;
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.af);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.ag);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.ah);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.ai);
        bundle.putInt("PreferenceDialogFragment.layout", this.aj);
        BitmapDrawable bitmapDrawable = this.ak;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    public abstract void i(boolean z);

    public void onClick(DialogInterface dialogInterface, int i) {
        this.al = i;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        i(this.al == -1);
    }
}
