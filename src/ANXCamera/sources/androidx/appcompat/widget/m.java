package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R;
import androidx.appcompat.a.a.a;
import androidx.core.widget.e;

/* compiled from: AppCompatImageHelper */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f392a;

    /* renamed from: b  reason: collision with root package name */
    private as f393b;
    private as c;
    private as d;

    public m(ImageView imageView) {
        this.f392a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.d == null) {
            this.d = new as();
        }
        as asVar = this.d;
        asVar.a();
        ColorStateList a2 = e.a(this.f392a);
        if (a2 != null) {
            asVar.d = true;
            asVar.f346a = a2;
        }
        PorterDuff.Mode b2 = e.b(this.f392a);
        if (b2 != null) {
            asVar.c = true;
            asVar.f347b = b2;
        }
        if (!asVar.d && !asVar.c) {
            return false;
        }
        i.a(drawable, asVar, this.f392a.getDrawableState());
        return true;
    }

    private boolean e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f393b != null : i == 21;
    }

    public void a(int i) {
        if (i != 0) {
            Drawable b2 = a.b(this.f392a.getContext(), i);
            if (b2 != null) {
                ac.b(b2);
            }
            this.f392a.setImageDrawable(b2);
        } else {
            this.f392a.setImageDrawable((Drawable) null);
        }
        d();
    }

    /* access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.c == null) {
            this.c = new as();
        }
        as asVar = this.c;
        asVar.f346a = colorStateList;
        asVar.d = true;
        d();
    }

    /* access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.c == null) {
            this.c = new as();
        }
        as asVar = this.c;
        asVar.f347b = mode;
        asVar.c = true;
        d();
    }

    public void a(AttributeSet attributeSet, int i) {
        au a2 = au.a(this.f392a.getContext(), attributeSet, R.styleable.AppCompatImageView, i, 0);
        try {
            Drawable drawable = this.f392a.getDrawable();
            if (drawable == null) {
                int g = a2.g(R.styleable.AppCompatImageView_srcCompat, -1);
                if (g != -1) {
                    drawable = a.b(this.f392a.getContext(), g);
                    if (drawable != null) {
                        this.f392a.setImageDrawable(drawable);
                    }
                }
            }
            if (drawable != null) {
                ac.b(drawable);
            }
            if (a2.g(R.styleable.AppCompatImageView_tint)) {
                e.a(this.f392a, a2.e(R.styleable.AppCompatImageView_tint));
            }
            if (a2.g(R.styleable.AppCompatImageView_tintMode)) {
                e.a(this.f392a, ac.a(a2.a(R.styleable.AppCompatImageView_tintMode, -1), (PorterDuff.Mode) null));
            }
        } finally {
            a2.b();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f392a.getBackground() instanceof RippleDrawable);
    }

    /* access modifiers changed from: package-private */
    public ColorStateList b() {
        as asVar = this.c;
        if (asVar != null) {
            return asVar.f346a;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        as asVar = this.c;
        if (asVar != null) {
            return asVar.f347b;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void d() {
        Drawable drawable = this.f392a.getDrawable();
        if (drawable != null) {
            ac.b(drawable);
        }
        if (drawable == null) {
            return;
        }
        if (!e() || !a(drawable)) {
            as asVar = this.c;
            if (asVar != null) {
                i.a(drawable, asVar, this.f392a.getDrawableState());
                return;
            }
            as asVar2 = this.f393b;
            if (asVar2 != null) {
                i.a(drawable, asVar2, this.f392a.getDrawableState());
            }
        }
    }
}
