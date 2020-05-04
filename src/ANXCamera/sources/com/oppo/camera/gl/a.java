package com.oppo.camera.gl;

import android.view.animation.Interpolator;

/* compiled from: Animation */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected long f2150a = -2;

    /* renamed from: b  reason: collision with root package name */
    protected long f2151b;
    protected Interpolator c;

    /* access modifiers changed from: protected */
    public abstract void a(float f);

    public void a(long j) {
        this.f2150a = j;
    }

    public boolean b(long j) {
        long j2 = this.f2150a;
        if (j2 == -2) {
            return false;
        }
        if (j2 == -1) {
            this.f2150a = j;
        }
        long j3 = j - this.f2150a;
        float a2 = w.a(((float) j3) / ((float) this.f2151b), 0.0f, 1.0f);
        Interpolator interpolator = this.c;
        if (interpolator != null) {
            a2 = interpolator.getInterpolation(a2);
        }
        a(a2);
        if (j3 >= this.f2151b) {
            this.f2150a = -2;
        }
        return this.f2150a != -2;
    }
}
