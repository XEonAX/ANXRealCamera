package com.oppo.camera.ui.menu.levelcontrol;

import android.app.Activity;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.VelocityTracker;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.oppo.camera.d;
import com.oppo.camera.gl.l;
import com.oppo.camera.ui.menu.levelcontrol.f;

public class ThreeDScrollBar extends TextureView implements TextureView.SurfaceTextureListener {

    /* renamed from: a  reason: collision with root package name */
    private Interpolator f2757a;

    /* renamed from: b  reason: collision with root package name */
    private Interpolator f2758b;
    /* access modifiers changed from: private */
    public f c;
    /* access modifiers changed from: private */
    public l d;
    /* access modifiers changed from: private */
    public a e;
    private VelocityTracker f;
    /* access modifiers changed from: private */
    public Handler g;
    private int h;
    private int i;
    private float j;
    private float k;
    private float l;
    private boolean m;
    /* access modifiers changed from: private */
    public boolean n;
    private f.b o;
    private f.b p;
    private f.b q;

    public interface a {
        void a();

        void a(int i);

        void a(f fVar);

        boolean b();

        boolean b(int i);

        int c();

        int d();
    }

    public ThreeDScrollBar(Context context) {
        this(context, (AttributeSet) null);
    }

    public ThreeDScrollBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2757a = new PathInterpolator(0.0f, 0.1f, 0.1f, 1.0f);
        this.f2758b = new PathInterpolator(0.0f, 0.1f, 0.4f, 0.7f);
        this.c = null;
        this.d = null;
        this.e = null;
        this.g = null;
        this.h = 1;
        this.i = 0;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = 0.0f;
        this.m = false;
        this.n = false;
        this.o = new f.b() {
            public void a(float f) {
            }

            public void b(final float f) {
                ThreeDScrollBar.this.g.post(new Runnable() {
                    public void run() {
                        boolean unused = ThreeDScrollBar.this.n = false;
                        ThreeDScrollBar.this.d.b(0);
                        if (ThreeDScrollBar.this.c != null) {
                            ThreeDScrollBar.this.b(ThreeDScrollBar.this.c(f));
                        }
                        ThreeDScrollBar.this.setScrolling(false);
                    }
                });
            }
        };
        this.p = new f.b() {
            public void a(final float f) {
                ThreeDScrollBar.this.g.post(new Runnable() {
                    public void run() {
                    }
                });
            }

            public void b(final float f) {
                ThreeDScrollBar.this.g.post(new Runnable() {
                    public void run() {
                        ThreeDScrollBar.this.d.b(0);
                        ThreeDScrollBar.this.b(ThreeDScrollBar.this.c(f));
                        ThreeDScrollBar.this.setScrolling(false);
                    }
                });
            }
        };
        this.q = new f.b() {
            public void a(final float f) {
                ThreeDScrollBar.this.g.post(new Runnable() {
                    public void run() {
                    }
                });
            }

            public void b(final float f) {
                ThreeDScrollBar.this.g.post(new Runnable() {
                    public void run() {
                        ThreeDScrollBar.this.b(ThreeDScrollBar.this.c(f));
                        ThreeDScrollBar.this.h();
                    }
                });
            }
        };
        setOpaque(false);
        setSurfaceTextureListener(this);
        this.g = new Handler();
        this.c = new f(context);
        this.c.a((f.a) new f.a() {
            public void a() {
                ThreeDScrollBar.this.e.a();
            }

            public void a(f fVar) {
                ThreeDScrollBar.this.e.a(fVar);
                if (!ThreeDScrollBar.this.c.c()) {
                    ThreeDScrollBar.this.d.a((Runnable) new Runnable() {
                        public void run() {
                            ThreeDScrollBar.this.c.d();
                        }
                    });
                }
            }
        });
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x003b, code lost:
        if (r3 > r7) goto L_0x003d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0052, code lost:
        if (r3 < r7) goto L_0x003d;
     */
    private void a(float f2) {
        float f3;
        float a2 = ((float) g.a()) / 2.0f;
        float c2 = c(this.e.d());
        float c3 = c(getModelNum() - 1);
        float currYAngle = getCurrYAngle() + g.f(f2);
        if (currYAngle > c2) {
            currYAngle = getCurrYAngle() + (g.f(f2) * 0.4f);
            f3 = c2 + a2;
        } else {
            if (currYAngle <= c3) {
                currYAngle = getCurrYAngle() + (g.f(f2) * 0.4f);
                f3 = c3 - a2;
            }
            a(currYAngle, false);
        }
        currYAngle = f3;
        a(currYAngle, false);
    }

    private void a(float f2, boolean z) {
        d.a("ThreeDScrollBar", "moveToYAngle, angle: " + getCurrYAngle() + " -> " + f2);
        f fVar = this.c;
        if (fVar != null) {
            fVar.a(f2, 0.0f, 0, (Interpolator) null, (f.b) null);
            l lVar = this.d;
            if (lVar != null) {
                lVar.d();
            }
            if (z) {
                b(c(f2));
            }
        }
    }

    private void a(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 0) {
            this.j = motionEvent.getX(motionEvent.findPointerIndex(motionEvent.getPointerId(0)));
        }
        if (1 < motionEvent.getPointerCount()) {
            this.l = motionEvent.getX(motionEvent.findPointerIndex(motionEvent.getPointerId(1)));
        }
    }

    private boolean a(float f2, int i2, Interpolator interpolator, f.b bVar) {
        float currYAngle = f2 - getCurrYAngle();
        if (this.c == null || Float.compare(currYAngle, 0.0f) == 0) {
            this.n = false;
            return false;
        }
        setScrolling(true);
        this.c.a(getCurrYAngle(), currYAngle, i2, interpolator, bVar);
        this.d.b(1);
        ((Activity) getContext()).runOnUiThread(new Runnable() {
            public void run() {
                if (ThreeDScrollBar.this.d != null) {
                    ThreeDScrollBar.this.d.b();
                }
            }
        });
        return true;
    }

    private void b(float f2) {
        if (!j()) {
            d.e("ThreeDScrollBar", "scrollToByFling, texture not init, so return");
            h();
            return;
        }
        float f3 = g.f(0.08f * f2);
        float e2 = g.e() * Math.abs(f2 / 30000.0f);
        float c2 = c(this.e.d());
        float c3 = c(getModelNum() - 1);
        float currYAngle = getCurrYAngle() + f3;
        int i2 = 26;
        if (getCurrYAngle() > c2 || getCurrYAngle() <= c3) {
            h();
        } else if (currYAngle > c2) {
            float f4 = c2 + e2;
            if (currYAngle > f4) {
                currYAngle = f4;
            }
            i2 = Math.abs(c(getCurrYAngle()) - c(currYAngle)) * 2;
            a(currYAngle, i2, this.f2758b, this.q);
        } else if (currYAngle <= c3) {
            float f5 = c3 - e2;
            if (currYAngle < f5) {
                currYAngle = f5;
            }
            i2 = Math.abs(c(getCurrYAngle()) - c(currYAngle)) * 2;
            a(currYAngle, i2, this.f2758b, this.q);
        } else {
            i2 = 26 + (Math.abs(c(getCurrYAngle()) - c(currYAngle)) * 2);
            a(c(c(currYAngle)), i2, this.f2757a, this.p);
        }
        d.a("ThreeDScrollBar", "scrollToByFling, toYAngle: " + currYAngle + ", positiveLimit: " + c2 + ", negativeLimit: " + c3 + ", animFrame: " + i2 + ", velocityX: " + f2 + ", outLimitDiff: " + e2);
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        d.a("ThreeDScrollBar", "onItemChanged, index: " + this.i + " -> " + i2 + ", hasTexturesInited: " + (!j()));
        if (i2 != this.i && j()) {
            this.c.a(i2);
            this.e.a(i2);
            this.i = i2;
        }
    }

    private void b(MotionEvent motionEvent) {
        if (!j()) {
            d.e("ThreeDScrollBar", "scrollToByClick, texture not init, so return");
            h();
            return;
        }
        float f2 = g.f(((float) (com.oppo.camera.o.d.N() / 2)) - motionEvent.getX());
        float c2 = c(0) + (g.e() / 2.0f);
        float c3 = c(getModelNum() - 1) - (g.e() / 2.0f);
        float currYAngle = getCurrYAngle() + f2;
        if (currYAngle > c2 || currYAngle <= c3) {
            h();
            return;
        }
        int c4 = c(currYAngle);
        d.a("ThreeDScrollBar", "scrollToByClick, toYAngle: " + currYAngle + ", index: " + this.i + " -> " + c4);
        a aVar = this.e;
        if (aVar != null && !aVar.b(c4)) {
            this.n = true;
            a(c(c4), 26, this.f2757a, this.o);
        }
    }

    private float c(int i2) {
        return ((float) (-i2)) * g.g();
    }

    /* access modifiers changed from: private */
    public int c(float f2) {
        if (!j()) {
            d.e("ThreeDScrollBar", "convertAngleToIndex, texture not init, so return");
            return 0;
        }
        float c2 = c(0);
        float c3 = c(getModelNum() - 1);
        int round = Math.round(Math.abs(f2 / g.g()));
        if (round < 0 || f2 > c2) {
            return 0;
        }
        return (round >= getModelNum() || f2 <= c3) ? getModelNum() - 1 : round;
    }

    private float getCurrYAngle() {
        f fVar = this.c;
        if (fVar != null) {
            return fVar.b();
        }
        return 0.0f;
    }

    private int getModelNum() {
        f fVar = this.c;
        if (fVar != null) {
            return fVar.e();
        }
        return 0;
    }

    /* access modifiers changed from: private */
    public void h() {
        a aVar = this.e;
        int d2 = aVar != null ? aVar.d() : 0;
        float currYAngle = getCurrYAngle();
        float c2 = c(d2);
        if (currYAngle <= c2) {
            c2 = currYAngle;
        }
        float c3 = c(c(c2));
        d.a("ThreeDScrollBar", "scrollNear, angle: " + getCurrYAngle() + " -> " + c3);
        a(c3, 26, this.f2757a, this.p);
    }

    private void i() {
        d.a("ThreeDScrollBar", "cancelYAngleAnim");
        Handler handler = this.g;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        this.n = false;
        setScrolling(false);
        l lVar = this.d;
        if (lVar != null) {
            lVar.b(0);
        }
        f fVar = this.c;
        if (fVar != null) {
            fVar.a();
        }
    }

    private boolean j() {
        return getModelNum() > 0;
    }

    public void a() {
        if (this.d != null) {
            f fVar = this.c;
            if (fVar != null && fVar.f() && !d()) {
                this.d.d();
            }
        }
    }

    public void a(int i2) {
        this.i = i2;
        i();
        a(c(i2), false);
    }

    public void a(final int i2, final int i3) {
        d.a("ThreeDScrollBar", "notifyPreviewSizeChanged, Size: " + i2 + " x " + i3);
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f};
        if (com.oppo.camera.o.d.b(i3, i2) == 2) {
            fArr[0] = 0.0f;
        }
        f fVar = this.c;
        if (fVar != null) {
            fVar.a(fArr);
        }
        l lVar = this.d;
        if (lVar != null) {
            lVar.a((Runnable) new Runnable() {
                public void run() {
                    ThreeDScrollBar.this.c.a(i2, i3);
                }
            });
            this.d.d();
        }
    }

    public void a(int i2, String str) {
        if (this.d != null) {
            this.c.a(i2, str);
        }
    }

    public void a(final e eVar) {
        d.a("ThreeDScrollBar", "createTextures, mGLProducer: " + this.d);
        l lVar = this.d;
        if (lVar != null) {
            lVar.a((Runnable) new Runnable() {
                public void run() {
                    ThreeDScrollBar.this.c.a(eVar, !ThreeDScrollBar.this.c.a(eVar));
                    ThreeDScrollBar.this.a(eVar.g());
                }
            });
        }
    }

    public void b() {
        l lVar = this.d;
        if (lVar != null) {
            lVar.g();
        }
    }

    public void c() {
        l lVar = this.d;
        if (lVar != null) {
            f fVar = this.c;
            if (fVar != null) {
                fVar.a(lVar);
            }
            this.d.f();
        }
        this.n = false;
        setScrolling(false);
    }

    public boolean d() {
        return this.m;
    }

    public void e() {
        this.n = false;
        if (!j()) {
            d.e("ThreeDScrollBar", "slideToNextItem, texture not init, so return");
        } else if (this.i < getModelNum() - 1) {
            int i2 = this.i + 1;
            d.a("ThreeDScrollBar", "slideToNextItem, index: " + this.i + " -> " + i2);
            i();
            a(c(i2), 26, this.f2757a, this.p);
        }
    }

    public void f() {
        int i2;
        this.n = false;
        if (!j()) {
            d.e("ThreeDScrollBar", "slideToPreviousItem, texture not init, so return");
        } else if (this.i > this.e.d()) {
            d.a("ThreeDScrollBar", "slideToPreviousItem, index: " + this.i + " -> " + i2);
            i();
            a(c(i2), 26, this.f2757a, this.p);
        }
    }

    public void g() {
        this.n = false;
        float c2 = c(c(getCurrYAngle()));
        if (Float.compare(c2, getCurrYAngle()) != 0) {
            d.a("ThreeDScrollBar", "forceScrollNearWithNoAnim, angle: " + getCurrYAngle() + " -> " + c2);
            i();
            a(c2, true);
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        d.a("ThreeDScrollBar", "onSurfaceTextureAvailable");
        this.d = new l(surfaceTexture);
        if (this.h == 1) {
            this.d.a(true);
        }
        this.d.a(2);
        this.d.a(8, 8, 8, 8, 16, 0);
        this.d.a((l.m) this.c);
        this.d.b(0);
        this.d.a((SurfaceHolder) null);
        this.d.a((SurfaceHolder) null, 0, i2, i3);
        a(this.e.c());
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        d.a("ThreeDScrollBar", "onSurfaceTextureDestroyed");
        this.d.b((SurfaceHolder) null);
        this.d.e();
        return false;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        d.a("ThreeDScrollBar", "onSurfaceTextureSizeChanged");
        this.d.a((SurfaceHolder) null, 0, i2, i3);
        this.d.d();
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f2;
        float x = motionEvent.getX();
        if (this.n) {
            if (motionEvent.getActionMasked() == 0) {
                d.b("ThreeDScrollBar", "onTouchEvent, click scrolling, reset touch x");
                this.k = x;
                this.j = x;
                this.f = VelocityTracker.obtain();
            }
            return true;
        } else if (!this.e.b()) {
            h();
            if (motionEvent.getActionMasked() == 0) {
                a(motionEvent);
            }
            return true;
        } else {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                i();
                this.k = x;
                this.j = x;
                this.f = VelocityTracker.obtain();
            } else if (actionMasked == 1) {
                float f3 = 0.0f;
                VelocityTracker velocityTracker = this.f;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.f.computeCurrentVelocity(1000);
                    f3 = this.f.getXVelocity();
                    this.f.clear();
                }
                if (Math.abs(f3) >= 1000.0f) {
                    b(f3);
                } else if (Math.abs(x - this.k) > 2.0f) {
                    h();
                } else {
                    b(motionEvent);
                }
            } else if (actionMasked == 2) {
                if (motionEvent.getPointerId(motionEvent.getActionIndex()) == 1) {
                    f2 = x - this.l;
                    this.l = x;
                } else {
                    f2 = x - this.j;
                    this.j = x;
                }
                VelocityTracker velocityTracker2 = this.f;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
                a(f2);
            } else if (actionMasked == 3) {
                VelocityTracker velocityTracker3 = this.f;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f = null;
                }
                if (Math.abs(x - this.k) > 2.0f) {
                    h();
                } else {
                    b(motionEvent);
                }
            } else if (actionMasked == 5) {
                i();
                a(motionEvent);
                this.f = VelocityTracker.obtain();
            } else if (actionMasked == 6) {
                a(motionEvent);
            }
            return true;
        }
    }

    public void setCameraEntryType(int i2) {
        this.h = i2;
    }

    public void setScrolling(boolean z) {
        d.a("ThreeDScrollBar", "setScrolling, isScrolling: " + this.m + " -> " + z);
        this.m = z;
    }

    public void setThreeDScrollBarTextureViewCallback(a aVar) {
        this.e = aVar;
    }
}
