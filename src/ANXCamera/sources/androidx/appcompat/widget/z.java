package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* compiled from: AppCompatToggleButton */
public class z extends ToggleButton {

    /* renamed from: a  reason: collision with root package name */
    private final w f420a;

    public z(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public z(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f420a = new w(this);
        this.f420a.a(attributeSet, i);
    }
}
