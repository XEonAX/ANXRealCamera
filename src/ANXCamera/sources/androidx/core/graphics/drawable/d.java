package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* compiled from: WrappedDrawableApi14 */
class d extends Drawable implements Drawable.Callback, b, c {

    /* renamed from: a  reason: collision with root package name */
    static final PorterDuff.Mode f601a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    f f602b;
    Drawable c;
    private int d;
    private PorterDuff.Mode e;
    private boolean f;
    private boolean g;

    d(Drawable drawable) {
        this.f602b = c();
        a(drawable);
    }

    d(f fVar, Resources resources) {
        this.f602b = fVar;
        a(resources);
    }

    private void a(Resources resources) {
        f fVar = this.f602b;
        if (fVar != null && fVar.f604b != null) {
            a(this.f602b.f604b.newDrawable(resources));
        }
    }

    private boolean a(int[] iArr) {
        if (!b()) {
            return false;
        }
        ColorStateList colorStateList = this.f602b.c;
        PorterDuff.Mode mode = this.f602b.d;
        if (colorStateList == null || mode == null) {
            this.f = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!(this.f && colorForState == this.d && mode == this.e)) {
                setColorFilter(colorForState, mode);
                this.d = colorForState;
                this.e = mode;
                this.f = true;
                return true;
            }
        }
        return false;
    }

    private f c() {
        return new f(this.f602b);
    }

    public final Drawable a() {
        return this.c;
    }

    public final void a(Drawable drawable) {
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback) null);
        }
        this.c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            f fVar = this.f602b;
            if (fVar != null) {
                fVar.f604b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }

    public void draw(Canvas canvas) {
        this.c.draw(canvas);
    }

    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        f fVar = this.f602b;
        return changingConfigurations | (fVar != null ? fVar.getChangingConfigurations() : 0) | this.c.getChangingConfigurations();
    }

    public Drawable.ConstantState getConstantState() {
        f fVar = this.f602b;
        if (fVar == null || !fVar.a()) {
            return null;
        }
        this.f602b.f603a = getChangingConfigurations();
        return this.f602b;
    }

    public Drawable getCurrent() {
        return this.c.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.c.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.c.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.c.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.c.getMinimumWidth();
    }

    public int getOpacity() {
        return this.c.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.c.getPadding(rect);
    }

    public int[] getState() {
        return this.c.getState();
    }

    public Region getTransparentRegion() {
        return this.c.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isAutoMirrored() {
        return this.c.isAutoMirrored();
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        if (b()) {
            f fVar = this.f602b;
            if (fVar != null) {
                colorStateList = fVar.c;
                return (colorStateList == null && colorStateList.isStateful()) || this.c.isStateful();
            }
        }
        colorStateList = null;
        if (colorStateList == null) {
        }
    }

    public void jumpToCurrentState() {
        this.c.jumpToCurrentState();
    }

    public Drawable mutate() {
        if (!this.g && super.mutate() == this) {
            this.f602b = c();
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.mutate();
            }
            f fVar = this.f602b;
            if (fVar != null) {
                Drawable drawable2 = this.c;
                fVar.f604b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.g = true;
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        return this.c.setLevel(i);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    public void setAlpha(int i) {
        this.c.setAlpha(i);
    }

    public void setAutoMirrored(boolean z) {
        this.c.setAutoMirrored(z);
    }

    public void setChangingConfigurations(int i) {
        this.c.setChangingConfigurations(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.c.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.c.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.c.setFilterBitmap(z);
    }

    public boolean setState(int[] iArr) {
        return a(iArr) || this.c.setState(iArr);
    }

    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    public void setTintList(ColorStateList colorStateList) {
        this.f602b.c = colorStateList;
        a(getState());
    }

    public void setTintMode(PorterDuff.Mode mode) {
        this.f602b.d = mode;
        a(getState());
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.c.setVisible(z, z2);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
