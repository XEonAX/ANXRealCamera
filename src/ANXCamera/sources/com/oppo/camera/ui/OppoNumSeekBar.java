package com.oppo.camera.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.oppo.camera.R;

public class OppoNumSeekBar extends View {
    private int A;
    private long B;
    /* access modifiers changed from: private */
    public int C;
    /* access modifiers changed from: private */
    public float D;
    /* access modifiers changed from: private */
    public float E;
    private int F;
    private int G;
    private boolean H;
    private int I;
    private int J;
    private int K;
    /* access modifiers changed from: private */
    public b L;
    /* access modifiers changed from: private */
    public float M;
    private float N;
    private float O;
    private GestureDetector P;

    /* renamed from: a  reason: collision with root package name */
    protected int f2527a;

    /* renamed from: b  reason: collision with root package name */
    protected int f2528b;
    protected int c;
    protected int d;
    protected int e;
    protected float f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected int k;
    protected float l;
    protected int m;
    protected boolean n;
    protected boolean o;
    protected Rect p;
    protected Paint q;
    private int r;
    private int s;
    private int t;
    private int u;
    /* access modifiers changed from: private */
    public int v;
    private int w;
    private int x;
    private int y;
    private int z;

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
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public void onShowPress(MotionEvent motionEvent) {
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            int i;
            OppoNumSeekBar.this.o = true;
            if (Math.abs(motionEvent.getX() - (OppoNumSeekBar.this.M + OppoNumSeekBar.this.E)) < ((float) OppoNumSeekBar.this.v)) {
                i = OppoNumSeekBar.this.k;
            } else {
                i = (int) ((((motionEvent.getX() - OppoNumSeekBar.this.M) * ((float) OppoNumSeekBar.this.C)) / OppoNumSeekBar.this.D) + ((float) OppoNumSeekBar.this.g));
                if (i < OppoNumSeekBar.this.g) {
                    i = OppoNumSeekBar.this.g;
                } else if (i > OppoNumSeekBar.this.h) {
                    i = OppoNumSeekBar.this.h;
                }
            }
            if (OppoNumSeekBar.this.L != null) {
                b a2 = OppoNumSeekBar.this.L;
                OppoNumSeekBar oppoNumSeekBar = OppoNumSeekBar.this;
                a2.a(oppoNumSeekBar, oppoNumSeekBar.getProgress());
            }
            OppoNumSeekBar.this.c(i);
            OppoNumSeekBar.this.invalidate();
            OppoNumSeekBar.this.a();
            return false;
        }
    }

    public interface b {
        void a(OppoNumSeekBar oppoNumSeekBar, int i);

        void a(OppoNumSeekBar oppoNumSeekBar, int i, boolean z);

        boolean a();

        void b(OppoNumSeekBar oppoNumSeekBar, int i);
    }

    public OppoNumSeekBar(Context context) {
        this(context, (AttributeSet) null);
    }

    public OppoNumSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OppoNumSeekBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.f2527a = 0;
        this.f2528b = 0;
        this.c = 0;
        this.d = 0;
        this.u = 0;
        this.v = 0;
        this.w = 0;
        this.e = 0;
        this.x = 0;
        this.y = 0;
        this.z = 0;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.D = 0.0f;
        this.E = 0.0f;
        this.F = 0;
        this.G = 0;
        this.H = false;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = null;
        this.M = 0.0f;
        this.N = 0.0f;
        this.f = 0.0f;
        this.O = 0.0f;
        this.P = null;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0.0f;
        this.m = 0;
        this.n = false;
        this.o = false;
        this.p = null;
        this.q = null;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OppoNumSeekBar, i2, 0);
        this.g = obtainStyledAttributes.getInt(6, 0);
        this.h = obtainStyledAttributes.getInt(5, 100);
        this.r = obtainStyledAttributes.getInt(7, this.g);
        this.s = obtainStyledAttributes.getDimensionPixelSize(34, (int) getResources().getDimension(R.dimen.num_seekbar_track_size));
        this.F = obtainStyledAttributes.getDimensionPixelSize(17, (int) getResources().getDimension(R.dimen.num_seekbar_text_space));
        this.t = obtainStyledAttributes.getDimensionPixelSize(9, (int) getResources().getDimension(R.dimen.num_seekbar_second_track_size));
        this.m = obtainStyledAttributes.getDimensionPixelSize(25, (int) getResources().getDimension(R.dimen.num_seekbar_thumb_radius_on_dragging));
        this.c = obtainStyledAttributes.getDimensionPixelSize(24, getResources().getDimensionPixelSize(R.dimen.num_seekbar_thumb_radius));
        this.d = obtainStyledAttributes.getDimensionPixelSize(27, getResources().getDimensionPixelSize(R.dimen.num_seekbar_thumb_shadow_radius));
        this.u = obtainStyledAttributes.getDimensionPixelSize(12, (int) getResources().getDimension(R.dimen.num_seekbar_section_radius));
        this.v = obtainStyledAttributes.getDimensionPixelSize(10, (int) getResources().getDimension(R.dimen.num_seekbar_section_click_radius));
        this.j = obtainStyledAttributes.getColor(33, context.getColor(R.color.camera_white));
        this.w = obtainStyledAttributes.getColor(8, context.getColor(R.color.num_seekbar_text_color));
        this.i = obtainStyledAttributes.getColor(11, context.getColor(R.color.camera_white));
        this.e = this.w;
        this.x = obtainStyledAttributes.getColor(26, androidx.core.a.a.c(context, R.color.num_seekbar_thumb_shadow_color));
        this.y = obtainStyledAttributes.getColor(23, androidx.core.a.a.c(context, R.color.camera_white));
        this.z = obtainStyledAttributes.getDimensionPixelSize(31, (int) getResources().getDimension(R.dimen.num_seekbar_thumb_text_size));
        this.A = obtainStyledAttributes.getColor(29, this.j);
        this.B = (long) obtainStyledAttributes.getInteger(0, 200);
        this.k = obtainStyledAttributes.getInteger(13, 0);
        this.G = obtainStyledAttributes.getResourceId(32, 0);
        this.H = obtainStyledAttributes.getBoolean(28, false);
        this.I = obtainStyledAttributes.getDimensionPixelSize(30, 0);
        this.J = obtainStyledAttributes.getDimensionPixelSize(15, 0);
        this.K = obtainStyledAttributes.getDimensionPixelSize(14, 0);
        this.f2527a = obtainStyledAttributes.getDimensionPixelSize(20, getResources().getDimensionPixelSize(R.dimen.num_seekbar_thumb_circle_stroke_width));
        this.f2528b = obtainStyledAttributes.getDimensionPixelSize(20, getResources().getDimensionPixelSize(R.dimen.num_seekbar_thumb_circle_stroke_width_on_dragging));
        obtainStyledAttributes.recycle();
        this.q = new Paint();
        this.q.setAntiAlias(true);
        this.q.setStrokeCap(Paint.Cap.ROUND);
        this.q.setTextAlign(Paint.Align.CENTER);
        this.p = new Rect();
        c();
        this.P = new GestureDetector(context, new a());
    }

    private void a(Canvas canvas, float f2) {
        this.q.setColor(this.A);
        this.q.setTextSize((float) this.z);
        this.q.getTextBounds("0123456789", 0, 10, this.p);
        int progress = getProgress();
        String valueOf = String.valueOf(progress);
        if (this.G != 0) {
            valueOf = getContext().getString(this.G, new Object[]{Integer.valueOf(progress)});
        }
        String str = valueOf;
        float f3 = this.l;
        if (this.H) {
            float f4 = this.N;
            float f5 = this.M;
            f3 = ((f4 - f5) / 2.0f) + f5;
            f2 = (f2 - ((float) this.I)) - ((float) getPaddingTop());
        }
        a(canvas, str, f3, a(this.q, f2, this.p), this.q);
    }

    private void a(Canvas canvas, float f2, float f3, int i2, int i3) {
        this.q.setAlpha(255);
        this.q.setColor(this.y);
        this.q.setStyle(Paint.Style.FILL);
        float f4 = (float) i3;
        canvas.drawCircle(f2, f3, f4, this.q);
        this.q.setColor(this.e);
        float f5 = (float) i2;
        this.q.setStrokeWidth(f5);
        this.q.setStyle(Paint.Style.STROKE);
        canvas.drawCircle(f2, f3, f4 - (f5 / 2.0f), this.q);
        this.q.setStyle(Paint.Style.FILL);
    }

    private void c() {
        if (this.g == this.h) {
            this.g = 0;
            this.h = 100;
        }
        int i2 = this.g;
        int i3 = this.h;
        if (i2 > i3) {
            this.h = i2;
            this.g = i3;
        }
        int i4 = this.r;
        int i5 = this.g;
        if (i4 < i5) {
            this.r = i5;
        }
        int i6 = this.r;
        int i7 = this.h;
        if (i6 > i7) {
            this.r = i7;
        }
        int i8 = this.t;
        int i9 = this.s;
        if (i8 < i9) {
            this.t = i9 + ((int) getResources().getDimension(R.dimen.num_seekbar_height_distance));
        }
        int i10 = this.c;
        int i11 = this.t;
        if (i10 <= i11) {
            this.c = i11 + ((int) getResources().getDimension(R.dimen.num_seekbar_height_distance));
        }
        this.C = this.h - this.g;
        c(this.r);
    }

    private String getMaxText() {
        return String.valueOf(this.h);
    }

    private String getMinText() {
        return String.valueOf(-50);
    }

    /* access modifiers changed from: protected */
    public float a(Paint paint, float f2, Rect rect) {
        return f2 - ((float) rect.height());
    }

    public OppoNumSeekBar a(int i2) {
        this.h = i2;
        return this;
    }

    public void a() {
        animate().setDuration(this.B).setListener(new AnimatorListenerAdapter() {
            public void onAnimationCancel(Animator animator) {
                OppoNumSeekBar oppoNumSeekBar = OppoNumSeekBar.this;
                oppoNumSeekBar.n = false;
                oppoNumSeekBar.o = false;
                oppoNumSeekBar.invalidate();
            }

            public void onAnimationEnd(Animator animator) {
                OppoNumSeekBar oppoNumSeekBar = OppoNumSeekBar.this;
                oppoNumSeekBar.n = false;
                oppoNumSeekBar.o = false;
                oppoNumSeekBar.invalidate();
                if (OppoNumSeekBar.this.L != null) {
                    b a2 = OppoNumSeekBar.this.L;
                    OppoNumSeekBar oppoNumSeekBar2 = OppoNumSeekBar.this;
                    a2.a(oppoNumSeekBar2, oppoNumSeekBar2.getProgress(), true);
                }
            }
        }).start();
        b bVar = this.L;
        if (bVar != null) {
            bVar.b(this, getProgress());
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f2, float f3) {
        if (this.n) {
            this.q.setColor(this.x);
            this.q.setAlpha(38);
            canvas.drawCircle(f2, f3, (float) this.d, this.q);
            a(canvas, f2, f3, this.f2528b, this.m);
            return;
        }
        a(canvas, f2, f3, this.f2527a, this.c);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f2, float f3, float f4) {
        float f5 = f2 + this.E;
        this.q.setColor(f5 <= f4 ? this.w : this.i);
        canvas.drawCircle(f5, f3, (float) this.u, this.q);
    }

    public void a(Canvas canvas, String str, float f2, float f3, Paint paint) {
        canvas.drawText(str, f2, f3, paint);
    }

    /* access modifiers changed from: protected */
    public boolean a(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float f2 = ((this.D / ((float) this.C)) * ((float) (this.r - this.g))) + this.M;
        float measuredHeight = ((float) getMeasuredHeight()) / 2.0f;
        float f3 = this.M;
        return ((motionEvent.getX() - f2) * (motionEvent.getX() - f2)) + ((motionEvent.getY() - measuredHeight) * (motionEvent.getY() - measuredHeight)) <= f3 * f3;
    }

    public OppoNumSeekBar b(int i2) {
        this.g = i2;
        return this;
    }

    public boolean b() {
        return this.n;
    }

    public OppoNumSeekBar c(int i2) {
        if (this.r != i2) {
            this.r = i2;
            b bVar = this.L;
            if (bVar != null) {
                bVar.a(this, getProgress(), false);
            }
        }
        if (!this.n) {
            this.l = ((this.D / ((float) this.C)) * ((float) (this.r - this.g))) + this.M;
        }
        return this;
    }

    public OppoNumSeekBar d(int i2) {
        this.k = i2;
        return this;
    }

    public float getMax() {
        return (float) this.h;
    }

    public float getMin() {
        return (float) this.g;
    }

    public int getProgress() {
        return this.r;
    }

    /* access modifiers changed from: protected */
    public int getYTop() {
        return getPaddingTop() + (getHeight() / 2);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f2 = this.M;
        float f3 = this.N;
        float yTop = (float) (getYTop() + this.I);
        float f4 = this.D;
        int i2 = this.k;
        int i3 = this.g;
        int i4 = this.C;
        this.E = (((float) (i2 - i3)) / ((float) i4)) * f4;
        if (!this.n && this.l < this.M) {
            this.l = ((f4 / ((float) i4)) * ((float) (this.r - i3))) + f2;
        }
        this.q.setColor(this.w);
        this.q.setStrokeWidth(this.n ? ((float) this.t) * 2.0f : (float) this.t);
        float f5 = yTop;
        float f6 = yTop;
        canvas.drawLine(f2 + (this.q.getStrokeWidth() / 2.0f), f5, this.l, f6, this.q);
        this.q.setColor(this.j);
        this.q.setStrokeWidth((float) this.s);
        canvas.drawLine(this.l, f5, f3 - (this.q.getStrokeWidth() / 2.0f), f6, this.q);
        a(canvas, f2, yTop, this.l);
        a(canvas, this.l, yTop);
        if (this.n || this.H || this.o) {
            a(canvas, yTop);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.q.setTextSize((float) this.z);
        this.q.getTextBounds("0123456789", 0, 10, this.p);
        setMeasuredDimension(resolveSize(getSuggestedMinimumWidth(), i2), (this.m * 2) + ((this.p.height() + this.F) * 2));
        this.q.setTextSize((float) this.z);
        String minText = getMinText();
        this.q.getTextBounds(minText, 0, minText.length(), this.p);
        this.M = (((float) getPaddingLeft()) + Math.max((float) this.m, ((float) this.p.width()) / 2.0f)) - this.f;
        String maxText = getMaxText();
        this.q.getTextBounds(maxText, 0, maxText.length(), this.p);
        this.N = ((float) (getMeasuredWidth() - getPaddingRight())) - Math.max((float) this.m, ((float) this.p.width()) / 2.0f);
        int i4 = this.J;
        if (i4 != 0 && ((float) i4) > this.M) {
            this.M = (float) i4;
        }
        if (this.K != 0 && ((float) (getMeasuredWidth() - this.K)) < this.N) {
            this.N = (float) (getMeasuredWidth() - this.K);
        }
        this.D = this.N - this.M;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.r = bundle.getInt("progress");
            super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
            c(this.r);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", (float) this.r);
        return bundle;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        post(new Runnable() {
            public void run() {
                OppoNumSeekBar.this.requestLayout();
            }
        });
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0020, code lost:
        if (r0 != 3) goto L_0x0093;
     */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            b bVar = this.L;
            if (bVar == null || bVar.a()) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 0) {
                    if (actionMasked != 1) {
                        if (actionMasked == 2) {
                            if (this.n) {
                                this.l = motionEvent.getX() + this.O;
                                float f2 = this.l;
                                float f3 = this.M;
                                if (f2 < f3) {
                                    this.l = f3;
                                }
                                float f4 = this.l;
                                float f5 = this.N;
                                if (f4 > f5) {
                                    this.l = f5;
                                }
                                c((int) ((((this.l - this.M) * ((float) this.C)) / this.D) + ((float) this.g)));
                                invalidate();
                            }
                        }
                    }
                    getParent().requestDisallowInterceptTouchEvent(false);
                    if (this.n) {
                        a();
                    }
                } else {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.n = a(motionEvent);
                    if (this.n) {
                        invalidate();
                        b bVar2 = this.L;
                        if (bVar2 != null) {
                            bVar2.a(this, getProgress());
                        }
                    }
                    this.O = this.l - motionEvent.getX();
                }
                if (!this.n) {
                    GestureDetector gestureDetector = this.P;
                    if (gestureDetector != null) {
                        gestureDetector.onTouchEvent(motionEvent);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public void setOnProgressChangedListener(b bVar) {
        this.L = bVar;
    }
}
