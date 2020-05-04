package com.oppo.camera.ui.control;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.hardware.camera2.params.Face;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.ui.RotableTextView;
import com.oppo.camera.ui.preview.PreviewFrameLayout;

/* compiled from: TimerSnapShotManager */
public class h {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public float f2631a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public float f2632b;
    /* access modifiers changed from: private */
    public int c;
    /* access modifiers changed from: private */
    public int d;
    private boolean e;
    /* access modifiers changed from: private */
    public boolean f;
    /* access modifiers changed from: private */
    public boolean g;
    /* access modifiers changed from: private */
    public int h;
    /* access modifiers changed from: private */
    public int i;
    private long j;
    /* access modifiers changed from: private */
    public b k;
    private a l;
    /* access modifiers changed from: private */
    public RotableTextView m;
    /* access modifiers changed from: private */
    public ValueAnimator n;

    /* compiled from: TimerSnapShotManager */
    private class a extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private boolean f2634b;
        private int c;
        private int d;
        private int e;

        private a() {
            this.f2634b = false;
            this.c = 0;
            this.d = 0;
            this.e = 0;
        }

        private PointF a(int i) {
            float f;
            ViewGroup viewGroup = (ViewGroup) h.this.m.getParent();
            float f2 = 0.0f;
            if (i == 1) {
                f2 = ((float) viewGroup.getWidth()) / 2.0f;
                f = ((float) viewGroup.getHeight()) / 2.0f;
            } else if (i != 2) {
                f = 0.0f;
            } else {
                int g = h.this.g ? h.this.d : 0;
                f2 = (((float) viewGroup.getWidth()) - (h.this.f2632b / 2.0f)) - ((float) h.this.c);
                f = ((float) g) + (h.this.f2632b / 2.0f);
            }
            return new PointF(f2, f);
        }

        private void a(int i, int i2) {
            if (h.this.m != null) {
                int i3 = this.d;
                if (i3 == 0) {
                    b(i);
                    this.d = i;
                } else if (i3 != i) {
                    b(i);
                    if (this.d == 1) {
                        a(h.this.m, (h.this.f2631a * 1.0f) / h.this.f2632b, this.d, i);
                    } else if (i == 1) {
                        a(h.this.m, (h.this.f2632b * 1.0f) / h.this.f2631a, this.d, i);
                    }
                    this.d = i;
                }
                if (this.e != i2) {
                    h.this.m.a(i2, true);
                    this.e = i2;
                }
            }
        }

        private void a(View view, float f, int i, int i2) {
            PointF a2 = a(i);
            PointF a3 = a(i2);
            view.setScaleX(f);
            view.setScaleY(f);
            view.setTranslationX(a2.x - a3.x);
            view.setTranslationY(a2.y - a3.y);
            view.animate().setDuration(500).scaleX(1.0f).scaleY(1.0f).translationX(1.0f).translationY(1.0f);
        }

        private void b(int i) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (i == 1) {
                layoutParams.addRule(13);
                h.this.m.setTextSize(0, h.this.f2631a);
            } else if (i == 2) {
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.rightMargin = h.this.c;
                if (h.this.g) {
                    layoutParams.topMargin = h.this.d;
                }
                h.this.m.setTextSize(0, h.this.f2632b);
            }
            h.this.m.setLayoutParams(layoutParams);
        }

        private boolean b() {
            if (h.this.h > 0) {
                return false;
            }
            if (h.this.k != null) {
                boolean unused = h.this.f = true;
                h.this.k.a();
            }
            return true;
        }

        private void c() {
            if (h.this.n == null) {
                d();
            }
            h.this.n.cancel();
            h.this.n.start();
        }

        private void c(int i) {
            if (h.this.m != null) {
                int ceil = (int) Math.ceil((((double) h.this.h) * 1.0d) / 1000.0d);
                if (ceil != this.c) {
                    h.this.m.setAlpha(1.0f);
                    h.this.m.setText(String.valueOf(ceil));
                    this.c = ceil;
                    c();
                }
            }
            h hVar = h.this;
            int unused = hVar.h = hVar.h - i;
            h.this.k.c();
            int i2 = 1000;
            if (h.this.i > 3000 && h.this.h <= 3000) {
                i2 = h.this.h <= 1000 ? 125 : 250;
            }
            removeMessages(2);
            sendMessageDelayed(obtainMessage(2, Integer.valueOf(i2)), (long) i);
        }

        private void d() {
            ValueAnimator unused = h.this.n = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f}).setDuration(1000);
            h.this.n.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (h.this.m != null) {
                        h.this.m.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        h.this.m.postInvalidate();
                    }
                }
            });
        }

        public void a() {
            this.f2634b = false;
        }

        public void handleMessage(Message message) {
            d.a("TimerSnapShotManager", "handleMessage, what: " + message.what);
            int i = message.what;
            int i2 = 1;
            if (i == 1) {
                int intValue = ((Integer) message.obj).intValue();
                if (h.this.m != null) {
                    h.this.m.a(intValue, false);
                }
                this.e = intValue;
                this.f2634b = true;
                this.c = 0;
                this.d = 0;
            } else if (i != 2) {
                if (i == 3) {
                    boolean booleanValue = ((Boolean) message.obj).booleanValue();
                    int i3 = message.arg1;
                    if (!booleanValue) {
                        i2 = 2;
                    }
                    a(i2, i3);
                    if (this.f2634b) {
                        d.a("TimerSnapShotManager", "handleMessage, MSG_UPDATE_POSITION, mbFirstPreview");
                        this.f2634b = false;
                        c(1000);
                    }
                }
            } else if (!b()) {
                c(((Integer) message.obj).intValue());
            }
        }
    }

    /* compiled from: TimerSnapShotManager */
    public interface b {
        void a();

        void a(boolean z);

        void b();

        void c();
    }

    public h() {
        this.f2631a = 0.0f;
        this.f2632b = 0.0f;
        this.c = 0;
        this.d = 0;
        this.e = false;
        this.f = false;
        this.g = false;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.l = new a();
    }

    private void a(Activity activity) {
        Typeface typeface;
        if (this.m == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            PreviewFrameLayout previewFrameLayout = (PreviewFrameLayout) activity.findViewById(R.id.frame_layout);
            float dimension = activity.getResources().getDimension(R.dimen.time_snapshot_indicator_shadow_radius_size);
            float dimension2 = activity.getResources().getDimension(R.dimen.time_snapshot_indicator_shadow_radius_dx);
            float dimension3 = activity.getResources().getDimension(R.dimen.time_snapshot_indicator_shadow_radius_dy);
            this.f2631a = activity.getResources().getDimension(R.dimen.time_snapshot_indicator_text_size);
            this.f2632b = activity.getResources().getDimension(R.dimen.time_snapshot_indicator_text_size_corner);
            this.c = (int) activity.getResources().getDimension(R.dimen.time_snapshot_indicator_text_margin_horizontal);
            this.d = com.oppo.camera.o.d.E();
            this.m = new RotableTextView(activity);
            this.m.setTextColor(-1);
            this.m.setShadowLayer(dimension, dimension2, dimension3, 0);
            try {
                typeface = Typeface.createFromFile("system/fonts/ColorOSUI-Thin.ttf");
            } catch (Exception unused) {
                typeface = Typeface.DEFAULT;
            }
            this.m.setTypeface(typeface);
            this.m.setTextSize(0, this.f2631a);
            previewFrameLayout.addView(this.m, layoutParams);
            this.m.setVisibility(8);
        }
    }

    private boolean a(Rect rect, Face[] faceArr) {
        if (faceArr == null || faceArr.length <= 0) {
            return true;
        }
        int width = (rect.width() * rect.height()) / 16;
        for (Face a2 : faceArr) {
            if (a(a2, width)) {
                return true;
            }
        }
        return false;
    }

    private boolean a(Face face, int i2) {
        if (face == null) {
            return false;
        }
        Rect bounds = face.getBounds();
        return bounds.width() * bounds.height() <= i2;
    }

    public void a(int i2, Activity activity, int i3, boolean z) {
        d.a("TimerSnapShotManager", "startTimerSnapShot, time: " + i2);
        this.g = z;
        this.h = i2 * 1000;
        this.i = this.h;
        a(activity);
        this.e = true;
        RotableTextView rotableTextView = this.m;
        if (rotableTextView != null) {
            rotableTextView.setVisibility(0);
        }
        this.l.removeMessages(1);
        a aVar = this.l;
        aVar.sendMessage(aVar.obtainMessage(1, Integer.valueOf(i3)));
        this.k.b();
    }

    public void a(Rect rect, Face[] faceArr, int i2) {
        if (System.currentTimeMillis() - this.j > 500) {
            this.j = System.currentTimeMillis();
            this.l.removeMessages(3);
            Message obtainMessage = this.l.obtainMessage(3);
            obtainMessage.obj = Boolean.valueOf(a(rect, faceArr));
            obtainMessage.arg1 = i2;
            this.l.sendMessage(obtainMessage);
        }
    }

    public void a(b bVar) {
        this.k = bVar;
    }

    public boolean a() {
        if (f() || !e()) {
            return false;
        }
        d.a("TimerSnapShotManager", "shouldReset, TimerSnapShotManager not end, so reset");
        return true;
    }

    public void b() {
        this.m = null;
        this.l = null;
        ValueAnimator valueAnimator = this.n;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.n = null;
        }
    }

    public String c() {
        if (this.m == null) {
            return null;
        }
        return this.m.getWidth() + "x" + this.m.getHeight();
    }

    public String d() {
        if (this.m == null) {
            return null;
        }
        return this.m.getLeft() + "," + this.m.getTop() + "," + this.m.getRight() + "," + this.m.getBottom();
    }

    public boolean e() {
        return this.e;
    }

    public boolean f() {
        return this.f;
    }

    public void g() {
        this.l.removeMessages(2);
        this.l.removeMessages(3);
        this.l.a();
        this.e = false;
        RotableTextView rotableTextView = this.m;
        if (rotableTextView != null) {
            rotableTextView.clearAnimation();
            this.m.setVisibility(8);
        }
        b bVar = this.k;
        if (bVar != null) {
            bVar.a(this.f);
        }
        this.f = false;
        this.h = 0;
        this.i = 0;
        this.j = 0;
    }
}
