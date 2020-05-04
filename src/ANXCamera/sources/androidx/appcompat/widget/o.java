package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import androidx.appcompat.R;
import androidx.appcompat.a.a.a;
import androidx.core.g.t;

/* compiled from: AppCompatMultiAutoCompleteTextView */
public class o extends MultiAutoCompleteTextView implements t {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f396a = {16843126};

    /* renamed from: b  reason: collision with root package name */
    private final e f397b;
    private final w c;

    public o(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public o(Context context, AttributeSet attributeSet, int i) {
        super(ar.a(context), attributeSet, i);
        au a2 = au.a(getContext(), attributeSet, f396a, i, 0);
        if (a2.g(0)) {
            setDropDownBackgroundDrawable(a2.a(0));
        }
        a2.b();
        this.f397b = new e(this);
        this.f397b.a(attributeSet, i);
        this.c = new w(this);
        this.c.a(attributeSet, i);
        this.c.b();
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f397b;
        if (eVar != null) {
            eVar.c();
        }
        w wVar = this.c;
        if (wVar != null) {
            wVar.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f397b;
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f397b;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return k.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f397b;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f397b;
        if (eVar != null) {
            eVar.a(i);
        }
    }

    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(a.b(getContext(), i));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f397b;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f397b;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        w wVar = this.c;
        if (wVar != null) {
            wVar.a(context, i);
        }
    }
}
