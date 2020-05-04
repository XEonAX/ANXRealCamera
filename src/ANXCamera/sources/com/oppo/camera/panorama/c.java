package com.oppo.camera.panorama;

import android.content.Context;
import android.graphics.Matrix;
import com.oppo.camera.R;

/* compiled from: DirectionMode */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected Matrix f2287a = null;

    /* renamed from: b  reason: collision with root package name */
    protected float f2288b = 10.0f;
    protected float c = 260.0f;
    protected float d = -40.0f;
    protected float e = 220.0f;
    protected float[] f = null;
    protected float[] g = null;
    protected float h = 0.0f;
    protected float i = 0.0f;
    protected float j = 0.0f;
    protected float k = 0.0f;
    protected boolean l = false;
    protected int m = 0;

    public c(Context context) {
        this.i = context.getResources().getDimension(R.dimen.front_panorama_guide_camera_width_narrow);
        this.h = context.getResources().getDimension(R.dimen.front_panorama_guide_camera_height_narrow);
    }

    public Matrix a(int i2, int i3, int i4, int i5) {
        if (this.f2287a == null) {
            b(i2, i3);
        }
        this.g = a(i2, i3);
        this.f2287a.reset();
        this.f2287a.setPolyToPoly(this.f, 0, this.g, 0, 4);
        this.f2287a.postTranslate((float) ((i4 - i2) / 2), (float) ((i5 - i3) / 2));
        return this.f2287a;
    }

    public abstract String a(Context context);

    public void a() {
        this.f2288b = 0.0f;
        this.k = 0.0f;
        this.j = 0.0f;
        this.l = false;
    }

    public abstract void a(float f2);

    /* access modifiers changed from: protected */
    public abstract float[] a(int i2, int i3);

    public abstract float b(float f2);

    public int b() {
        return this.m;
    }

    public void b(int i2, int i3) {
        this.f2287a = new Matrix();
        float f2 = (float) i2;
        float f3 = (float) i3;
        this.f = new float[]{0.0f, 0.0f, f2, 0.0f, f2, f3, 0.0f, f3};
    }

    public abstract float c(float f2);

    /* access modifiers changed from: protected */
    public void c() {
        if (this.g == null) {
            this.g = new float[8];
        }
    }

    public float d() {
        return this.d;
    }

    public float e() {
        return this.f2288b;
    }
}
