package androidx.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.e;
import androidx.lifecycle.e;
import androidx.lifecycle.h;
import androidx.lifecycle.i;
import androidx.lifecycle.p;
import androidx.lifecycle.s;
import androidx.lifecycle.t;
import androidx.savedstate.c;

/* compiled from: ComponentActivity */
public class b extends e implements d, h, t, c {

    /* renamed from: a  reason: collision with root package name */
    private final i f25a = new i(this);

    /* renamed from: b  reason: collision with root package name */
    private final androidx.savedstate.b f26b = androidx.savedstate.b.a((c) this);
    private s c;
    private final OnBackPressedDispatcher d = new OnBackPressedDispatcher(new Runnable() {
        public void run() {
            b.super.onBackPressed();
        }
    });
    private int e;

    /* compiled from: ComponentActivity */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        Object f28a;

        /* renamed from: b  reason: collision with root package name */
        s f29b;

        a() {
        }
    }

    public b() {
        if (b() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                b().a(new ComponentActivity$2(this));
            }
            b().a(new ComponentActivity$3(this));
            if (19 <= Build.VERSION.SDK_INT && Build.VERSION.SDK_INT <= 23) {
                b().a(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Deprecated
    public Object N_() {
        return null;
    }

    public s O_() {
        if (getApplication() != null) {
            if (this.c == null) {
                a aVar = (a) getLastNonConfigurationInstance();
                if (aVar != null) {
                    this.c = aVar.f29b;
                }
                if (this.c == null) {
                    this.c = new s();
                }
            }
            return this.c;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    public androidx.lifecycle.e b() {
        return this.f25a;
    }

    public final OnBackPressedDispatcher d() {
        return this.d;
    }

    public final androidx.savedstate.a e() {
        return this.f26b.a();
    }

    public void onBackPressed() {
        this.d.a();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f26b.a(bundle);
        p.a((Activity) this);
        int i = this.e;
        if (i != 0) {
            setContentView(i);
        }
    }

    public final Object onRetainNonConfigurationInstance() {
        Object N_ = N_();
        s sVar = this.c;
        if (sVar == null) {
            a aVar = (a) getLastNonConfigurationInstance();
            if (aVar != null) {
                sVar = aVar.f29b;
            }
        }
        if (sVar == null && N_ == null) {
            return null;
        }
        a aVar2 = new a();
        aVar2.f28a = N_;
        aVar2.f29b = sVar;
        return aVar2;
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.e b2 = b();
        if (b2 instanceof i) {
            ((i) b2).b(e.b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f26b.b(bundle);
    }
}
