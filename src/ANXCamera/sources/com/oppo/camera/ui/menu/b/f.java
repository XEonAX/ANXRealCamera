package com.oppo.camera.ui.menu.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.text.TextPaint;
import android.view.animation.PathInterpolator;
import com.a.a.e;
import com.a.a.g;
import com.a.a.h;
import com.a.a.j;
import com.oppo.camera.R;
import com.oppo.camera.d;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: HeadlineRenderer */
public class f implements GLSurfaceView.Renderer {
    private float A = 1.0f;
    /* access modifiers changed from: private */
    public a B = null;
    private int C = 0;
    private int D = 0;
    private int E = 0;
    private e F = new e();
    private int G = 0;
    private int H = 0;
    private int I = 0;
    private float J = 0.0f;
    private Typeface K = null;
    private Typeface L = null;
    private PathInterpolator M = new PathInterpolator(0.35f, 0.62f, 0.2f, 1.0f);
    private PathInterpolator N = new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);
    private com.a.a.f O = null;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final Object f2743a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private int f2744b = -1;
    private int c = -1;
    private float d = 0.0f;
    private float e = 0.0f;
    private float f = 0.0f;
    private float g = 0.0f;
    private float h = 0.0f;
    private float i = 0.0f;
    private float j = 0.0f;
    private float k = 0.0f;
    private b l = null;
    private Context m = null;
    private float[] n = null;
    private String[] o = null;
    private int p = 0;
    private int q = 0;
    private int r = -1;
    private volatile boolean s = true;
    /* access modifiers changed from: private */
    public float t = 0.0f;
    private float u = 0.0f;
    private volatile int v = 0;
    private int w = 0;
    private int x = 0;
    private volatile int y = 0;
    private int z = 0;

    /* compiled from: HeadlineRenderer */
    public interface a {
        void a(int i, int i2, float f);

        void a(int i, boolean z);
    }

    /* compiled from: HeadlineRenderer */
    private class b extends e {
        private b() {
        }

        public void a(com.a.a.f fVar) {
            synchronized (f.this.f2743a) {
                float unused = f.this.t = (float) fVar.c();
                if (f.this.B != null) {
                    f.this.B.a(0, true);
                }
            }
        }

        public void b(com.a.a.f fVar) {
            d.a("HeadlineRenderer", "onSpringAtRest, mSlideAnim completed");
        }
    }

    public f(Context context, int i2, int i3, a aVar) {
        if (context != null) {
            this.m = context;
            this.B = aVar;
            this.C = context.getResources().getDimensionPixelSize(R.dimen.head_line_normal_size);
            this.D = context.getResources().getDimensionPixelSize(R.dimen.head_line_pressed_size);
            this.E = context.getResources().getDimensionPixelSize(R.dimen.headline_item_gap);
            this.G = context.getResources().getDimensionPixelSize(R.dimen.head_line_background_height);
            this.H = context.getResources().getDimensionPixelSize(R.dimen.head_line_background_radius);
            this.I = context.getResources().getDimensionPixelSize(R.dimen.head_line_background_padding);
            this.c = i2;
            this.f2744b = i3;
            float f2 = (float) i3;
            this.k = f2 / 2.0f;
            float f3 = this.k;
            this.d = ((float) i2) / f3;
            this.e = f2 / f3;
            float f4 = this.d;
            this.f = (-f4) / 2.0f;
            this.g = f4 / 2.0f;
            float f5 = this.e;
            this.h = f5 / 2.0f;
            this.i = (-f5) / 2.0f;
            this.j = (float) (((double) (f4 / 2.0f)) / Math.sin(Math.toRadians(22.5d)));
            this.p = (int) (((double) this.j) * Math.toRadians(270.0d) * ((double) this.k));
            this.q = this.f2744b;
            d();
            d.a("HeadlineRenderer", "HeadlineRenderer, mNormalTextSize: " + this.C + ", mSelectTextSize: " + this.D + ", mTextGap: " + this.E + ", mSelectBackgroundHeight: " + this.G + ", mSelectBackgroundRadius: " + this.H + ", mSelectBackgroundPadding: " + this.I + ", mWidthPixel: " + this.c + ", mHeightPixel: " + this.f2744b + ", mModelUnitPixel: " + this.k + ", mModelWidth: " + this.d + ", mModelHeight: " + this.e + ", mProjectNearLeft: " + this.f + ", mProjectNearRight: " + this.g + ", mProjectNearTop: " + this.h + ", mProjectNearBottom: " + this.i + ", mRadius: " + this.j + ", mTextureWidth: " + this.p + ", mTextureHeight: " + this.q);
            return;
        }
        throw new IllegalArgumentException("the context can't be null");
    }

    private void a(int i2, int i3, String[] strArr) {
        d.a("HeadlineRenderer", "updateTexture, width: " + i2 + ", height: " + i3 + ", textArray: " + strArr);
        this.n = new float[(strArr.length + 1)];
        Bitmap a2 = com.oppo.camera.o.d.a(i2, i3, Bitmap.Config.ARGB_8888);
        TextPaint textPaint = new TextPaint();
        TextPaint textPaint2 = new TextPaint();
        Canvas canvas = new Canvas(a2);
        int i4 = 0;
        canvas.drawColor(0);
        textPaint.setAntiAlias(true);
        textPaint.setTextSize((float) this.C);
        textPaint.setTypeface(g());
        textPaint.setColor(-1);
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint2.setAntiAlias(true);
        textPaint2.setTextSize((float) this.C);
        textPaint2.setTypeface(f());
        textPaint2.setColor(-13541);
        textPaint2.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        Paint.FontMetrics fontMetrics2 = textPaint2.getFontMetrics();
        float height = ((((float) a2.getHeight()) / 2.0f) - (fontMetrics.bottom / 2.0f)) - (fontMetrics.top / 2.0f);
        float height2 = ((((float) a2.getHeight()) / 2.0f) - (fontMetrics2.bottom / 2.0f)) - (fontMetrics2.top / 2.0f);
        float f2 = 0.0f;
        this.n[0] = 0.0f;
        while (i4 < strArr.length) {
            float measureText = textPaint.measureText(strArr[i4]) + f2 + ((float) this.E);
            if (this.z == 1) {
                if (i4 != this.y) {
                    canvas.drawText(strArr[i4], (f2 + measureText) / 2.0f, height, textPaint);
                } else {
                    canvas.drawText(strArr[i4], (f2 + measureText) / 2.0f, height2, textPaint2);
                }
            } else if (i4 != this.v) {
                canvas.drawText(strArr[i4], (f2 + measureText) / 2.0f, height, textPaint);
            } else {
                canvas.drawText(strArr[i4], (f2 + measureText) / 2.0f, height2, textPaint2);
            }
            i4++;
            this.n[i4] = (float) Math.toDegrees((double) ((measureText / this.k) / this.j));
            f2 = measureText;
        }
        GLES20.glBindTexture(3553, this.r);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 10497.0f);
        GLES20.glTexParameterf(3553, 10243, 10497.0f);
        GLUtils.texImage2D(3553, 0, GLUtils.getInternalFormat(a2), a2, GLUtils.getType(a2), 0);
        a2.recycle();
    }

    private float d(float f2) {
        float f3;
        float f4;
        if (this.z == 1) {
            f4 = e(this.x);
            f3 = e(this.y);
        } else {
            f4 = e(this.w);
            f3 = e(this.v);
        }
        d.a("HeadlineRenderer", "getCurrentBackgroundLocation, startLocation: " + f4 + ", endLocation: " + f3);
        return f4 + ((f3 - f4) * f2);
    }

    private void d() {
        this.O = j.c().b().a(g.b(2.0d, 35.0d));
        this.O.a((h) new b());
    }

    private void d(int i2) {
        if (i2 == 0) {
            int i3 = this.w;
            if (i3 < 0 || i3 > this.n.length - 2 || this.v < 0 || this.v > this.n.length - 2) {
                d.e("HeadlineRenderer", "setHeadlineAngle, ROTATE_MODE_SLIDE, the parameter is illegal");
                return;
            }
            if (this.w != this.v) {
                float f2 = this.t;
                float[] fArr = this.n;
                int i4 = this.w;
                float abs = Math.abs(f2 - ((fArr[i4] + fArr[i4 + 1]) / 2.0f));
                float[] fArr2 = this.n;
                int i5 = this.w;
                this.J = abs / Math.abs(((this.n[this.v] + this.n[this.v + 1]) / 2.0f) - ((fArr2[i5] + fArr2[i5 + 1]) / 2.0f));
                if (this.J > 1.0f) {
                    this.J = 1.0f;
                }
            } else {
                this.J = 1.0f;
            }
            this.F.a(this.t - 270.0f, 0.0f, 1.0f, 0.0f);
            d.a("HeadlineRenderer", "setHeadlineAngle, ROTATE_MODE_SLIDE, angle:" + this.t);
        } else if (i2 == 1) {
            int i6 = this.x;
            if (i6 < 0 || i6 > this.n.length - 2 || this.y < 0 || this.y > this.n.length - 2) {
                d.e("HeadlineRenderer", "setHeadlineAngle, ROTATE_MODE_FOLLOW_FINGER , the parameter is illegal");
                return;
            }
            if (this.x != this.y) {
                float f3 = this.t;
                float[] fArr3 = this.n;
                int i7 = this.x;
                float abs2 = Math.abs(f3 - ((fArr3[i7] + fArr3[i7 + 1]) / 2.0f));
                float[] fArr4 = this.n;
                int i8 = this.x;
                this.J = abs2 / Math.abs(((this.n[this.y] + this.n[this.y + 1]) / 2.0f) - ((fArr4[i8] + fArr4[i8 + 1]) / 2.0f));
                if (this.J > 1.0f) {
                    this.J = 1.0f;
                }
            } else {
                this.J = 1.0f;
            }
            this.F.a(this.t - 270.0f, 0.0f, 1.0f, 0.0f);
            d.a("HeadlineRenderer", "setHeadlineAngle, ROTATE_MODE_FOLLOW_FINGER, angle:" + this.t);
        } else if (i2 == 2) {
            if (this.v >= 0) {
                int i9 = this.v;
                float[] fArr5 = this.n;
                if (i9 <= fArr5.length - 2) {
                    this.t = (fArr5[this.v] + this.n[this.v + 1]) / 2.0f;
                    this.J = 1.0f;
                    this.F.a(this.t - 270.0f, 0.0f, 1.0f, 0.0f);
                    d.a("HeadlineRenderer", "setHeadlineAngle, ROTATE_MODE_NO_ANIMATION, angle:" + this.t);
                    return;
                }
            }
            d.e("HeadlineRenderer", "setHeadlineAngle, ROTATE_MODE_NO_ANIMATION , the parameter is illegal");
        }
    }

    private float e(int i2) {
        float[] fArr = this.n;
        double radians = Math.toRadians((double) (fArr[i2 + 1] - fArr[i2]));
        float f2 = this.j;
        float f3 = this.k;
        return (float) ((((double) f2) * Math.sin(((((((((double) f2) * radians) / 2.0d) - ((double) (((float) (this.E / 2)) / f3))) + ((double) (((float) this.I) / f3))) * 2.0d) / ((double) f2)) / 2.0d)) / ((double) (this.d / 2.0f)));
    }

    private void e() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.r = iArr[0];
        GLES20.glBindTexture(3553, this.r);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 10497.0f);
        GLES20.glTexParameterf(3553, 10243, 10497.0f);
        d.a("HeadlineRenderer", "initTexture, mTextureId: " + this.r);
    }

    private Typeface f() {
        Typeface typeface = this.K;
        if (typeface != null) {
            return typeface;
        }
        try {
            this.K = Typeface.createFromFile("/system/fonts/ColorFont-Medium.ttf");
        } catch (Exception unused) {
            this.K = Typeface.DEFAULT;
            d.e("HeadlineRenderer", "getMediumFontTypeface, create special typeface fail");
        }
        return this.K;
    }

    private Typeface g() {
        Typeface typeface = this.L;
        if (typeface != null) {
            return typeface;
        }
        try {
            this.L = Typeface.createFromFile("/system/fonts/ColorFont-Regular.ttf");
        } catch (Exception unused) {
            this.L = Typeface.DEFAULT;
            d.e("HeadlineRenderer", "getRegularFontTypeface, create special typeface fail");
        }
        return this.L;
    }

    private void h() {
        b bVar = this.l;
        if (bVar != null) {
            float[] fArr = this.n;
            int i2 = this.w;
            bVar.a(fArr[i2] / 270.0f, fArr[i2 + 1] / 270.0f);
            this.l.b(this.n[this.v] / 270.0f, this.n[this.v + 1] / 270.0f);
            this.l.b(1.0f);
            this.l.c(1.0f);
            d.a("HeadlineRenderer", "setHeadlineDrawer, mAnimationRatio: " + this.J);
            float d2 = d(this.N.getInterpolation(this.J));
            float f2 = ((((float) this.G) / 2.0f) / this.k) / (this.e / 2.0f);
            a aVar = this.B;
            if (aVar != null) {
                aVar.a((int) (((float) this.c) * d2), (int) (((float) this.f2744b) * f2), this.A);
            }
            this.l.a(this.A);
            this.l.a(this.r, this.F.d());
        }
    }

    public int a() {
        return this.w;
    }

    public int a(float f2) {
        synchronized (this.f2743a) {
            if (this.n != null) {
                if (this.n.length > 0) {
                    float degrees = (float) Math.toDegrees(Math.asin((double) ((Math.abs(f2) / this.k) / this.j)));
                    float f3 = (this.n[this.v] + this.n[this.v + 1]) / 2.0f;
                    d.a("HeadlineRenderer", "computeIndexOnTap, modelX: " + r1 + ", angle: " + degrees);
                    float f4 = f2 >= 0.0f ? f3 + degrees : f3 - degrees;
                    int i2 = 0;
                    while (true) {
                        if (i2 < this.n.length - 1) {
                            if (Float.compare(f4, this.n[i2]) >= 0 && Float.compare(f4, this.n[i2 + 1]) < 0) {
                                break;
                            }
                            i2++;
                        } else {
                            i2 = -1;
                            break;
                        }
                    }
                    if (this.o != null && this.o.length > 0 && i2 >= 0 && i2 < this.o.length) {
                        if (this.v != i2) {
                            this.w = this.v;
                            this.v = i2;
                            c(0);
                            this.s = true;
                            if (this.B != null) {
                                float f5 = (this.n[this.w] + this.n[this.w + 1]) / 2.0f;
                                float f6 = (this.n[this.v] + this.n[this.v + 1]) / 2.0f;
                                if (this.O == null) {
                                    d();
                                }
                                this.O.a((double) f5).b((double) f6);
                            }
                            d.a("HeadlineRenderer", "computeIndexOnTap, mCurrentIndex: " + this.v);
                            int i3 = this.v;
                            return i3;
                        }
                    }
                    d.e("HeadlineRenderer", "computeIndexOnTap, mTextArray: " + this.o + ", targetIndex: " + i2 + ", mCurrentIndex: " + this.v);
                    return -1;
                }
            }
            d.e("HeadlineRenderer", "computeIndexOnTap, mTextItemAngle is illegal");
            return -1;
        }
    }

    public void a(int i2) {
        synchronized (this.f2743a) {
            if (this.o != null && this.o.length > 0 && i2 >= 0) {
                if (i2 < this.o.length) {
                    this.w = this.v;
                    this.v = i2;
                    d.a("HeadlineRenderer", "updateCurrentIndex, mLastIndex: " + this.w + ", mCurrentIndex: " + this.v);
                    return;
                }
            }
            d.d("HeadlineRenderer", "updateCurrentIndex, mTextArray: " + this.o + ", index: " + i2 + ", mCurrentIndex: " + this.v);
        }
    }

    public void a(String str, String str2) {
        int i2 = this.w;
        int i3 = this.v;
        int i4 = 0;
        while (true) {
            String[] strArr = this.o;
            if (i4 >= strArr.length) {
                i4 = 0;
                break;
            } else if (str.equals(strArr[i4])) {
                break;
            } else {
                i4++;
            }
        }
        int i5 = 0;
        while (true) {
            String[] strArr2 = this.o;
            if (i5 >= strArr2.length) {
                i5 = 0;
                break;
            } else if (str2.equals(strArr2[i5])) {
                break;
            } else {
                i5++;
            }
        }
        if (i2 != i4) {
            this.w = i4;
        }
        if (i3 != i5) {
            a(i5, false);
        }
        d.a("HeadlineRenderer", "updateIndex, mLastIndex: " + this.w + ", mCurrentIndex: " + this.v);
    }

    public void a(String[] strArr) {
        d.a("HeadlineRenderer", "updateTextArray");
        if (strArr == null || strArr.length <= 0) {
            throw new IllegalArgumentException("the text array can't be null or it's length can't be 0");
        }
        synchronized (this.f2743a) {
            this.o = strArr;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0056, code lost:
        return true;
     */
    public boolean a(int i2, boolean z2) {
        d.a("HeadlineRenderer", "setCurrentIndex, from mCurrentIndex: " + this.v + " to target index: " + i2 + ", updateLastIndex: " + z2);
        synchronized (this.f2743a) {
            if (this.o != null && this.o.length > 0 && i2 >= 0) {
                if (i2 < this.o.length) {
                    c(2);
                    if (z2) {
                        this.w = this.v;
                    }
                    this.v = i2;
                    this.s = true;
                    if (this.B != null) {
                        this.B.a(0, true);
                    }
                }
            }
            d.e("HeadlineRenderer", "setCurrentIndex, mTextArray: " + this.o + ", index: " + i2 + ", mCurrentIndex: " + this.v);
            return false;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0129, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0134, code lost:
        return 0;
     */
    public int b(float f2) {
        synchronized (this.f2743a) {
            int i2 = 0;
            if (this.o != null) {
                if (this.o.length > 0) {
                    if (this.n != null) {
                        if (this.n.length > 0) {
                            if (this.n.length <= 2) {
                                d.e("HeadlineRenderer", "computeIndexOnScroll, one TextItem needn't rotate");
                                return -1;
                            }
                            int length = this.n.length;
                            float degrees = ((this.n[this.v] + this.n[this.v + 1]) / 2.0f) + ((float) Math.toDegrees(Math.asin((double) ((f2 / this.k) / this.j))));
                            int i3 = length - 1;
                            int i4 = length - 2;
                            if (degrees > (this.n[i3] + this.n[i4]) / 2.0f) {
                                degrees = (this.n[i3] + this.n[i4]) / 2.0f;
                            }
                            if (degrees < (this.n[0] + this.n[1]) / 2.0f) {
                                degrees = (this.n[0] + this.n[1]) / 2.0f;
                            }
                            while (true) {
                                if (i2 < this.n.length - 1) {
                                    if (Float.compare(degrees, this.n[i2]) >= 0 && Float.compare(degrees, this.n[i2 + 1]) < 0) {
                                        break;
                                    }
                                    i2++;
                                } else {
                                    i2 = -1;
                                    break;
                                }
                            }
                            d.a("HeadlineRenderer", "computeIndexOnScroll, targetIndex: " + i2);
                            c(1);
                            if (this.y != i2) {
                                d.a("HeadlineRenderer", "computeIndexOnScroll, mScrollCurrentIndex need to change");
                                this.s = true;
                                this.x = this.y;
                                this.y = i2;
                                d.a("HeadlineRenderer", "computeIndexOnScroll, mScrollLastIndex: " + this.x + ", mScrollCurrentIndex: " + this.y);
                                if (this.B != null) {
                                    float f3 = (this.n[this.x] + this.n[this.x + 1]) / 2.0f;
                                    float f4 = (this.n[this.y] + this.n[this.y + 1]) / 2.0f;
                                    if (this.O == null) {
                                        d();
                                    }
                                    this.O.a((double) f3).b((double) f4);
                                }
                            }
                        }
                    }
                    d.e("HeadlineRenderer", "computeIndexOnScroll, mTextItemAngle is illegal");
                    return -1;
                }
            }
        }
    }

    public int b(String[] strArr) {
        d.b("HeadlineRenderer", "updateTextAndIndex");
        if (strArr == null || strArr.length <= 0) {
            throw new IllegalArgumentException("the text array can't be null or it's length can't be 0");
        }
        synchronized (this.f2743a) {
            String str = this.o[this.w];
            String str2 = this.o[this.v];
            this.o = strArr;
            a(str, str2);
        }
        return this.v;
    }

    public void b() {
        com.a.a.f fVar = this.O;
        if (fVar != null) {
            fVar.a();
            this.O = null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0092, code lost:
        return true;
     */
    public boolean b(int i2) {
        d.a("HeadlineRenderer", "setCurrentIndexWithAnim, index: " + i2 + ", mCurrentIndex: " + this.v);
        synchronized (this.f2743a) {
            if (this.o != null && this.o.length > 0 && i2 >= 0) {
                if (i2 < this.o.length) {
                    this.w = this.v;
                    this.v = i2;
                    this.s = true;
                    if (this.B != null) {
                        float f2 = (this.n[this.w] + this.n[this.w + 1]) / 2.0f;
                        float f3 = (this.n[this.v] + this.n[this.v + 1]) / 2.0f;
                        if (this.O == null) {
                            d();
                        }
                        this.O.a((double) f2).b((double) f3);
                        d.a("HeadlineRenderer", "setCurrentIndexWithAnim, startAngle: " + f2 + ", endAngle: " + f3);
                    }
                }
            }
            d.e("HeadlineRenderer", "setCurrentIndexWithAnim, mTextArray: " + this.o + ", index: " + i2 + ", mCurrentIndex: " + this.v);
            return false;
        }
    }

    public void c() {
        this.x = this.v;
        this.y = this.v;
        d.a("HeadlineRenderer", "initScrollIndex, mScrollLastIndex: " + this.x + ", mScrollCurrentIndex" + this.y);
    }

    public void c(float f2) {
        d.a("HeadlineRenderer", "setAlpha, alpha: " + f2);
        synchronized (this.f2743a) {
            this.A = f2;
            if (this.B != null) {
                this.B.a(-1, true);
            }
        }
    }

    public void c(int i2) {
        d.a("HeadlineRenderer", "setRotateMode, rotateMode: " + i2);
        this.z = i2;
    }

    public void onDrawFrame(GL10 gl10) {
        synchronized (this.f2743a) {
            if (this.o != null) {
                if (this.o.length > 0) {
                    GLES20.glClear(16640);
                    this.F.b();
                    this.F.a(0.0f, -1.0f, 0.0f);
                    if (this.s) {
                        a(this.p, this.q, this.o);
                        this.s = false;
                    }
                    d(this.z);
                    h();
                    this.l.a(this.r, this.F.d());
                    this.F.c();
                    return;
                }
            }
            d.e("HeadlineRenderer", "onDrawFrame, mTextArray is null or the length is 0");
        }
    }

    public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
        d.a("HeadlineRenderer", "onSurfaceChanged");
        GLES20.glViewport(0, 0, i2, i3);
        synchronized (this.f2743a) {
            this.F.a(this.f, this.g, this.i, this.h, 4.0f, 100.0f);
            this.F.a(0.0f, 0.0f, 8.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        }
        d.a("HeadlineRenderer", "onSurfaceChanged X");
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        d.a("HeadlineRenderer", "onSurfaceCreated");
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glEnable(2929);
        GLES20.glEnable(2884);
        GLES20.glFrontFace(2304);
        synchronized (this.f2743a) {
            this.F.a();
            e();
            this.l = new b(this.m, this.j, this.e);
            this.l.a();
        }
        d.a("HeadlineRenderer", "onSurfaceCreated X");
    }
}
