package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.a.a.g;
import androidx.preference.j;

public final class PreferenceScreen extends PreferenceGroup {

    /* renamed from: b  reason: collision with root package name */
    private boolean f824b = true;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, g.a(context, R.attr.preferenceScreenStyle, 16842891));
    }

    /* access modifiers changed from: protected */
    public boolean e() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void g() {
        if (q() == null && r() == null && c() != 0) {
            j.b i = M().i();
            if (i != null) {
                i.b(this);
            }
        }
    }

    public boolean l() {
        return this.f824b;
    }
}
