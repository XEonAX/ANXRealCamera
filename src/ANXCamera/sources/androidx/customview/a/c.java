package androidx.customview.a;

import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.g.u;
import java.util.Arrays;

/* compiled from: ViewDragHelper */
public class c {
    private static final Interpolator v = new Interpolator() {
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f628a;

    /* renamed from: b  reason: collision with root package name */
    private int f629b;
    private int c;
    private float[] d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private OverScroller q;
    private final a r;
    private View s;
    private boolean t;
    private final ViewGroup u;
    private final Runnable w;

    /* compiled from: ViewDragHelper */
    public static abstract class a {
        public int a(View view) {
            return 0;
        }

        public int a(View view, int i, int i2) {
            return 0;
        }

        public void a(int i) {
        }

        public void a(int i, int i2) {
        }

        public void a(View view, float f, float f2) {
        }

        public void a(View view, int i) {
        }

        public void a(View view, int i, int i2, int i3, int i4) {
        }

        public int b(View view) {
            return 0;
        }

        public int b(View view, int i, int i2) {
            return 0;
        }

        public void b(int i, int i2) {
        }

        public boolean b(int i) {
            return false;
        }

        public abstract boolean b(View view, int i);

        public int c(int i) {
            return i;
        }
    }

    private float a(float f2) {
        return (float) Math.sin((double) ((f2 - 0.5f) * 0.47123894f));
    }

    private float a(float f2, float f3, float f4) {
        float abs = Math.abs(f2);
        if (abs < f3) {
            return 0.0f;
        }
        return abs > f4 ? f2 > 0.0f ? f4 : -f4 : f2;
    }

    private int a(int i2, int i3, int i4) {
        if (i2 == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        float f2 = (float) (width / 2);
        float a2 = f2 + (a(Math.min(1.0f, ((float) Math.abs(i2)) / ((float) width))) * f2);
        int abs = Math.abs(i3);
        return Math.min(abs > 0 ? Math.round(Math.abs(a2 / ((float) abs)) * 1000.0f) * 4 : (int) (((((float) Math.abs(i2)) / ((float) i4)) + 1.0f) * 256.0f), 600);
    }

    private int a(View view, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int b2 = b(i4, (int) this.n, (int) this.m);
        int b3 = b(i5, (int) this.n, (int) this.m);
        int abs = Math.abs(i2);
        int abs2 = Math.abs(i3);
        int abs3 = Math.abs(b2);
        int abs4 = Math.abs(b3);
        int i6 = abs3 + abs4;
        int i7 = abs + abs2;
        if (b2 != 0) {
            f3 = (float) abs3;
            f2 = (float) i6;
        } else {
            f3 = (float) abs;
            f2 = (float) i7;
        }
        float f6 = f3 / f2;
        if (b3 != 0) {
            f5 = (float) abs4;
            f4 = (float) i6;
        } else {
            f5 = (float) abs2;
            f4 = (float) i7;
        }
        float f7 = f5 / f4;
        return (int) ((((float) a(i2, b2, this.r.a(view))) * f6) + (((float) a(i3, b3, this.r.b(view))) * f7));
    }

    private void a(float f2, float f3) {
        this.t = true;
        this.r.a(this.s, f2, f3);
        this.t = false;
        if (this.f628a == 1) {
            c(0);
        }
    }

    private void a(float f2, float f3, int i2) {
        f(i2);
        float[] fArr = this.d;
        this.f[i2] = f2;
        fArr[i2] = f2;
        float[] fArr2 = this.e;
        this.g[i2] = f3;
        fArr2[i2] = f3;
        this.h[i2] = e((int) f2, (int) f3);
        this.k |= 1 << i2;
    }

    private boolean a(float f2, float f3, int i2, int i3) {
        float abs = Math.abs(f2);
        float abs2 = Math.abs(f3);
        if ((this.h[i2] & i3) != i3 || (this.p & i3) == 0 || (this.j[i2] & i3) == i3 || (this.i[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.f629b;
        if (abs <= ((float) i4) && abs2 <= ((float) i4)) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.r.b(i3)) {
            return (this.i[i2] & i3) == 0 && abs > ((float) this.f629b);
        }
        int[] iArr = this.j;
        iArr[i2] = iArr[i2] | i3;
        return false;
    }

    private boolean a(int i2, int i3, int i4, int i5) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        if (i6 == 0 && i7 == 0) {
            this.q.abortAnimation();
            c(0);
            return false;
        }
        this.q.startScroll(left, top, i6, i7, a(this.s, i6, i7, i4, i5));
        c(2);
        return true;
    }

    private boolean a(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.a(view) > 0;
        boolean z2 = this.r.b(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f2) > ((float) this.f629b) : z2 && Math.abs(f3) > ((float) this.f629b);
        }
        int i2 = this.f629b;
        return (f2 * f2) + (f3 * f3) > ((float) (i2 * i2));
    }

    private int b(int i2, int i3, int i4) {
        int abs = Math.abs(i2);
        if (abs < i3) {
            return 0;
        }
        return abs > i4 ? i2 > 0 ? i4 : -i4 : i2;
    }

    private void b(float f2, float f3, int i2) {
        int i3 = 1;
        if (!a(f2, f3, i2, 1)) {
            i3 = 0;
        }
        if (a(f3, f2, i2, 4)) {
            i3 |= 4;
        }
        if (a(f2, f3, i2, 2)) {
            i3 |= 2;
        }
        if (a(f3, f2, i2, 8)) {
            i3 |= 8;
        }
        if (i3 != 0) {
            int[] iArr = this.i;
            iArr[i2] = iArr[i2] | i3;
            this.r.b(i3, i2);
        }
    }

    private void b(int i2, int i3, int i4, int i5) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i4 != 0) {
            i2 = this.r.a(this.s, i2, i4);
            u.d(this.s, i2 - left);
        }
        int i6 = i2;
        if (i5 != 0) {
            i3 = this.r.b(this.s, i3, i5);
            u.c(this.s, i3 - top);
        }
        int i7 = i3;
        if (i4 != 0 || i5 != 0) {
            this.r.a(this.s, i6, i7, i6 - left, i7 - top);
        }
    }

    private void c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (g(pointerId)) {
                float x = motionEvent.getX(i2);
                float y = motionEvent.getY(i2);
                this.f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    private int e(int i2, int i3) {
        int i4 = i2 < this.u.getLeft() + this.o ? 1 : 0;
        if (i3 < this.u.getTop() + this.o) {
            i4 |= 4;
        }
        if (i2 > this.u.getRight() - this.o) {
            i4 |= 2;
        }
        return i3 > this.u.getBottom() - this.o ? i4 | 8 : i4;
    }

    private void e(int i2) {
        if (this.d != null && b(i2)) {
            this.d[i2] = 0.0f;
            this.e[i2] = 0.0f;
            this.f[i2] = 0.0f;
            this.g[i2] = 0.0f;
            this.h[i2] = 0;
            this.i[i2] = 0;
            this.j[i2] = 0;
            this.k = (~(1 << i2)) & this.k;
        }
    }

    private void f(int i2) {
        float[] fArr = this.d;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            float[] fArr6 = this.d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.d = fArr2;
            this.e = fArr3;
            this.f = fArr4;
            this.g = fArr5;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
    }

    private void g() {
        float[] fArr = this.d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
    }

    private boolean g(int i2) {
        if (b(i2)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received " + "for this pointer before ACTION_MOVE. It likely happened because " + " ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    private void h() {
        this.l.computeCurrentVelocity(1000, this.m);
        a(a(this.l.getXVelocity(this.c), this.n, this.m), a(this.l.getYVelocity(this.c), this.n, this.m));
    }

    public int a() {
        return this.f628a;
    }

    public void a(int i2) {
        this.p = i2;
    }

    public void a(View view, int i2) {
        if (view.getParent() == this.u) {
            this.s = view;
            this.c = i2;
            this.r.a(view, i2);
            c(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
    }

    public boolean a(int i2, int i3) {
        if (this.t) {
            return a(i2, i3, (int) this.l.getXVelocity(this.c), (int) this.l.getYVelocity(this.c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00dd, code lost:
        if (r12 != r11) goto L_0x00e6;
     */
    public boolean a(MotionEvent motionEvent) {
        boolean z;
        MotionEvent motionEvent2 = motionEvent;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent2);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            int pointerId = motionEvent2.getPointerId(actionIndex);
                            float x = motionEvent2.getX(actionIndex);
                            float y = motionEvent2.getY(actionIndex);
                            a(x, y, pointerId);
                            int i2 = this.f628a;
                            if (i2 == 0) {
                                int i3 = this.h[pointerId];
                                int i4 = this.p;
                                if ((i3 & i4) != 0) {
                                    this.r.a(i3 & i4, pointerId);
                                }
                            } else if (i2 == 2) {
                                View d2 = d((int) x, (int) y);
                                if (d2 == this.s) {
                                    b(d2, pointerId);
                                }
                            }
                        } else if (actionMasked == 6) {
                            e(motionEvent2.getPointerId(actionIndex));
                        }
                    }
                } else if (!(this.d == null || this.e == null)) {
                    int pointerCount = motionEvent.getPointerCount();
                    for (int i5 = 0; i5 < pointerCount; i5++) {
                        int pointerId2 = motionEvent2.getPointerId(i5);
                        if (g(pointerId2)) {
                            float x2 = motionEvent2.getX(i5);
                            float y2 = motionEvent2.getY(i5);
                            float f2 = x2 - this.d[pointerId2];
                            float f3 = y2 - this.e[pointerId2];
                            View d3 = d((int) x2, (int) y2);
                            boolean z2 = d3 != null && a(d3, f2, f3);
                            if (z2) {
                                int left = d3.getLeft();
                                int i6 = (int) f2;
                                int a2 = this.r.a(d3, left + i6, i6);
                                int top = d3.getTop();
                                int i7 = (int) f3;
                                int b2 = this.r.b(d3, top + i7, i7);
                                int a3 = this.r.a(d3);
                                int b3 = this.r.b(d3);
                                if (a3 != 0) {
                                    if (a3 > 0) {
                                    }
                                }
                                if (b3 != 0) {
                                    if (b3 > 0 && b2 == top) {
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                            b(f2, f3, pointerId2);
                            if (this.f628a != 1) {
                                if (z2 && b(d3, pointerId2)) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    c(motionEvent);
                }
                z = false;
            }
            e();
            z = false;
        } else {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            z = false;
            int pointerId3 = motionEvent2.getPointerId(0);
            a(x3, y3, pointerId3);
            View d4 = d((int) x3, (int) y3);
            if (d4 == this.s && this.f628a == 2) {
                b(d4, pointerId3);
            }
            int i8 = this.h[pointerId3];
            int i9 = this.p;
            if ((i8 & i9) != 0) {
                this.r.a(i8 & i9, pointerId3);
            }
        }
        if (this.f628a == 1) {
            return true;
        }
        return z;
    }

    public boolean a(View view, int i2, int i3) {
        this.s = view;
        this.c = -1;
        boolean a2 = a(i2, i3, 0, 0);
        if (!a2 && this.f628a == 0 && this.s != null) {
            this.s = null;
        }
        return a2;
    }

    public boolean a(boolean z) {
        if (this.f628a == 2) {
            boolean computeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                u.d(this.s, left);
            }
            if (top != 0) {
                u.c(this.s, top);
            }
            if (!(left == 0 && top == 0)) {
                this.r.a(this.s, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.u.post(this.w);
                } else {
                    c(0);
                }
            }
        }
        return this.f628a == 2;
    }

    public int b() {
        return this.o;
    }

    public void b(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View d2 = d((int) x, (int) y);
            a(x, y, pointerId);
            b(d2, pointerId);
            int i4 = this.h[pointerId];
            int i5 = this.p;
            if ((i4 & i5) != 0) {
                this.r.a(i4 & i5, pointerId);
            }
        } else if (actionMasked == 1) {
            if (this.f628a == 1) {
                h();
            }
            e();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f628a == 1) {
                    a(0.0f, 0.0f);
                }
                e();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                a(x2, y2, pointerId2);
                if (this.f628a == 0) {
                    b(d((int) x2, (int) y2), pointerId2);
                    int i6 = this.h[pointerId2];
                    int i7 = this.p;
                    if ((i6 & i7) != 0) {
                        this.r.a(i6 & i7, pointerId2);
                    }
                } else if (c((int) x2, (int) y2)) {
                    b(this.s, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.f628a == 1 && pointerId3 == this.c) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i3 >= pointerCount) {
                            i2 = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i3);
                        if (pointerId4 != this.c) {
                            View d3 = d((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                            View view = this.s;
                            if (d3 == view && b(view, pointerId4)) {
                                i2 = this.c;
                                break;
                            }
                        }
                        i3++;
                    }
                    if (i2 == -1) {
                        h();
                    }
                }
                e(pointerId3);
            }
        } else if (this.f628a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (i3 < pointerCount2) {
                int pointerId5 = motionEvent.getPointerId(i3);
                if (g(pointerId5)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f2 = x3 - this.d[pointerId5];
                    float f3 = y3 - this.e[pointerId5];
                    b(f2, f3, pointerId5);
                    if (this.f628a != 1) {
                        View d4 = d((int) x3, (int) y3);
                        if (a(d4, f2, f3) && b(d4, pointerId5)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i3++;
            }
            c(motionEvent);
        } else if (g(this.c)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.c);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f;
            int i8 = this.c;
            int i9 = (int) (x4 - fArr[i8]);
            int i10 = (int) (y4 - this.g[i8]);
            b(this.s.getLeft() + i9, this.s.getTop() + i10, i9, i10);
            c(motionEvent);
        }
    }

    public boolean b(int i2) {
        return ((1 << i2) & this.k) != 0;
    }

    public boolean b(int i2, int i3) {
        if (!b(i3)) {
            return false;
        }
        boolean z = (i2 & 1) == 1;
        boolean z2 = (i2 & 2) == 2;
        float f2 = this.f[i3] - this.d[i3];
        float f3 = this.g[i3] - this.e[i3];
        if (!z || !z2) {
            return z ? Math.abs(f2) > ((float) this.f629b) : z2 && Math.abs(f3) > ((float) this.f629b);
        }
        int i4 = this.f629b;
        return (f2 * f2) + (f3 * f3) > ((float) (i4 * i4));
    }

    /* access modifiers changed from: package-private */
    public boolean b(View view, int i2) {
        if (view == this.s && this.c == i2) {
            return true;
        }
        if (view == null || !this.r.b(view, i2)) {
            return false;
        }
        this.c = i2;
        a(view, i2);
        return true;
    }

    public boolean b(View view, int i2, int i3) {
        return view != null && i2 >= view.getLeft() && i2 < view.getRight() && i3 >= view.getTop() && i3 < view.getBottom();
    }

    public View c() {
        return this.s;
    }

    /* access modifiers changed from: package-private */
    public void c(int i2) {
        this.u.removeCallbacks(this.w);
        if (this.f628a != i2) {
            this.f628a = i2;
            this.r.a(i2);
            if (this.f628a == 0) {
                this.s = null;
            }
        }
    }

    public boolean c(int i2, int i3) {
        return b(this.s, i2, i3);
    }

    public int d() {
        return this.f629b;
    }

    public View d(int i2, int i3) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.r.c(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public boolean d(int i2) {
        int length = this.d.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (b(i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public void e() {
        this.c = -1;
        g();
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public void f() {
        e();
        if (this.f628a == 2) {
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            this.q.abortAnimation();
            int currX2 = this.q.getCurrX();
            int currY2 = this.q.getCurrY();
            this.r.a(this.s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        c(0);
    }
}
