package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R;
import androidx.appcompat.a.a.a;
import androidx.core.widget.c;

/* compiled from: AppCompatCompoundButtonHelper */
class h {

    /* renamed from: a  reason: collision with root package name */
    private final CompoundButton f382a;

    /* renamed from: b  reason: collision with root package name */
    private ColorStateList f383b = null;
    private PorterDuff.Mode c = null;
    private boolean d = false;
    private boolean e = false;
    private boolean f;

    h(CompoundButton compoundButton) {
        this.f382a = compoundButton;
    }

    /* access modifiers changed from: package-private */
    public int a(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i;
        }
        Drawable a2 = c.a(this.f382a);
        return a2 != null ? i + a2.getIntrinsicWidth() : i;
    }

    /* access modifiers changed from: package-private */
    public ColorStateList a() {
        return this.f383b;
    }

    /* access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        this.f383b = colorStateList;
        this.d = true;
        d();
    }

    /* access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        d();
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0031 A[SYNTHETIC, Splitter:B:12:0x0031] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0058 A[Catch:{ all -> 0x0080 }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x006b A[Catch:{ all -> 0x0080 }] */
    public void a(AttributeSet attributeSet, int i) {
        boolean z;
        TypedArray obtainStyledAttributes = this.f382a.getContext().obtainStyledAttributes(attributeSet, R.styleable.CompoundButton, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonCompat)) {
                int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CompoundButton_buttonCompat, 0);
                if (resourceId != 0) {
                    try {
                        this.f382a.setButtonDrawable(a.b(this.f382a.getContext(), resourceId));
                        z = true;
                    } catch (Resources.NotFoundException unused) {
                    }
                    if (!z) {
                        if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_android_button)) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.CompoundButton_android_button, 0);
                            if (resourceId2 != 0) {
                                this.f382a.setButtonDrawable(a.b(this.f382a.getContext(), resourceId2));
                            }
                        }
                    }
                    if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTint)) {
                        c.a(this.f382a, obtainStyledAttributes.getColorStateList(R.styleable.CompoundButton_buttonTint));
                    }
                    if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTintMode)) {
                        c.a(this.f382a, ac.a(obtainStyledAttributes.getInt(R.styleable.CompoundButton_buttonTintMode, -1), (PorterDuff.Mode) null));
                    }
                }
            }
            z = false;
            if (!z) {
            }
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTint)) {
            }
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTintMode)) {
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public void c() {
        if (this.f) {
            this.f = false;
            return;
        }
        this.f = true;
        d();
    }

    /* access modifiers changed from: package-private */
    public void d() {
        Drawable a2 = c.a(this.f382a);
        if (a2 == null) {
            return;
        }
        if (this.d || this.e) {
            Drawable mutate = androidx.core.graphics.drawable.a.f(a2).mutate();
            if (this.d) {
                androidx.core.graphics.drawable.a.a(mutate, this.f383b);
            }
            if (this.e) {
                androidx.core.graphics.drawable.a.a(mutate, this.c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f382a.getDrawableState());
            }
            this.f382a.setButtonDrawable(mutate);
        }
    }
}
