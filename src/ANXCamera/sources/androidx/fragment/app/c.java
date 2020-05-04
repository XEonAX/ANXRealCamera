package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.b;
import androidx.activity.d;
import androidx.b.h;
import androidx.core.app.a;
import androidx.lifecycle.e;
import androidx.lifecycle.i;
import androidx.lifecycle.s;
import androidx.lifecycle.t;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: FragmentActivity */
public class c extends b {

    /* renamed from: a  reason: collision with root package name */
    final e f680a = e.a((g<?>) new a());

    /* renamed from: b  reason: collision with root package name */
    final i f681b = new i(this);
    boolean c;
    boolean d;
    boolean e = true;
    boolean f;
    boolean g;
    int h;
    h<String> i;

    /* compiled from: FragmentActivity */
    class a extends g<c> implements d, t {
        public a() {
            super(c.this);
        }

        public s O_() {
            return c.this.O_();
        }

        public View a(int i) {
            return c.this.findViewById(i);
        }

        public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            c.this.a(fragment, intent, i, bundle);
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            c.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        public boolean a() {
            Window window = c.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        public boolean a(Fragment fragment) {
            return !c.this.isFinishing();
        }

        public e b() {
            return c.this.f681b;
        }

        public void b(Fragment fragment) {
            c.this.a(fragment);
        }

        public OnBackPressedDispatcher d() {
            return c.this.d();
        }

        public LayoutInflater e() {
            return c.this.getLayoutInflater().cloneInContext(c.this);
        }

        /* renamed from: f */
        public c j() {
            return c.this;
        }

        public void g() {
            c.this.g();
        }

        public boolean h() {
            return c.this.getWindow() != null;
        }

        public int i() {
            Window window = c.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }
    }

    private static boolean a(h hVar, e.b bVar) {
        boolean z = false;
        for (Fragment next : hVar.d()) {
            if (next != null) {
                if (next.b().a().isAtLeast(e.b.STARTED)) {
                    next.aa.b(bVar);
                    z = true;
                }
                if (next.q() != null) {
                    z |= a(next.u(), bVar);
                }
            }
        }
        return z;
    }

    private int b(Fragment fragment) {
        if (this.i.b() < 65534) {
            while (this.i.e(this.h) >= 0) {
                this.h = (this.h + 1) % 65534;
            }
            int i2 = this.h;
            this.i.b(i2, fragment.o);
            this.h = (this.h + 1) % 65534;
            return i2;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    static void b(int i2) {
        if ((i2 & -65536) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    private void f() {
        do {
        } while (a(m(), e.b.CREATED));
    }

    /* access modifiers changed from: package-private */
    public final View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f680a.a(view, str, context, attributeSet);
    }

    public void a(Fragment fragment) {
    }

    public void a(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        this.g = true;
        if (i2 == -1) {
            try {
                androidx.core.app.a.a(this, intent, -1, bundle);
            } finally {
                this.g = false;
            }
        } else {
            b(i2);
            androidx.core.app.a.a(this, intent, ((b(fragment) + 1) << 16) + (i2 & 65535), bundle);
            this.g = false;
        }
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public boolean a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.c);
        printWriter.print(" mResumed=");
        printWriter.print(this.d);
        printWriter.print(" mStopped=");
        printWriter.print(this.e);
        if (getApplication() != null) {
            androidx.loader.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f680a.a().a(str, fileDescriptor, printWriter, strArr);
    }

    @Deprecated
    public void g() {
        invalidateOptionsMenu();
    }

    /* access modifiers changed from: protected */
    public void l() {
        this.f681b.a(e.a.ON_RESUME);
        this.f680a.g();
    }

    public h m() {
        return this.f680a.a();
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i2, int i3, Intent intent) {
        this.f680a.b();
        int i4 = i2 >> 16;
        if (i4 != 0) {
            int i5 = i4 - 1;
            String a2 = this.i.a(i5);
            this.i.b(i5);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.f680a.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
                return;
            }
            a3.a(i2 & 65535, i3, intent);
            return;
        }
        a.C0011a a4 = androidx.core.app.a.a();
        if (a4 == null || !a4.a(this, i2, i3, intent)) {
            super.onActivityResult(i2, i3, intent);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f680a.b();
        this.f680a.a(configuration);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        this.f680a.a((Fragment) null);
        if (bundle != null) {
            this.f680a.a(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.h = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.i = new h<>(intArray.length);
                    for (int i2 = 0; i2 < intArray.length; i2++) {
                        this.i.b(intArray[i2], stringArray[i2]);
                    }
                }
            }
        }
        if (this.i == null) {
            this.i = new h<>();
            this.h = 0;
        }
        super.onCreate(bundle);
        this.f681b.a(e.a.ON_CREATE);
        this.f680a.d();
    }

    public boolean onCreatePanelMenu(int i2, Menu menu) {
        return i2 == 0 ? super.onCreatePanelMenu(i2, menu) | this.f680a.a(menu, getMenuInflater()) : super.onCreatePanelMenu(i2, menu);
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View a2 = a(view, str, context, attributeSet);
        return a2 == null ? super.onCreateView(view, str, context, attributeSet) : a2;
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a2 = a((View) null, str, context, attributeSet);
        return a2 == null ? super.onCreateView(str, context, attributeSet) : a2;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.f680a.j();
        this.f681b.a(e.a.ON_DESTROY);
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.f680a.k();
    }

    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 == 0) {
            return this.f680a.a(menuItem);
        }
        if (i2 != 6) {
            return false;
        }
        return this.f680a.b(menuItem);
    }

    public void onMultiWindowModeChanged(boolean z) {
        this.f680a.a(z);
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.f680a.b();
    }

    public void onPanelClosed(int i2, Menu menu) {
        if (i2 == 0) {
            this.f680a.b(menu);
        }
        super.onPanelClosed(i2, menu);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.d = false;
        this.f680a.h();
        this.f681b.a(e.a.ON_PAUSE);
    }

    public void onPictureInPictureModeChanged(boolean z) {
        this.f680a.b(z);
    }

    /* access modifiers changed from: protected */
    public void onPostResume() {
        super.onPostResume();
        l();
    }

    public boolean onPreparePanel(int i2, View view, Menu menu) {
        return i2 == 0 ? a(view, menu) | this.f680a.a(menu) : super.onPreparePanel(i2, view, menu);
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        this.f680a.b();
        int i3 = (i2 >> 16) & 65535;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.i.a(i4);
            this.i.b(i4);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.f680a.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
                return;
            }
            a3.a(i2 & 65535, strArr, iArr);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.d = true;
        this.f680a.b();
        this.f680a.l();
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        f();
        this.f681b.a(e.a.ON_STOP);
        Parcelable c2 = this.f680a.c();
        if (c2 != null) {
            bundle.putParcelable("android:support:fragments", c2);
        }
        if (this.i.b() > 0) {
            bundle.putInt("android:support:next_request_index", this.h);
            int[] iArr = new int[this.i.b()];
            String[] strArr = new String[this.i.b()];
            for (int i2 = 0; i2 < this.i.b(); i2++) {
                iArr[i2] = this.i.c(i2);
                strArr[i2] = this.i.d(i2);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        this.e = false;
        if (!this.c) {
            this.c = true;
            this.f680a.e();
        }
        this.f680a.b();
        this.f680a.l();
        this.f681b.a(e.a.ON_START);
        this.f680a.f();
    }

    public void onStateNotSaved() {
        this.f680a.b();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.e = true;
        f();
        this.f680a.i();
        this.f681b.a(e.a.ON_STOP);
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        if (!this.g && i2 != -1) {
            b(i2);
        }
        super.startActivityForResult(intent, i2);
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (!this.g && i2 != -1) {
            b(i2);
        }
        super.startActivityForResult(intent, i2, bundle);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5) throws IntentSender.SendIntentException {
        if (!this.f && i2 != -1) {
            b(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        if (!this.f && i2 != -1) {
            b(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
    }
}
