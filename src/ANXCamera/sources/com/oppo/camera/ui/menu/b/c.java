package com.oppo.camera.ui.menu.b;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.PathInterpolator;
import com.oppo.camera.R;
import com.oppo.camera.ui.menu.b.f;
import java.util.List;

/* compiled from: HeadlineGLSurfaceView */
public class c extends GLSurfaceView {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final Object f2728a = new Object();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public f f2729b = null;
    private GestureDetector c = null;
    /* access modifiers changed from: private */
    public int d = 0;
    private ValueAnimator e = null;
    private PathInterpolator f = new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f);
    /* access modifiers changed from: private */
    public int g = 0;
    /* access modifiers changed from: private */
    public int h = -1;
    private int i = 0;
    /* access modifiers changed from: private */
    public e j = null;
    /* access modifiers changed from: private */
    public a k = null;
    /* access modifiers changed from: private */
    public String[] l = null;
    /* access modifiers changed from: private */
    public boolean m = false;
    /* access modifiers changed from: private */
    public boolean n = true;
    private boolean o = false;

    /* compiled from: HeadlineGLSurfaceView */
    private class a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: b  reason: collision with root package name */
        private float f2732b;
        private int c;

        private a() {
            this.f2732b = 0.0f;
            this.c = 0;
        }

        public boolean onDown(MotionEvent motionEvent) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultGestureDetector, onDown");
            this.f2732b = 0.0f;
            boolean unused = c.this.m = false;
            int unused2 = c.this.h = -1;
            this.c = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (c.this.f2729b != null) {
                c.this.f2729b.c();
            }
            return super.onDown(motionEvent);
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            this.f2732b += f / 1.2f;
            if (this.c != motionEvent2.getPointerId(motionEvent2.getActionIndex())) {
                com.oppo.camera.d.b("HeadlineGLSurfaceView", "DefaultGestureDetector, onScroll, Not the same event.");
                return true;
            } else if (!c.this.n) {
                com.oppo.camera.d.b("HeadlineGLSurfaceView", "DefaultGestureDetector, onScroll, can't response TouchEvent.");
                return false;
            } else if (c.this.j == null || !c.this.j.G()) {
                com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultGestureDetector,  onScroll, mOffSetDistance:" + this.f2732b);
                if (c.this.d <= 0 || Float.compare(Math.abs(this.f2732b), (float) c.this.d) > 0 || c.this.f2729b == null) {
                    return super.onScroll(motionEvent, motionEvent2, f, f2);
                }
                c cVar = c.this;
                int unused = cVar.h = cVar.f2729b.b(this.f2732b);
                boolean unused2 = c.this.m = true;
                return true;
            } else {
                com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultGestureDetector, onScroll, return when isCapturingOrVideoRecording");
                return false;
            }
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (!c.this.n) {
                com.oppo.camera.d.b("HeadlineGLSurfaceView", "DefaultGestureDetector, onSingleTapUp, can't response TouchEvent.");
                return false;
            } else if (c.this.j != null && c.this.j.G()) {
                com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultGestureDetector, onSingleTapUp, return when isCapturingOrVideoRecording");
                return false;
            } else if (c.this.e() || c.this.getVisibility() != 0) {
                com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultGestureDetector, onSingleTapUp, can't response TouchEvent , isAnimationRunning or View is not visible");
                return false;
            } else {
                float x = motionEvent.getX();
                com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultGestureDetector, onSingleTapUp, x: " + x);
                if (c.this.d <= 0 || Float.compare(x, 0.0f) < 0 || Float.compare(x, (float) c.this.d) > 0 || c.this.f2729b == null) {
                    return super.onSingleTapUp(motionEvent);
                }
                int a2 = c.this.f2729b.a(x - ((float) (c.this.d / 2)));
                boolean unused = c.this.m = false;
                synchronized (c.this.f2728a) {
                    if (a2 >= 0) {
                        try {
                            int unused2 = c.this.g = a2;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (a2 >= 0 && c.this.j != null) {
                        c.this.j.i(c.this.g);
                    }
                }
                return true;
            }
        }
    }

    /* compiled from: HeadlineGLSurfaceView */
    private class b implements f.a {
        private b() {
        }

        public void a(int i, int i2, float f) {
            if (c.this.k != null) {
                c.this.k.a(i, i2);
                c.this.k.setAlpha(f);
            }
        }

        public void a(int i, boolean z) {
            if (i == 0 || i == 1) {
                c.this.setRenderMode(i);
            }
            if (z) {
                c.this.requestRender();
            }
            if (c.this.k != null) {
                c.this.post(new Runnable() {
                    public void run() {
                        if (c.this.l != null && c.this.l.length > 0) {
                            c.this.k.setContentDescription(c.this.l[c.this.g]);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.oppo.camera.ui.menu.b.c$c  reason: collision with other inner class name */
    /* compiled from: HeadlineGLSurfaceView */
    private class C0069c implements Animator.AnimatorListener {

        /* renamed from: b  reason: collision with root package name */
        private Animator.AnimatorListener f2736b = null;

        public C0069c(Animator.AnimatorListener animatorListener) {
            this.f2736b = animatorListener;
        }

        public void onAnimationCancel(Animator animator) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultHideAnimatorListener, onAnimationCancel");
            c.this.setVisibility(4);
            c.this.a(1.0f);
            c.this.setEnabled(true);
            Animator.AnimatorListener animatorListener = this.f2736b;
            if (animatorListener != null) {
                animatorListener.onAnimationCancel(animator);
            }
        }

        public void onAnimationEnd(Animator animator) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultHideAnimatorListener, onAnimationEnd");
            c.this.setVisibility(4);
            c.this.a(1.0f);
            c.this.setEnabled(true);
            Animator.AnimatorListener animatorListener = this.f2736b;
            if (animatorListener != null) {
                animatorListener.onAnimationEnd(animator);
            }
        }

        public void onAnimationRepeat(Animator animator) {
            Animator.AnimatorListener animatorListener = this.f2736b;
            if (animatorListener != null) {
                animatorListener.onAnimationRepeat(animator);
            }
        }

        public void onAnimationStart(Animator animator) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultHideAnimatorListener, onAnimationStart");
            Animator.AnimatorListener animatorListener = this.f2736b;
            if (animatorListener != null) {
                animatorListener.onAnimationStart(animator);
            }
        }
    }

    /* compiled from: HeadlineGLSurfaceView */
    private class d implements Animator.AnimatorListener {

        /* renamed from: b  reason: collision with root package name */
        private Animator.AnimatorListener f2738b = null;

        public d(Animator.AnimatorListener animatorListener) {
            this.f2738b = animatorListener;
        }

        public void onAnimationCancel(Animator animator) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultShowAnimatorListener, onAnimationCancel");
            c.this.a(1.0f);
            c.this.setEnabled(true);
            Animator.AnimatorListener animatorListener = this.f2738b;
            if (animatorListener != null) {
                animatorListener.onAnimationCancel(animator);
            }
        }

        public void onAnimationEnd(Animator animator) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultShowAnimatorListener, onAnimationEnd");
            c.this.a(1.0f);
            c.this.setEnabled(true);
            Animator.AnimatorListener animatorListener = this.f2738b;
            if (animatorListener != null) {
                animatorListener.onAnimationEnd(animator);
            }
        }

        public void onAnimationRepeat(Animator animator) {
            Animator.AnimatorListener animatorListener = this.f2738b;
            if (animatorListener != null) {
                animatorListener.onAnimationRepeat(animator);
            }
        }

        public void onAnimationStart(Animator animator) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "DefaultShowAnimatorListener, onAnimationStart");
            Animator.AnimatorListener animatorListener = this.f2738b;
            if (animatorListener != null) {
                animatorListener.onAnimationStart(animator);
            }
        }
    }

    /* compiled from: HeadlineGLSurfaceView */
    public interface e {
        boolean F();

        boolean G();

        void i(int i);

        boolean j(int i);
    }

    public c(Context context) {
        super(context);
        this.k = new a(context);
        this.k.setForceDarkAllowed(false);
    }

    private ValueAnimator a(float f2, float f3, long j2, long j3, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{f2, f3});
        ofFloat.setDuration(j2);
        ofFloat.setStartDelay(j3);
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (c.this.f2729b != null) {
                    c.this.f2729b.c(floatValue);
                    c.this.requestRender();
                }
            }
        });
        ofFloat.addListener(animatorListener);
        return ofFloat;
    }

    /* access modifiers changed from: private */
    public void a(float f2) {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "updateAlpha, alpha: " + f2);
        f fVar = this.f2729b;
        if (fVar != null) {
            fVar.c(f2);
        }
    }

    private void a(long j2, long j3, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        if (timeInterpolator == null) {
            timeInterpolator = this.f;
        }
        TimeInterpolator timeInterpolator2 = timeInterpolator;
        if (j2 <= 0) {
            j2 = 160;
        }
        this.e = a(0.0f, 1.0f, j2, j3, timeInterpolator2, new d(animatorListener));
        a(0.0f);
        a aVar = this.k;
        if (aVar != null) {
            aVar.setAlpha(0.0f);
        }
        setVisibility(0);
        setEnabled(false);
        this.e.start();
    }

    private void b(long j2, long j3, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        if (timeInterpolator == null) {
            timeInterpolator = this.f;
        }
        TimeInterpolator timeInterpolator2 = timeInterpolator;
        if (j2 <= 0) {
            j2 = 80;
        }
        this.e = a(1.0f, 0.0f, j2, j3, timeInterpolator2, new C0069c(animatorListener));
        a(1.0f);
        a aVar = this.k;
        if (aVar != null) {
            aVar.setAlpha(1.0f);
        }
        setEnabled(false);
        this.e.start();
    }

    private void h() {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "performOnUp");
        if (this.h != -1) {
            synchronized (this.f2728a) {
                if (!(this.j == null || this.g == this.h)) {
                    this.g = this.h;
                    if (this.f2729b != null) {
                        this.f2729b.a(this.g);
                    }
                    this.j.i(this.g);
                }
            }
            this.m = false;
        }
    }

    public void a(int i2, int i3, e eVar) {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "initialize, width: " + i2 + ", height: " + i3 + ", listener: " + eVar);
        this.d = i2;
        setEGLContextClientVersion(2);
        setEGLConfigChooser(8, 8, 8, 8, 8, 8);
        getHolder().setFormat(-3);
        setZOrderOnTop(true);
        this.f2729b = new f(getContext(), i2, i3, new b());
        setRenderer(this.f2729b);
        setRenderMode(0);
        this.c = new GestureDetector(getContext(), new a());
        this.j = eVar;
    }

    public void a(int i2, long j2, long j3, TimeInterpolator timeInterpolator) {
        StringBuilder sb = new StringBuilder();
        sb.append("setVisibilityWithAnimator, visibility: ");
        int i3 = i2;
        sb.append(i2);
        sb.append(", duration: ");
        sb.append(j2);
        sb.append(", startDelay: ");
        sb.append(j3);
        sb.append(", interpolator: ");
        TimeInterpolator timeInterpolator2 = timeInterpolator;
        sb.append(timeInterpolator2);
        com.oppo.camera.d.a("HeadlineGLSurfaceView", sb.toString());
        a(i2, j2, j3, timeInterpolator2, (Animator.AnimatorListener) null);
    }

    public void a(int i2, long j2, long j3, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "setVisibilityWithAnimator, visibility: " + i2 + ", duration: " + j2 + ", startDelay: " + j3 + ", interpolator: " + timeInterpolator + ", listener: " + animatorListener);
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.e.cancel();
            this.e = null;
        }
        if (i2 == 0) {
            a(j2, j3, timeInterpolator, animatorListener);
        } else {
            b(j2, j3, timeInterpolator, animatorListener);
        }
    }

    public void a(int i2, boolean z) {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "setVisibility, visibility: " + i2 + ", isAnim: " + z);
        if (getVisibility() == i2) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "setVisibility, headline show state no need to change");
            return;
        }
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.e.cancel();
            this.e = null;
        }
        if (!z) {
            a(1.0f);
            setVisibility(i2);
        } else if (i2 == 0) {
            a(i2, 160, 160, (TimeInterpolator) this.f);
        } else {
            a(i2, 80, 0, (TimeInterpolator) this.f);
        }
    }

    public void a(List<Integer> list) {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "updateTextAndIndex, textIdList: " + list);
        if (list == null || list.size() <= 0) {
            com.oppo.camera.d.e("HeadlineGLSurfaceView", "updateText, the parameter is illegal");
            return;
        }
        this.l = new String[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.l[i2] = getContext().getString(list.get(i2).intValue());
        }
        if (this.f2729b != null) {
            synchronized (this.f2728a) {
                this.i = this.l.length - 1;
                this.g = this.f2729b.b(this.l);
            }
        }
    }

    public void a(List<Integer> list, int i2) {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "updateText, textIdList: " + list + ", currentIndex: " + i2);
        if (list == null || list.size() <= 0 || i2 < 0 || i2 >= list.size()) {
            com.oppo.camera.d.e("HeadlineGLSurfaceView", "updateText, the parameter is illegal");
            return;
        }
        this.l = new String[list.size()];
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.l[i3] = getContext().getString(list.get(i3).intValue());
        }
        synchronized (this.f2728a) {
            this.g = i2;
            this.i = this.l.length - 1;
        }
        f fVar = this.f2729b;
        if (fVar != null) {
            fVar.a(this.l);
            this.f2729b.a(i2, true);
        }
    }

    public void a(boolean z) {
        if (this.f2729b != null) {
            synchronized (this.f2728a) {
                this.g = this.f2729b.a();
            }
            setVisibility(z ? 0 : 4);
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "backToLastHeadlineIndex, last index: " + this.g);
            this.f2729b.a(this.g, false);
        }
    }

    public boolean a() {
        String[] strArr = this.l;
        if (strArr == null) {
            return false;
        }
        int i2 = this.g;
        if (i2 < 0 || i2 >= strArr.length) {
            return false;
        }
        return strArr[i2].equals(getContext().getString(R.string.camera_mode_more));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0031, code lost:
        r0 = r3.f2729b;
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0034, code lost:
        if (r0 == null) goto L_0x0041;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0036, code lost:
        r0.c(0);
        r1 = r3.f2729b.b(r3.g);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0041, code lost:
        if (r1 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0043, code lost:
        r0 = r3.j;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0045, code lost:
        if (r0 == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0047, code lost:
        r0.i(r3.g);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        return;
     */
    public void b() {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "slideNextItem");
        e eVar = this.j;
        if (eVar == null || !eVar.j(this.g)) {
            com.oppo.camera.d.e("HeadlineGLSurfaceView", "slideNextItem, can not slide");
            return;
        }
        synchronized (this.f2728a) {
            this.g++;
            if (this.g > this.i) {
                this.g = this.i;
                com.oppo.camera.d.e("HeadlineGLSurfaceView", "slideNextItem, current index is max, can not slide");
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002e, code lost:
        r0 = r3.f2729b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0030, code lost:
        if (r0 == null) goto L_0x003d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0032, code lost:
        r0.c(0);
        r2 = r3.f2729b.b(r3.g);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003d, code lost:
        if (r2 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003f, code lost:
        r0 = r3.j;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0041, code lost:
        if (r0 == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0043, code lost:
        r0.i(r3.g);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        return;
     */
    public void c() {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "slidePreviousItem");
        e eVar = this.j;
        if (eVar == null || !eVar.j(this.g)) {
            com.oppo.camera.d.e("HeadlineGLSurfaceView", "slidePreviousItem, can not slide");
            return;
        }
        synchronized (this.f2728a) {
            this.g--;
            boolean z = false;
            if (this.g < 0) {
                this.g = 0;
                com.oppo.camera.d.e("HeadlineGLSurfaceView", "slidePreviousItem, current index is min, can not slide");
            }
        }
    }

    public boolean d() {
        return this.o;
    }

    public boolean e() {
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            return valueAnimator.isRunning();
        }
        return false;
    }

    public boolean f() {
        return this.m;
    }

    public void g() {
        f fVar = this.f2729b;
        if (fVar != null) {
            fVar.b();
        }
    }

    public View getHeadlineBackground() {
        return this.k;
    }

    public void onPause() {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "onPause");
        super.onPause();
        this.m = false;
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.e.cancel();
            this.e = null;
        }
        a(1.0f);
    }

    public void onResume() {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "onResume");
        super.onResume();
        if (this.f2729b != null && getVisibility() == 0) {
            this.f2729b.a(this.g, true);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        e eVar = this.j;
        boolean z = false;
        if (eVar == null) {
            return false;
        }
        if (eVar.F()) {
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "onTouchEvent, return when isTimerSnapShotRunning");
            return true;
        }
        if (motionEvent.getAction() == 0) {
            this.o = false;
            this.n = this.j.j(this.g);
            com.oppo.camera.d.a("HeadlineGLSurfaceView", "onTouchEvent, mbCanResponseTouch: " + this.n);
        }
        GestureDetector gestureDetector = this.c;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.m) {
            e eVar2 = this.j;
            if (eVar2 != null && !eVar2.G()) {
                if (motionEvent.getPointerCount() >= 2) {
                    z = true;
                }
                this.o = z;
                h();
            }
        }
        return true;
    }

    public void setMultiFinger(boolean z) {
        this.o = z;
    }

    public void setVisibility(int i2) {
        com.oppo.camera.d.a("HeadlineGLSurfaceView", "setVisibility, visibility: " + i2);
        super.setVisibility(i2);
        a aVar = this.k;
        if (aVar != null) {
            aVar.setVisibility(i2);
        }
    }
}
