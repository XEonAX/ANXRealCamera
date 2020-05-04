package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.a.a.f;
import androidx.core.widget.b;
import androidx.core.widget.i;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* compiled from: AppCompatTextHelper */
class w {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f410a;

    /* renamed from: b  reason: collision with root package name */
    private as f411b;
    private as c;
    private as d;
    private as e;
    private as f;
    private as g;
    private as h;
    private final y i;
    private int j = 0;
    private int k = -1;
    private Typeface l;
    private boolean m;

    /* compiled from: AppCompatTextHelper */
    private static class a extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<w> f412a;

        /* renamed from: b  reason: collision with root package name */
        private final int f413b;
        private final int c;

        /* renamed from: androidx.appcompat.widget.w$a$a  reason: collision with other inner class name */
        /* compiled from: AppCompatTextHelper */
        private class C0008a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final WeakReference<w> f415b;
            private final Typeface c;

            C0008a(WeakReference<w> weakReference, Typeface typeface) {
                this.f415b = weakReference;
                this.c = typeface;
            }

            public void run() {
                w wVar = (w) this.f415b.get();
                if (wVar != null) {
                    wVar.a(this.c);
                }
            }
        }

        a(w wVar, int i, int i2) {
            this.f412a = new WeakReference<>(wVar);
            this.f413b = i;
            this.c = i2;
        }

        public void a(int i) {
        }

        public void a(Typeface typeface) {
            w wVar = (w) this.f412a.get();
            if (wVar != null) {
                if (Build.VERSION.SDK_INT >= 28) {
                    int i = this.f413b;
                    if (i != -1) {
                        typeface = Typeface.create(typeface, i, (this.c & 2) != 0);
                    }
                }
                wVar.a((Runnable) new C0008a(this.f412a, typeface));
            }
        }
    }

    w(TextView textView) {
        this.f410a = textView;
        this.i = new y(this.f410a);
    }

    private static as a(Context context, i iVar, int i2) {
        ColorStateList b2 = iVar.b(context, i2);
        if (b2 == null) {
            return null;
        }
        as asVar = new as();
        asVar.d = true;
        asVar.f346a = b2;
        return asVar;
    }

    private void a(Context context, au auVar) {
        this.j = auVar.a(R.styleable.TextAppearance_android_textStyle, this.j);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            this.k = auVar.a(R.styleable.TextAppearance_android_textFontWeight, -1);
            if (this.k != -1) {
                this.j = (this.j & 2) | 0;
            }
        }
        if (auVar.g(R.styleable.TextAppearance_android_fontFamily) || auVar.g(R.styleable.TextAppearance_fontFamily)) {
            this.l = null;
            int i2 = auVar.g(R.styleable.TextAppearance_fontFamily) ? R.styleable.TextAppearance_fontFamily : R.styleable.TextAppearance_android_fontFamily;
            int i3 = this.k;
            int i4 = this.j;
            if (!context.isRestricted()) {
                try {
                    Typeface a2 = auVar.a(i2, this.j, (f.a) new a(this, i3, i4));
                    if (a2 != null) {
                        if (Build.VERSION.SDK_INT < 28 || this.k == -1) {
                            this.l = a2;
                        } else {
                            this.l = Typeface.create(Typeface.create(a2, 0), this.k, (this.j & 2) != 0);
                        }
                    }
                    this.m = this.l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.l == null) {
                String d2 = auVar.d(i2);
                if (d2 == null) {
                    return;
                }
                if (Build.VERSION.SDK_INT < 28 || this.k == -1) {
                    this.l = Typeface.create(d2, this.j);
                    return;
                }
                Typeface create = Typeface.create(d2, 0);
                int i5 = this.k;
                if ((this.j & 2) != 0) {
                    z = true;
                }
                this.l = Typeface.create(create, i5, z);
            }
        } else if (auVar.g(R.styleable.TextAppearance_android_typeface)) {
            this.m = false;
            int a3 = auVar.a(R.styleable.TextAppearance_android_typeface, 1);
            if (a3 == 1) {
                this.l = Typeface.SANS_SERIF;
            } else if (a3 == 2) {
                this.l = Typeface.SERIF;
            } else if (a3 == 3) {
                this.l = Typeface.MONOSPACE;
            }
        }
    }

    private void a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f410a.getCompoundDrawablesRelative();
            TextView textView = this.f410a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f410a.getCompoundDrawablesRelative();
                if (!(compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null)) {
                    TextView textView2 = this.f410a;
                    Drawable drawable7 = compoundDrawablesRelative2[0];
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative2[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                    return;
                }
            }
            Drawable[] compoundDrawables = this.f410a.getCompoundDrawables();
            TextView textView3 = this.f410a;
            if (drawable == null) {
                drawable = compoundDrawables[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawables[1];
            }
            if (drawable3 == null) {
                drawable3 = compoundDrawables[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    private void a(Drawable drawable, as asVar) {
        if (drawable != null && asVar != null) {
            i.a(drawable, asVar, this.f410a.getDrawableState());
        }
    }

    private void b(int i2, float f2) {
        this.i.a(i2, f2);
    }

    private void l() {
        as asVar = this.h;
        this.f411b = asVar;
        this.c = asVar;
        this.d = asVar;
        this.e = asVar;
        this.f = asVar;
        this.g = asVar;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        b();
    }

    /* access modifiers changed from: package-private */
    public void a(int i2) {
        this.i.a(i2);
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, float f2) {
        if (!b.d && !d()) {
            b(i2, f2);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, int i4, int i5) throws IllegalArgumentException {
        this.i.a(i2, i3, i4, i5);
    }

    /* access modifiers changed from: package-private */
    public void a(Context context, int i2) {
        au a2 = au.a(context, i2, R.styleable.TextAppearance);
        if (a2.g(R.styleable.TextAppearance_textAllCaps)) {
            a(a2.a(R.styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a2.g(R.styleable.TextAppearance_android_textColor)) {
            ColorStateList e2 = a2.e(R.styleable.TextAppearance_android_textColor);
            if (e2 != null) {
                this.f410a.setTextColor(e2);
            }
        }
        if (a2.g(R.styleable.TextAppearance_android_textSize) && a2.e(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f410a.setTextSize(0, 0.0f);
        }
        a(context, a2);
        if (Build.VERSION.SDK_INT >= 26 && a2.g(R.styleable.TextAppearance_fontVariationSettings)) {
            String d2 = a2.d(R.styleable.TextAppearance_fontVariationSettings);
            if (d2 != null) {
                this.f410a.setFontVariationSettings(d2);
            }
        }
        a2.b();
        Typeface typeface = this.l;
        if (typeface != null) {
            this.f410a.setTypeface(typeface, this.j);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new as();
        }
        as asVar = this.h;
        asVar.f346a = colorStateList;
        asVar.d = colorStateList != null;
        l();
    }

    /* access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new as();
        }
        as asVar = this.h;
        asVar.f347b = mode;
        asVar.c = mode != null;
        l();
    }

    public void a(Typeface typeface) {
        if (this.m) {
            this.f410a.setTypeface(typeface);
            this.l = typeface;
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0110  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0117  */
    @SuppressLint({"NewApi"})
    public void a(AttributeSet attributeSet, int i2) {
        ColorStateList colorStateList;
        boolean z;
        boolean z2;
        ColorStateList colorStateList2;
        String str;
        ColorStateList colorStateList3;
        String str2;
        i iVar;
        Drawable drawable;
        i iVar2;
        int i3;
        AttributeSet attributeSet2 = attributeSet;
        int i4 = i2;
        Context context = this.f410a.getContext();
        i b2 = i.b();
        au a2 = au.a(context, attributeSet2, R.styleable.AppCompatTextHelper, i4, 0);
        int g2 = a2.g(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (a2.g(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.f411b = a(context, b2, a2.g(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (a2.g(R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.c = a(context, b2, a2.g(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (a2.g(R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.d = a(context, b2, a2.g(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (a2.g(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.e = a(context, b2, a2.g(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (a2.g(R.styleable.AppCompatTextHelper_android_drawableStart)) {
                this.f = a(context, b2, a2.g(R.styleable.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (a2.g(R.styleable.AppCompatTextHelper_android_drawableEnd)) {
                this.g = a(context, b2, a2.g(R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        a2.b();
        boolean z3 = this.f410a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (g2 != -1) {
            au a3 = au.a(context, g2, R.styleable.TextAppearance);
            if (z3 || !a3.g(R.styleable.TextAppearance_textAllCaps)) {
                z2 = false;
                z = false;
            } else {
                z = a3.a(R.styleable.TextAppearance_textAllCaps, false);
                z2 = true;
            }
            a(context, a3);
            if (Build.VERSION.SDK_INT < 23) {
                ColorStateList e2 = a3.g(R.styleable.TextAppearance_android_textColor) ? a3.e(R.styleable.TextAppearance_android_textColor) : null;
                colorStateList3 = a3.g(R.styleable.TextAppearance_android_textColorHint) ? a3.e(R.styleable.TextAppearance_android_textColorHint) : null;
                if (a3.g(R.styleable.TextAppearance_android_textColorLink)) {
                    ColorStateList colorStateList4 = e2;
                    colorStateList = a3.e(R.styleable.TextAppearance_android_textColorLink);
                    colorStateList2 = colorStateList4;
                    str2 = !a3.g(R.styleable.TextAppearance_textLocale) ? a3.d(R.styleable.TextAppearance_textLocale) : null;
                    str = (Build.VERSION.SDK_INT >= 26 || !a3.g(R.styleable.TextAppearance_fontVariationSettings)) ? null : a3.d(R.styleable.TextAppearance_fontVariationSettings);
                    a3.b();
                } else {
                    colorStateList2 = e2;
                }
            } else {
                colorStateList3 = null;
                colorStateList2 = null;
            }
            colorStateList = null;
            if (!a3.g(R.styleable.TextAppearance_textLocale)) {
            }
            if (Build.VERSION.SDK_INT >= 26) {
            }
            a3.b();
        } else {
            z2 = false;
            z = false;
            str2 = null;
            colorStateList3 = null;
            str = null;
            colorStateList2 = null;
            colorStateList = null;
        }
        au a4 = au.a(context, attributeSet2, R.styleable.TextAppearance, i4, 0);
        if (!z3 && a4.g(R.styleable.TextAppearance_textAllCaps)) {
            z = a4.a(R.styleable.TextAppearance_textAllCaps, false);
            z2 = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (a4.g(R.styleable.TextAppearance_android_textColor)) {
                colorStateList2 = a4.e(R.styleable.TextAppearance_android_textColor);
            }
            if (a4.g(R.styleable.TextAppearance_android_textColorHint)) {
                colorStateList3 = a4.e(R.styleable.TextAppearance_android_textColorHint);
            }
            if (a4.g(R.styleable.TextAppearance_android_textColorLink)) {
                colorStateList = a4.e(R.styleable.TextAppearance_android_textColorLink);
            }
        }
        if (a4.g(R.styleable.TextAppearance_textLocale)) {
            str2 = a4.d(R.styleable.TextAppearance_textLocale);
        }
        if (Build.VERSION.SDK_INT >= 26 && a4.g(R.styleable.TextAppearance_fontVariationSettings)) {
            str = a4.d(R.styleable.TextAppearance_fontVariationSettings);
        }
        if (Build.VERSION.SDK_INT < 28 || !a4.g(R.styleable.TextAppearance_android_textSize) || a4.e(R.styleable.TextAppearance_android_textSize, -1) != 0) {
            iVar = b2;
        } else {
            iVar = b2;
            this.f410a.setTextSize(0, 0.0f);
        }
        a(context, a4);
        a4.b();
        if (colorStateList2 != null) {
            this.f410a.setTextColor(colorStateList2);
        }
        if (colorStateList3 != null) {
            this.f410a.setHintTextColor(colorStateList3);
        }
        if (colorStateList != null) {
            this.f410a.setLinkTextColor(colorStateList);
        }
        if (!z3 && z2) {
            a(z);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.k == -1) {
                this.f410a.setTypeface(typeface, this.j);
            } else {
                this.f410a.setTypeface(typeface);
            }
        }
        if (str != null) {
            this.f410a.setFontVariationSettings(str);
        }
        if (str2 != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f410a.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f410a.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.i.a(attributeSet2, i4);
        if (b.d && this.i.a() != 0) {
            int[] e3 = this.i.e();
            if (e3.length > 0) {
                if (((float) this.f410a.getAutoSizeStepGranularity()) != -1.0f) {
                    this.f410a.setAutoSizeTextTypeUniformWithConfiguration(this.i.c(), this.i.d(), this.i.b(), 0);
                } else {
                    this.f410a.setAutoSizeTextTypeUniformWithPresetSizes(e3, 0);
                }
            }
        }
        au a5 = au.a(context, attributeSet2, R.styleable.AppCompatTextView);
        int g3 = a5.g(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        if (g3 != -1) {
            iVar2 = iVar;
            drawable = iVar2.a(context, g3);
        } else {
            iVar2 = iVar;
            drawable = null;
        }
        int g4 = a5.g(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable a6 = g4 != -1 ? iVar2.a(context, g4) : null;
        int g5 = a5.g(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable a7 = g5 != -1 ? iVar2.a(context, g5) : null;
        int g6 = a5.g(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable a8 = g6 != -1 ? iVar2.a(context, g6) : null;
        int g7 = a5.g(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable a9 = g7 != -1 ? iVar2.a(context, g7) : null;
        int g8 = a5.g(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        a(drawable, a6, a7, a8, a9, g8 != -1 ? iVar2.a(context, g8) : null);
        if (a5.g(R.styleable.AppCompatTextView_drawableTint)) {
            i.a(this.f410a, a5.e(R.styleable.AppCompatTextView_drawableTint));
        }
        if (a5.g(R.styleable.AppCompatTextView_drawableTintMode)) {
            i3 = -1;
            i.a(this.f410a, ac.a(a5.a(R.styleable.AppCompatTextView_drawableTintMode, -1), (PorterDuff.Mode) null));
        } else {
            i3 = -1;
        }
        int e4 = a5.e(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i3);
        int e5 = a5.e(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i3);
        int e6 = a5.e(R.styleable.AppCompatTextView_lineHeight, i3);
        a5.b();
        if (e4 != i3) {
            i.a(this.f410a, e4);
        }
        if (e5 != i3) {
            i.b(this.f410a, e5);
        }
        if (e6 != i3) {
            i.c(this.f410a, e6);
        }
    }

    public void a(Runnable runnable) {
        this.f410a.post(runnable);
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f410a.setAllCaps(z);
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z, int i2, int i3, int i4, int i5) {
        if (!b.d) {
            c();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int[] iArr, int i2) throws IllegalArgumentException {
        this.i.a(iArr, i2);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        if (!(this.f411b == null && this.c == null && this.d == null && this.e == null)) {
            Drawable[] compoundDrawables = this.f410a.getCompoundDrawables();
            a(compoundDrawables[0], this.f411b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return;
        }
        if (this.f != null || this.g != null) {
            Drawable[] compoundDrawablesRelative = this.f410a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f);
            a(compoundDrawablesRelative[2], this.g);
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.i.f();
    }

    /* access modifiers changed from: package-private */
    public boolean d() {
        return this.i.g();
    }

    /* access modifiers changed from: package-private */
    public int e() {
        return this.i.a();
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return this.i.b();
    }

    /* access modifiers changed from: package-private */
    public int g() {
        return this.i.c();
    }

    /* access modifiers changed from: package-private */
    public int h() {
        return this.i.d();
    }

    /* access modifiers changed from: package-private */
    public int[] i() {
        return this.i.e();
    }

    /* access modifiers changed from: package-private */
    public ColorStateList j() {
        as asVar = this.h;
        if (asVar != null) {
            return asVar.f346a;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode k() {
        as asVar = this.h;
        if (asVar != null) {
            return asVar.f347b;
        }
        return null;
    }
}
