package co.polarr.renderer.entities;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

public class BrushItem {
    public boolean blend = false;
    public float[] channel = {1.0f, 0.0f, 0.0f, 0.0f};
    public boolean erase = false;
    public float flow = 0.5f;
    public double hardness = 0.0d;
    public boolean interpolate = true;
    public String mode = "paint";
    public String pointId;
    public List<Float> points = new ArrayList();
    public float[] prevPoint;
    public float randomize = 0.0f;
    public float size = 0.5f;
    public float spacing = 0.25f;
    public String texture = "stroke_1";
    public List<PointF> touchPoints = new ArrayList();
}
