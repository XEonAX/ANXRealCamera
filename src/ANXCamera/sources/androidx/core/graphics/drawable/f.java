package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* compiled from: WrappedDrawableState */
final class f extends Drawable.ConstantState {

    /* renamed from: a  reason: collision with root package name */
    int f603a;

    /* renamed from: b  reason: collision with root package name */
    Drawable.ConstantState f604b;
    ColorStateList c = null;
    PorterDuff.Mode d = d.f601a;

    f(f fVar) {
        if (fVar != null) {
            this.f603a = fVar.f603a;
            this.f604b = fVar.f604b;
            this.c = fVar.c;
            this.d = fVar.d;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return this.f604b != null;
    }

    public int getChangingConfigurations() {
        int i = this.f603a;
        Drawable.ConstantState constantState = this.f604b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    public Drawable newDrawable() {
        return newDrawable((Resources) null);
    }

    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new e(this, resources) : new d(this, resources);
    }
}
