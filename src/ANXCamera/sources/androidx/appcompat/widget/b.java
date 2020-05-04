package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;

/* compiled from: ActionBarBackgroundDrawable */
class b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    final ActionBarContainer f365a;

    public b(ActionBarContainer actionBarContainer) {
        this.f365a = actionBarContainer;
    }

    public void draw(Canvas canvas) {
        if (!this.f365a.d) {
            if (this.f365a.f214a != null) {
                this.f365a.f214a.draw(canvas);
            }
            if (this.f365a.f215b != null && this.f365a.e) {
                this.f365a.f215b.draw(canvas);
            }
        } else if (this.f365a.c != null) {
            this.f365a.c.draw(canvas);
        }
    }

    public int getOpacity() {
        return 0;
    }

    public void getOutline(Outline outline) {
        if (this.f365a.d) {
            if (this.f365a.c != null) {
                this.f365a.c.getOutline(outline);
            }
        } else if (this.f365a.f214a != null) {
            this.f365a.f214a.getOutline(outline);
        }
    }

    public void setAlpha(int i) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }
}
