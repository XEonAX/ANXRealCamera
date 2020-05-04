package com.oppo.camera.ui.preview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import com.a.a.e;
import com.a.a.f;
import com.a.a.h;
import com.a.a.j;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.ui.g;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;

/* compiled from: ZoomSeekBar */
public class o extends g {
    private Context A = null;
    /* access modifiers changed from: private */
    public int B = 0;
    private int C = 0;
    private int D = 0;
    private int E = 0;
    private int F = 0;
    private int G = 0;
    private int H = 0;
    private int I = 0;
    private int J = 0;
    /* access modifiers changed from: private */
    public int K = 0;
    /* access modifiers changed from: private */
    public int L = 0;
    /* access modifiers changed from: private */
    public float M = 0.0f;
    private int N = 0;
    private int O = 0;
    private int P = 0;
    private int Q = 0;
    private int R = 0;
    private float S = 0.0f;
    private float T = 0.0f;
    private int U = 0;
    private int V = 0;
    private int W = 0;
    private long aA = 0;
    private long aB = 0;
    private int aC = 0;
    /* access modifiers changed from: private */
    public ArrayList<Float> aD = null;
    private float[] aE = null;
    private GestureDetector aF = null;
    private n aG = null;
    private Bitmap aH = null;
    private Bitmap aI = null;
    private Canvas aJ = null;
    private Canvas aK = null;
    private Path aL = null;
    private int aM = 0;
    private int aN = 0;
    private int aO = 0;
    private int aP = 0;
    private int aQ = 0;
    private int aR = 0;
    private int aS = 0;
    private int aT = 0;
    private int aU = 0;
    private int aV = 0;
    private Paint aW = null;
    private Paint aX = null;
    private TextPaint aY = null;
    private final Rect aZ = new Rect();
    private int aa = 0;
    private int ab = 0;
    /* access modifiers changed from: private */
    public float ac = 0.0f;
    /* access modifiers changed from: private */
    public float ad = 0.0f;
    private float ae = 0.0f;
    private float af = 0.0f;
    private float ag = 0.0f;
    /* access modifiers changed from: private */
    public boolean ah = false;
    private boolean ai = false;
    /* access modifiers changed from: private */
    public boolean aj = false;
    /* access modifiers changed from: private */
    public boolean ak = true;
    private String al = null;
    private String am = null;
    private Drawable an = null;
    private float ao = 0.0f;
    private float ap = 0.0f;
    private float[] aq = null;
    private float[] ar = null;
    private int[] as = null;
    private Paint at = null;
    private Paint au = null;
    private Paint av = null;
    private Paint aw = null;
    private Paint ax = null;
    private Paint ay = null;
    private Paint az = null;
    private PathInterpolator ba = null;
    private DecimalFormat bb = null;
    private final com.a.a.b bc = j.c();
    /* access modifiers changed from: private */
    public final f bd = this.bc.b();
    private com.a.a.g be = com.a.a.g.a(299.61884d, 27.0487d);
    private h bf = new b();
    /* access modifiers changed from: private */
    public float bg = 0.0f;
    private VelocityTracker s = null;
    private int t = 0;
    private int u = 0;
    private int v = 0;
    private float w = 0.0f;
    private float x = 0.0f;
    private float y = 0.0f;
    private float z = 0.0f;

    /* compiled from: ZoomSeekBar */
    private class a implements GestureDetector.OnGestureListener {
        private a() {
        }

        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public void onLongPress(MotionEvent motionEvent) {
            if (o.this.c == 0 && o.this.ah && o.this.ak) {
                d.a("ZoomSeekBar", "MyGestureListener, onLongPress to performExpand");
                o.this.L_();
                boolean unused = o.this.aj = false;
            }
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (o.this.c == 0 && o.this.ah && o.this.ak && !o.this.a(motionEvent2.getX(), motionEvent2.getY(), o.this.ac, o.this.ad, (float) o.this.B)) {
                d.a("ZoomSeekBar", "MyGestureListener, onScroll to performExpand");
                o.this.L_();
                boolean unused = o.this.aj = false;
            }
            return false;
        }

        public void onShowPress(MotionEvent motionEvent) {
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            int i;
            d.a("ZoomSeekBar", "MyGestureListener, onSingleTapUp");
            if (!o.this.bd.g()) {
                d.a("ZoomSeekBar", "MyGestureListener, onSingleTapUp return, spring is running");
                return false;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (2 == o.this.c && o.this.ah) {
                o oVar = o.this;
                if (oVar.a(x, y, oVar.ac, o.this.ad, (float) o.this.B)) {
                    o.this.K_();
                }
            } else if (o.this.c == 0) {
                if (!o.this.ah) {
                    i = o.this.a(x, y);
                } else if (o.this.getLayoutDirection() == 1) {
                    i = (o.this.K < 1 ? o.this.aD.size() : o.this.K) - 1;
                } else {
                    i = o.this.K >= o.this.aD.size() - 1 ? 0 : o.this.K + 1;
                }
                d.a("ZoomSeekBar", "onSingleTapUp, targetIndex: " + i);
                if (!(o.this.m == null || -1 == i)) {
                    float a2 = o.this.a(i);
                    o.this.m.a(a2);
                    o.this.a(i, a2);
                    o.this.invalidate();
                }
            }
            return false;
        }
    }

    /* compiled from: ZoomSeekBar */
    private class b extends e {
        private b() {
        }

        public void a(f fVar) {
            float unused = o.this.bg = (float) fVar.c();
            o.this.invalidate();
        }

        public void b(f fVar) {
            o oVar = o.this;
            oVar.setCenterPointIndex(oVar.L);
            o oVar2 = o.this;
            oVar2.b(oVar2.M);
            d.a("ZoomSeekBar", "onSpringAtRest, mSlideToValue: " + o.this.M);
        }
    }

    public o(Context context) {
        super(context, (AttributeSet) null);
        this.A = context;
        l();
        setForceDarkAllowed(false);
        this.ah = false;
        this.bb = new DecimalFormat("#.#", new DecimalFormatSymbols(this.A.getResources().getConfiguration().locale));
        this.bd.a(this.be).a(this.bf);
    }

    /* access modifiers changed from: private */
    public int a(float f, float f2) {
        int i;
        float f3;
        float f4 = this.af;
        for (int i2 = 0; i2 < this.aC; i2++) {
            float b2 = b(i2, this.K);
            if (i2 == this.K) {
                f3 = (float) this.E;
                i = this.G;
            } else {
                f3 = (float) this.F;
                i = this.G;
            }
            if (a(f, f2, b2, f4, f3 + ((((float) i) * 1.0f) / 2.0f))) {
                return i2;
            }
        }
        return -1;
    }

    /* access modifiers changed from: private */
    public void a(int i, float f) {
        d.a("ZoomSeekBar", "startSlideTo, centerPointIndex: " + i + ", toValue: " + f);
        if (i != this.K) {
            this.aj = false;
            this.S = 0.0f;
            this.L = i;
            this.M = f;
            this.bd.a(0.0d);
            this.bd.b(1.0d);
        }
    }

    private void a(Canvas canvas, float f, String str, Drawable drawable, float f2, float f3) {
        canvas.drawCircle(f, this.af, f2, this.av);
        canvas.drawCircle(f, this.af, f2 + (this.aw.getStrokeWidth() / 2.0f), this.aw);
        int save = canvas.save();
        canvas.rotate((float) (-this.O), f, this.af);
        if (drawable != null) {
            a(canvas, drawable, f, this.af, f3);
        } else {
            canvas.drawText(str, f, this.af + this.T, this.at);
        }
        canvas.restoreToCount(save);
    }

    private void a(Canvas canvas, Drawable drawable, float f, float f2, float f3) {
        float intrinsicWidth = ((((float) drawable.getIntrinsicWidth()) * f3) * 1.0f) / 2.0f;
        float intrinsicHeight = ((((float) drawable.getIntrinsicHeight()) * f3) * 1.0f) / 2.0f;
        drawable.setBounds((int) (f - intrinsicWidth), (int) (f2 - intrinsicHeight), (int) (f + intrinsicWidth), (int) (f2 + intrinsicHeight));
        drawable.draw(canvas);
    }

    private void a(Canvas canvas, String str, Drawable drawable) {
        float f;
        if (this.aj) {
            float f2 = this.S;
            if (f2 < 1.0f) {
                this.S = f2 + 0.1f;
                invalidate();
            } else {
                this.S = 1.0f;
            }
            int i = this.B;
            float f3 = (float) i;
            float f4 = (float) (this.C - i);
            float f5 = this.S;
            f = f3 + (f4 * f5);
            int i2 = this.H;
            this.at.setTextSize(((float) i2) + (((float) (this.I - i2)) * f5));
        } else {
            float f6 = this.S;
            if (f6 > 0.0f) {
                this.S = f6 - 0.1f;
                invalidate();
            } else {
                this.S = 0.0f;
            }
            int i3 = this.B;
            float f7 = (float) i3;
            float f8 = (float) (this.C - i3);
            float f9 = this.S;
            f = f7 + (f8 * f9);
            int i4 = this.H;
            this.at.setTextSize(((float) i4) + (((float) (this.I - i4)) * f9));
        }
        a(canvas, this.ae, str, drawable, f, 1.0f);
        for (int i5 = 0; i5 < this.aD.size(); i5++) {
            int i6 = this.K;
            if (i5 != i6) {
                canvas.drawCircle(b(i5, i6), this.af, (float) this.F, this.ax);
            }
        }
        if (!(this.c == 0 || this.aK == null)) {
            this.aL.reset();
            this.aL.addCircle(this.ae, this.af, f, Path.Direction.CW);
            a(this.aL);
        }
        this.at.setTextSize((float) this.H);
    }

    private void a(Canvas canvas, String str, Drawable drawable, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        int i5 = this.B;
        int i6 = this.H;
        int i7 = this.D;
        for (int i8 = 0; i8 < this.aD.size(); i8++) {
            float b2 = b(i8, i3);
            float b3 = i3 == i4 ? b2 : b(i8, i4);
            float f = this.bg;
            float f2 = b2 + ((b3 - b2) * f);
            if (i8 == i3) {
                float abs = Math.abs(1.0f - f);
                this.at.setTextSize(((float) this.H) * abs);
                float f3 = ((float) this.B) * abs;
                int i9 = this.D;
                this.aw.setStrokeWidth(((float) i9) + (((float) (this.F - i9)) * this.bg));
                a(canvas, f2, str, drawable, f3, abs);
            } else if (i8 == i4) {
                this.at.setTextSize(((float) this.H) * f);
                float f4 = this.bg;
                float f5 = ((float) this.B) * f4;
                int i10 = this.F;
                this.aw.setStrokeWidth(((float) i10) + (((float) (this.D - i10)) * f4));
                a(canvas, f2, this.bb.format((double) d(r0)) + "X", this.aG.a(this.M), f5, this.bg);
            } else {
                Canvas canvas2 = canvas;
                canvas.drawCircle(f2, this.af, (float) this.F, this.ax);
            }
            Canvas canvas3 = canvas;
        }
        this.aw.setStrokeWidth((float) this.D);
        this.at.setTextSize((float) this.H);
    }

    /* access modifiers changed from: private */
    public boolean a(float f, float f2, float f3, float f4, float f5) {
        return ((float) ((int) Math.sqrt(Math.pow((double) Math.abs(f3 - f), 2.0d) + Math.pow((double) Math.abs(f4 - f2), 2.0d)))) <= f5;
    }

    private float b(int i, int i2) {
        int i3;
        float f;
        int i4;
        int i5;
        if (i == i2) {
            return this.ae;
        }
        if (i < i2) {
            float f2 = this.ae;
            int i6 = this.E;
            i3 = this.F;
            f = f2 - ((float) (i6 - i3));
            i4 = i - i2;
            i5 = this.G;
        } else {
            float f3 = this.ae;
            int i7 = this.E;
            i3 = this.F;
            f = f3 + ((float) (i7 - i3));
            i4 = i - i2;
            i5 = this.G;
        }
        return f + ((float) (i4 * (i5 + (i3 * 2))));
    }

    private void b(Canvas canvas, String str, Drawable drawable) {
        Canvas canvas2 = canvas;
        String str2 = str;
        int i = this.aP;
        this.aW.setColor(this.aS);
        if (!TextUtils.isEmpty(str) || drawable != null) {
            for (int i2 = 0; i2 < this.V; i2++) {
                boolean z2 = true;
                float f = (((float) (this.f2689a / 2)) - (((float) (this.U * (this.V - 1))) * this.i)) + ((float) (this.U * i2));
                if (g((((float) i2) * 1.0f) / ((float) (this.V - 1)))) {
                    if (Math.abs(f - ((((float) this.f2689a) * 1.0f) / 2.0f)) > 2.0f) {
                        z2 = false;
                    }
                    if (z2) {
                        this.aX.setColor(this.A.getColor(R.color.zoom_center_dot_color));
                    } else {
                        this.aX.setColor(-1);
                    }
                    int i3 = this.f2690b - this.aU;
                    int i4 = this.aV;
                    canvas.drawCircle(f, (float) (i3 - i4), (float) i4, this.aX);
                }
                this.aW.setStrokeWidth(j(Math.abs(f - ((((float) this.f2689a) * 1.0f) / 2.0f))));
                float strokeWidth = ((float) (this.f2690b - this.aM)) - ((this.aW.getStrokeWidth() * 1.0f) / 2.0f);
                this.aW.setAlpha(h(f));
                float f2 = (((float) i) * 1.0f) / 2.0f;
                canvas.drawLine(f - f2, strokeWidth, f + f2, strokeWidth, this.aW);
            }
            this.aW.setAlpha(255);
            this.aW.setColor(this.aR);
            this.aW.setStrokeWidth((float) this.aN);
            float strokeWidth2 = ((float) (this.f2690b - this.aM)) - ((this.aW.getStrokeWidth() * 1.0f) / 2.0f);
            canvas.drawLine((((float) (this.f2689a - this.aO)) * 1.0f) / 2.0f, strokeWidth2, (((float) (this.f2689a + this.aO)) * 1.0f) / 2.0f, strokeWidth2, this.aW);
            int save = canvas.save();
            if (drawable != null) {
                float f3 = ((float) this.f2689a) / 2.0f;
                float dimensionPixelSize = (float) this.A.getResources().getDimensionPixelSize(R.dimen.zoom_extra_drawable_center_y);
                canvas.rotate((float) (-this.O), f3, dimensionPixelSize);
                a(canvas, drawable, f3, dimensionPixelSize, 1.0f);
            } else {
                this.aY.getTextBounds(str2, 0, str.length(), this.aZ);
                int width = this.aZ.width();
                int height = this.aZ.height() / 2;
                canvas.translate((((float) this.f2689a) * 1.0f) / 2.0f, (float) (this.aT - height));
                canvas.rotate((float) (-this.O), 0.0f, 0.0f);
                canvas.drawText(str2, (float) ((-width) / 2), (float) height, this.aY);
            }
            canvas.restoreToCount(save);
            return;
        }
        d.d("ZoomSeekBar", "drawIndicatorLines, text and drawable are null");
    }

    private void f(float f) {
        if (f > 1.0f || f < 0.0f) {
            this.au.setColor(this.J);
            return;
        }
        this.au.setColor(-1);
        this.au.setAlpha((int) (((float) this.R) * f));
    }

    private boolean g(float f) {
        int i = 0;
        while (true) {
            float[] fArr = this.aE;
            if (i >= fArr.length) {
                return false;
            }
            if (Math.abs(f - fArr[i]) <= 1.0E-5f) {
                return true;
            }
            i++;
        }
    }

    private float[] getSectionStep() {
        if (Float.compare(this.ap, 10.0f) >= 0) {
            return Float.compare(this.ap, 20.0f) <= 0 ? new float[]{0.1f, 0.2f, 0.5f, 1.0f} : new float[]{0.1f, 0.2f, 0.5f, 1.0f, 2.0f};
        }
        return new float[]{0.1f};
    }

    private int h(float f) {
        float f2;
        if (f < ((float) this.f2689a) * 0.07499999f) {
            f2 = 1.0f - ((((((float) this.f2689a) * 0.07499999f) - f) / ((float) this.f2689a)) * 10.6f);
        } else if (f <= ((float) this.f2689a) * 0.925f) {
            return 255;
        } else {
            f2 = 1.0f - (((f - (((float) this.f2689a) * 0.925f)) / ((float) this.f2689a)) * 10.6f);
        }
        return (int) (f2 * 255.0f);
    }

    private int i(float f) {
        int i = 0;
        int i2 = 0;
        while (i < this.aD.size() && Float.compare(this.aD.get(i).floatValue(), f) <= 0) {
            i2 = i;
            i++;
        }
        return getLayoutDirection() == 1 ? (this.aC - 1) - i2 : i2;
    }

    private float j(float f) {
        int i = this.aa;
        return f >= ((float) i) ? (float) this.aQ : ((float) this.aQ) + (this.ba.getInterpolation(1.0f - ((f * 1.0f) / ((float) i))) * ((float) (this.aN - this.aQ)));
    }

    private void l() {
        Resources resources = this.A.getResources();
        this.f2690b = resources.getDimensionPixelSize(R.dimen.zoom_seek_line_bar_height);
        this.F = resources.getDimensionPixelSize(R.dimen.zoom_click_point_radius);
        this.G = resources.getDimensionPixelSize(R.dimen.zoom_click_point_gap);
        this.D = resources.getDimensionPixelSize(R.dimen.zoom_focus_circle_stroke_width);
        this.E = resources.getDimensionPixelSize(R.dimen.zoom_focus_circle_width) / 2;
        this.B = this.E - this.D;
        this.C = resources.getDimensionPixelSize(R.dimen.zoom_focus_circle_radius_pressed);
        this.J = resources.getColor(R.color.zoom_indicator_circle_color);
        this.H = resources.getDimensionPixelSize(R.dimen.zoom_text_size_normal);
        this.I = resources.getDimensionPixelSize(R.dimen.zoom_text_size_pressed);
        this.ae = (((float) this.f2689a) * 1.0f) / 2.0f;
        this.af = (float) resources.getDimensionPixelSize(R.dimen.zoom_center_margin_top);
        this.U = resources.getDimensionPixelSize(R.dimen.zoom_point_interval);
        this.at = new Paint();
        this.at.setAntiAlias(true);
        this.at.setTextSize((float) this.H);
        this.at.setColor(-1);
        this.at.setTextAlign(Paint.Align.CENTER);
        this.at.setTypeface(com.oppo.camera.o.d.t());
        this.au = new Paint();
        this.au.setAntiAlias(true);
        this.au.setStyle(Paint.Style.FILL);
        this.au.setColor(this.J);
        this.R = this.au.getAlpha();
        this.av = new Paint();
        this.av.setAntiAlias(true);
        this.av.setStyle(Paint.Style.FILL);
        this.av.setColor(resources.getColor(R.color.zoom_focus_circle_background_color));
        this.aw = new Paint();
        this.aw.setAntiAlias(true);
        this.aw.setStyle(Paint.Style.STROKE);
        this.aw.setStrokeWidth((float) this.D);
        this.aw.setColor(resources.getColor(R.color.zoom_focus_circle_stroke_color));
        this.ax = new Paint();
        this.ax.setAntiAlias(true);
        this.ax.setStyle(Paint.Style.FILL);
        this.ax.setColor(-1);
        this.ay = new Paint();
        this.ay.setAntiAlias(true);
        this.az = new Paint();
        this.az.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        float f = this.A.getResources().getDisplayMetrics().density;
        this.u = (int) (400.0f * f);
        this.v = (int) (((float) this.u) * 10.0f);
        this.w = 1.5f / ((float) this.f2689a);
        this.x = this.w * 2.0f;
        this.t = (int) (f * 20.0f);
        this.aL = new Path();
        this.T = 0.0f;
        float dimensionPixelSize = (float) resources.getDimensionPixelSize(R.dimen.zoom_current_rate_text_shadow_radius_size);
        float dimensionPixelSize2 = (float) resources.getDimensionPixelSize(R.dimen.zoom_current_rate_text_shadow_dx);
        float dimensionPixelSize3 = (float) resources.getDimensionPixelSize(R.dimen.zoom_current_rate_text_shadow_dy);
        int color2 = this.A.getColor(R.color.zoom_current_rate_text_shadow_color);
        this.aU = resources.getDimensionPixelSize(R.dimen.zoom_dot_padding_bottom);
        this.aV = resources.getDimensionPixelSize(R.dimen.zoom_dot_radius);
        this.aX = new Paint(1);
        this.aW = new Paint(1);
        this.aW.setShadowLayer(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, color2);
        this.aM = resources.getDimensionPixelSize(R.dimen.zoom_indicator_line_padding_bottom);
        this.aN = resources.getDimensionPixelSize(R.dimen.zoom_seek_center_vertical_line_width);
        this.aQ = resources.getDimensionPixelSize(R.dimen.zoom_seek_sub_vertical_line_width);
        this.aO = resources.getDimensionPixelSize(R.dimen.zoom_seek_center_vertical_line_length);
        this.aP = resources.getDimensionPixelSize(R.dimen.zoom_seek_scale_vertical_line_length);
        this.aR = this.A.getColor(R.color.zoom_center_vertical_line_color);
        this.aS = this.A.getColor(R.color.zoom_scale_vertical_line_color);
        this.aY = new TextPaint(1);
        this.aY.setAntiAlias(true);
        this.aY.setTextSize((float) resources.getDimensionPixelSize(R.dimen.zoom_seek_current_rate_text_size));
        this.aY.setColor(-1);
        this.aY.setTypeface(com.oppo.camera.o.d.t());
        this.aY.setShadowLayer(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, color2);
        this.aT = this.f2690b - resources.getDimensionPixelSize(R.dimen.zoom_current_rate_text_margin_bottom);
        this.ba = new PathInterpolator(0.49f, 0.0f, 1.0f, 0.56f);
        this.d = 0.2f;
        this.aa = this.U * 7;
    }

    private void m() {
        if (this.O != this.Q) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.aB) {
                int i = (int) (currentAnimationTimeMillis - this.aA);
                int i2 = this.P;
                if (!this.ai) {
                    i = -i;
                }
                int i3 = i2 + ((i * 360) / 1000);
                this.O = i3 >= 0 ? i3 % 360 : (i3 % 360) + 360;
                invalidate();
                return;
            }
            this.O = this.Q;
        }
    }

    /* access modifiers changed from: private */
    public void setCenterPointIndex(int i) {
        d.a("ZoomSeekBar", "setCenterPointIndex, index: " + i);
        this.K = i;
    }

    private void setTouchPosition(MotionEvent motionEvent) {
        int findPointerIndex = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
        this.ac = motionEvent.getX(findPointerIndex);
        this.ad = motionEvent.getY(findPointerIndex);
    }

    public void K_() {
        this.ah = false;
        this.aj = false;
        super.K_();
    }

    public void L_() {
        super.L_();
        i();
    }

    /* access modifiers changed from: protected */
    public float a(float f, int i) {
        this.y = this.z;
        this.z = f;
        float f2 = this.z - this.y;
        float f3 = this.w;
        int i2 = this.v;
        int i3 = this.u;
        float min = Math.min(Math.max((((this.x - f3) / ((float) (i2 - i3))) * ((float) (i - i3))) + f3, f3), this.x);
        if (Math.abs(f2) <= ((float) this.t) && min > this.w * 2.0f) {
            min /= 2.0f;
        }
        return (-f2) * min;
    }

    public float a(int i) {
        return getLayoutDirection() == 1 ? this.aD.get((this.aC - 1) - i).floatValue() : this.aD.get(i).floatValue();
    }

    public void a() {
        super.a();
        setRate(0.0f);
        j();
    }

    public void a(float f) {
        if (getLayoutDirection() == 1) {
            f = 1.0f - f;
        }
        float c = c(f);
        if (this.m != null) {
            this.m.b(c);
        }
        this.al = this.bb.format((double) d(c)) + "X";
        setExtraDrawable(this.aG.a(c));
        setCenterPointIndex(i(c));
        d.a("ZoomSeekBar", "onChanged, mCurrentDisplayText: " + this.al + ", zoom: " + c);
        StringBuilder sb = new StringBuilder();
        sb.append(getContext().getResources().getString(R.string.camera_description_zoom_seek_bar));
        sb.append(this.al);
        setContentDescription(sb.toString());
        invalidate();
    }

    public void a(float f, float f2, float f3, ArrayList<Float> arrayList, ArrayList<Float> arrayList2, boolean z2) {
        this.aD = arrayList2;
        this.aC = arrayList2.size();
        this.ak = z2;
        this.ao = f2;
        this.ap = f3;
        this.aq = getZoomSections();
        this.ar = getSectionStep();
        this.as = getIndicatorSections();
        int[] iArr = this.as;
        this.V = iArr[iArr.length - 1] + 1;
        this.N = this.V - 1;
        this.W = this.N * this.U;
        this.ag = 1.0f / ((float) this.W);
        this.aE = new float[arrayList.size()];
        for (int i = 0; i < this.aE.length; i++) {
            float floatValue = arrayList.get(i).floatValue();
            if (getLayoutDirection() == 1) {
                this.aE[i] = 1.0f - e(floatValue);
            } else {
                this.aE[i] = e(floatValue);
            }
        }
        Paint.FontMetrics fontMetrics = this.at.getFontMetrics();
        this.T = ((fontMetrics.bottom - fontMetrics.top) / 2.0f) - fontMetrics.bottom;
        float e = e(f);
        float c = c(e);
        if (getLayoutDirection() == 1) {
            setRate(1.0f - e);
        } else {
            setRate(e);
        }
        this.al = this.bb.format((double) d(c)) + "X";
        setCenterPointIndex(i(c));
        setExtraDrawable(this.aG.a(c));
        d.a("ZoomSeekBar", "init, mCurrentDisplayText: " + this.al);
        setContentDescription(getContext().getResources().getString(R.string.camera_description_zoom_seek_bar) + this.al);
        postInvalidate();
    }

    public void a(int i, boolean z2) {
        int i2 = i >= 0 ? i % 360 : (i % 360) + 360;
        if (i2 != this.Q) {
            this.Q = i2;
            if (z2) {
                this.P = this.O;
                this.aA = AnimationUtils.currentAnimationTimeMillis();
                int i3 = this.Q - this.O;
                if (i3 < 0) {
                    i3 += 360;
                }
                if (i3 > 180) {
                    i3 -= 360;
                }
                this.ai = i3 >= 0;
                this.aB = this.aA + ((long) ((Math.abs(i3) * 1000) / 360));
            } else {
                this.O = this.Q;
            }
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas) {
        if (!this.bd.g()) {
            int i = this.K;
            int i2 = this.L;
            if (i != i2) {
                a(canvas, this.al, this.an, i, i2);
                super.a(canvas);
            }
        }
        a(canvas, this.al, this.an);
        super.a(canvas);
    }

    public void a(Path path) {
        int save = this.aK.save();
        this.aK.clipPath(path);
        this.aK.drawPaint(this.az);
        this.aK.restoreToCount(save);
    }

    public void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if ((1 == this.c || 2 == this.c) && !this.n.hasMessages(1)) {
                this.n.sendEmptyMessageDelayed(1, getCollapseDelay());
            }
            this.ah = false;
            this.aj = false;
            invalidate();
        }
    }

    public void a(Animation.AnimationListener animationListener) {
        if (this.c != 0) {
            this.aj = false;
        }
        this.ah = false;
        super.a(animationListener);
    }

    /* access modifiers changed from: protected */
    public void b(Canvas canvas) {
        float interpolation = this.g.getInterpolation(this.h);
        if (this.h < 1.0f) {
            f(interpolation);
            if (this.aK == null || this.aJ == null) {
                i();
            }
            this.aK.drawPaint(this.az);
            this.aJ.drawPaint(this.az);
            a(this.aJ, this.al, this.an);
            this.aK.drawBitmap(this.aH, 0.0f, 0.0f, this.ay);
            canvas.drawBitmap(this.aI, 0.0f, 0.0f, this.ay);
        } else {
            f(interpolation);
            if (!this.ah) {
                this.n.removeMessages(1);
                this.n.sendEmptyMessageDelayed(1, getCollapseDelay());
            }
        }
        super.b(canvas);
    }

    public boolean b(float f) {
        d.a("ZoomSeekBar", "updateUI, zoomValue: " + f + ", rest: " + this.bd.g());
        if (!this.bd.g()) {
            return false;
        }
        float e = e(f);
        if (Float.compare(e, 0.0f) < 0) {
            e = 0.0f;
        } else if (Float.compare(e, 1.0f) > 0) {
            e = 1.0f;
        }
        if (getLayoutDirection() == 1) {
            setRate(1.0f - e);
        } else {
            setRate(e);
        }
        int i = i(f);
        if (i != this.K) {
            if (this.c == 0) {
                a(i, f);
                return true;
            }
            setCenterPointIndex(i);
        }
        this.al = this.bb.format((double) d(f)) + "X";
        setExtraDrawable(this.aG.a(f));
        d.a("ZoomSeekBar", "updateUI, mCurrentDisplayText: " + this.al + ", rate: " + e);
        StringBuilder sb = new StringBuilder();
        sb.append(getContext().getResources().getString(R.string.camera_description_zoom_seek_bar));
        sb.append(this.al);
        setContentDescription(sb.toString());
        postInvalidate();
        return true;
    }

    public float c(float f) {
        float f2;
        float f3 = ((float) this.N) * f;
        int i = 1;
        while (true) {
            int[] iArr = this.as;
            if (i >= iArr.length) {
                f2 = 0.0f;
                break;
            } else if (f3 <= ((float) iArr[i])) {
                int i2 = i - 1;
                f2 = this.aq[i2] + (this.ar[i2] * (f3 - ((float) iArr[i2])));
                break;
            } else {
                i++;
            }
        }
        d.a("ZoomSeekBar", "getZoom, zoom: " + f2);
        return f2;
    }

    /* access modifiers changed from: protected */
    public void c(Canvas canvas) {
        float interpolation = this.f.getInterpolation(this.h);
        this.m.d(interpolation);
        f(interpolation);
        if (this.h > 0.0f) {
            if (this.aK == null || this.aJ == null) {
                i();
            }
            this.aK.drawPaint(this.az);
            this.aJ.drawPaint(this.az);
            String str = this.am;
            a(this.aJ, this.al, this.an);
            this.aK.drawBitmap(this.aH, 0.0f, 0.0f, this.ay);
            canvas.drawBitmap(this.aI, 0.0f, 0.0f, this.ay);
        } else {
            j();
        }
        super.c(canvas);
    }

    public float d(float f) {
        return ((float) ((int) ((f + 1.0E-5f) / 0.1f))) * 0.1f;
    }

    public boolean d() {
        f fVar = this.bd;
        if (fVar != null) {
            return !fVar.g();
        }
        return false;
    }

    public float e(float f) {
        float f2;
        int i = 1;
        while (true) {
            float[] fArr = this.aq;
            if (i >= fArr.length) {
                f2 = 0.0f;
                break;
            } else if (f <= fArr[i]) {
                int i2 = i - 1;
                float f3 = (f - fArr[i2]) / (fArr[i] - fArr[i2]);
                int[] iArr = this.as;
                f2 = ((float) iArr[i2]) + (((float) (iArr[i] - iArr[i2])) * f3);
                break;
            } else {
                i++;
            }
        }
        return (f2 * 1.0f) / ((float) (this.V - 1));
    }

    public boolean e() {
        if (getVisibility() == 0) {
            return 2 == this.c || 1 == this.c;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void f(Canvas canvas) {
        super.f(canvas);
        if (this.aK == null || this.aJ == null) {
            i();
        }
        this.aK.drawPaint(this.az);
        this.aJ.drawPaint(this.az);
        String str = this.am;
        if (TextUtils.isEmpty(str) && this.an == null) {
            str = this.al;
            this.aY.setTextSize((float) this.A.getResources().getDimensionPixelSize(R.dimen.zoom_seek_current_rate_text_size));
        } else if (this.am != null) {
            this.aY.setTextSize((float) this.H);
        }
        b(this.aK, str, this.an);
        this.aK.drawBitmap(this.aH, 0.0f, 0.0f, this.ay);
        canvas.drawBitmap(this.aI, 0.0f, 0.0f, this.ay);
    }

    public String getCurrentValue() {
        return this.al;
    }

    public int[] getIndicatorSections() {
        int length = this.aq.length;
        int[] iArr = new int[length];
        iArr[0] = 0;
        for (int i = 1; i < length; i++) {
            float[] fArr = this.aq;
            int i2 = i - 1;
            iArr[i] = ((int) ((fArr[i] - fArr[i2]) / this.ar[i2])) + iArr[i2];
        }
        return iArr;
    }

    public int getLayoutDirection() {
        return getContext().getResources().getConfiguration().getLayoutDirection();
    }

    public float[] getZoomSections() {
        if (Float.compare(this.ap, 10.0f) < 0) {
            return new float[]{this.ao, this.ap};
        } else if (Float.compare(this.ap, 20.0f) <= 0) {
            return new float[]{this.ao, 2.0f, 4.0f, 10.0f, this.ap};
        } else {
            return new float[]{this.ao, 2.0f, 4.0f, 10.0f, 20.0f, this.ap};
        }
    }

    public void i() {
        this.aH = com.oppo.camera.o.d.a(this.f2689a, this.f2690b, Bitmap.Config.ARGB_8888);
        this.aJ = new Canvas();
        this.aJ.setBitmap(this.aH);
        this.aI = com.oppo.camera.o.d.a(this.f2689a, this.f2690b, Bitmap.Config.ARGB_8888);
        this.aK = new Canvas();
        this.aK.setBitmap(this.aI);
    }

    public void j() {
        Bitmap bitmap = this.aH;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.aH.recycle();
            this.aH = null;
        }
        Bitmap bitmap2 = this.aI;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.aI.recycle();
            this.aI = null;
        }
        this.aK = null;
        this.aJ = null;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        synchronized (this) {
            m();
            super.onDraw(canvas);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        if (!this.aG.a() || !isEnabled()) {
            d.a("ZoomSeekBar", "onTouchEvent, disabled");
            if (!this.n.hasMessages(1)) {
                this.n.sendEmptyMessageDelayed(1, getCollapseDelay());
            }
            this.aj = false;
            this.S = 0.0f;
            this.aF = null;
            invalidate();
            return false;
        }
        if (this.aF == null) {
            this.aF = new GestureDetector(this.A, new a());
        }
        if (this.s == null) {
            this.s = VelocityTracker.obtain();
        }
        this.s.addMovement(motionEvent2);
        this.aF.onTouchEvent(motionEvent2);
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (1 == this.c || 2 == this.c) {
                    this.n.removeMessages(1);
                    this.n.sendEmptyMessageDelayed(1, getCollapseDelay());
                }
                this.ah = false;
                this.aj = false;
                invalidate();
            } else if (action != 2) {
                if (action == 5) {
                    setTouchPosition(motionEvent);
                    this.ah = false;
                    this.aj = false;
                    if (a(this.ac, this.ad, (float) (this.f2689a / 2), this.af, ((((float) this.G) * 1.0f) / 2.0f) + ((float) this.E))) {
                        this.ah = true;
                        this.aj = true;
                    }
                    invalidate();
                } else if (action == 6) {
                    setTouchPosition(motionEvent);
                    this.aj = false;
                    invalidate();
                }
            } else if (this.c == 0 || 1 == this.c || 3 == this.c) {
                return true;
            } else {
                if (2 == this.c && this.ah) {
                    this.aj = a(x2, y2, (float) (this.f2689a / 2), this.af, ((float) this.E) + ((((float) this.G) * 1.0f) / 2.0f));
                }
                int pointerId = motionEvent2.getPointerId(motionEvent.getActionIndex());
                if (this.ab != pointerId) {
                    this.ab = pointerId;
                    this.y = x2;
                    this.z = x2;
                }
                VelocityTracker velocityTracker = this.s;
                velocityTracker.computeCurrentVelocity(1000, (float) this.v);
                float a2 = a(x2, Math.abs((int) velocityTracker.getXVelocity()));
                if (Math.abs(a2) < this.ag) {
                    d.a("ZoomSeekBar", "return, currentAdjustRate: " + a2 + ", mPixelRate: " + this.ag);
                    return true;
                }
                setRate(this.i + a2);
                a(this.i);
            }
        } else if (!(3 == this.c || 1 == this.c)) {
            this.ac = x2;
            this.ad = y2;
            this.y = x2;
            this.z = x2;
            this.ah = a(this.ac, this.ad, (float) (this.f2689a / 2), this.af, ((((float) this.G) * 1.0f) / 2.0f) + ((float) this.E));
            if (this.ah && (this.c == 0 || 2 == this.c)) {
                this.aj = true;
                this.S = 0.0f;
                invalidate();
            }
            this.n.removeMessages(1);
            if (this.c == 0) {
                return this.ah || -1 != a(x2, y2);
            }
        }
        return true;
    }

    public void setExtraDrawable(Drawable drawable) {
        this.an = drawable;
    }

    public void setZoomListener(n nVar) {
        this.aG = nVar;
    }
}
