package androidx.preference;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.core.a.a;
import androidx.core.a.a.g;
import androidx.core.g.a.d;

public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context) {
        this(context, (AttributeSet) null);
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, g.a(context, R.attr.preferenceCategoryStyle, 16842892));
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Deprecated
    public void a(d dVar) {
        super.a(dVar);
        if (Build.VERSION.SDK_INT < 28) {
            d.c u = dVar.u();
            if (u != null) {
                dVar.b((Object) d.c.a(u.c(), u.d(), u.a(), u.b(), true, u.e()));
            }
        }
    }

    public void a(l lVar) {
        super.a(lVar);
        if (Build.VERSION.SDK_INT >= 28) {
            lVar.f916a.setAccessibilityHeading(true);
        } else if (Build.VERSION.SDK_INT < 21) {
            TypedValue typedValue = new TypedValue();
            if (J().getTheme().resolveAttribute(R.attr.colorAccent, typedValue, true)) {
                TextView textView = (TextView) lVar.a(16908310);
                if (textView != null && textView.getCurrentTextColor() == a.c(J(), R.color.preference_fallback_accent_color)) {
                    textView.setTextColor(typedValue.data);
                }
            }
        }
    }

    public boolean j() {
        return !super.y();
    }

    public boolean y() {
        return false;
    }
}
