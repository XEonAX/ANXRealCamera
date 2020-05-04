package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.view.b;
import androidx.core.g.d;

/* compiled from: AppCompatDialog */
public class f extends Dialog implements d {

    /* renamed from: a  reason: collision with root package name */
    private e f95a;

    /* renamed from: b  reason: collision with root package name */
    private final d.a f96b = new d.a() {
        public boolean a(KeyEvent keyEvent) {
            return f.this.a(keyEvent);
        }
    };

    public f(Context context, int i) {
        super(context, a(context, i));
        e b2 = b();
        b2.a(a(context, i));
        b2.a((Bundle) null);
    }

    private static int a(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public b a(b.a aVar) {
        return null;
    }

    public void a(b bVar) {
    }

    /* access modifiers changed from: package-private */
    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        b().b(view, layoutParams);
    }

    public e b() {
        if (this.f95a == null) {
            this.f95a = e.a((Dialog) this, (d) this);
        }
        return this.f95a;
    }

    public void b(b bVar) {
    }

    public boolean b(int i) {
        return b().d(i);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return d.a(this.f96b, getWindow().getDecorView(), this, keyEvent);
    }

    public <T extends View> T findViewById(int i) {
        return b().b(i);
    }

    public void invalidateOptionsMenu() {
        b().f();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        b().h();
        super.onCreate(bundle);
        b().a(bundle);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        b().d();
    }

    public void setContentView(int i) {
        b().c(i);
    }

    public void setContentView(View view) {
        b().a(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        b().a(view, layoutParams);
    }

    public void setTitle(int i) {
        super.setTitle(i);
        b().a((CharSequence) getContext().getString(i));
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        b().a(charSequence);
    }
}
