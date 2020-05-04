package com.oppo.camera.ui.menu.levelcontrol;

import android.content.Context;
import android.opengl.GLES20;
import co.polarr.renderer.PolarrRender;
import co.polarr.renderer.entities.DrawingItem;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import com.oppo.camera.d;
import com.oppo.camera.gl.i;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CylinderSide */
public class c {
    private ArrayList<FloatBuffer> A = new ArrayList<>();
    private ArrayList<FloatBuffer> B = new ArrayList<>();
    private ArrayList<Integer> C = new ArrayList<>();
    private PolarrRender D = null;
    private int[] E = new int[1];

    /* renamed from: a  reason: collision with root package name */
    private int f2785a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2786b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private String h = null;
    private String i = null;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private int n = 0;
    private int o = 0;
    private int p = 0;
    private String q = null;
    private String r = null;
    private int s = 0;
    private int t = 0;
    private float u = 0.0f;
    private int v = 0;
    private boolean w = false;
    private FloatBuffer x = null;
    private FloatBuffer y = null;
    private ArrayList<FloatBuffer> z = new ArrayList<>();

    public c(Context context) {
        b(context);
        c(context);
    }

    private double a(double d2) {
        double sqrt;
        if (0.0d <= d2 && 0.22599999606609344d >= d2) {
            double d3 = 0.22599999606609344d - d2;
            sqrt = Math.sqrt(0.051075998693704605d - (d3 * d3));
        } else if (0.7739999890327454d > d2) {
            return 0.0d;
        } else {
            double d4 = 0.22599999606609344d - (1.0d - d2);
            sqrt = Math.sqrt(0.051075998693704605d - (d4 * d4));
        }
        return 0.22599999606609344d - sqrt;
    }

    private float a(double d2, double d3, double d4, boolean z2) {
        return (float) (z2 ? ((d2 - d3) / 2.0d) + d4 : ((d2 + d3) / 2.0d) - d4);
    }

    private void a(float[] fArr, int i2) {
        fArr[i2] = 1.0f - fArr[i2];
    }

    private void a(float[] fArr, int i2, int i3, int i4) {
        float f2 = (float) i3;
        float f3 = (float) i4;
        fArr[i2] = ((1.0f - (f2 / f3)) / 2.0f) + ((fArr[i2] * f2) / f3);
    }

    private void a(float[] fArr, int i2, boolean z2, boolean z3, int i3, int i4) {
        if (!z3) {
            b(fArr, i2);
        }
        if (z2) {
            a(fArr, i2);
        }
        a(fArr, i2, i3, i4);
        c(fArr, i2);
    }

    private void b(Context context) {
        this.h = j.a("vertex_tex.sh", context.getResources());
        this.i = j.a("frag_tex.sh", context.getResources());
        this.f2785a = j.a(this.h, this.i);
        this.c = GLES20.glGetAttribLocation(this.f2785a, "aPosition");
        this.d = GLES20.glGetAttribLocation(this.f2785a, "aTexCoor");
        this.f2786b = GLES20.glGetUniformLocation(this.f2785a, "uMVPMatrix");
        this.f = GLES20.glGetUniformLocation(this.f2785a, "uCamera");
        this.g = GLES20.glGetUniformLocation(this.f2785a, "uLightLocation");
        this.e = GLES20.glGetUniformLocation(this.f2785a, "uMMatrix");
    }

    private void b(float[] fArr, int i2) {
        int i3 = i2 - 1;
        fArr[i3] = 1.0f - fArr[i3];
        fArr[i2] = 1.0f - fArr[i2];
    }

    private void c(Context context) {
        this.q = j.a("vertex_tex.sh", context.getResources());
        this.r = j.a("frag_oes_tex.sh", context.getResources());
        this.j = j.a(this.q, this.r);
        this.l = GLES20.glGetAttribLocation(this.j, "aPosition");
        this.m = GLES20.glGetAttribLocation(this.j, "aTexCoor");
        this.k = GLES20.glGetUniformLocation(this.j, "uMVPMatrix");
        this.o = GLES20.glGetUniformLocation(this.j, "uCamera");
        this.p = GLES20.glGetUniformLocation(this.j, "uLightLocation");
        this.n = GLES20.glGetUniformLocation(this.j, "uMMatrix");
    }

    private void c(float[] fArr, int i2) {
        int i3 = i2 - 1;
        float f2 = fArr[i3];
        fArr[i3] = fArr[i2];
        fArr[i2] = 1.0f - f2;
    }

    public void a() {
        ArrayList<Integer> arrayList = this.C;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList<FloatBuffer> arrayList2 = this.z;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        ArrayList<FloatBuffer> arrayList3 = this.A;
        if (arrayList3 != null) {
            arrayList3.clear();
        }
        ArrayList<FloatBuffer> arrayList4 = this.B;
        if (arrayList4 != null) {
            arrayList4.clear();
        }
    }

    public void a(float f2) {
        this.u = f2;
    }

    public void a(float f2, float f3, float f4, int i2, float f5, float f6, boolean z2, e eVar) {
        c cVar = this;
        int i3 = i2;
        int ceil = (int) Math.ceil((double) (((float) (i3 * 3 * 2)) * (f6 / 360.0f)));
        boolean h2 = eVar.h();
        boolean n2 = eVar.n();
        int e2 = eVar.e();
        int f7 = eVar.f();
        float f8 = f2 * f3;
        float f9 = f2 * f4;
        int i4 = ceil * 3;
        float[] fArr = new float[i4];
        float[] fArr2 = new float[(ceil * 2)];
        float f10 = 360.0f / ((float) i3);
        double c2 = (double) g.c();
        double d2 = 0.0d;
        if (z2) {
            d2 = -1.0d;
        }
        float f11 = f5;
        double d3 = d2;
        double d4 = d2;
        int i5 = 0;
        int i6 = 0;
        while (f11 < f5 + f6 && i5 + 18 < i4) {
            int i7 = ceil;
            double radians = Math.toRadians((double) f11);
            float f12 = f11 + f10;
            double d5 = c2;
            double radians2 = Math.toRadians((double) (f12 % 360.0f));
            if (z2) {
                if (-1.0d == d4) {
                    d3 = cVar.a((double) ((f11 - f5) / f6));
                }
                d4 = d3;
                d3 = cVar.a((double) ((f12 - f5) / f6));
            }
            int i8 = i5 + 1;
            double d6 = (double) f8;
            float[] fArr3 = fArr2;
            fArr[i5] = (float) (d6 * Math.sin(radians));
            int i9 = i8 + 1;
            double d7 = (double) f9;
            double d8 = d5;
            double d9 = d6;
            double d10 = d7;
            int i10 = i4;
            float f13 = f8;
            float[] fArr4 = fArr;
            double d11 = d4;
            float f14 = f9;
            fArr4[i8] = a(d7, d8, d11, true);
            int i11 = i9 + 1;
            fArr4[i9] = (float) (d9 * Math.cos(radians));
            int i12 = i6 + 1;
            float f15 = (f11 - f5) / f6;
            float[] fArr5 = fArr3;
            fArr5[i6] = f15;
            int i13 = i12 + 1;
            float[] fArr6 = fArr5;
            fArr6[i12] = a(1.0d, 1.0d, d11, false);
            if (n2) {
                a(fArr6, i13 - 1, h2, z2, e2, f7);
            }
            int i14 = i11 + 1;
            fArr4[i11] = (float) (d9 * Math.sin(radians2));
            int i15 = i14 + 1;
            double d12 = d3;
            fArr4[i14] = a(d10, d8, d12, false);
            int i16 = i15 + 1;
            fArr4[i15] = (float) (d9 * Math.cos(radians2));
            int i17 = i13 + 1;
            float f16 = (f12 - f5) / f6;
            fArr6[i13] = f16;
            int i18 = i17 + 1;
            fArr6[i17] = a(1.0d, 1.0d, d12, true);
            if (n2) {
                a(fArr6, i18 - 1, h2, z2, e2, f7);
            }
            int i19 = i16 + 1;
            fArr4[i16] = (float) (d9 * Math.sin(radians));
            int i20 = i19 + 1;
            double d13 = d4;
            fArr4[i19] = a(d10, d8, d13, false);
            int i21 = i20 + 1;
            fArr4[i20] = (float) (d9 * Math.cos(radians));
            int i22 = i18 + 1;
            fArr6[i18] = f15;
            int i23 = i22 + 1;
            fArr6[i22] = a(1.0d, 1.0d, d13, true);
            if (n2) {
                a(fArr6, i23 - 1, h2, z2, e2, f7);
            }
            int i24 = i21 + 1;
            fArr4[i21] = (float) (d9 * Math.sin(radians));
            int i25 = i24 + 1;
            double d14 = d4;
            fArr4[i24] = a(d10, d8, d14, true);
            int i26 = i25 + 1;
            fArr4[i25] = (float) (d9 * Math.cos(radians));
            int i27 = i23 + 1;
            fArr6[i23] = f15;
            int i28 = i27 + 1;
            fArr6[i27] = a(1.0d, 1.0d, d14, false);
            if (n2) {
                a(fArr6, i28 - 1, h2, z2, e2, f7);
            }
            int i29 = i26 + 1;
            fArr4[i26] = (float) (d9 * Math.sin(radians2));
            int i30 = i29 + 1;
            double d15 = d3;
            fArr4[i29] = a(d10, d8, d15, true);
            int i31 = i30 + 1;
            fArr4[i30] = (float) (d9 * Math.cos(radians2));
            int i32 = i28 + 1;
            fArr6[i28] = f16;
            int i33 = i32 + 1;
            fArr6[i32] = a(1.0d, 1.0d, d15, false);
            if (n2) {
                a(fArr6, i33 - 1, h2, z2, e2, f7);
            }
            int i34 = i31 + 1;
            fArr4[i31] = (float) (d9 * Math.sin(radians2));
            int i35 = i34 + 1;
            double d16 = d3;
            fArr4[i34] = a(d10, d8, d16, false);
            i5 = i35 + 1;
            fArr4[i35] = (float) (d9 * Math.cos(radians2));
            int i36 = i33 + 1;
            fArr6[i33] = f16;
            i6 = i36 + 1;
            fArr6[i36] = a(1.0d, 1.0d, d16, true);
            if (n2) {
                a(fArr6, i6 - 1, h2, z2, e2, f7);
            }
            fArr2 = fArr6;
            fArr = fArr4;
            ceil = i7;
            f11 = f12;
            c2 = d8;
            i4 = i10;
            f9 = f14;
            cVar = this;
            f8 = f13;
        }
        float[] fArr7 = fArr2;
        float[] fArr8 = fArr;
        int i37 = ceil;
        float[] fArr9 = new float[fArr8.length];
        for (int i38 = 0; i38 < fArr8.length; i38++) {
            if (i38 % 3 == 1) {
                fArr9[i38] = 0.0f;
            } else {
                fArr9[i38] = fArr8[i38];
            }
        }
        float[] fArr10 = fArr7;
        this.C.add(Integer.valueOf(i37));
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(fArr8.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(fArr8);
        asFloatBuffer.position(0);
        this.z.add(asFloatBuffer);
        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(fArr8.length * 4);
        allocateDirect2.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer2 = allocateDirect2.asFloatBuffer();
        asFloatBuffer2.put(fArr9);
        asFloatBuffer2.position(0);
        this.B.add(asFloatBuffer2);
        ByteBuffer allocateDirect3 = ByteBuffer.allocateDirect(fArr10.length * 4);
        allocateDirect3.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer3 = allocateDirect3.asFloatBuffer();
        asFloatBuffer3.put(fArr10);
        asFloatBuffer3.position(0);
        this.A.add(asFloatBuffer3);
    }

    public void a(int i2, int i3) {
        this.s = i2;
        this.t = i3;
    }

    public void a(Context context) {
        this.w = true;
        if (this.D == null) {
            d.a("CylinderSide", "initFilterEngine");
            this.D = new PolarrRender();
            i.i();
            this.D.initRender(context.getResources(), 2, 2, true, 1);
            i.i();
            d.a("CylinderSide", "initFilterEngine X");
        }
        this.w = false;
    }

    public boolean a(int i2, int i3, List<DrawingItem> list) {
        if (list == null) {
            return false;
        }
        GLES20.glDisable(3042);
        this.D.setInputTexture(i2);
        this.D.drawFiltersFrame(list, i3, true, 0.226f, this.u, 0.0f);
        return true;
    }

    public int b() {
        ArrayList<FloatBuffer> arrayList = this.z;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public void b(int i2, int i3) {
        int i4 = i3;
        i.i();
        GLES20.glUseProgram(this.f2785a);
        i.i();
        GLES20.glUniformMatrix4fv(this.f2786b, 1, false, h.d(), 0);
        i.i();
        GLES20.glUniformMatrix4fv(this.e, 1, false, h.e(), 0);
        i.i();
        GLES20.glUniform3fv(this.f, 1, h.f());
        i.i();
        GLES20.glUniform3fv(this.g, 1, h.g());
        i.i();
        GLES20.glVertexAttribPointer(this.c, 3, 5126, false, 12, this.z.get(i4));
        GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 8, this.A.get(i4));
        i.i();
        GLES20.glEnableVertexAttribArray(this.c);
        GLES20.glEnableVertexAttribArray(this.d);
        i.i();
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i2);
        GLES20.glDrawArrays(4, 0, this.C.get(i4).intValue());
        GLES20.glDisableVertexAttribArray(this.c);
        GLES20.glDisableVertexAttribArray(this.d);
        i.i();
    }

    public void c() {
        if (this.D != null) {
            d.a("CylinderSide", "destroyFilterEngine");
            this.D.release();
            i.i();
            d.a("CylinderSide", "destroyFilterEngine X");
            this.D = null;
        }
    }

    public void c(int i2, int i3) {
        int i4 = i3;
        h.b();
        GLES20.glViewport(0, 0, this.s, this.t);
        GLES20.glEnable(2929);
        GLES20.glEnable(2884);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 1);
        h.a(0.0f, ((-g.i()) / 2.0f) * 1.0f, 0.0f);
        GLES20.glUseProgram(this.f2785a);
        GLES20.glUniformMatrix4fv(this.f2786b, 1, false, h.d(), 0);
        GLES20.glUniformMatrix4fv(this.e, 1, false, h.e(), 0);
        GLES20.glUniform3fv(this.f, 1, h.f());
        GLES20.glUniform3fv(this.g, 1, h.g());
        GLES20.glVertexAttribPointer(this.c, 3, 5126, false, 12, this.z.get(i4));
        GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 8, this.A.get(i4));
        GLES20.glEnableVertexAttribArray(this.c);
        GLES20.glEnableVertexAttribArray(this.d);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i2);
        GLES20.glDrawArrays(4, 0, this.C.get(i4).intValue());
        GLES20.glDisableVertexAttribArray(this.c);
        GLES20.glDisableVertexAttribArray(this.d);
        h.c();
    }

    public void d(int i2, int i3) {
        int i4 = i3;
        i.i();
        h.b();
        h.a(0.0f, ((-g.i()) / 2.0f) * 1.0f, 0.0f);
        GLES20.glUseProgram(this.j);
        GLES20.glUniformMatrix4fv(this.k, 1, false, h.d(), 0);
        GLES20.glUniformMatrix4fv(this.n, 1, false, h.e(), 0);
        GLES20.glUniform3fv(this.o, 1, h.f());
        GLES20.glUniform3fv(this.p, 1, h.g());
        GLES20.glVertexAttribPointer(this.l, 3, 5126, false, 12, this.z.get(i4));
        GLES20.glVertexAttribPointer(this.m, 2, 5126, false, 8, this.A.get(i4));
        GLES20.glEnableVertexAttribArray(this.l);
        GLES20.glEnableVertexAttribArray(this.m);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i2);
        GLES20.glDrawArrays(4, 0, this.C.get(i4).intValue());
        GLES20.glDisableVertexAttribArray(this.l);
        GLES20.glDisableVertexAttribArray(this.m);
        h.c();
    }

    public boolean d() {
        return this.D != null;
    }
}
