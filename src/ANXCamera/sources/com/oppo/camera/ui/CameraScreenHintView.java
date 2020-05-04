package com.oppo.camera.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.ui.h;
import com.oppo.camera.ui.menu.OppoTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CameraScreenHintView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private static int f2521a;

    /* renamed from: b  reason: collision with root package name */
    private static int f2522b;
    private Handler A;
    private h.a B;
    private int c;
    /* access modifiers changed from: private */
    public int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    /* access modifiers changed from: private */
    public boolean o;
    /* access modifiers changed from: private */
    public boolean p;
    /* access modifiers changed from: private */
    public boolean q;
    private boolean r;
    private boolean s;
    /* access modifiers changed from: private */
    public RotateImageView t;
    /* access modifiers changed from: private */
    public OppoTextView u;
    /* access modifiers changed from: private */
    public List<HashMap> v;
    /* access modifiers changed from: private */
    public a w;
    private h x;
    private a y;
    private boolean z;

    private class a extends Animation implements Animation.AnimationListener {

        /* renamed from: b  reason: collision with root package name */
        private float f2526b = 1.0f;
        private float c = 0.0f;
        private float d = 1.2f;
        private float e = 1.0f;
        private int f = 0;
        private int g = 0;
        private int h = 0;

        public a() {
            setAnimationListener(this);
            boolean unused = CameraScreenHintView.this.p = false;
        }

        private void a(float f2, Transformation transformation) {
            float scaleFactor = getScaleFactor();
            float f3 = this.d;
            float f4 = f3 + ((this.e - f3) * f2);
            transformation.getMatrix().setScale(f4, f4, ((float) this.f) * scaleFactor, scaleFactor * ((float) this.g));
        }

        private void a(int i, int i2) {
            setStartOffset((long) i);
            setDuration((long) i2);
        }

        public void a(int i) {
            d.a("CameraScreenHintView", "startScreenAnimation, animationType: " + i + ", mbAnimationRunning: " + CameraScreenHintView.this.p);
            if (i == 0) {
                int i2 = this.h;
                if (i2 == 1 || i2 == 3) {
                    if (CameraScreenHintView.this.t != null) {
                        CameraScreenHintView.this.t.clearAnimation();
                        CameraScreenHintView.this.t.setVisibility(8);
                    }
                    boolean unused = CameraScreenHintView.this.p = false;
                }
                a(80, 330);
                setInterpolator(CameraScreenHintView.this.getContext(), R.anim.hint_view_show_alpha_path_interpolator);
                this.c = 0.0f;
                this.f2526b = 1.0f;
            } else if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        a(0, 300);
                        this.c = 1.0f;
                        this.f2526b = 0.0f;
                    } else if (i != 4) {
                        a(0, 300);
                    }
                }
                a(0, 160);
                setInterpolator(CameraScreenHintView.this.getContext(), R.anim.alpha_path_interpolator);
                this.c = 1.0f;
                this.f2526b = 0.0f;
            } else {
                int i3 = this.h;
                if (i3 == 0 || i3 == 2) {
                    if (CameraScreenHintView.this.u != null) {
                        CameraScreenHintView.this.u.clearAnimation();
                        CameraScreenHintView.this.setHintTextViewVisible(8);
                    }
                    boolean unused2 = CameraScreenHintView.this.p = false;
                }
                a(0, 300);
                this.c = 0.0f;
                this.f2526b = 1.0f;
            }
            this.h = i;
            if (!CameraScreenHintView.this.p || CameraScreenHintView.this.q) {
                CameraScreenHintView cameraScreenHintView = CameraScreenHintView.this;
                boolean unused3 = cameraScreenHintView.p = !cameraScreenHintView.q;
                int i4 = this.h;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                if (CameraScreenHintView.this.q) {
                                    if (CameraScreenHintView.this.u != null) {
                                        CameraScreenHintView.this.setHintTextViewVisible(8);
                                        CameraScreenHintView.this.u.setAlpha(1.0f);
                                    }
                                    if (CameraScreenHintView.this.t != null) {
                                        CameraScreenHintView.this.t.setVisibility(8);
                                        CameraScreenHintView.this.t.setAlpha(1.0f);
                                        return;
                                    }
                                    return;
                                } else if (CameraScreenHintView.this.u != null) {
                                    CameraScreenHintView.this.u.clearAnimation();
                                    CameraScreenHintView.this.u.startAnimation(CameraScreenHintView.this.w);
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                    if (CameraScreenHintView.this.t == null) {
                        return;
                    }
                    if (CameraScreenHintView.this.q) {
                        CameraScreenHintView.this.t.setAlpha(this.f2526b);
                        return;
                    }
                    CameraScreenHintView.this.t.clearAnimation();
                    CameraScreenHintView.this.t.startAnimation(CameraScreenHintView.this.w);
                    return;
                }
                if (CameraScreenHintView.this.u == null) {
                    return;
                }
                if (CameraScreenHintView.this.q) {
                    CameraScreenHintView.this.u.setAlpha(this.f2526b);
                    return;
                }
                CameraScreenHintView.this.u.clearAnimation();
                CameraScreenHintView.this.u.startAnimation(CameraScreenHintView.this.w);
            }
        }

        /* access modifiers changed from: protected */
        public void applyTransformation(float f2, Transformation transformation) {
            if (!CameraScreenHintView.this.q) {
                float f3 = this.c;
                float f4 = f3 + ((this.f2526b - f3) * f2);
                int i = this.h;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i == 4) {
                                    if (CameraScreenHintView.this.u != null) {
                                        CameraScreenHintView.this.u.setAlpha(f4);
                                    }
                                    if (CameraScreenHintView.this.t != null) {
                                        CameraScreenHintView.this.t.setAlpha(f4);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        } else if (CameraScreenHintView.this.u != null) {
                            CameraScreenHintView.this.u.setAlpha(f4);
                            return;
                        } else {
                            return;
                        }
                    }
                    if (CameraScreenHintView.this.t != null) {
                        CameraScreenHintView.this.t.setAlpha(f4);
                        return;
                    }
                    return;
                }
                a(f2, transformation);
                if (CameraScreenHintView.this.u != null) {
                    CameraScreenHintView.this.u.setAlpha(f4);
                }
            }
        }

        public void onAnimationEnd(Animation animation) {
            d.a("CameraScreenHintView", "onAnimationEnd(), mAnimationType: " + this.h);
            int i = this.h;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                if (CameraScreenHintView.this.u != null) {
                                    CameraScreenHintView.this.u.setText((CharSequence) null);
                                    CameraScreenHintView.this.setHintTextViewVisible(8);
                                    CameraScreenHintView.this.u.setAlpha(1.0f);
                                }
                                if (CameraScreenHintView.this.t != null) {
                                    CameraScreenHintView.this.t.setVisibility(8);
                                    CameraScreenHintView.this.t.setAlpha(1.0f);
                                }
                            }
                        } else if (CameraScreenHintView.this.t != null) {
                            CameraScreenHintView.this.t.setVisibility(8);
                            CameraScreenHintView.this.t.setAlpha(1.0f);
                        }
                    } else if (CameraScreenHintView.this.u != null) {
                        CameraScreenHintView.this.u.setText((CharSequence) null);
                        CameraScreenHintView.this.setHintTextViewVisible(8);
                        CameraScreenHintView.this.u.setAlpha(1.0f);
                    }
                } else if (CameraScreenHintView.this.t != null) {
                    CameraScreenHintView.this.t.setAlpha(this.f2526b);
                }
            } else if (CameraScreenHintView.this.u != null) {
                CameraScreenHintView.this.u.setAlpha(this.f2526b);
            }
            boolean unused = CameraScreenHintView.this.p = false;
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
            d.a("CameraScreenHintView", "onAnimationStart(), mbActivityPause: " + CameraScreenHintView.this.q);
            if (!CameraScreenHintView.this.q) {
                boolean unused = CameraScreenHintView.this.p = true;
                int i = this.h;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i == 4) {
                                    if (CameraScreenHintView.this.u != null) {
                                        CameraScreenHintView.this.u.setAlpha(this.c);
                                    }
                                    if (CameraScreenHintView.this.t != null) {
                                        CameraScreenHintView.this.t.setAlpha(this.c);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        } else if (CameraScreenHintView.this.u != null) {
                            CameraScreenHintView.this.u.setAlpha(this.c);
                            return;
                        } else {
                            return;
                        }
                    }
                    if (CameraScreenHintView.this.t != null) {
                        CameraScreenHintView.this.t.setAlpha(this.c);
                    }
                } else if (CameraScreenHintView.this.u != null) {
                    this.f = CameraScreenHintView.this.u.getViewWidth() / 2;
                    this.g = CameraScreenHintView.this.u.getViewHeight() / 2;
                    CameraScreenHintView.this.u.setAlpha(this.c);
                }
            }
        }
    }

    public CameraScreenHintView(Context context) {
        this(context, (AttributeSet) null);
    }

    public CameraScreenHintView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CameraScreenHintView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = 1;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.m = -1;
        this.n = 0;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = new a();
        this.x = null;
        this.y = null;
        this.z = false;
        this.A = new Handler() {
            public void handleMessage(Message message) {
                d.a("CameraScreenHintView", "handleMessage, what: " + message.what);
                int i = message.what;
                if (i == 1) {
                    if (CameraScreenHintView.this.v == null || CameraScreenHintView.this.v.size() <= 0) {
                        if (CameraScreenHintView.this.o) {
                            CameraScreenHintView.this.u.setText((CharSequence) null);
                            CameraScreenHintView.this.setHintTextViewVisible(8);
                            CameraScreenHintView.this.t.setVisibility(0);
                            CameraScreenHintView.this.t.setAlpha(0.0f);
                            CameraScreenHintView.this.w.a(1);
                        } else if (CameraScreenHintView.this.u.a()) {
                            CameraScreenHintView.this.w.a(2);
                        }
                    } else if (CameraScreenHintView.this.v.size() > 1) {
                        CameraScreenHintView cameraScreenHintView = CameraScreenHintView.this;
                        cameraScreenHintView.a(((Integer) ((HashMap) cameraScreenHintView.v.get(0)).get("TEXT_BG_COLOR")).intValue(), ((Integer) ((HashMap) CameraScreenHintView.this.v.get(0)).get("TEXT_COLOR")).intValue());
                        CameraScreenHintView.this.u.setText((String) ((HashMap) CameraScreenHintView.this.v.get(0)).get("TEXT"));
                        CameraScreenHintView.this.setHintTextViewVisible(0);
                        CameraScreenHintView.this.u.setAlpha(0.0f);
                        CameraScreenHintView.this.w.a(0);
                    } else if (CameraScreenHintView.this.o) {
                        CameraScreenHintView.this.a((int) R.drawable.screen_hint_textview_bg, (int) R.color.screen_hint_text_color);
                        CameraScreenHintView.this.t.setVisibility(0);
                        CameraScreenHintView.this.setHintTextViewVisible(8);
                        CameraScreenHintView.this.t.setAlpha(0.0f);
                        CameraScreenHintView.this.w.a(1);
                    } else {
                        CameraScreenHintView cameraScreenHintView2 = CameraScreenHintView.this;
                        cameraScreenHintView2.a(((Integer) ((HashMap) cameraScreenHintView2.v.get(0)).get("TEXT_BG_COLOR")).intValue(), ((Integer) ((HashMap) CameraScreenHintView.this.v.get(0)).get("TEXT_COLOR")).intValue());
                        CameraScreenHintView.this.u.setText((String) ((HashMap) CameraScreenHintView.this.v.get(0)).get("TEXT"));
                        CameraScreenHintView.this.setHintTextViewVisible(0);
                        CameraScreenHintView.this.u.setAlpha(0.0f);
                        CameraScreenHintView.this.w.a(0);
                    }
                    CameraScreenHintView.this.h();
                    CameraScreenHintView.this.d();
                } else if (i == 2) {
                    CameraScreenHintView.this.a(true);
                } else if (i == 3) {
                    CameraScreenHintView.this.d();
                }
            }
        };
        this.B = new h.a() {
            public void a(float f) {
                if (CameraScreenHintView.this.t != null) {
                    CameraScreenHintView.this.t.setAlpha(f);
                }
                if (CameraScreenHintView.this.u != null) {
                    CameraScreenHintView.this.u.setAlpha(f);
                }
            }

            public void a(int i) {
                int unused = CameraScreenHintView.this.d = i;
                if (CameraScreenHintView.this.t != null) {
                    CameraScreenHintView.this.t.a(CameraScreenHintView.this.d, false);
                }
                if (CameraScreenHintView.this.u != null) {
                    CameraScreenHintView.this.u.a(CameraScreenHintView.this.d, false);
                    CameraScreenHintView.this.u.invalidate();
                }
                CameraScreenHintView.this.d();
            }

            public boolean a() {
                if (CameraScreenHintView.this.getVisibility() != 0) {
                    return false;
                }
                return (CameraScreenHintView.this.t != null && CameraScreenHintView.this.t.getVisibility() == 0) || (CameraScreenHintView.this.u != null && CameraScreenHintView.this.u.a());
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CameraScreenHintView);
        this.f = obtainStyledAttributes.getDimensionPixelSize(1, 42);
        this.g = obtainStyledAttributes.getDimensionPixelSize(2, 20);
        obtainStyledAttributes.recycle();
        this.v = new ArrayList();
        f2522b = com.oppo.camera.o.d.E();
        f2521a = (int) (((double) com.oppo.camera.o.d.N()) * 1.3333333333333333d);
    }

    /* access modifiers changed from: private */
    public void a(int i2, int i3) {
        if (this.s) {
            OppoTextView oppoTextView = this.u;
            if (oppoTextView != null) {
                oppoTextView.setBackgroundResource(i2);
                this.u.setTextColor(getResources().getColor(i3));
            }
        }
    }

    private synchronized void a(String str, int i2, int i3) {
        if (this.v == null) {
            this.v = new ArrayList();
        }
        if (!TextUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put("TEXT", str);
            hashMap.put("TEXT_BG_COLOR", Integer.valueOf(i2));
            hashMap.put("TEXT_COLOR", Integer.valueOf(i3));
            for (int i4 = 0; i4 < this.v.size(); i4++) {
                if (str.equals(this.v.get(i4).get("TEXT"))) {
                    this.v.remove(i4);
                }
            }
            this.v.add(0, hashMap);
            if (this.v.size() > 2) {
                this.v.remove(this.v.size() - 1);
            }
        }
    }

    private synchronized void b(String str) {
        if (this.v != null && !TextUtils.isEmpty(str)) {
            for (int i2 = 0; i2 < this.v.size(); i2++) {
                if (str.equals(this.v.get(i2).get("TEXT"))) {
                    this.v.remove(i2);
                }
            }
        }
    }

    private void f() {
        this.x = new h(1.0f, 0.0f);
        this.x.setDuration(300);
        this.x.a(this.B);
    }

    private synchronized void g() {
        if (this.v != null && this.v.size() > 0) {
            this.v.clear();
        }
    }

    private int getChildMeasureHeight() {
        int i2 = this.d;
        int i3 = 0;
        if (i2 == 90 || i2 == 270) {
            OppoTextView oppoTextView = this.u;
            if (oppoTextView != null && oppoTextView.a()) {
                i3 = 0 + this.u.getViewHeight();
            }
            RotateImageView rotateImageView = this.t;
            return (rotateImageView == null || rotateImageView.getVisibility() != 0) ? i3 : i3 + this.l;
        }
        OppoTextView oppoTextView2 = this.u;
        if (oppoTextView2 != null && oppoTextView2.a() && this.u.getViewHeight() >= 0) {
            i3 = this.u.getViewHeight();
        }
        RotateImageView rotateImageView2 = this.t;
        if (rotateImageView2 == null || rotateImageView2.getVisibility() != 0) {
            return i3;
        }
        int i4 = this.k;
        return i3 > i4 ? i3 : i4;
    }

    private int getChildMeasureWidth() {
        int i2 = this.d;
        int i3 = 0;
        if (i2 == 90 || i2 == 270) {
            OppoTextView oppoTextView = this.u;
            if (oppoTextView != null && oppoTextView.a() && this.u.getViewWidth() >= 0) {
                i3 = this.u.getViewWidth();
            }
            RotateImageView rotateImageView = this.t;
            if (rotateImageView == null || rotateImageView.getVisibility() != 0) {
                return i3;
            }
            int i4 = this.k;
            return i3 > i4 ? i3 : i4;
        }
        OppoTextView oppoTextView2 = this.u;
        if (oppoTextView2 != null && oppoTextView2.a()) {
            i3 = 0 + this.u.getViewWidth();
        }
        RotateImageView rotateImageView2 = this.t;
        return (rotateImageView2 == null || rotateImageView2.getVisibility() != 0) ? i3 : i3 + this.l;
    }

    /* access modifiers changed from: private */
    public void h() {
        OppoTextView oppoTextView = this.u;
        if (oppoTextView != null) {
            oppoTextView.measure(com.oppo.camera.o.d.N(), f2521a);
        }
        RotateImageView rotateImageView = this.t;
        if (rotateImageView != null) {
            rotateImageView.measure(com.oppo.camera.o.d.N(), f2521a);
        }
    }

    /* access modifiers changed from: private */
    public void setHintTextViewVisible(int i2) {
        a aVar = this.y;
        if (aVar != null) {
            if (i2 == 0) {
                aVar.b(0);
            } else {
                aVar.b(8);
            }
        }
        this.u.setVisibility(i2);
    }

    public void a() {
        this.q = true;
        this.p = false;
        OppoTextView oppoTextView = this.u;
        if (oppoTextView != null) {
            oppoTextView.clearAnimation();
        }
        RotateImageView rotateImageView = this.t;
        if (rotateImageView != null) {
            rotateImageView.clearAnimation();
        }
    }

    public void a(int i2) {
        a(getResources().getString(i2));
    }

    public void a(int i2, int i3, int i4, boolean z2) {
        this.i = i2;
        this.h = i3;
        this.j = i4;
        this.r = z2;
        d();
    }

    public void a(int i2, boolean z2) {
        a(i2, z2, false);
    }

    public void a(int i2, boolean z2, boolean z3) {
        if (!this.z && this.m != i2 && i2 != -1) {
            Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), i2);
            this.m = i2;
            if (decodeResource != null) {
                RotateImageView rotateImageView = this.t;
                if (rotateImageView != null) {
                    rotateImageView.setImageBitmap(decodeResource);
                    setOrientation(getSupportRotaeScreen() ? this.e : 0);
                    this.k = decodeResource.getHeight();
                    this.l = decodeResource.getWidth();
                    this.o = true;
                    if (z2 && this.A.hasMessages(1)) {
                        OppoTextView oppoTextView = this.u;
                        if (oppoTextView != null && oppoTextView.getVisibility() == 0) {
                            d.a("CameraScreenHintView", "showCameraScreenHintImage, lowPriority, so wait text hint hide.");
                            return;
                        }
                    }
                    if (this.u != null) {
                        setHintTextViewVisible(8);
                    }
                    this.t.setVisibility(0);
                    this.t.setAlpha(0.0f);
                    this.w.a(1);
                    if (z3) {
                        this.A.removeMessages(2);
                        this.A.sendEmptyMessageDelayed(2, 3000);
                    }
                    h();
                    d();
                }
            }
        }
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            OppoTextView oppoTextView = this.u;
            if (oppoTextView != null) {
                boolean equals = str.equals(oppoTextView.getText().toString());
                b(str);
                if (equals) {
                    this.A.removeMessages(1);
                    this.A.sendEmptyMessage(1);
                }
            }
        }
    }

    public void a(String str, boolean z2, boolean z3) {
        a(str, z2, z3, R.drawable.screen_hint_textview_bg, R.color.screen_hint_text_color);
    }

    public void a(String str, boolean z2, boolean z3, int i2, int i3) {
        d.b("CameraScreenHintView", "showCameraScreenHintText, hintText: " + str + ", mCurOrientation: " + this.e + ", showAlways: " + z2 + ", hideAuto: " + z3 + ", bgDrawable: " + i2 + ", color: " + i3);
        if (!this.z && this.u != null && !TextUtils.isEmpty(str)) {
            a(i2, i3);
            RotateImageView rotateImageView = this.t;
            if (rotateImageView != null) {
                rotateImageView.setVisibility(8);
            }
            this.A.removeMessages(1);
            if (z2) {
                a(str, i2, i3);
            }
            setOrientation(getSupportRotaeScreen() ? this.e : 0);
            boolean z4 = !str.equals(this.u.getText().toString());
            setHintTextViewVisible(0);
            this.u.setText(str);
            this.u.setAlpha(0.0f);
            this.w.a(0);
            if (!z2 && z3) {
                this.A.removeMessages(1);
                this.A.sendEmptyMessageDelayed(1, 3000);
            }
            if (z4 || this.o) {
                h();
                this.A.sendEmptyMessage(3);
            }
        }
    }

    public void a(boolean z2) {
        RotateImageView rotateImageView = this.t;
        if (rotateImageView != null) {
            this.o = false;
            this.m = -1;
            if (!z2) {
                rotateImageView.setVisibility(8);
            } else if (rotateImageView.getVisibility() == 0) {
                this.w.a(3);
            }
            List<HashMap> list = this.v;
            if (list != null && list.size() > 0) {
                a(((Integer) this.v.get(0).get("TEXT_BG_COLOR")).intValue(), ((Integer) this.v.get(0).get("TEXT_COLOR")).intValue());
                this.u.setText((String) this.v.get(0).get("TEXT"));
                setHintTextViewVisible(0);
                this.u.setAlpha(0.0f);
                this.w.a(0);
                d();
            }
        }
    }

    public void a(boolean z2, boolean z3) {
        OppoTextView oppoTextView = this.u;
        if (oppoTextView == null || oppoTextView.getVisibility() != 8) {
            this.o = false;
            OppoTextView oppoTextView2 = this.u;
            if (oppoTextView2 != null) {
                if (!z2) {
                    oppoTextView2.clearAnimation();
                    this.p = false;
                    this.u.setText((CharSequence) null);
                    setHintTextViewVisible(8);
                } else if (oppoTextView2 != null) {
                    this.w.a(4);
                }
            }
            if (z3) {
                g();
            }
        }
    }

    public void b() {
        this.q = false;
    }

    public void b(int i2) {
        if (i2 != this.n) {
            this.n = i2;
            d();
        }
    }

    public void b(boolean z2) {
        a(z2, true);
    }

    public boolean c() {
        if (this.z || this.v.size() <= 0) {
            return false;
        }
        HashMap hashMap = this.v.get(0);
        d.a("CameraScreenHintView", "showRecentCameraScreenHintText, " + hashMap.get("TEXT"));
        a((String) hashMap.get("TEXT"), true, false, ((Integer) hashMap.get("TEXT_BG_COLOR")).intValue(), ((Integer) hashMap.get("TEXT_COLOR")).intValue());
        return true;
    }

    public void d() {
        int childMeasureWidth = getChildMeasureWidth();
        int childMeasureHeight = getChildMeasureHeight();
        d.a("CameraScreenHintView", "refreshLayout, width: " + childMeasureWidth + ", height: " + childMeasureHeight + ", mOrientation: " + this.d);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(childMeasureWidth, childMeasureHeight);
        e();
        int i2 = this.d;
        if (i2 == 90) {
            layoutParams.addRule(10);
            if (this.r) {
                layoutParams.addRule(11);
                layoutParams.rightMargin = this.f + this.j;
                layoutParams.topMargin = ((f2521a - childMeasureHeight) / 2) + f2522b;
            } else {
                layoutParams.addRule(9);
                layoutParams.leftMargin = this.f + this.j;
                layoutParams.topMargin = (((f2521a - childMeasureHeight) + this.n) / 2) + f2522b;
            }
        } else if (i2 == 270) {
            layoutParams.addRule(10);
            if (this.r) {
                layoutParams.addRule(9);
                layoutParams.leftMargin = this.f + this.j;
                layoutParams.topMargin = ((f2521a - childMeasureHeight) / 2) + f2522b;
            } else {
                layoutParams.addRule(11);
                layoutParams.rightMargin = this.f + this.j;
                layoutParams.topMargin = (((f2521a - childMeasureHeight) - this.n) / 2) + f2522b;
            }
        } else if (this.r) {
            layoutParams.addRule(12);
            layoutParams.addRule(14);
            layoutParams.bottomMargin = this.f + this.h;
        } else {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.topMargin = f2522b + this.f + this.i;
            layoutParams.rightMargin = ((com.oppo.camera.o.d.N() - childMeasureWidth) + this.n) / 2;
        }
        setLayoutParams(layoutParams);
    }

    public void e() {
        if (this.y != null && this.u.a()) {
            this.n = 0;
        }
    }

    public int getCurrentOrientation() {
        return this.e;
    }

    public RotateImageView getHintIconView() {
        RotateImageView rotateImageView = this.t;
        if (rotateImageView != null) {
            return rotateImageView;
        }
        return null;
    }

    public OppoTextView getHintTextView() {
        OppoTextView oppoTextView = this.u;
        if (oppoTextView != null) {
            return oppoTextView;
        }
        return null;
    }

    public int getMarginLeft() {
        return this.f + this.j;
    }

    public int getMarginTop() {
        return this.f + this.i;
    }

    public boolean getSupportRotaeScreen() {
        return (this.c & 3) == 1;
    }

    public int getViewGap() {
        return this.f;
    }

    public boolean isShown() {
        if (super.isShown()) {
            return this.u.isShown() || this.t.isShown();
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.t = (RotateImageView) findViewById(R.id.camera_screen_hint_icon);
        this.t.setVisibility(8);
        this.u = (OppoTextView) findViewById(R.id.camera_screen_hint_text);
        setHintTextViewVisible(8);
        this.t.setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int i8 = this.d;
        int i9 = 0;
        if (i8 == 90) {
            OppoTextView oppoTextView = this.u;
            if (oppoTextView != null && oppoTextView.a()) {
                int measuredWidth = (i6 - this.u.getMeasuredWidth()) / 2;
                RotateImageView rotateImageView = this.t;
                if (rotateImageView == null || rotateImageView.getVisibility() != 0) {
                    i9 = 0 + ((i7 - this.u.getMeasuredHeight()) / 2);
                }
                OppoTextView oppoTextView2 = this.u;
                oppoTextView2.layout(measuredWidth, i9, oppoTextView2.getMeasuredWidth() + measuredWidth, this.u.getMeasuredHeight() + i9);
                i9 += this.u.getMeasuredHeight();
            }
            RotateImageView rotateImageView2 = this.t;
            if (rotateImageView2 != null && rotateImageView2.getVisibility() == 0) {
                int i10 = (i6 - this.k) / 2;
                int i11 = i9 + (((i7 - i9) - this.l) / 2);
                RotateImageView rotateImageView3 = this.t;
                rotateImageView3.layout(i10, i11, rotateImageView3.getMeasuredWidth() + i10, this.t.getMeasuredHeight() + i11);
                this.t.layout(i10, i11, this.k + i10, this.l + i11);
            }
        } else if (i8 != 270) {
            RotateImageView rotateImageView4 = this.t;
            if (rotateImageView4 != null && rotateImageView4.getVisibility() == 0) {
                int i12 = (i7 - this.k) / 2;
                OppoTextView oppoTextView3 = this.u;
                if (oppoTextView3 == null || !oppoTextView3.a()) {
                    i9 = (i6 - this.l) / 2;
                }
                this.t.layout(i9, i12, this.l + i9, this.k + i12);
                i9 += this.l;
            }
            OppoTextView oppoTextView4 = this.u;
            if (oppoTextView4 != null && oppoTextView4.a()) {
                int measuredHeight = (i7 - this.u.getMeasuredHeight()) / 2;
                int measuredWidth2 = i9 + (((i6 - i9) - this.u.getMeasuredWidth()) / 2);
                OppoTextView oppoTextView5 = this.u;
                oppoTextView5.layout(measuredWidth2, measuredHeight, oppoTextView5.getMeasuredWidth() + measuredWidth2, this.u.getMeasuredHeight() + measuredHeight);
            }
        } else {
            RotateImageView rotateImageView5 = this.t;
            if (rotateImageView5 != null && rotateImageView5.getVisibility() == 0) {
                int i13 = (i6 - this.k) / 2;
                OppoTextView oppoTextView6 = this.u;
                if (oppoTextView6 == null || !oppoTextView6.a()) {
                    i9 = 0 + (((i7 + 0) - this.l) / 2);
                } else {
                    i13 = 0;
                }
                this.t.layout(i13, i9, this.k + i13, this.l + i9);
                i9 += this.l;
            }
            OppoTextView oppoTextView7 = this.u;
            if (oppoTextView7 != null && oppoTextView7.a()) {
                int measuredWidth3 = (i6 - this.u.getMeasuredWidth()) / 2;
                int measuredHeight2 = i9 + (((i7 - i9) - this.u.getMeasuredHeight()) / 2);
                OppoTextView oppoTextView8 = this.u;
                oppoTextView8.layout(measuredWidth3, measuredHeight2, oppoTextView8.getMeasuredWidth() + measuredWidth3, this.u.getMeasuredHeight() + measuredHeight2);
            }
        }
    }

    public void setCameraScreenHintListener(a aVar) {
        this.y = aVar;
    }

    public void setChangeHintColor(boolean z2) {
        this.s = z2;
    }

    public void setMoreMode(boolean z2) {
        this.z = z2;
    }

    public void setOrientation(int i2) {
        this.e = i2;
        boolean supportRotaeScreen = getSupportRotaeScreen();
        if (!getSupportRotaeScreen() && this.d != 0) {
            supportRotaeScreen = true;
            i2 = 0;
        }
        if (supportRotaeScreen) {
            if (this.x == null) {
                f();
            }
            if (i2 == -1) {
                i2 = 0;
            }
            if (i2 % 180 == 0) {
                i2 = 0;
            }
            h.a aVar = this.B;
            if (aVar != null && aVar.a() && getSupportRotaeScreen() && !this.x.b() && this.x.a() != i2) {
                startAnimation(this.x);
            }
            this.x.a(i2, getSupportRotaeScreen());
        }
    }

    public void setSupportRotateScreen(int i2) {
        this.c = i2 & 3;
    }
}
