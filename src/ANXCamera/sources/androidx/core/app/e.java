package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.b.g;
import androidx.core.g.d;
import androidx.lifecycle.e;
import androidx.lifecycle.h;
import androidx.lifecycle.i;
import androidx.lifecycle.p;

/* compiled from: ComponentActivity */
public class e extends Activity implements d.a, h {

    /* renamed from: a  reason: collision with root package name */
    private g<Class<? extends a>, a> f490a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    private i f491b = new i(this);

    /* compiled from: ComponentActivity */
    public static class a {
    }

    public <T extends a> T a(Class<T> cls) {
        return (a) this.f490a.get(cls);
    }

    public void a(a aVar) {
        this.f490a.put(aVar.getClass(), aVar);
    }

    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public androidx.lifecycle.e b() {
        return this.f491b;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !d.a(decorView, keyEvent)) {
            return d.a(this, decorView, this, keyEvent);
        }
        return true;
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !d.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        p.a((Activity) this);
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        this.f491b.a(e.b.CREATED);
        super.onSaveInstanceState(bundle);
    }
}
