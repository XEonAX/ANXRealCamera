package co.polarr.renderer.entities;

import android.graphics.Rect;

public class DrawingItem {
    public String filterId;
    public Rect rect;

    public String toString() {
        return String.format("rect=%s::filterId=%s", new Object[]{this.rect, this.filterId});
    }
}
