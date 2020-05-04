package androidx.recyclerview.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import androidx.core.g.u;
import androidx.recyclerview.widget.RecyclerView;
import com.color.support.widget.k;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.List;

public class ColorRecyclerView extends RecyclerView {
    private final ArrayList<RecyclerView.m> R;
    private RecyclerView.m S;
    private boolean T;
    /* access modifiers changed from: private */
    public int U;
    /* access modifiers changed from: private */
    public k V;
    private int W;

    /* renamed from: a  reason: collision with root package name */
    boolean f863a;
    /* access modifiers changed from: private */
    public int aa;
    private int ab;
    private int ac;
    private int ad;
    private VelocityTracker ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private RecyclerView.l ak;
    private final int al;
    private final int am;
    private RecyclerView.n an;
    private List<RecyclerView.n> ao;
    private final int[] ap;
    private final int[] aq;

    /* renamed from: b  reason: collision with root package name */
    final int f864b;
    final int c;
    final int d;
    final int e;
    final a f;

    private class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        Interpolator f865a = RecyclerView.Q;
        private int c;
        private int d;
        private boolean e = false;
        private boolean f = false;

        a() {
        }

        private float a(float f2) {
            return (float) Math.sin((double) ((f2 - 0.5f) * 0.47123894f));
        }

        private int a(int i, int i2, int i3, int i4) {
            int i5;
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt((double) ((i3 * i3) + (i4 * i4)));
            int sqrt2 = (int) Math.sqrt((double) ((i * i) + (i2 * i2)));
            int width = z ? ColorRecyclerView.this.getWidth() : ColorRecyclerView.this.getHeight();
            int i6 = width / 2;
            float f2 = (float) width;
            float f3 = (float) i6;
            float a2 = f3 + (a(Math.min(1.0f, (((float) sqrt2) * 1.0f) / f2)) * f3);
            if (sqrt > 0) {
                i5 = Math.round(Math.abs(a2 / ((float) sqrt)) * 1000.0f) * 4;
            } else {
                if (!z) {
                    abs = abs2;
                }
                i5 = (int) (((((float) abs) / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i5, 2000);
        }

        private void c() {
            ColorRecyclerView.this.removeCallbacks(this);
            u.a((View) ColorRecyclerView.this, (Runnable) this);
        }

        /* access modifiers changed from: package-private */
        public void a() {
            if (this.e) {
                this.f = true;
            } else {
                c();
            }
        }

        public void a(int i, int i2) {
            ColorRecyclerView.this.setScrollState(2);
            this.d = 0;
            this.c = 0;
            if (this.f865a != RecyclerView.Q) {
                this.f865a = RecyclerView.Q;
                ColorRecyclerView colorRecyclerView = ColorRecyclerView.this;
                k unused = colorRecyclerView.V = new k(colorRecyclerView.getContext(), RecyclerView.Q);
            }
            ColorRecyclerView.this.V.fling(0, 0, i, i2, MessageNano.UNSET_ENUM_VALUE, Integer.MAX_VALUE, MessageNano.UNSET_ENUM_VALUE, Integer.MAX_VALUE);
            a();
        }

        public void a(int i, int i2, int i3, Interpolator interpolator) {
            if (i3 == Integer.MIN_VALUE) {
                i3 = a(i, i2, 0, 0);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.Q;
            }
            if (this.f865a != interpolator) {
                this.f865a = interpolator;
                ColorRecyclerView colorRecyclerView = ColorRecyclerView.this;
                k unused = colorRecyclerView.V = new k(colorRecyclerView.getContext(), interpolator);
            }
            this.d = 0;
            this.c = 0;
            ColorRecyclerView.this.setScrollState(2);
            ColorRecyclerView.this.V.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                ColorRecyclerView.this.V.computeScrollOffset();
            }
            a();
        }

        public void b() {
            ColorRecyclerView.this.removeCallbacks(this);
            ColorRecyclerView.this.V.abortAnimation();
        }

        public void run() {
            int i;
            int i2;
            if (ColorRecyclerView.this.t == null) {
                b();
                return;
            }
            this.f = false;
            this.e = true;
            ColorRecyclerView.this.e();
            k a2 = ColorRecyclerView.this.V;
            if (a2.computeScrollOffset()) {
                int b2 = a2.b();
                int c2 = a2.c();
                int i3 = b2 - this.c;
                int i4 = c2 - this.d;
                this.c = b2;
                this.d = c2;
                ColorRecyclerView.this.O[0] = 0;
                ColorRecyclerView.this.O[1] = 0;
                ColorRecyclerView colorRecyclerView = ColorRecyclerView.this;
                if (colorRecyclerView.a(i3, i4, colorRecyclerView.O, (int[]) null, 1)) {
                    i3 -= ColorRecyclerView.this.O[0];
                    i4 -= ColorRecyclerView.this.O[1];
                }
                if (ColorRecyclerView.this.s != null) {
                    ColorRecyclerView.this.O[0] = 0;
                    ColorRecyclerView.this.O[1] = 0;
                    ColorRecyclerView colorRecyclerView2 = ColorRecyclerView.this;
                    colorRecyclerView2.a(i3, i4, colorRecyclerView2.O);
                    i2 = ColorRecyclerView.this.O[0];
                    i = ColorRecyclerView.this.O[1];
                    i3 -= i2;
                    i4 -= i;
                    RecyclerView.s sVar = ColorRecyclerView.this.t.t;
                    if (sVar != null && !sVar.g() && sVar.h()) {
                        int e2 = ColorRecyclerView.this.J.e();
                        if (e2 == 0) {
                            sVar.f();
                        } else if (sVar.i() >= e2) {
                            sVar.c(e2 - 1);
                            sVar.a(i2, i);
                        } else {
                            sVar.a(i2, i);
                        }
                    }
                } else {
                    i2 = 0;
                    i = 0;
                }
                if (!ColorRecyclerView.this.v.isEmpty()) {
                    ColorRecyclerView.this.invalidate();
                }
                ColorRecyclerView.this.O[0] = 0;
                ColorRecyclerView.this.O[1] = 0;
                ColorRecyclerView colorRecyclerView3 = ColorRecyclerView.this;
                colorRecyclerView3.a(i2, i, i3, i4, (int[]) null, 1, colorRecyclerView3.O);
                int i5 = i3 - ColorRecyclerView.this.O[0];
                int i6 = i4 - ColorRecyclerView.this.O[1];
                if (!(i2 == 0 && i == 0)) {
                    ColorRecyclerView.this.c(i2, i);
                }
                if (i6 != 0 && ColorRecyclerView.this.f863a) {
                    int unused = ColorRecyclerView.this.U = 3;
                    ColorRecyclerView colorRecyclerView4 = ColorRecyclerView.this;
                    colorRecyclerView4.overScrollBy(0, i6, 0, colorRecyclerView4.getScrollY(), 0, 0, 0, ColorRecyclerView.this.aa, false);
                    ColorRecyclerView.this.V.notifyVerticalEdgeReached(ColorRecyclerView.this.getScrollY(), 0, ColorRecyclerView.this.aa);
                }
                if (i5 != 0 && ColorRecyclerView.this.f863a) {
                    int unused2 = ColorRecyclerView.this.U = 3;
                    ColorRecyclerView colorRecyclerView5 = ColorRecyclerView.this;
                    colorRecyclerView5.overScrollBy(i5, 0, colorRecyclerView5.getScrollX(), 0, 0, 0, ColorRecyclerView.this.aa, 0, false);
                    ColorRecyclerView.this.V.notifyHorizontalEdgeReached(ColorRecyclerView.this.getScrollX(), 0, ColorRecyclerView.this.aa);
                }
                if (!ColorRecyclerView.this.awakenScrollBars()) {
                    ColorRecyclerView.this.invalidate();
                }
                boolean z = a2.a() || (((a2.b() == a2.d()) || i5 != 0) && ((a2.c() == a2.e()) || i6 != 0));
                RecyclerView.s sVar2 = ColorRecyclerView.this.t.t;
                if ((sVar2 != null && sVar2.g()) || !z) {
                    a();
                    if (ColorRecyclerView.this.H != null) {
                        ColorRecyclerView.this.H.a((RecyclerView) ColorRecyclerView.this, i5, i6);
                    }
                } else if (RecyclerView.j) {
                    ColorRecyclerView.this.I.a();
                }
            }
            RecyclerView.s sVar3 = ColorRecyclerView.this.t.t;
            if (sVar3 != null && sVar3.g()) {
                sVar3.a(0, 0);
            }
            this.e = false;
            if (this.f) {
                c();
            } else if (ColorRecyclerView.this.U != 3 || !ColorRecyclerView.this.f863a) {
                ColorRecyclerView.this.setScrollState(0);
                ColorRecyclerView.this.i(1);
            }
        }
    }

    public ColorRecyclerView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.R = new ArrayList<>();
        this.f863a = true;
        this.f864b = 0;
        this.c = 1;
        this.d = 2;
        this.e = 3;
        this.ab = 0;
        this.ac = 0;
        this.ad = -1;
        this.f = new a();
        this.ap = new int[2];
        this.aq = new int[2];
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.aj = viewConfiguration.getScaledTouchSlop();
        this.al = viewConfiguration.getScaledMinimumFlingVelocity();
        this.am = viewConfiguration.getScaledMaximumFlingVelocity();
        a(context);
        this.V = new k(context);
    }

    private void A() {
        this.f.b();
        if (this.t != null) {
            this.t.M();
        }
    }

    private void B() {
        VelocityTracker velocityTracker = this.ae;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        i(0);
    }

    private void C() {
        B();
        setScrollState(0);
        com.color.support.b.a.a.b(this, 0);
        com.color.support.b.a.a.a(this, 0);
    }

    private void a(Context context) {
        int i = context.getResources().getDisplayMetrics().heightPixels;
        this.W = i;
        this.aa = i;
    }

    private boolean a(MotionEvent motionEvent) {
        RecyclerView.m mVar = this.S;
        if (mVar != null) {
            mVar.b(this, motionEvent);
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.S = null;
            }
            return true;
        } else if (motionEvent.getAction() == 0) {
            return false;
        } else {
            return b(motionEvent);
        }
    }

    private boolean b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.R.size();
        int i = 0;
        while (i < size) {
            RecyclerView.m mVar = this.R.get(i);
            if (!mVar.a(this, motionEvent) || action == 3) {
                i++;
            } else {
                this.S = mVar;
                return true;
            }
        }
        return false;
    }

    private void c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.ad) {
            int i = actionIndex == 0 ? 1 : 0;
            this.ad = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.ah = x;
            this.af = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.ai = y;
            this.ag = y;
        }
    }

    private void z() {
        if (isHardwareAccelerated() && (getParent() instanceof View)) {
            ((View) getParent()).invalidate();
        }
    }

    public void a() {
        setScrollState(0);
        A();
    }

    /* access modifiers changed from: package-private */
    public void a(int i) {
        if (this.t != null) {
            this.t.l(i);
        }
        h(i);
        RecyclerView.n nVar = this.an;
        if (nVar != null) {
            nVar.a(this, i);
        }
        List<RecyclerView.n> list = this.ao;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ao.get(size).a(this, i);
            }
        }
    }

    public void a(int i, int i2) {
        a(i, i2, (Interpolator) null);
    }

    public void a(int i, int i2, Interpolator interpolator) {
        if (this.t == null) {
            Log.e("ColorRecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.B) {
            if (!this.t.f()) {
                i = 0;
            }
            if (!this.t.g()) {
                i2 = 0;
            }
            if (i != 0 || i2 != 0) {
                this.f.a(i, i2, (int) MessageNano.UNSET_ENUM_VALUE, interpolator);
            }
        }
    }

    public void a(RecyclerView.m mVar) {
        this.R.add(mVar);
    }

    public void a(RecyclerView.n nVar) {
        if (this.ao == null) {
            this.ao = new ArrayList();
        }
        this.ao.add(nVar);
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        if (o()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + b());
            }
            throw new IllegalStateException(str);
        } else if (this.ab > 0) {
            Log.w("ColorRecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + b()));
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i, int i2, MotionEvent motionEvent) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i;
        int i11 = i2;
        MotionEvent motionEvent2 = motionEvent;
        e();
        if (this.s == null || ((i10 == 0 && i11 == 0) || (this.f863a && ((getScrollY() < 0 && i11 > 0) || ((getScrollY() > 0 && i11 < 0) || ((getScrollX() < 0 && i10 > 0) || (getScrollX() > 0 && i10 < 0))))))) {
            i6 = 0;
            i5 = 0;
            i4 = 0;
            i3 = 0;
        } else {
            this.O[0] = 0;
            this.O[1] = 0;
            a(i10, i11, this.O);
            int i12 = this.O[0];
            int i13 = this.O[1];
            i5 = i12;
            i6 = i13;
            i4 = i10 - i12;
            i3 = i11 - i13;
        }
        if (!this.v.isEmpty()) {
            invalidate();
        }
        this.O[0] = 0;
        this.O[1] = 0;
        int i14 = i6;
        int i15 = i5;
        a(i5, i6, i4, i3, this.ap, 0, this.O);
        int i16 = i4 - this.O[0];
        int i17 = i3 - this.O[1];
        int i18 = this.ah;
        int[] iArr = this.ap;
        this.ah = i18 - iArr[0];
        this.ai -= iArr[1];
        if (motionEvent2 != null) {
            motionEvent2.offsetLocation((float) iArr[0], (float) iArr[1]);
        }
        int[] iArr2 = this.aq;
        int i19 = iArr2[0];
        int[] iArr3 = this.ap;
        iArr2[0] = i19 + iArr3[0];
        iArr2[1] = iArr2[1] + iArr3[1];
        if (getOverScrollMode() == 2 || motionEvent2 == null || !this.f863a) {
            i7 = i15;
            i8 = i14;
        } else {
            if (!(i17 == 0 && i16 == 0)) {
                this.U = 2;
            }
            if (Math.abs(i17) == 0 && Math.abs(i14) < this.aj && Math.abs(i2) < this.aj && Math.abs(getScrollY()) > this.aj) {
                this.U = 2;
            }
            if (i17 == 0) {
                i8 = i14;
                if (i8 == 0 && Math.abs(i2) > this.aj) {
                    this.U = 2;
                }
            } else {
                i8 = i14;
            }
            if (Math.abs(i16) == 0 && Math.abs(i15) < this.aj && Math.abs(i) < this.aj && Math.abs(getScrollX()) > this.aj) {
                this.U = 2;
            }
            if (i16 == 0) {
                i9 = i15;
                if (i9 == 0 && Math.abs(i) > this.aj) {
                    this.U = 2;
                }
            } else {
                i9 = i15;
            }
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int a2 = com.color.support.a.a.a(i17, scrollY, this.W);
            int a3 = com.color.support.a.a.a(i16, scrollX, this.W);
            if ((scrollY < 0 && i11 > 0) || (scrollY > 0 && i11 < 0)) {
                a2 = com.color.support.a.a.a(i11, scrollX, this.W);
            }
            int i20 = a2;
            if ((scrollX < 0 && i10 > 0) || (scrollX > 0 && i10 < 0)) {
                a3 = com.color.support.a.a.a(i10, scrollX, this.W);
            }
            if (i20 == 0 && a3 == 0) {
                i7 = i9;
            } else {
                int i21 = this.W;
                i7 = i9;
                overScrollBy(a3, i20, scrollX, scrollY, 0, 0, i21, i21, true);
            }
        }
        if (!(i7 == 0 && i8 == 0)) {
            c(i7, i8);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i7 == 0 && i8 == 0) ? false : true;
    }

    public void b(RecyclerView.m mVar) {
        this.R.remove(mVar);
        if (this.S == mVar) {
            this.S = null;
        }
    }

    public void b(RecyclerView.n nVar) {
        List<RecyclerView.n> list = this.ao;
        if (list != null) {
            list.remove(nVar);
        }
    }

    public boolean b(int i, int i2) {
        int i3 = 0;
        if (this.t == null) {
            Log.e("ColorRecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        } else if (this.B) {
            return false;
        } else {
            boolean f2 = this.t.f();
            boolean g = this.t.g();
            if (!f2 || Math.abs(i) < this.al) {
                i = 0;
            }
            if (!g || Math.abs(i2) < this.al) {
                i2 = 0;
            }
            if (i == 0 && i2 == 0) {
                return false;
            }
            float f3 = (float) i;
            float f4 = (float) i2;
            if (!dispatchNestedPreFling(f3, f4)) {
                this.U = 1;
                boolean z = f2 || g;
                dispatchNestedFling(f3, f4, z);
                RecyclerView.l lVar = this.ak;
                if (lVar != null && lVar.a(i, i2)) {
                    return true;
                }
                if (z) {
                    if (f2) {
                        i3 = 1;
                    }
                    if (g) {
                        i3 |= 2;
                    }
                    j(i3, 1);
                    int i4 = this.am;
                    int max = Math.max(-i4, Math.min(i, i4));
                    int i5 = this.am;
                    this.f.a(max, Math.max(-i5, Math.min(i2, i5)));
                    return true;
                }
            }
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public void c(int i, int i2) {
        this.ab++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        i(i, i2);
        RecyclerView.n nVar = this.an;
        if (nVar != null) {
            nVar.a(this, i, i2);
        }
        List<RecyclerView.n> list = this.ao;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ao.get(size).a(this, i, i2);
            }
        }
        this.ab--;
    }

    public void computeScroll() {
        if (this.f863a) {
            int i = this.U;
            if ((i == 2 || i == 3) && this.V.computeScrollOffset()) {
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int b2 = this.V.b();
                int c2 = this.V.c();
                if (!(scrollX == b2 && scrollY == c2)) {
                    int i2 = this.aa;
                    overScrollBy(b2 - scrollX, c2 - scrollY, scrollX, scrollY, 0, 0, i2, i2, false);
                    onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
                }
                if (this.V.a()) {
                    setScrollState(0);
                }
                if (!awakenScrollBars()) {
                    postInvalidateOnAnimation();
                }
            }
        }
    }

    public int getMaxFlingVelocity() {
        return this.am;
    }

    public int getMinFlingVelocity() {
        return this.al;
    }

    public RecyclerView.l getOnFlingListener() {
        return this.ak;
    }

    public int getScrollState() {
        return this.ac;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.B) {
            return false;
        }
        this.S = null;
        if (b(motionEvent)) {
            C();
            return true;
        } else if (this.t == null) {
            return false;
        } else {
            boolean f2 = this.t.f();
            boolean g = this.t.g();
            if (this.ae == null) {
                this.ae = VelocityTracker.obtain();
            }
            this.ae.addMovement(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            int actionIndex = motionEvent.getActionIndex();
            if (actionMasked == 0) {
                if (this.T) {
                    this.T = false;
                }
                this.ad = motionEvent.getPointerId(0);
                int x = (int) (motionEvent.getX() + 0.5f);
                this.ah = x;
                this.af = x;
                int y = (int) (motionEvent.getY() + 0.5f);
                this.ai = y;
                this.ag = y;
                if (this.ac == 2) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                    i(1);
                }
                int[] iArr = this.aq;
                iArr[1] = 0;
                iArr[0] = 0;
                int i = f2 ? 1 : 0;
                if (g) {
                    i |= 2;
                }
                j(i, 0);
            } else if (actionMasked == 1) {
                this.ae.clear();
                i(0);
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.ad);
                if (findPointerIndex < 0) {
                    Log.e("ColorRecyclerView", "Error processing scroll; pointer index for id " + this.ad + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                if (this.ac != 1) {
                    int i2 = x2 - this.af;
                    int i3 = y2 - this.ag;
                    if (!f2 || Math.abs(i2) <= this.aj) {
                        z = false;
                    } else {
                        this.ah = x2;
                        z = true;
                    }
                    if (g && Math.abs(i3) > this.aj) {
                        this.ai = y2;
                        z = true;
                    }
                    if (z) {
                        setScrollState(1);
                    }
                }
            } else if (actionMasked == 3) {
                C();
            } else if (actionMasked == 5) {
                this.ad = motionEvent.getPointerId(actionIndex);
                int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.ah = x3;
                this.af = x3;
                int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.ai = y3;
                this.ag = y3;
            } else if (actionMasked == 6) {
                c(motionEvent);
            }
            return this.ac == 1;
        }
    }

    /* access modifiers changed from: protected */
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        if (getScrollY() != i2 || getScrollX() != i) {
            onScrollChanged(i, i2, getScrollX(), getScrollY());
            com.color.support.b.a.a.b(this, i);
            com.color.support.b.a.a.a(this, i2);
            z();
            awakenScrollBars();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0131  */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int i;
        int i2;
        boolean z2;
        if (this.B || this.T) {
            return false;
        }
        if (a(motionEvent)) {
            C();
            return true;
        } else if (this.t == null) {
            return false;
        } else {
            boolean f2 = this.t.f();
            boolean g = this.t.g();
            if (this.ae == null) {
                this.ae = VelocityTracker.obtain();
            }
            if (this.f863a) {
                this.ae.addMovement(motionEvent);
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            int actionIndex = motionEvent.getActionIndex();
            if (actionMasked == 0) {
                int[] iArr = this.aq;
                iArr[1] = 0;
                iArr[0] = 0;
            }
            int[] iArr2 = this.aq;
            obtain.offsetLocation((float) iArr2[0], (float) iArr2[1]);
            if (actionMasked == 0) {
                this.ad = motionEvent.getPointerId(0);
                int x = (int) (motionEvent.getX() + 0.5f);
                this.ah = x;
                this.af = x;
                int y = (int) (motionEvent.getY() + 0.5f);
                this.ai = y;
                this.ag = y;
                if (!this.V.a() && this.f863a) {
                    this.V.abortAnimation();
                }
                int i3 = f2 ? 1 : 0;
                if (g) {
                    i3 |= 2;
                }
                j(i3, 0);
            } else if (actionMasked == 1) {
                if (!this.f863a) {
                    this.ae.addMovement(obtain);
                    z = true;
                } else {
                    z = false;
                }
                this.ae.computeCurrentVelocity(1000, (float) this.am);
                float f3 = f2 ? -this.ae.getXVelocity(this.ad) : 0.0f;
                float f4 = g ? -this.ae.getYVelocity(this.ad) : 0.0f;
                if (this.U != 2 || ((getScrollX() == 0 && getScrollY() == 0) || !this.f863a)) {
                    if ((f3 == 0.0f && f4 == 0.0f) || !b((int) f3, (int) f4)) {
                        setScrollState(0);
                    }
                } else if (this.V.springBack(getScrollX(), getScrollY(), 0, 0, 0, 0)) {
                    postInvalidateOnAnimation();
                    if (this.ac != 0) {
                        this.ac = 0;
                        a(this.ac);
                    }
                }
                B();
                if (!z && !this.f863a) {
                    this.ae.addMovement(obtain);
                }
                obtain.recycle();
                return true;
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.ad);
                if (findPointerIndex < 0) {
                    Log.e("ColorRecyclerView", "Error processing scroll; pointer index for id " + this.ad + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                int i4 = this.ah - x2;
                int i5 = this.ai - y2;
                this.O[0] = 0;
                this.O[1] = 0;
                if (a(i4, i5, this.O, this.ap, 0)) {
                    i4 -= this.O[0];
                    i5 -= this.O[1];
                    int[] iArr3 = this.ap;
                    obtain.offsetLocation((float) iArr3[0], (float) iArr3[1]);
                    int[] iArr4 = this.aq;
                    int i6 = iArr4[0];
                    int[] iArr5 = this.ap;
                    iArr4[0] = i6 + iArr5[0];
                    iArr4[1] = iArr4[1] + iArr5[1];
                }
                if (this.ac != 1) {
                    if (f2) {
                        int abs = Math.abs(i2);
                        int i7 = this.aj;
                        if (abs > i7) {
                            i2 = i2 > 0 ? i2 - i7 : i2 + i7;
                            z2 = true;
                            if (g) {
                                int abs2 = Math.abs(i);
                                int i8 = this.aj;
                                if (abs2 > i8) {
                                    i = i > 0 ? i - i8 : i + i8;
                                    z2 = true;
                                }
                            }
                            if (z2) {
                                setScrollState(1);
                            }
                        }
                    }
                    z2 = false;
                    if (g) {
                    }
                    if (z2) {
                    }
                }
                if (this.ac == 1) {
                    int[] iArr6 = this.ap;
                    this.ah = x2 - iArr6[0];
                    this.ai = y2 - iArr6[1];
                    if (this.f863a) {
                        this.U = 0;
                    }
                    if (a(f2 ? i2 : 0, g ? i : 0, obtain)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    if (!(this.H == null || (i2 == 0 && i == 0))) {
                        this.H.a((RecyclerView) this, i2, i);
                    }
                }
            } else if (actionMasked == 3) {
                C();
            } else if (actionMasked == 5) {
                this.ad = motionEvent.getPointerId(actionIndex);
                int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.ah = x3;
                this.af = x3;
                int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.ai = y3;
                this.ag = y3;
            } else if (actionMasked == 6) {
                c(motionEvent);
            }
            z = false;
            this.ae.addMovement(obtain);
            obtain.recycle();
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        int i9 = i + i3;
        int i10 = i2 + i4;
        if ((i3 < 0 && i9 > 0) || (i3 > 0 && i9 < 0)) {
            i9 = 0;
        }
        if ((i4 < 0 && i10 > 0) || (i4 > 0 && i10 < 0)) {
            i10 = 0;
        }
        onOverScrolled(i9, i10, false, false);
        return false;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.R.size();
        for (int i = 0; i < size; i++) {
            this.R.get(i).a(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void scrollBy(int i, int i2) {
        if (this.t == null) {
            Log.e("ColorRecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.B) {
            boolean f2 = this.t.f();
            boolean g = this.t.g();
            if (f2 || g) {
                if (!f2) {
                    i = 0;
                }
                if (!g) {
                    i2 = 0;
                }
                a(i, i2, (MotionEvent) null);
            }
        }
    }

    public void setOnFlingListener(RecyclerView.l lVar) {
        this.ak = lVar;
    }

    @Deprecated
    public void setOnScrollListener(RecyclerView.n nVar) {
        this.an = nVar;
    }

    public void setOverScrollEnable(boolean z) {
        this.f863a = z;
    }

    /* access modifiers changed from: package-private */
    public void setScrollState(int i) {
        if (i != this.ac) {
            this.ac = i;
            if (i != 2) {
                A();
            }
            a(i);
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i != 1) {
                Log.w("ColorRecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
            } else {
                this.aj = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.aj = viewConfiguration.getScaledTouchSlop();
    }
}
