package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R;
import androidx.core.g.u;

/* compiled from: AppCompatBackgroundHelper */
class e {

    /* renamed from: a  reason: collision with root package name */
    private final View f376a;

    /* renamed from: b  reason: collision with root package name */
    private final i f377b;
    private int c = -1;
    private as d;
    private as e;
    private as f;

    e(View view) {
        this.f376a = view;
        this.f377b = i.b();
    }

    private boolean b(Drawable drawable) {
        if (this.f == null) {
            this.f = new as();
        }
        as asVar = this.f;
        asVar.a();
        ColorStateList r = u.r(this.f376a);
        if (r != null) {
            asVar.d = true;
            asVar.f346a = r;
        }
        PorterDuff.Mode s = u.s(this.f376a);
        if (s != null) {
            asVar.c = true;
            asVar.f347b = s;
        }
        if (!asVar.d && !asVar.c) {
            return false;
        }
        i.a(drawable, asVar, this.f376a.getDrawableState());
        return true;
    }

    private boolean d() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.d != null : i == 21;
    }

    /* access modifiers changed from: package-private */
    public ColorStateList a() {
        as asVar = this.e;
        if (asVar != null) {
            return asVar.f346a;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void a(int i) {
        this.c = i;
        i iVar = this.f377b;
        b(iVar != null ? iVar.b(this.f376a.getContext(), i) : null);
        c();
    }

    /* access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new as();
        }
        as asVar = this.e;
        asVar.f346a = colorStateList;
        asVar.d = true;
        c();
    }

    /* access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new as();
        }
        as asVar = this.e;
        asVar.f347b = mode;
        asVar.c = true;
        c();
    }

    /* access modifiers changed from: package-private */
    public void a(Drawable drawable) {
        this.c = -1;
        b((ColorStateList) null);
        c();
    }

    /* access modifiers changed from: package-private */
    public void a(AttributeSet attributeSet, int i) {
        au a2 = au.a(this.f376a.getContext(), attributeSet, R.styleable.ViewBackgroundHelper, i, 0);
        try {
            if (a2.g(R.styleable.ViewBackgroundHelper_android_background)) {
                this.c = a2.g(R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList b2 = this.f377b.b(this.f376a.getContext(), this.c);
                if (b2 != null) {
                    b(b2);
                }
            }
            if (a2.g(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                u.a(this.f376a, a2.e(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (a2.g(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                u.a(this.f376a, ac.a(a2.a(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), (PorterDuff.Mode) null));
            }
        } finally {
            a2.b();
        }
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        as asVar = this.e;
        if (asVar != null) {
            return asVar.f347b;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new as();
            }
            as asVar = this.d;
            asVar.f346a = colorStateList;
            asVar.d = true;
        } else {
            this.d = null;
        }
        c();
    }

    /* access modifiers changed from: package-private */
    public void c() {
        Drawable background = this.f376a.getBackground();
        if (background == null) {
            return;
        }
        if (!d() || !b(background)) {
            as asVar = this.e;
            if (asVar != null) {
                i.a(background, asVar, this.f376a.getDrawableState());
                return;
            }
            as asVar2 = this.d;
            if (asVar2 != null) {
                i.a(background, asVar2, this.f376a.getDrawableState());
            }
        }
    }
}
