package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.R;
import androidx.appcompat.a.a.a;
import androidx.core.g.t;
import androidx.core.widget.j;

public class AppCompatCheckBox extends CheckBox implements t, j {

    /* renamed from: a  reason: collision with root package name */
    private final h f244a;

    /* renamed from: b  reason: collision with root package name */
    private final e f245b;
    private final w c;

    public AppCompatCheckBox(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(ar.a(context), attributeSet, i);
        this.f244a = new h(this);
        this.f244a.a(attributeSet, i);
        this.f245b = new e(this);
        this.f245b.a(attributeSet, i);
        this.c = new w(this);
        this.c.a(attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f245b;
        if (eVar != null) {
            eVar.c();
        }
        w wVar = this.c;
        if (wVar != null) {
            wVar.b();
        }
    }

    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        h hVar = this.f244a;
        return hVar != null ? hVar.a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f245b;
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f245b;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        h hVar = this.f244a;
        if (hVar != null) {
            return hVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        h hVar = this.f244a;
        if (hVar != null) {
            return hVar.b();
        }
        return null;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f245b;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f245b;
        if (eVar != null) {
            eVar.a(i);
        }
    }

    public void setButtonDrawable(int i) {
        setButtonDrawable(a.b(getContext(), i));
    }

    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        h hVar = this.f244a;
        if (hVar != null) {
            hVar.c();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f245b;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f245b;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        h hVar = this.f244a;
        if (hVar != null) {
            hVar.a(colorStateList);
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        h hVar = this.f244a;
        if (hVar != null) {
            hVar.a(mode);
        }
    }
}
