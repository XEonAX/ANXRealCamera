package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.a.a.a;
import androidx.core.widget.i;

/* compiled from: AppCompatCheckedTextView */
public class g extends CheckedTextView {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f380a = {16843016};

    /* renamed from: b  reason: collision with root package name */
    private final w f381b;

    public g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public g(Context context, AttributeSet attributeSet, int i) {
        super(ar.a(context), attributeSet, i);
        this.f381b = new w(this);
        this.f381b.a(attributeSet, i);
        this.f381b.b();
        au a2 = au.a(getContext(), attributeSet, f380a, i, 0);
        setCheckMarkDrawable(a2.a(0));
        a2.b();
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        w wVar = this.f381b;
        if (wVar != null) {
            wVar.b();
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return k.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(a.b(getContext(), i));
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(i.a((TextView) this, callback));
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        w wVar = this.f381b;
        if (wVar != null) {
            wVar.a(context, i);
        }
    }
}
