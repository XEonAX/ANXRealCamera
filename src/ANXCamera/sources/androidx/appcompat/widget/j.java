package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.g.t;
import androidx.core.widget.i;

/* compiled from: AppCompatEditText */
public class j extends EditText implements t {

    /* renamed from: a  reason: collision with root package name */
    private final e f388a;

    /* renamed from: b  reason: collision with root package name */
    private final w f389b;
    private final v c;

    public j(Context context) {
        this(context, (AttributeSet) null);
    }

    public j(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public j(Context context, AttributeSet attributeSet, int i) {
        super(ar.a(context), attributeSet, i);
        this.f388a = new e(this);
        this.f388a.a(attributeSet, i);
        this.f389b = new w(this);
        this.f389b.a(attributeSet, i);
        this.f389b.b();
        this.c = new v(this);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f388a;
        if (eVar != null) {
            eVar.c();
        }
        w wVar = this.f389b;
        if (wVar != null) {
            wVar.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f388a;
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f388a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
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

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return k.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f388a;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f388a;
        if (eVar != null) {
            eVar.a(i);
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(i.a((TextView) this, callback));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f388a;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f388a;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        w wVar = this.f389b;
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
}
