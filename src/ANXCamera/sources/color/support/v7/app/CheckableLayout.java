package color.support.v7.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.LinearLayout;

public class CheckableLayout extends LinearLayout implements Checkable {

    /* renamed from: a  reason: collision with root package name */
    private Checkable f1315a;

    public CheckableLayout(Context context) {
        super(context);
    }

    public CheckableLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheckableLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public boolean isChecked() {
        Checkable checkable = this.f1315a;
        return checkable != null && checkable.isChecked();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof Checkable) {
                    this.f1315a = (Checkable) childAt;
                    return;
                }
            }
        }
    }

    public void setChecked(boolean z) {
        Checkable checkable = this.f1315a;
        if (checkable != null) {
            checkable.setChecked(z);
        }
    }

    public void toggle() {
        Checkable checkable = this.f1315a;
        if (checkable != null) {
            checkable.toggle();
        }
    }
}
