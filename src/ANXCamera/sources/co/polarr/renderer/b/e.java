package co.polarr.renderer.b;

import co.polarr.renderer.b.f;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.DistortionBrushItem;
import co.polarr.renderer.render.c;
import java.util.Arrays;
import java.util.List;

public class e {

    /* renamed from: a  reason: collision with root package name */
    DistortionBrushItem f1119a = new DistortionBrushItem();

    /* renamed from: b  reason: collision with root package name */
    float[] f1120b = null;
    float c = 1.0f;
    boolean d = false;
    Runnable e = new Runnable() {
        public void run() {
            if (e.this.f1120b != null) {
                e.this.a(p.c, e.this.f1120b, false);
            }
            if (!e.this.d) {
                e.this.a();
            } else {
                p.c.glRenderView.c();
            }
        }
    };

    private static class a {

        /* renamed from: a  reason: collision with root package name */
        float f1122a;

        /* renamed from: b  reason: collision with root package name */
        float f1123b;
        float c;
        float d;
        float e;
        float f;
        float g;
        float h;
        float i;

        private a() {
            this.f1122a = 0.0f;
            this.f1123b = 0.0f;
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 0.0f;
            this.i = 0.0f;
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        this.d = false;
        p.c.currentRender.a(this.e);
        p.c.glRenderView.c();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: float[][]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v2, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v3, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v5, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v6, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v15, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v16, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v1, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v2, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v19, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v20, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v11, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v12, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v28, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v29, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v5, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v32, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v33, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v26, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v27, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v39, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v21, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v22, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v24, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v31, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v32, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v21, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v25, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v26, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v22, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v28, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v29, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v4, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v5, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v5, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v9, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v32, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v5, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v6, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v10, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v36, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v7, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v11, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v12, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v4, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v53, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v47, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v48, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v52, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v53, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v48, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r24v3, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r24v4, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r25v0, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v17, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v11, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v12, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v0, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v58, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v6, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v7, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v1, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v49, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v65, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v82, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v83, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v2, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v70, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v92, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v93, resolved type: float} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v76, resolved type: float[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v77, resolved type: float} */
    /* JADX WARNING: Multi-variable type inference failed */
    public static void a(Context context, List<Context.FaceFeaturesState> list) {
        int i;
        float[][] fArr;
        char c2;
        float[][] fArr2;
        char c3;
        char c4;
        char c5;
        int i2;
        int i3;
        char c6;
        float f;
        int i4;
        char c7;
        float f2;
        int i5;
        Context context2 = context;
        List<Context.FaceFeaturesState> list2 = list;
        if (list2 == null || list.isEmpty() || context2.faceMasks == null) {
            context2.mesh.delta = new float[context2.mesh.distortion.length];
        } else {
            float[][] fArr3 = context2.distortionVertices;
            float[][] fArr4 = (float[][]) Arrays.copyOf(fArr3, fArr3.length);
            int i6 = 0;
            int i7 = 0;
            boolean z = false;
            while (i7 < list.size()) {
                if (context2.faceMasks.length > i7) {
                    Context.FaceFeaturesState faceFeaturesState = list2.get(i7);
                    c cVar = context2.faceMasks[i7];
                    if (cVar != null) {
                        c.a aVar = cVar.f1284a;
                        f.b bVar = cVar.f1285b;
                        if (!(aVar == null || bVar == null)) {
                            a aVar2 = new a();
                            float f3 = bVar.p[i6];
                            float f4 = bVar.p[1];
                            int sqrt = (int) Math.sqrt((double) fArr4.length);
                            int i8 = sqrt - 1;
                            int i9 = i6;
                            while (i9 < fArr4.length) {
                                aVar2.f1122a = ((float) aVar.f[i9]) / 255.0f;
                                aVar2.f1123b = ((float) aVar.e[i9]) / 255.0f;
                                aVar2.e = ((float) aVar.f1286a[i9]) / 255.0f;
                                aVar2.f = ((float) aVar.f1287b[i9]) / 255.0f;
                                aVar2.c = ((float) aVar.d[i9]) / 255.0f;
                                aVar2.d = ((float) aVar.c[i9]) / 255.0f;
                                aVar2.g = Math.max(aVar2.c, aVar2.d);
                                aVar2.h = Math.max(aVar2.e, aVar2.f);
                                aVar2.i = Math.max(aVar2.f1122a, Math.max(0.0f, (aVar2.g - aVar2.f1123b) - aVar2.h) * 0.3f);
                                float f5 = -f4;
                                c.a aVar3 = aVar;
                                fArr4[i9] = new float[]{(fArr4[i9][0] * f3) - (fArr4[i9][1] * f5), (fArr4[i9][0] * f5) + (fArr4[i9][1] * f3)};
                                if (aVar2.e != 0.0f) {
                                    float f6 = bVar.v[0];
                                    float f7 = bVar.v[1];
                                    float f8 = (faceFeaturesState.eye_size[0] * aVar2.e * 0.3f) + 1.0f;
                                    c2 = 1;
                                    fArr4[i9] = new float[]{((fArr4[i9][0] - f6) * f8) + f6, ((fArr4[i9][1] - f7) * f8) + f7};
                                } else {
                                    c2 = 1;
                                }
                                if (aVar2.f != 0.0f) {
                                    float f9 = bVar.u[0];
                                    float f10 = bVar.u[c2];
                                    float f11 = (faceFeaturesState.eye_size[c2] * aVar2.f * 0.3f) + 1.0f;
                                    fArr2 = fArr3;
                                    c3 = 1;
                                    fArr4[i9] = new float[]{((fArr4[i9][0] - f9) * f11) + f9, ((fArr4[i9][1] - f10) * f11) + f10};
                                } else {
                                    fArr2 = fArr3;
                                    c3 = c2;
                                }
                                if (aVar2.g != 0.0f) {
                                    float f12 = bVar.s[0];
                                    float f13 = bVar.s[c3];
                                    c5 = 0;
                                    c4 = 1;
                                    fArr4[i9] = new float[]{((fArr4[i9][0] - f12) * ((faceFeaturesState.face_width * aVar2.g * (1.0f - aVar2.h) * 0.1f) + 1.0f)) + f12, fArr4[i9][1]};
                                } else {
                                    c4 = c3;
                                    c5 = 0;
                                }
                                if (aVar2.f1122a != 0.0f) {
                                    float f14 = bVar.t[c5];
                                    float f15 = bVar.t[c4];
                                    float f16 = aVar2.f1122a * (1.0f - aVar2.f1123b) * 0.2f;
                                    i3 = i7;
                                    i2 = i8;
                                    c6 = 1;
                                    fArr4[i9] = new float[]{((fArr4[i9][0] - f14) * ((faceFeaturesState.mouth_width * f16) + 1.0f)) + f14, ((fArr4[i9][1] - f15) * ((faceFeaturesState.mouth_height * f16) + 1.0f)) + f15};
                                } else {
                                    c6 = c4;
                                    i3 = i7;
                                    i2 = i8;
                                }
                                if (aVar2.i != 0.0f) {
                                    float f17 = bVar.t[0];
                                    float f18 = bVar.t[c6];
                                    float[] fArr5 = new float[2];
                                    fArr5[0] = ((fArr4[i9][0] - f17) * 0.8f) + f17;
                                    fArr5[c6] = ((fArr4[i9][c6] - f18) * 0.8f) + f18;
                                    float[] fArr6 = new float[2];
                                    fArr6[0] = t.a(fArr5, bVar.q[0]);
                                    fArr6[c6] = t.a(fArr5, bVar.q[c6]);
                                    float min = Math.min(fArr6[0], fArr6[c6]);
                                    float a2 = t.a(fArr4[i9], bVar.t);
                                    float min2 = Math.min(1.0f, min / 0.1f);
                                    float min3 = Math.min(1.0f, a2 / 0.1f);
                                    float f19 = faceFeaturesState.smile;
                                    float f20 = aVar2.i;
                                    f = f4;
                                    i4 = sqrt;
                                    c7 = 1;
                                    fArr4[i9] = new float[]{((fArr4[i9][0] - f17) * ((faceFeaturesState.smile * aVar2.f1122a * 0.1f) + 1.0f)) + f17, (fArr4[i9][1] - f18) + (f19 * f20 * (1.0f - min2) * min3 * 0.05f) + f18};
                                } else {
                                    c7 = c6;
                                    f = f4;
                                    i4 = sqrt;
                                }
                                if (aVar2.f1123b != 0.0f) {
                                    float f21 = bVar.r[0];
                                    float f22 = bVar.r[c7];
                                    f2 = f3;
                                    c7 = 1;
                                    fArr4[i9] = new float[]{((fArr4[i9][0] - f21) * ((faceFeaturesState.nose_width * aVar2.f1123b * 0.3f) + 1.0f)) + f21, ((fArr4[i9][1] - f22) * ((faceFeaturesState.nose_height * aVar2.f1123b * (1.0f - aVar2.f1122a) * 0.1f) + 1.0f)) + f22};
                                } else {
                                    f2 = f3;
                                }
                                if (aVar2.c != 0.0f) {
                                    float f23 = bVar.s[0];
                                    float f24 = bVar.s[c7] + 0.15f;
                                    c7 = 1;
                                    fArr4[i9] = new float[]{fArr4[i9][0], ((fArr4[i9][1] - f24) * ((faceFeaturesState.chin_height * aVar2.c * (1.0f - aVar2.h) * (1.0f - aVar2.f1122a) * (1.0f - aVar2.f1123b) * 0.05f) + 1.0f)) + f24};
                                }
                                if (aVar2.d != 0.0f) {
                                    float f25 = bVar.s[0];
                                    float f26 = bVar.s[c7] - 0.15f;
                                    float f27 = faceFeaturesState.forehead_height;
                                    float f28 = aVar2.d;
                                    float f29 = aVar2.h;
                                    float f30 = fArr4[i9][0];
                                    float[] fArr7 = fArr4[i9];
                                    float[] fArr8 = new float[2];
                                    fArr8[0] = f30;
                                    fArr8[c7] = ((fArr7[c7] - f26) * ((f27 * f28 * (1.0f - f29) * 0.05f) + 1.0f)) + f26;
                                    fArr4[i9] = fArr8;
                                }
                                float[] fArr9 = new float[2];
                                fArr9[0] = (fArr4[i9][0] * f2) - (fArr4[i9][c7] * f);
                                fArr9[c7] = (fArr4[i9][0] * f) + (fArr4[i9][c7] * f2);
                                fArr4[i9] = fArr9;
                                int i10 = i9 % i4;
                                if (i10 == 0) {
                                    fArr4[i9][0] = Math.min(-1.0f, fArr4[i9][0]);
                                    i5 = i2;
                                } else {
                                    i5 = i2;
                                    if (i10 == i5) {
                                        fArr4[i9][0] = Math.max(1.0f, fArr4[i9][0]);
                                    }
                                }
                                int i11 = i4;
                                if (i9 < i11) {
                                    fArr4[i9][1] = Math.min(-1.0f, fArr4[i9][1]);
                                } else if (i9 > i11 * i5) {
                                    fArr4[i9][1] = Math.max(1.0f, fArr4[i9][1]);
                                }
                                i9++;
                                List<Context.FaceFeaturesState> list3 = list;
                                i8 = i5;
                                aVar = aVar3;
                                fArr3 = fArr2;
                                i7 = i3;
                                f3 = f2;
                                f4 = f;
                                sqrt = i11;
                                Context context3 = context;
                            }
                            fArr = fArr3;
                            i = i7;
                            z = true;
                            i7 = i + 1;
                            i6 = 0;
                            context2 = context;
                            list2 = list;
                            fArr3 = fArr;
                        }
                    }
                }
                fArr = fArr3;
                i = i7;
                i7 = i + 1;
                i6 = 0;
                context2 = context;
                list2 = list;
                fArr3 = fArr;
            }
            float[][] fArr10 = fArr3;
            if (z) {
                for (int i12 = 0; i12 < fArr4.length; i12++) {
                    fArr4[i12] = new float[]{fArr4[i12][0] - fArr10[i12][0], fArr4[i12][1] - fArr10[i12][1]};
                }
                context2 = context;
                context2.mesh.setDeltaPoints(fArr4);
            } else {
                return;
            }
        }
        context2.mesh.compile();
    }

    public static void a(Context context, float[] fArr) {
        if (fArr != null) {
            context.mesh.distortion = fArr;
        } else {
            context.mesh.setDistortionPoints(context.distortionVertices);
        }
        context.mesh.compile();
    }

    public void a(Context context, float[] fArr, boolean z) {
        float[] fArr2;
        char c2;
        Context context2 = context;
        float f = 1.0f;
        char c3 = 1;
        if (z) {
            fArr[0] = (fArr[0] * 2.0f) - 1.0f;
            fArr[1] = (fArr[1] * 2.0f) - 1.0f;
            fArr2 = t.a(fArr);
        } else {
            fArr2 = fArr;
        }
        if (this.f1120b == null) {
            this.f1120b = fArr2;
        }
        float f2 = fArr2[0];
        float[] fArr3 = this.f1120b;
        float f3 = fArr3[0];
        float f4 = fArr2[1];
        float f5 = fArr3[1];
        float[][] distortionPoints = context2.mesh.getDistortionPoints();
        float[][] fArr4 = new float[distortionPoints.length][];
        int i = 0;
        while (i < distortionPoints.length) {
            float[] fArr5 = distortionPoints[i];
            if (Math.abs(fArr5[0]) == f || Math.abs(fArr5[c3]) == f) {
                c2 = c3;
                fArr4[i] = fArr5;
            } else {
                float f6 = fArr2[0];
                float f7 = this.c;
                float f8 = fArr2[c3];
                float f9 = fArr5[0];
                float a2 = t.a(new float[]{f6 * f7, f8}, new float[]{f9 * f7, fArr5[c3]});
                if (a2 <= this.f1119a.radius) {
                    float a3 = t.a(Math.min(1.0f, a2 / this.f1119a.radius)) * this.f1119a.strength;
                    if (this.f1119a.mode.equals("pinch")) {
                        float f10 = 1.0f - (a3 * this.f1119a.rate);
                        fArr4[i] = new float[]{((fArr5[0] - fArr2[0]) * f10) + fArr2[0], ((fArr5[1] - fArr2[1]) * f10) + fArr2[1]};
                    } else if (this.f1119a.mode.equals("bulge")) {
                        float f11 = (this.f1119a.rate * a3) + 1.0f;
                        fArr4[i] = new float[]{((fArr5[0] - fArr2[0]) * f11) + fArr2[0], ((fArr5[1] - fArr2[1]) * f11) + fArr2[1]};
                    } else if (this.f1119a.mode.equals("restore")) {
                        fArr4[i] = new float[2];
                        t.a(fArr4[i], fArr5, context2.distortionVertices[i], a3 * 0.5f);
                    } else {
                        c2 = 1;
                        fArr4[i] = new float[]{fArr5[0] + ((f2 - f3) * a3), fArr5[1] + (a3 * (f4 - f5))};
                    }
                    c2 = 1;
                } else {
                    c2 = 1;
                    fArr4[i] = fArr5;
                }
            }
            i++;
            c3 = c2;
            f = 1.0f;
        }
        context2.mesh.setDistortionPoints(fArr4);
        context2.renderStates.put("distortion_mesh", context2.mesh.distortion);
        context2.mesh.compile();
        this.f1120b = fArr2;
    }
}
