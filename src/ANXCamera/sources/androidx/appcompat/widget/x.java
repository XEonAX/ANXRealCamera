package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.e.a;
import androidx.core.g.t;
import androidx.core.graphics.c;
import androidx.core.widget.b;
import androidx.core.widget.i;
import androidx.core.widget.k;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: AppCompatTextView */
public class x extends TextView implements t, b, k {

    /* renamed from: a  reason: collision with root package name */
    private final e f416a;

    /* renamed from: b  reason: collision with root package name */
    private final w f417b;
    private final v c;
    private Future<a> e;

    public x(Context context) {
        this(context, (AttributeSet) null);
    }

    public x(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public x(Context context, AttributeSet attributeSet, int i) {
        super(ar.a(context), attributeSet, i);
        this.f416a = new e(this);
        this.f416a.a(attributeSet, i);
        this.f417b = new w(this);
        this.f417b.a(attributeSet, i);
        this.f417b.b();
        this.c = new v(this);
    }

    private void a() {
        Future<a> future = this.e;
        if (future != null) {
            try {
                this.e = null;
                i.a((TextView) this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f416a;
        if (eVar != null) {
            eVar.c();
        }
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.b();
        }
    }

    public int getAutoSizeMaxTextSize() {
        if (d) {
            return super.getAutoSizeMaxTextSize();
        }
        w wVar = this.f417b;
        if (wVar != null) {
            return wVar.h();
        }
        return -1;
    }

    public int getAutoSizeMinTextSize() {
        if (d) {
            return super.getAutoSizeMinTextSize();
        }
        w wVar = this.f417b;
        if (wVar != null) {
            return wVar.g();
        }
        return -1;
    }

    public int getAutoSizeStepGranularity() {
        if (d) {
            return super.getAutoSizeStepGranularity();
        }
        w wVar = this.f417b;
        if (wVar != null) {
            return wVar.f();
        }
        return -1;
    }

    public int[] getAutoSizeTextAvailableSizes() {
        if (d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        w wVar = this.f417b;
        return wVar != null ? wVar.i() : new int[0];
    }

    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        w wVar = this.f417b;
        if (wVar != null) {
            return wVar.e();
        }
        return 0;
    }

    public int getFirstBaselineToTopHeight() {
        return i.a((TextView) this);
    }

    public int getLastBaselineToBottomHeight() {
        return i.b(this);
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f416a;
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f416a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f417b.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f417b.k();
    }

    public CharSequence getText() {
        a();
        return super.getText();
    }

    public TextClassifier getTextClassifier() {
        if (Build.VERSION.SDK_INT < 28) {
            v vVar = this.c;
            if (vVar != null) {
                return vVar.a();
            }
        }
        return super.getTextClassifier();
    }

    public a.C0013a getTextMetricsParamsCompat() {
        return i.c(this);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return k.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a(z, i, i2, i3, i4);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        a();
        super.onMeasure(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f417b != null && !d && this.f417b.d()) {
            this.f417b.c();
        }
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a(i, i2, i3, i4);
        }
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a(iArr, i);
        }
    }

    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a(i);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f416a;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f416a;
        if (eVar != null) {
            eVar.a(i);
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a();
        }
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a();
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b2 = i != 0 ? androidx.appcompat.a.a.a.b(context, i) : null;
        Drawable b3 = i2 != 0 ? androidx.appcompat.a.a.a.b(context, i2) : null;
        Drawable b4 = i3 != 0 ? androidx.appcompat.a.a.a.b(context, i3) : null;
        if (i4 != 0) {
            drawable = androidx.appcompat.a.a.a.b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(b2, b3, b4, drawable);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a();
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a();
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b2 = i != 0 ? androidx.appcompat.a.a.a.b(context, i) : null;
        Drawable b3 = i2 != 0 ? androidx.appcompat.a.a.a.b(context, i2) : null;
        Drawable b4 = i3 != 0 ? androidx.appcompat.a.a.a.b(context, i3) : null;
        if (i4 != 0) {
            drawable = androidx.appcompat.a.a.a.b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(b2, b3, b4, drawable);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a();
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a();
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(i.a((TextView) this, callback));
    }

    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            i.a((TextView) this, i);
        }
    }

    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            i.b(this, i);
        }
    }

    public void setLineHeight(int i) {
        i.c(this, i);
    }

    public void setPrecomputedText(a aVar) {
        i.a((TextView) this, aVar);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f416a;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f416a;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f417b.a(colorStateList);
        this.f417b.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f417b.a(mode);
        this.f417b.b();
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a(context, i);
        }
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        if (Build.VERSION.SDK_INT < 28) {
            v vVar = this.c;
            if (vVar != null) {
                vVar.a(textClassifier);
                return;
            }
        }
        super.setTextClassifier(textClassifier);
    }

    public void setTextFuture(Future<a> future) {
        this.e = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(a.C0013a aVar) {
        i.a((TextView) this, aVar);
    }

    public void setTextSize(int i, float f) {
        if (d) {
            super.setTextSize(i, f);
            return;
        }
        w wVar = this.f417b;
        if (wVar != null) {
            wVar.a(i, f);
        }
    }

    public void setTypeface(Typeface typeface, int i) {
        Typeface a2 = (typeface == null || i <= 0) ? null : c.a(getContext(), typeface, i);
        if (a2 != null) {
            typeface = a2;
        }
        super.setTypeface(typeface, i);
    }
}
