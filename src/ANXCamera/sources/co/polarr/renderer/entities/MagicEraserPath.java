package co.polarr.renderer.entities;

import android.graphics.PointF;
import co.polarr.a.a;
import java.util.List;

@a
public class MagicEraserPath {
    public List<PointF> points;
    public float radius;

    public String toString() {
        return "points=" + this.points.toString() + "::radius=" + this.radius;
    }
}
