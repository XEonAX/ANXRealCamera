package com.oppo.camera.ui.preview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.params.Face;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.oppo.camera.R;
import com.oppo.camera.o.d;
import java.util.ArrayList;
import java.util.HashMap;

public class FaceView extends View implements g {
    /* access modifiers changed from: private */
    public int A;
    /* access modifiers changed from: private */
    public int B;
    private Face[] C;
    private Face[] D;
    private ArrayList<Rect> E;
    private ArrayList<Rect> F;
    private HashMap<String, String> G;
    /* access modifiers changed from: private */
    public ValueAnimator H;
    private ValueAnimator I;
    private int J;
    /* access modifiers changed from: private */
    public int K;
    /* access modifiers changed from: private */
    public boolean L;
    /* access modifiers changed from: private */
    public boolean M;
    private float N;
    private volatile boolean O;
    private int P;
    private volatile int Q;

    /* renamed from: a  reason: collision with root package name */
    private int f2861a;

    /* renamed from: b  reason: collision with root package name */
    private int f2862b;
    private boolean c;
    /* access modifiers changed from: private */
    public boolean d;
    private Matrix e;
    private Rect f;
    private Rect[] g;
    private RectF h;
    private Face[] i;
    private Face[] j;
    private Drawable k;
    private Drawable l;
    private Drawable m;
    private Paint n;
    private int o;
    private int[] p;
    private int[] q;
    private int[] r;
    private long s;
    private boolean t;
    private boolean u;
    private boolean v;
    private long w;
    private float x;
    private float y;
    /* access modifiers changed from: private */
    public int z;

    public FaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new Matrix();
        this.f = null;
        this.g = null;
        this.h = new RectF();
        this.o = 0;
        this.s = 0;
        this.t = false;
        this.u = false;
        this.v = true;
        this.w = 0;
        this.x = 0.0f;
        this.y = 1.0f;
        this.z = 0;
        this.A = 0;
        this.B = 0;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = 32;
        this.K = 255;
        this.L = false;
        this.M = false;
        this.N = 1.0f;
        this.O = false;
        this.P = 0;
        this.Q = 0;
        this.m = getResources().getDrawable(R.drawable.icon_face_detecte);
        this.l = getResources().getDrawable(R.drawable.beauty3d_face_detecte);
        this.P = (int) getResources().getDimension(R.dimen.beauty3d_face_outer_width);
        this.k = this.m;
        this.n = new Paint();
        this.n.setAntiAlias(true);
        this.n.setDither(true);
        this.n.setColor(-1);
        this.n.setStyle(Paint.Style.STROKE);
        this.n.setStrokeCap(Paint.Cap.ROUND);
        this.n.setStrokeWidth(10.0f);
        if (f()) {
            i();
        }
    }

    private int a(int i2, int i3) {
        return Math.abs(i3 - i2);
    }

    private int a(int i2, int i3, int i4, int i5) {
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        return (int) Math.sqrt((double) ((i6 * i6) + (i7 * i7)));
    }

    private int a(Rect rect) {
        if (rect == null) {
            return 0;
        }
        return Math.abs(rect.right - rect.left) * Math.abs(rect.bottom - rect.top);
    }

    private int a(Face face) {
        return Math.abs(face.getBounds().right - face.getBounds().left) * Math.abs(face.getBounds().bottom - face.getBounds().top);
    }

    /* access modifiers changed from: private */
    public void a(int i2) {
        int i3 = this.A;
        this.A = i3 + 1;
        float f2 = (i3 < this.z ? ((float) this.A) * this.x : 100.0f) / 100.0f;
        if (i2 >= 100) {
            f2 = 1.0f;
            this.A = this.z;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            ArrayList<Rect> arrayList = this.F;
            if (arrayList != null && i4 < arrayList.size()) {
                if ((this.B & (1 << i4)) != 0) {
                    int parseInt = Integer.parseInt(this.G.get(String.valueOf(i4)));
                    this.F.get(i4).left = this.C[parseInt].getBounds().left + ((int) (((float) this.E.get(i5).left) * f2));
                    this.F.get(i4).top = this.C[parseInt].getBounds().top + ((int) (((float) this.E.get(i5).top) * f2));
                    this.F.get(i4).right = this.C[parseInt].getBounds().right + ((int) (((float) this.E.get(i5).right) * f2));
                    this.F.get(i4).bottom = this.C[parseInt].getBounds().bottom + ((int) (((float) this.E.get(i5).bottom) * f2));
                    i5++;
                }
                i4++;
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0032, code lost:
        if (r5 != 270) goto L_0x006d;
     */
    private void a(Canvas canvas, Rect rect) {
        if (canvas != null && rect != null) {
            canvas.save();
            int i2 = rect.left - this.P;
            int i3 = rect.right + this.P;
            int i4 = rect.top - this.P;
            int i5 = rect.bottom + this.P;
            int c2 = c(i2, i3);
            int c3 = c(i4, i5);
            int i6 = this.f2862b;
            if (i6 != 0) {
                if (i6 != 90) {
                    if (i6 != 180) {
                    }
                }
                canvas.rotate((float) (this.f2862b - 180), (float) c2, (float) c3);
                this.l.setBounds(i2, i4, (i5 - i4) + i2, (i3 - i2) + i4);
                this.l.setAlpha(this.K);
                this.l.draw(canvas);
                canvas.restore();
            }
            canvas.rotate((float) this.f2862b, (float) c2, (float) c3);
            this.l.setBounds(i2, i4, i3, i5);
            this.l.setAlpha(this.K);
            this.l.draw(canvas);
            canvas.restore();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00c5 A[SYNTHETIC] */
    private void a(Face[] faceArr) {
        boolean z2;
        float f2;
        if (this.o == faceArr.length) {
            z2 = false;
        } else {
            this.o = faceArr.length;
            this.p = new int[faceArr.length];
            this.q = new int[faceArr.length];
            this.r = new int[faceArr.length];
            for (int i2 = 0; i2 < faceArr.length; i2++) {
                Face face = faceArr[i2];
                this.p[i2] = b(face.getBounds().left, face.getBounds().right);
                this.q[i2] = b(face.getBounds().top, face.getBounds().bottom);
                this.r[i2] = a(face);
            }
            this.t = false;
            z2 = true;
        }
        boolean z3 = z2;
        for (int i3 = 0; i3 < faceArr.length; i3++) {
            Face face2 = faceArr[i3];
            int b2 = b(face2.getBounds().left, face2.getBounds().right);
            int b3 = b(face2.getBounds().top, face2.getBounds().bottom);
            int a2 = a(face2);
            int[] iArr = this.r;
            if (iArr[i3] > 0) {
                float f3 = ((float) a2) / ((float) iArr[i3]);
                if (f3 < 1.0f) {
                    f3 = 1.0f / f3;
                }
                f2 = f3 - 1.0f;
            } else {
                f2 = 0.3f;
            }
            if (a(b2, b3, this.p[i3], this.q[i3]) > 260) {
                this.t = false;
            } else {
                if (f2 >= 0.3f) {
                    this.t = false;
                }
                if (!z3) {
                    this.p[i3] = b2;
                    this.q[i3] = b3;
                    this.r[i3] = a2;
                }
            }
            z3 = true;
            if (!z3) {
            }
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z3 || !this.t || elapsedRealtime - this.s <= 3000 || this.M) {
            if (!this.v) {
                this.w = SystemClock.uptimeMillis();
            }
            this.v = true;
            return;
        }
        this.v = false;
    }

    private boolean a(Face[] faceArr, Face[] faceArr2) {
        int i2;
        if (faceArr == null || faceArr2 == null || faceArr.length <= 0 || faceArr.length != faceArr2.length) {
            i2 = 0;
        } else {
            i2 = 0;
            for (int i3 = 0; i3 < faceArr.length; i3++) {
                Rect bounds = faceArr[i3].getBounds();
                int b2 = b(bounds.left, bounds.right);
                int b3 = b(bounds.top, bounds.bottom);
                int a2 = a(faceArr[i3]);
                int i4 = 0;
                while (true) {
                    if (i4 >= faceArr2.length) {
                        break;
                    } else if (-1 == faceArr2[i3].getId() || faceArr[i3].getId() != faceArr2[i4].getId()) {
                        i4++;
                    } else {
                        Rect bounds2 = faceArr2[i4].getBounds();
                        int b4 = b(bounds2.left, bounds2.right);
                        int b5 = b(bounds2.top, bounds2.bottom);
                        int a3 = a(faceArr2[i4]);
                        if (a(b2, b3, b4, b5) == 0 && a(a2, a3) == 0) {
                            i2++;
                        }
                    }
                }
            }
        }
        if (faceArr == null || faceArr2 == null || i2 != faceArr2.length || i2 != faceArr.length) {
            return (faceArr == null && faceArr2 == null) ? false : true;
        }
        return false;
    }

    private int b(int i2, int i3) {
        return (i2 + i3) / 2;
    }

    private void b(Face[] faceArr) {
        if (a(this.D, faceArr)) {
            this.J = 32;
            int i2 = 0;
            this.B = 0;
            this.C = this.D;
            this.D = faceArr;
            this.E.clear();
            this.G.clear();
            Face[] faceArr2 = this.C;
            if (faceArr2 != null) {
                Face[] faceArr3 = this.D;
                if (faceArr3 != null && faceArr2.length > 0 && faceArr3.length > 0) {
                    int i3 = 0;
                    while (true) {
                        Face[] faceArr4 = this.C;
                        if (i3 >= faceArr4.length) {
                            break;
                        }
                        Rect bounds = faceArr4[i3].getBounds();
                        int b2 = b(bounds.left, bounds.right);
                        int b3 = b(bounds.top, bounds.bottom);
                        int a2 = a(this.C[i3]);
                        int i4 = 0;
                        while (true) {
                            Face[] faceArr5 = this.D;
                            if (i4 >= faceArr5.length) {
                                break;
                            }
                            if (-1 != faceArr5[i4].getId() && this.D[i4].getId() == this.C[i3].getId() && !this.G.containsKey(String.valueOf(i4))) {
                                Rect bounds2 = this.D[i4].getBounds();
                                int b4 = b(bounds2.left, bounds2.right);
                                int b5 = b(bounds2.top, bounds2.bottom);
                                int a3 = a(this.D[i4]);
                                a(a2, a3);
                                int a4 = a(b2, b3, b4, b5);
                                float f2 = 0.0f;
                                if (a2 > 0) {
                                    float f3 = (((float) a3) * 1.0f) / ((float) a2);
                                    if (f3 < 1.0f) {
                                        f3 = 1.0f / f3;
                                    }
                                    f2 = f3 - 1.0f;
                                }
                                if (a4 > 2 || f2 > 0.01f) {
                                    int a5 = d.a((int) ((((float) a4) / 30.0f) * 32.0f), 32, 96);
                                    int a6 = d.a((int) (f2 * 32.0f * 1.5f), 32, 160);
                                    if (a5 > this.J) {
                                        this.J = a5;
                                    }
                                    if (a6 > this.J) {
                                        this.J = a6;
                                    }
                                    this.B = 1 << i4;
                                    this.G.put(String.valueOf(i4), String.valueOf(i3));
                                    this.E.add(new Rect(bounds2.left - bounds.left, bounds2.top - bounds.top, bounds2.right - bounds.right, bounds2.bottom - bounds.bottom));
                                }
                            }
                            i4++;
                        }
                        i3++;
                    }
                }
            }
            if (this.B != 0) {
                this.F.clear();
                while (true) {
                    Face[] faceArr6 = this.D;
                    if (i2 < faceArr6.length) {
                        this.F.add(new Rect(faceArr6[i2].getBounds().left, this.D[i2].getBounds().top, this.D[i2].getBounds().right, this.D[i2].getBounds().bottom));
                        i2++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private int c(int i2, int i3) {
        return i2 + ((i3 - i2) / 2);
    }

    private boolean f() {
        return true;
    }

    private void g() {
        if (!this.L) {
            this.L = true;
            this.K = 255;
            setLayerType(2, (Paint) null);
            int i2 = this.J;
            this.z = (i2 / 16) + 1;
            this.A = 0;
            this.x = 100.0f / ((float) this.z);
            ValueAnimator valueAnimator = this.H;
            if (valueAnimator != null) {
                valueAnimator.setDuration((long) i2);
                this.H.start();
            }
        }
    }

    private void h() {
        if (!this.M) {
            this.v = true;
            ValueAnimator valueAnimator = this.H;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.H.cancel();
            }
            ValueAnimator valueAnimator2 = this.I;
            if (valueAnimator2 != null) {
                this.M = true;
                valueAnimator2.start();
            }
        }
    }

    private void i() {
        this.E = new ArrayList<>();
        this.F = new ArrayList<>();
        this.G = new HashMap<>();
        this.H = ValueAnimator.ofInt(new int[]{0, 100});
        this.H.setDuration((long) this.J);
        this.H.setInterpolator(new LinearInterpolator());
        this.H.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                if (FaceView.this.d && FaceView.this.H != null) {
                    FaceView.this.H.cancel();
                } else if (FaceView.this.L && FaceView.this.A < FaceView.this.z) {
                    if (!FaceView.this.M || FaceView.this.H == null) {
                        FaceView.this.a(intValue);
                        FaceView.this.invalidate();
                        return;
                    }
                    FaceView.this.H.end();
                }
            }
        });
        this.H.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
                boolean unused = FaceView.this.L = false;
            }

            public void onAnimationEnd(Animator animator) {
                FaceView.this.setLayerType(0, (Paint) null);
                boolean unused = FaceView.this.L = false;
                int unused2 = FaceView.this.B = 0;
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
                boolean unused = FaceView.this.L = true;
            }
        });
        this.I = ValueAnimator.ofInt(new int[]{255, 0});
        this.I.setDuration(300);
        this.I.setInterpolator(new LinearInterpolator());
        this.I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int unused = FaceView.this.K = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                FaceView.this.invalidate();
            }
        });
        this.I.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
                boolean unused = FaceView.this.M = false;
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void j() {
        if (f()) {
            this.B = 0;
            this.C = null;
            this.D = null;
            this.j = null;
            this.i = null;
            ValueAnimator valueAnimator = this.H;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.H.end();
            }
            ValueAnimator valueAnimator2 = this.I;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.I.end();
            }
            this.H = null;
            this.I = null;
            ArrayList<Rect> arrayList = this.E;
            if (arrayList != null) {
                arrayList.clear();
                this.E = null;
            }
            ArrayList<Rect> arrayList2 = this.F;
            if (arrayList2 != null) {
                arrayList2.clear();
                this.F = null;
            }
            HashMap<String, String> hashMap = this.G;
            if (hashMap != null) {
                hashMap.clear();
                this.G = null;
            }
        }
    }

    public void a(int i2, boolean z2) {
        this.f2862b = i2;
        invalidate();
    }

    public void a(boolean z2) {
        this.k = this.m;
        com.oppo.camera.d.a("FaceView", "showSuccess()");
        invalidate();
    }

    public boolean a() {
        Face[] faceArr = this.i;
        return faceArr != null && faceArr.length > 0;
    }

    public void b() {
        if (this.i != null) {
            com.oppo.camera.d.a("FaceView", "clear()");
            this.k = this.m;
            this.i = null;
            this.o = 0;
            ArrayList<Rect> arrayList = this.F;
            if (arrayList != null && arrayList.size() > 0) {
                this.F.clear();
                invalidate();
            }
        }
    }

    public void b(boolean z2) {
        this.k = this.m;
        com.oppo.camera.d.a("FaceView", "showFail()");
        invalidate();
    }

    public void c() {
        com.oppo.camera.d.a("FaceView", "pause()");
        this.d = true;
    }

    public void d() {
        com.oppo.camera.d.a("FaceView", "resume()");
        this.d = false;
    }

    public void e() {
        this.d = true;
        this.k = null;
        this.m = null;
        this.i = null;
        this.e = null;
        this.n = null;
        j();
    }

    public Rect[] getFaceRects() {
        return this.g;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        this.e.reset();
        int i3 = 0;
        this.u = false;
        ArrayList<Rect> arrayList = this.F;
        if (arrayList != null) {
            i2 = arrayList.size();
        } else {
            Face[] faceArr = this.i;
            i2 = faceArr != null ? faceArr.length : 0;
        }
        if (i2 > 0) {
            this.e.setTranslate((float) ((-this.f.width()) / 2), (float) ((-this.f.height()) / 2));
            this.e.postScale(this.c ? -1.0f : 1.0f, 1.0f);
            this.e.postRotate((float) this.f2861a);
            this.e.postScale(((((float) getWidth()) * this.y) * this.N) / ((float) this.f.height()), ((((float) getHeight()) * this.y) * this.N) / ((float) this.f.width()));
            this.e.postTranslate((float) (getWidth() / 2), (float) (getHeight() / 2));
            this.g = new Rect[i2];
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                ArrayList<Rect> arrayList2 = this.F;
                if (arrayList2 != null) {
                    this.h.set(arrayList2.get(i5));
                } else {
                    this.h.set(this.i[i5].getBounds());
                }
                this.h.offset((float) (-this.f.left), (float) (-this.f.top));
                this.e.mapRect(this.h);
                Rect rect = new Rect(Math.max(0, Math.round(this.h.left)), Math.max(0, Math.round(this.h.top)), Math.min(getWidth(), Math.round(this.h.right)), Math.min(getHeight(), Math.round(this.h.bottom)));
                int a2 = a(rect);
                if (a2 >= i4) {
                    i4 = a2;
                }
                this.g[i5] = rect;
            }
            while (true) {
                Rect[] rectArr = this.g;
                if (i3 >= rectArr.length) {
                    break;
                }
                this.k.setBounds(rectArr[i3].left, this.g[i3].top, this.g[i3].right, this.g[i3].bottom);
                if (this.v) {
                    if (!this.t) {
                        this.s = SystemClock.elapsedRealtime();
                    }
                    this.t = true;
                    this.u = true;
                    if (!this.O) {
                        this.k.setAlpha(this.K);
                        this.k.draw(canvas);
                    } else if (i3 == this.Q) {
                        a(canvas, this.g[i3]);
                    } else {
                        this.k.setAlpha(this.K);
                        this.k.draw(canvas);
                    }
                }
                i3++;
            }
        }
        ArrayList<Rect> arrayList3 = this.F;
        if (arrayList3 != null && this.K == 0 && arrayList3.size() > 0) {
            this.F.clear();
        }
        super.onDraw(canvas);
    }

    public void setCropRegion(Rect rect) {
        this.f = rect;
    }

    public void setDisplayOrientation(int i2) {
        this.f2861a = i2;
    }

    public void setEISScale(float f2) {
        this.N = f2;
    }

    public void setFaces(Face[] faceArr) {
        if (!this.d && faceArr != null) {
            this.j = this.i;
            this.i = faceArr;
            a(faceArr);
            if (!f()) {
                invalidate();
            } else if (!this.M) {
                if (this.K != 0 && this.v && !this.L) {
                    Face[] faceArr2 = this.i;
                    if (faceArr2 != null && faceArr2.length > 0) {
                        b(faceArr2);
                    }
                }
                if (this.B == 0 || !this.v || this.L) {
                    if (SystemClock.uptimeMillis() - this.w > 100 && this.K == 255 && this.u) {
                        Face[] faceArr3 = this.i;
                        if (faceArr3 == null || faceArr3.length == 0 || !this.v) {
                            h();
                            return;
                        }
                    }
                    if (!this.L && a(this.j, this.i) && this.v) {
                        this.K = 255;
                        this.F.clear();
                        int i2 = 0;
                        while (true) {
                            Face[] faceArr4 = this.i;
                            if (i2 < faceArr4.length) {
                                this.F.add(new Rect(faceArr4[i2].getBounds().left, this.i[i2].getBounds().top, this.i[i2].getBounds().right, this.i[i2].getBounds().bottom));
                                i2++;
                            } else {
                                invalidate();
                                return;
                            }
                        }
                    }
                } else {
                    g();
                }
            }
        }
    }

    public void setMainFaceIndex(int i2) {
        this.Q = i2;
    }

    public void setMirror(boolean z2) {
        this.c = z2;
    }

    public void setShowBeauty3DFace(boolean z2) {
        this.O = z2;
    }

    public void setZoomValue(float f2) {
        this.y = f2;
    }
}
