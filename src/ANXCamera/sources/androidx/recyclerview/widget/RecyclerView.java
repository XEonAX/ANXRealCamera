package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.g.a.d;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.d;
import androidx.recyclerview.widget.h;
import androidx.recyclerview.widget.s;
import androidx.recyclerview.widget.t;
import com.google.protobuf.nano.MessageNano;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView extends ViewGroup implements androidx.core.g.j, androidx.core.g.k {
    static final Interpolator Q = new Interpolator() {
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f881a = {16843830};

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f882b = (Build.VERSION.SDK_INT <= 15);
    private static final boolean c = (Build.VERSION.SDK_INT <= 15);
    private static final Class<?>[] d = {Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
    static final boolean g = (Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20);
    static final boolean h = (Build.VERSION.SDK_INT >= 23);
    static final boolean i = (Build.VERSION.SDK_INT >= 16);
    static final boolean j = (Build.VERSION.SDK_INT >= 21);
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    f F;
    final v G;
    h H;
    h.a I;
    final t J;
    boolean K;
    boolean L;
    boolean M;
    o N;
    final int[] O;
    final List<w> P;
    private final Rect R;
    private final ArrayList<m> S;
    private m T;
    private int U;
    private boolean V;
    private int W;
    private d aA;
    private final int[] aB;
    private androidx.core.g.l aC;
    private final int[] aD;
    private final int[] aE;
    private Runnable aF;
    private final t.b aG;
    private final AccessibilityManager aa;
    private List<k> ab;
    private int ac;
    private int ad;
    private e ae;
    private EdgeEffect af;
    private EdgeEffect ag;
    private EdgeEffect ah;
    private EdgeEffect ai;
    private int aj;
    private int ak;
    private VelocityTracker al;
    private int am;
    private int an;
    private int ao;
    private int ap;
    private int aq;
    private l ar;
    private final int as;
    private final int at;
    private float au;
    private float av;
    private boolean aw;
    private n ax;
    private List<n> ay;
    private f.b az;
    private final r e;
    private SavedState f;
    final p k;
    a l;
    d m;
    final t n;
    boolean o;
    final Runnable p;
    final Rect q;
    final RectF r;
    a s;
    i t;
    q u;
    final ArrayList<h> v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable mLayoutState;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLayoutState = parcel.readParcelable(classLoader == null ? i.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* access modifiers changed from: package-private */
        public void copyFrom(SavedState savedState) {
            this.mLayoutState = savedState.mLayoutState;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.mLayoutState, 0);
        }
    }

    public static abstract class a<VH extends w> {

        /* renamed from: a  reason: collision with root package name */
        private final b f888a = new b();

        /* renamed from: b  reason: collision with root package name */
        private boolean f889b = false;

        public final void a(int i, int i2) {
            this.f888a.a(i, i2);
        }

        public final void a(int i, int i2, Object obj) {
            this.f888a.a(i, i2, obj);
        }

        public final void a(int i, Object obj) {
            this.f888a.a(i, 1, obj);
        }

        public void a(c cVar) {
            this.f888a.registerObserver(cVar);
        }

        public void a(VH vh) {
        }

        public abstract void a(VH vh, int i);

        public void a(VH vh, int i, List<Object> list) {
            a(vh, i);
        }

        public void a(RecyclerView recyclerView) {
        }

        public void a(boolean z) {
            if (!d()) {
                this.f889b = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public abstract int b();

        public long b(int i) {
            return -1;
        }

        public abstract VH b(ViewGroup viewGroup, int i);

        public final void b(int i, int i2) {
            this.f888a.d(i, i2);
        }

        public void b(c cVar) {
            this.f888a.unregisterObserver(cVar);
        }

        public final void b(VH vh, int i) {
            vh.c = i;
            if (c()) {
                vh.e = b(i);
            }
            vh.a(1, 519);
            androidx.core.c.a.a("RV OnBindView");
            a(vh, i, vh.y());
            vh.x();
            ViewGroup.LayoutParams layoutParams = vh.f916a.getLayoutParams();
            if (layoutParams instanceof j) {
                ((j) layoutParams).e = true;
            }
            androidx.core.c.a.a();
        }

        public void b(RecyclerView recyclerView) {
        }

        public boolean b(VH vh) {
            return false;
        }

        public int c(int i) {
            return 0;
        }

        public final VH c(ViewGroup viewGroup, int i) {
            try {
                androidx.core.c.a.a("RV CreateView");
                VH b2 = b(viewGroup, i);
                if (b2.f916a.getParent() == null) {
                    b2.f = i;
                    return b2;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } finally {
                androidx.core.c.a.a();
            }
        }

        public final void c(int i, int i2) {
            this.f888a.b(i, i2);
        }

        public void c(VH vh) {
        }

        public final boolean c() {
            return this.f889b;
        }

        public final void d(int i) {
            this.f888a.a(i, 1);
        }

        public final void d(int i, int i2) {
            this.f888a.c(i, i2);
        }

        public void d(VH vh) {
        }

        public final boolean d() {
            return this.f888a.a();
        }

        public final void e() {
            this.f888a.b();
        }
    }

    static class b extends Observable<c> {
        b() {
        }

        public void a(int i, int i2) {
            a(i, i2, (Object) null);
        }

        public void a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a(i, i2, obj);
            }
        }

        public boolean a() {
            return !this.mObservers.isEmpty();
        }

        public void b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a();
            }
        }

        public void b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).b(i, i2);
            }
        }

        public void c(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).c(i, i2);
            }
        }

        public void d(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a(i, i2, 1);
            }
        }
    }

    public static abstract class c {
        public void a() {
        }

        public void a(int i, int i2) {
        }

        public void a(int i, int i2, int i3) {
        }

        public void a(int i, int i2, Object obj) {
            a(i, i2);
        }

        public void b(int i, int i2) {
        }

        public void c(int i, int i2) {
        }
    }

    public interface d {
        int a(int i, int i2);
    }

    public static class e {
        /* access modifiers changed from: protected */
        public EdgeEffect a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class f {

        /* renamed from: a  reason: collision with root package name */
        private b f890a = null;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList<a> f891b = new ArrayList<>();
        private long c = 120;
        private long d = 120;
        private long e = 250;
        private long f = 250;

        public interface a {
            void a();
        }

        interface b {
            void a(w wVar);
        }

        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f892a;

            /* renamed from: b  reason: collision with root package name */
            public int f893b;
            public int c;
            public int d;

            public c a(w wVar) {
                return a(wVar, 0);
            }

            public c a(w wVar, int i) {
                View view = wVar.f916a;
                this.f892a = view.getLeft();
                this.f893b = view.getTop();
                this.c = view.getRight();
                this.d = view.getBottom();
                return this;
            }
        }

        static int e(w wVar) {
            int i = wVar.j & 14;
            if (wVar.q()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int i2 = wVar.i();
            int h = wVar.h();
            return (i2 == -1 || h == -1 || i2 == h) ? i : i | 2048;
        }

        public c a(t tVar, w wVar) {
            return j().a(wVar);
        }

        public c a(t tVar, w wVar, int i, List<Object> list) {
            return j().a(wVar);
        }

        public abstract void a();

        /* access modifiers changed from: package-private */
        public void a(b bVar) {
            this.f890a = bVar;
        }

        public abstract boolean a(w wVar, c cVar, c cVar2);

        public abstract boolean a(w wVar, w wVar2, c cVar, c cVar2);

        public boolean a(w wVar, List<Object> list) {
            return h(wVar);
        }

        public abstract boolean b();

        public abstract boolean b(w wVar, c cVar, c cVar2);

        public abstract boolean c(w wVar, c cVar, c cVar2);

        public abstract void d();

        public abstract void d(w wVar);

        public long e() {
            return this.e;
        }

        public long f() {
            return this.c;
        }

        public final void f(w wVar) {
            g(wVar);
            b bVar = this.f890a;
            if (bVar != null) {
                bVar.a(wVar);
            }
        }

        public long g() {
            return this.d;
        }

        public void g(w wVar) {
        }

        public long h() {
            return this.f;
        }

        public boolean h(w wVar) {
            return true;
        }

        public final void i() {
            int size = this.f891b.size();
            for (int i = 0; i < size; i++) {
                this.f891b.get(i).a();
            }
            this.f891b.clear();
        }

        public c j() {
            return new c();
        }
    }

    private class g implements f.b {
        g() {
        }

        public void a(w wVar) {
            wVar.c(true);
            if (wVar.h != null && wVar.i == null) {
                wVar.h = null;
            }
            wVar.i = null;
            if (!wVar.B() && !RecyclerView.this.a(wVar.f916a) && wVar.u()) {
                RecyclerView.this.removeDetachedView(wVar.f916a, false);
            }
        }
    }

    public static abstract class h {
        @Deprecated
        public void a(Canvas canvas, RecyclerView recyclerView) {
        }

        public void a(Canvas canvas, RecyclerView recyclerView, t tVar) {
            b(canvas, recyclerView);
        }

        @Deprecated
        public void a(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, t tVar) {
            a(rect, ((j) view.getLayoutParams()).f(), recyclerView);
        }

        @Deprecated
        public void b(Canvas canvas, RecyclerView recyclerView) {
        }

        public void b(Canvas canvas, RecyclerView recyclerView, t tVar) {
            a(canvas, recyclerView);
        }
    }

    public static abstract class i {

        /* renamed from: a  reason: collision with root package name */
        private final s.b f895a = new s.b() {
            public int a() {
                return i.this.E();
            }

            public int a(View view) {
                return i.this.h(view) - ((j) view.getLayoutParams()).leftMargin;
            }

            public View a(int i) {
                return i.this.i(i);
            }

            public int b() {
                return i.this.C() - i.this.G();
            }

            public int b(View view) {
                return i.this.j(view) + ((j) view.getLayoutParams()).rightMargin;
            }
        };

        /* renamed from: b  reason: collision with root package name */
        private final s.b f896b = new s.b() {
            public int a() {
                return i.this.F();
            }

            public int a(View view) {
                return i.this.i(view) - ((j) view.getLayoutParams()).topMargin;
            }

            public View a(int i) {
                return i.this.i(i);
            }

            public int b() {
                return i.this.D() - i.this.H();
            }

            public int b(View view) {
                return i.this.k(view) + ((j) view.getLayoutParams()).bottomMargin;
            }
        };
        private boolean c = true;
        private boolean d = true;
        private int e;
        private int f;
        private int g;
        private int h;
        d p;
        RecyclerView q;
        s r = new s(this.f895a);
        s s = new s(this.f896b);
        s t;
        boolean u = false;
        boolean v = false;
        boolean w = false;
        int x;
        boolean y;

        public interface a {
            void b(int i, int i2);
        }

        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public int f899a;

            /* renamed from: b  reason: collision with root package name */
            public int f900b;
            public boolean c;
            public boolean d;
        }

        public static int a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        public static int a(int i, int i2, int i3, int i4, boolean z) {
            int i5;
            int i6 = i - i3;
            int i7 = 0;
            int max = Math.max(0, i6);
            if (z) {
                if (i4 < 0) {
                    if (i4 == -1) {
                        if (i2 == Integer.MIN_VALUE || (i2 != 0 && i2 == 1073741824)) {
                            i5 = max;
                        } else {
                            i2 = 0;
                            i5 = 0;
                        }
                        i7 = i2;
                        max = i5;
                        return View.MeasureSpec.makeMeasureSpec(max, i7);
                    }
                    max = 0;
                    return View.MeasureSpec.makeMeasureSpec(max, i7);
                }
            } else if (i4 < 0) {
                if (i4 == -1) {
                    i7 = i2;
                } else {
                    if (i4 == -2) {
                        if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
                            i7 = Integer.MIN_VALUE;
                        }
                    }
                    max = 0;
                }
                return View.MeasureSpec.makeMeasureSpec(max, i7);
            }
            max = i4;
            i7 = 1073741824;
            return View.MeasureSpec.makeMeasureSpec(max, i7);
        }

        public static b a(Context context, AttributeSet attributeSet, int i, int i2) {
            b bVar = new b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i, i2);
            bVar.f899a = obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 1);
            bVar.f900b = obtainStyledAttributes.getInt(R.styleable.RecyclerView_spanCount, 1);
            bVar.c = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
            bVar.d = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return bVar;
        }

        private void a(int i, View view) {
            this.p.e(i);
        }

        private void a(View view, int i, boolean z) {
            w e2 = RecyclerView.e(view);
            if (z || e2.t()) {
                this.q.n.e(e2);
            } else {
                this.q.n.f(e2);
            }
            j jVar = (j) view.getLayoutParams();
            if (e2.n() || e2.l()) {
                if (e2.l()) {
                    e2.m();
                } else {
                    e2.o();
                }
                this.p.a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.q) {
                int b2 = this.p.b(view);
                if (i == -1) {
                    i = this.p.b();
                }
                if (b2 == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.q.indexOfChild(view) + this.q.b());
                } else if (b2 != i) {
                    this.q.t.e(b2, i);
                }
            } else {
                this.p.a(view, i, false);
                jVar.e = true;
                s sVar = this.t;
                if (sVar != null && sVar.h()) {
                    this.t.b(view);
                }
            }
            if (jVar.f) {
                e2.f916a.invalidate();
                jVar.f = false;
            }
        }

        private void a(p pVar, int i, View view) {
            w e2 = RecyclerView.e(view);
            if (!e2.e()) {
                if (!e2.q() || e2.t() || this.q.s.c()) {
                    h(i);
                    pVar.c(view);
                    this.q.n.h(e2);
                    return;
                }
                g(i);
                pVar.b(e2);
            }
        }

        private static boolean b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        private int[] c(View view, Rect rect) {
            int[] iArr = new int[2];
            int E = E();
            int F = F();
            int C = C() - G();
            int D = D() - H();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i = left - E;
            int min = Math.min(0, i);
            int i2 = top - F;
            int min2 = Math.min(0, i2);
            int i3 = width - C;
            int max = Math.max(0, i3);
            int max2 = Math.max(0, height - D);
            if (x() != 1) {
                if (min == 0) {
                    min = Math.min(i, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i3);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        private boolean d(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int E = E();
            int F = F();
            int C = C() - G();
            int D = D() - H();
            Rect rect = this.q.q;
            a(focusedChild, rect);
            return rect.left - i < C && rect.right - i > E && rect.top - i2 < D && rect.bottom - i2 > F;
        }

        public int A() {
            return this.e;
        }

        public int B() {
            return this.f;
        }

        public int C() {
            return this.g;
        }

        public int D() {
            return this.h;
        }

        public int E() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int F() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int G() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int H() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public View I() {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                return null;
            }
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null || this.p.c(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int J() {
            RecyclerView recyclerView = this.q;
            a adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.b();
            }
            return 0;
        }

        public int K() {
            return androidx.core.g.u.i(this.q);
        }

        public int L() {
            return androidx.core.g.u.j(this.q);
        }

        /* access modifiers changed from: package-private */
        public void M() {
            s sVar = this.t;
            if (sVar != null) {
                sVar.f();
            }
        }

        public void N() {
            this.u = true;
        }

        /* access modifiers changed from: package-private */
        public boolean O() {
            int z = z();
            for (int i = 0; i < z; i++) {
                ViewGroup.LayoutParams layoutParams = i(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public int a(int i, p pVar, t tVar) {
            return 0;
        }

        public int a(p pVar, t tVar) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || recyclerView.s == null || !g()) {
                return 1;
            }
            return this.q.s.b();
        }

        public View a(View view, int i, p pVar, t tVar) {
            return null;
        }

        public abstract j a();

        public j a(Context context, AttributeSet attributeSet) {
            return new j(context, attributeSet);
        }

        public j a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof j ? new j((j) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new j((ViewGroup.MarginLayoutParams) layoutParams) : new j(layoutParams);
        }

        public void a(int i, int i2, t tVar, a aVar) {
        }

        public void a(int i, a aVar) {
        }

        public void a(int i, p pVar) {
            View i2 = i(i);
            g(i);
            pVar.a(i2);
        }

        public void a(Rect rect, int i, int i2) {
            f(a(i, rect.width() + E() + G(), K()), a(i2, rect.height() + F() + H(), L()));
        }

        public void a(Parcelable parcelable) {
        }

        public void a(View view) {
            a(view, -1);
        }

        public void a(View view, int i) {
            a(view, i, true);
        }

        public void a(View view, int i, int i2) {
            j jVar = (j) view.getLayoutParams();
            Rect k = this.q.k(view);
            int i3 = i + k.left + k.right;
            int i4 = i2 + k.top + k.bottom;
            int a2 = a(C(), A(), E() + G() + jVar.leftMargin + jVar.rightMargin + i3, jVar.width, f());
            int a3 = a(D(), B(), F() + H() + jVar.topMargin + jVar.bottomMargin + i4, jVar.height, g());
            if (b(view, a2, a3, jVar)) {
                view.measure(a2, a3);
            }
        }

        public void a(View view, int i, int i2, int i3, int i4) {
            j jVar = (j) view.getLayoutParams();
            Rect rect = jVar.d;
            view.layout(i + rect.left + jVar.leftMargin, i2 + rect.top + jVar.topMargin, (i3 - rect.right) - jVar.rightMargin, (i4 - rect.bottom) - jVar.bottomMargin);
        }

        public void a(View view, int i, j jVar) {
            w e2 = RecyclerView.e(view);
            if (e2.t()) {
                this.q.n.e(e2);
            } else {
                this.q.n.f(e2);
            }
            this.p.a(view, i, jVar, e2.t());
        }

        public void a(View view, Rect rect) {
            RecyclerView.a(view, rect);
        }

        /* access modifiers changed from: package-private */
        public void a(View view, androidx.core.g.a.d dVar) {
            w e2 = RecyclerView.e(view);
            if (e2 != null && !e2.t() && !this.p.c(e2.f916a)) {
                a(this.q.k, this.q.J, view, dVar);
            }
        }

        public void a(View view, p pVar) {
            c(view);
            pVar.a(view);
        }

        public void a(View view, boolean z, Rect rect) {
            if (z) {
                Rect rect2 = ((j) view.getLayoutParams()).d;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.q != null) {
                Matrix matrix = view.getMatrix();
                if (matrix != null && !matrix.isIdentity()) {
                    RectF rectF = this.q.r;
                    rectF.set(rect);
                    matrix.mapRect(rectF);
                    rect.set((int) Math.floor((double) rectF.left), (int) Math.floor((double) rectF.top), (int) Math.ceil((double) rectF.right), (int) Math.ceil((double) rectF.bottom));
                }
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void a(AccessibilityEvent accessibilityEvent) {
            a(this.q.k, this.q.J, accessibilityEvent);
        }

        /* access modifiers changed from: package-private */
        public void a(androidx.core.g.a.d dVar) {
            a(this.q.k, this.q.J, dVar);
        }

        public void a(a aVar, a aVar2) {
        }

        public void a(p pVar) {
            for (int z = z() - 1; z >= 0; z--) {
                a(pVar, z, i(z));
            }
        }

        public void a(p pVar, t tVar, int i, int i2) {
            this.q.f(i, i2);
        }

        public void a(p pVar, t tVar, View view, androidx.core.g.a.d dVar) {
            int i = 0;
            int d2 = g() ? d(view) : 0;
            if (f()) {
                i = d(view);
            }
            dVar.b((Object) d.c.a(d2, 1, i, 1, false, false));
        }

        public void a(p pVar, t tVar, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1) && !this.q.canScrollVertically(-1) && !this.q.canScrollHorizontally(-1) && !this.q.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                if (this.q.s != null) {
                    accessibilityEvent.setItemCount(this.q.s.b());
                }
            }
        }

        public void a(p pVar, t tVar, androidx.core.g.a.d dVar) {
            if (this.q.canScrollVertically(-1) || this.q.canScrollHorizontally(-1)) {
                dVar.a(8192);
                dVar.h(true);
            }
            if (this.q.canScrollVertically(1) || this.q.canScrollHorizontally(1)) {
                dVar.a(4096);
                dVar.h(true);
            }
            dVar.a((Object) d.b.a(a(pVar, tVar), b(pVar, tVar), e(pVar, tVar), d(pVar, tVar)));
        }

        public void a(s sVar) {
            s sVar2 = this.t;
            if (!(sVar2 == null || sVar == sVar2 || !sVar2.h())) {
                this.t.f();
            }
            this.t = sVar;
            this.t.a(this.q, this);
        }

        public void a(t tVar) {
        }

        public void a(RecyclerView recyclerView) {
        }

        public void a(RecyclerView recyclerView, int i, int i2) {
        }

        public void a(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public void a(RecyclerView recyclerView, int i, int i2, Object obj) {
            c(recyclerView, i, i2);
        }

        public void a(RecyclerView recyclerView, p pVar) {
            e(recyclerView);
        }

        public void a(RecyclerView recyclerView, t tVar, int i) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void a(String str) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.a(str);
            }
        }

        /* access modifiers changed from: package-private */
        public boolean a(int i, Bundle bundle) {
            return a(this.q.k, this.q.J, i, bundle);
        }

        /* access modifiers changed from: package-private */
        public boolean a(View view, int i, int i2, j jVar) {
            return !this.c || !b(view.getMeasuredWidth(), i, jVar.width) || !b(view.getMeasuredHeight(), i2, jVar.height);
        }

        /* access modifiers changed from: package-private */
        public boolean a(View view, int i, Bundle bundle) {
            return a(this.q.k, this.q.J, view, i, bundle);
        }

        public boolean a(View view, boolean z, boolean z2) {
            boolean z3 = this.r.a(view, 24579) && this.s.a(view, 24579);
            return z ? z3 : !z3;
        }

        public boolean a(j jVar) {
            return jVar != null;
        }

        /* JADX WARNING: Removed duplicated region for block: B:25:0x0075 A[ADDED_TO_REGION] */
        public boolean a(p pVar, t tVar, int i, Bundle bundle) {
            int i2;
            int i3;
            int i4;
            int i5;
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                i4 = recyclerView.canScrollVertically(1) ? (D() - F()) - H() : 0;
                if (this.q.canScrollHorizontally(1)) {
                    i5 = (C() - E()) - G();
                }
                i2 = i4;
                i3 = 0;
                if (i2 != 0) {
                }
                this.q.a(i3, i2, (Interpolator) null, (int) MessageNano.UNSET_ENUM_VALUE, true);
                return true;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
                if (i2 != 0 && i3 == 0) {
                    return false;
                }
                this.q.a(i3, i2, (Interpolator) null, (int) MessageNano.UNSET_ENUM_VALUE, true);
                return true;
            } else {
                i4 = recyclerView.canScrollVertically(-1) ? -((D() - F()) - H()) : 0;
                if (this.q.canScrollHorizontally(-1)) {
                    i5 = -((C() - E()) - G());
                }
                i2 = i4;
                i3 = 0;
                if (i2 != 0) {
                }
                this.q.a(i3, i2, (Interpolator) null, (int) MessageNano.UNSET_ENUM_VALUE, true);
                return true;
            }
            i2 = i4;
            i3 = i5;
            if (i2 != 0) {
            }
            this.q.a(i3, i2, (Interpolator) null, (int) MessageNano.UNSET_ENUM_VALUE, true);
            return true;
        }

        public boolean a(p pVar, t tVar, View view, int i, Bundle bundle) {
            return false;
        }

        public boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return a(recyclerView, view, rect, z, false);
        }

        public boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] c2 = c(view, rect);
            int i = c2[0];
            int i2 = c2[1];
            if ((z2 && !d(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.a(i, i2);
            }
            return true;
        }

        @Deprecated
        public boolean a(RecyclerView recyclerView, View view, View view2) {
            return w() || recyclerView.o();
        }

        public boolean a(RecyclerView recyclerView, t tVar, View view, View view2) {
            return a(recyclerView, view, view2);
        }

        public boolean a(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        public boolean a(Runnable runnable) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public int b(int i, p pVar, t tVar) {
            return 0;
        }

        public int b(p pVar, t tVar) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || recyclerView.s == null || !f()) {
                return 1;
            }
            return this.q.s.b();
        }

        public int b(t tVar) {
            return 0;
        }

        public void b(View view) {
            b(view, -1);
        }

        public void b(View view, int i) {
            a(view, i, false);
        }

        public void b(View view, Rect rect) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.k(view));
            }
        }

        /* access modifiers changed from: package-private */
        public void b(p pVar) {
            int e2 = pVar.e();
            for (int i = e2 - 1; i >= 0; i--) {
                View e3 = pVar.e(i);
                w e4 = RecyclerView.e(e3);
                if (!e4.e()) {
                    e4.c(false);
                    if (e4.u()) {
                        this.q.removeDetachedView(e3, false);
                    }
                    if (this.q.F != null) {
                        this.q.F.d(e4);
                    }
                    e4.c(true);
                    pVar.b(e3);
                }
            }
            pVar.f();
            if (e2 > 0) {
                this.q.invalidate();
            }
        }

        /* access modifiers changed from: package-private */
        public void b(s sVar) {
            if (this.t == sVar) {
                this.t = null;
            }
        }

        /* access modifiers changed from: package-private */
        public void b(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.q = null;
                this.p = null;
                this.g = 0;
                this.h = 0;
            } else {
                this.q = recyclerView;
                this.p = recyclerView.m;
                this.g = recyclerView.getWidth();
                this.h = recyclerView.getHeight();
            }
            this.e = 1073741824;
            this.f = 1073741824;
        }

        public void b(RecyclerView recyclerView, int i, int i2) {
        }

        /* access modifiers changed from: package-private */
        public void b(RecyclerView recyclerView, p pVar) {
            this.v = false;
            a(recyclerView, pVar);
        }

        /* access modifiers changed from: package-private */
        public boolean b(View view, int i, int i2, j jVar) {
            return view.isLayoutRequested() || !this.c || !b(view.getWidth(), i, jVar.width) || !b(view.getHeight(), i2, jVar.height);
        }

        public int c(t tVar) {
            return 0;
        }

        public View c(int i) {
            int z = z();
            for (int i2 = 0; i2 < z; i2++) {
                View i3 = i(i2);
                w e2 = RecyclerView.e(i3);
                if (e2 != null && e2.g() == i && !e2.e() && (this.q.J.a() || !e2.t())) {
                    return i3;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public void c(int i, int i2) {
            this.g = View.MeasureSpec.getSize(i);
            this.e = View.MeasureSpec.getMode(i);
            if (this.e == 0 && !RecyclerView.h) {
                this.g = 0;
            }
            this.h = View.MeasureSpec.getSize(i2);
            this.f = View.MeasureSpec.getMode(i2);
            if (this.f == 0 && !RecyclerView.h) {
                this.h = 0;
            }
        }

        public void c(View view) {
            this.p.a(view);
        }

        public void c(View view, int i) {
            a(view, i, (j) view.getLayoutParams());
        }

        public void c(p pVar) {
            for (int z = z() - 1; z >= 0; z--) {
                if (!RecyclerView.e(i(z)).e()) {
                    a(z, pVar);
                }
            }
        }

        public void c(p pVar, t tVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* access modifiers changed from: package-private */
        public void c(RecyclerView recyclerView) {
            this.v = true;
            d(recyclerView);
        }

        public void c(RecyclerView recyclerView, int i, int i2) {
        }

        public boolean c() {
            return false;
        }

        public int d(View view) {
            return ((j) view.getLayoutParams()).f();
        }

        public int d(p pVar, t tVar) {
            return 0;
        }

        public int d(t tVar) {
            return 0;
        }

        public View d(View view, int i) {
            return null;
        }

        /* access modifiers changed from: package-private */
        public void d(int i, int i2) {
            int z = z();
            if (z == 0) {
                this.q.f(i, i2);
                return;
            }
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < z; i7++) {
                View i8 = i(i7);
                Rect rect = this.q.q;
                a(i8, rect);
                if (rect.left < i3) {
                    i3 = rect.left;
                }
                if (rect.right > i4) {
                    i4 = rect.right;
                }
                if (rect.top < i6) {
                    i6 = rect.top;
                }
                if (rect.bottom > i5) {
                    i5 = rect.bottom;
                }
            }
            this.q.q.set(i3, i6, i4, i5);
            a(this.q.q, i, i2);
        }

        public void d(RecyclerView recyclerView) {
        }

        public boolean d() {
            return this.w;
        }

        public int e(t tVar) {
            return 0;
        }

        public Parcelable e() {
            return null;
        }

        public View e(View view) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                return null;
            }
            View c2 = recyclerView.c(view);
            if (c2 != null && !this.p.c(c2)) {
                return c2;
            }
            return null;
        }

        public void e(int i) {
        }

        public void e(int i, int i2) {
            View i3 = i(i);
            if (i3 != null) {
                h(i);
                c(i3, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.q.toString());
        }

        @Deprecated
        public void e(RecyclerView recyclerView) {
        }

        public boolean e(p pVar, t tVar) {
            return false;
        }

        public int f(View view) {
            Rect rect = ((j) view.getLayoutParams()).d;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void f(int i, int i2) {
            this.q.setMeasuredDimension(i, i2);
        }

        /* access modifiers changed from: package-private */
        public void f(RecyclerView recyclerView) {
            c(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public boolean f() {
            return false;
        }

        public int g(View view) {
            Rect rect = ((j) view.getLayoutParams()).d;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int g(t tVar) {
            return 0;
        }

        public void g(int i) {
            if (i(i) != null) {
                this.p.a(i);
            }
        }

        public boolean g() {
            return false;
        }

        public int h(View view) {
            return view.getLeft() - n(view);
        }

        public int h(t tVar) {
            return 0;
        }

        public void h(int i) {
            a(i, i(i));
        }

        public int i(View view) {
            return view.getTop() - l(view);
        }

        public View i(int i) {
            d dVar = this.p;
            if (dVar != null) {
                return dVar.b(i);
            }
            return null;
        }

        public int j(View view) {
            return view.getRight() + o(view);
        }

        public void j(int i) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.g(i);
            }
        }

        public int k(View view) {
            return view.getBottom() + m(view);
        }

        public void k(int i) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.f(i);
            }
        }

        public int l(View view) {
            return ((j) view.getLayoutParams()).d.top;
        }

        public void l(int i) {
        }

        public int m(View view) {
            return ((j) view.getLayoutParams()).d.bottom;
        }

        public int n(View view) {
            return ((j) view.getLayoutParams()).d.left;
        }

        /* access modifiers changed from: package-private */
        public boolean n() {
            return false;
        }

        public int o(View view) {
            return ((j) view.getLayoutParams()).d.right;
        }

        public void s() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public final boolean t() {
            return this.d;
        }

        public boolean u() {
            return this.v;
        }

        public boolean v() {
            RecyclerView recyclerView = this.q;
            return recyclerView != null && recyclerView.o;
        }

        public boolean w() {
            s sVar = this.t;
            return sVar != null && sVar.h();
        }

        public int x() {
            return androidx.core.g.u.f(this.q);
        }

        public int y() {
            return -1;
        }

        public int z() {
            d dVar = this.p;
            if (dVar != null) {
                return dVar.b();
            }
            return 0;
        }
    }

    public static class j extends ViewGroup.MarginLayoutParams {
        w c;
        final Rect d = new Rect();
        boolean e = true;
        boolean f = false;

        public j(int i, int i2) {
            super(i, i2);
        }

        public j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public j(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public j(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public j(j jVar) {
            super(jVar);
        }

        public boolean c() {
            return this.c.q();
        }

        public boolean d() {
            return this.c.t();
        }

        public boolean e() {
            return this.c.D();
        }

        public int f() {
            return this.c.g();
        }
    }

    public interface k {
        void a(View view);

        void b(View view);
    }

    public static abstract class l {
        public abstract boolean a(int i, int i2);
    }

    public interface m {
        void a(boolean z);

        boolean a(RecyclerView recyclerView, MotionEvent motionEvent);

        void b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    public static abstract class n {
        public void a(RecyclerView recyclerView, int i) {
        }

        public void a(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public static class o {

        /* renamed from: a  reason: collision with root package name */
        SparseArray<a> f901a = new SparseArray<>();

        /* renamed from: b  reason: collision with root package name */
        private int f902b = 0;

        static class a {

            /* renamed from: a  reason: collision with root package name */
            final ArrayList<w> f903a = new ArrayList<>();

            /* renamed from: b  reason: collision with root package name */
            int f904b = 5;
            long c = 0;
            long d = 0;

            a() {
            }
        }

        private a b(int i) {
            a aVar = this.f901a.get(i);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f901a.put(i, aVar2);
            return aVar2;
        }

        /* access modifiers changed from: package-private */
        public long a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        public w a(int i) {
            a aVar = this.f901a.get(i);
            if (aVar == null || aVar.f903a.isEmpty()) {
                return null;
            }
            ArrayList<w> arrayList = aVar.f903a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).v()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        public void a() {
            for (int i = 0; i < this.f901a.size(); i++) {
                this.f901a.valueAt(i).f903a.clear();
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i, long j) {
            a b2 = b(i);
            b2.c = a(b2.c, j);
        }

        /* access modifiers changed from: package-private */
        public void a(a aVar, a aVar2, boolean z) {
            if (aVar != null) {
                c();
            }
            if (!z && this.f902b == 0) {
                a();
            }
            if (aVar2 != null) {
                b();
            }
        }

        public void a(w wVar) {
            int k = wVar.k();
            ArrayList<w> arrayList = b(k).f903a;
            if (this.f901a.get(k).f904b > arrayList.size()) {
                wVar.z();
                arrayList.add(wVar);
            }
        }

        /* access modifiers changed from: package-private */
        public boolean a(int i, long j, long j2) {
            long j3 = b(i).c;
            return j3 == 0 || j + j3 < j2;
        }

        /* access modifiers changed from: package-private */
        public void b() {
            this.f902b++;
        }

        /* access modifiers changed from: package-private */
        public void b(int i, long j) {
            a b2 = b(i);
            b2.d = a(b2.d, j);
        }

        /* access modifiers changed from: package-private */
        public boolean b(int i, long j, long j2) {
            long j3 = b(i).d;
            return j3 == 0 || j + j3 < j2;
        }

        /* access modifiers changed from: package-private */
        public void c() {
            this.f902b--;
        }
    }

    public final class p {

        /* renamed from: a  reason: collision with root package name */
        final ArrayList<w> f905a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        ArrayList<w> f906b = null;
        final ArrayList<w> c = new ArrayList<>();
        int d = 2;
        o e;
        private final List<w> g = Collections.unmodifiableList(this.f905a);
        private int h = 2;
        private u i;

        public p() {
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        private boolean a(w wVar, int i2, int i3, long j) {
            wVar.p = RecyclerView.this;
            int k = wVar.k();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.e.b(k, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.s.b(wVar, i2);
            this.e.b(wVar.k(), RecyclerView.this.getNanoTime() - nanoTime);
            e(wVar);
            if (!RecyclerView.this.J.a()) {
                return true;
            }
            wVar.g = i3;
            return true;
        }

        private void e(w wVar) {
            if (RecyclerView.this.n()) {
                View view = wVar.f916a;
                if (androidx.core.g.u.e(view) == 0) {
                    androidx.core.g.u.b(view, 1);
                }
                if (RecyclerView.this.N != null) {
                    RecyclerView.this.N.e.c(view);
                    androidx.core.g.u.a(view, RecyclerView.this.N.a());
                }
            }
        }

        private void f(w wVar) {
            if (wVar.f916a instanceof ViewGroup) {
                a((ViewGroup) wVar.f916a, false);
            }
        }

        /* access modifiers changed from: package-private */
        public View a(int i2, boolean z) {
            return a(i2, z, Long.MAX_VALUE).f916a;
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:12:0x002b  */
        /* JADX WARNING: Removed duplicated region for block: B:27:0x005f  */
        /* JADX WARNING: Removed duplicated region for block: B:78:0x01a3  */
        /* JADX WARNING: Removed duplicated region for block: B:81:0x01c8  */
        /* JADX WARNING: Removed duplicated region for block: B:94:0x0201  */
        /* JADX WARNING: Removed duplicated region for block: B:95:0x020f  */
        public w a(int i2, boolean z, long j) {
            boolean z2;
            w wVar;
            w wVar2;
            boolean z3;
            ViewGroup.LayoutParams layoutParams;
            j jVar;
            int i3 = i2;
            boolean z4 = z;
            if (i3 < 0 || i3 >= RecyclerView.this.J.e()) {
                throw new IndexOutOfBoundsException("Invalid item position " + i3 + "(" + i3 + "). Item count:" + RecyclerView.this.J.e() + RecyclerView.this.b());
            }
            boolean z5 = true;
            if (RecyclerView.this.J.a()) {
                wVar = f(i2);
                if (wVar != null) {
                    z2 = true;
                    if (wVar == null) {
                        wVar = b(i2, z);
                        if (wVar != null) {
                            if (!a(wVar)) {
                                if (!z4) {
                                    wVar.c(4);
                                    if (wVar.l()) {
                                        RecyclerView.this.removeDetachedView(wVar.f916a, false);
                                        wVar.m();
                                    } else if (wVar.n()) {
                                        wVar.o();
                                    }
                                    b(wVar);
                                }
                                wVar = null;
                            } else {
                                z2 = true;
                            }
                        }
                    }
                    if (wVar == null) {
                        int b2 = RecyclerView.this.l.b(i3);
                        if (b2 < 0 || b2 >= RecyclerView.this.s.b()) {
                            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i3 + "(offset:" + b2 + ").state:" + RecyclerView.this.J.e() + RecyclerView.this.b());
                        }
                        int c2 = RecyclerView.this.s.c(b2);
                        if (RecyclerView.this.s.c()) {
                            wVar = a(RecyclerView.this.s.b(b2), c2, z4);
                            if (wVar != null) {
                                wVar.c = b2;
                                z2 = true;
                            }
                        }
                        if (wVar == null) {
                            u uVar = this.i;
                            if (uVar != null) {
                                View a2 = uVar.a(this, i3, c2);
                                if (a2 != null) {
                                    wVar = RecyclerView.this.b(a2);
                                    if (wVar == null) {
                                        throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.b());
                                    } else if (wVar.e()) {
                                        throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.b());
                                    }
                                }
                            }
                        }
                        if (wVar == null) {
                            wVar = g().a(c2);
                            if (wVar != null) {
                                wVar.z();
                                if (RecyclerView.g) {
                                    f(wVar);
                                }
                            }
                        }
                        if (wVar == null) {
                            long nanoTime = RecyclerView.this.getNanoTime();
                            if (j != Long.MAX_VALUE && !this.e.a(c2, nanoTime, j)) {
                                return null;
                            }
                            w c3 = RecyclerView.this.s.c((ViewGroup) RecyclerView.this, c2);
                            if (RecyclerView.j) {
                                RecyclerView l = RecyclerView.l(c3.f916a);
                                if (l != null) {
                                    c3.f917b = new WeakReference<>(l);
                                }
                            }
                            this.e.a(c2, RecyclerView.this.getNanoTime() - nanoTime);
                            wVar2 = c3;
                            boolean z6 = z2;
                            if (z6 && !RecyclerView.this.J.a() && wVar2.b(8192)) {
                                wVar2.a(0, 8192);
                                if (RecyclerView.this.J.j) {
                                    RecyclerView.this.a(wVar2, RecyclerView.this.F.a(RecyclerView.this.J, wVar2, f.e(wVar2) | 4096, wVar2.y()));
                                }
                            }
                            if (!RecyclerView.this.J.a() && wVar2.s()) {
                                wVar2.g = i3;
                            } else if (!wVar2.s() || wVar2.r() || wVar2.q()) {
                                z3 = a(wVar2, RecyclerView.this.l.b(i3), i2, j);
                                layoutParams = wVar2.f916a.getLayoutParams();
                                if (layoutParams != null) {
                                    jVar = (j) RecyclerView.this.generateDefaultLayoutParams();
                                    wVar2.f916a.setLayoutParams(jVar);
                                } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                                    jVar = (j) RecyclerView.this.generateLayoutParams(layoutParams);
                                    wVar2.f916a.setLayoutParams(jVar);
                                } else {
                                    jVar = (j) layoutParams;
                                }
                                jVar.c = wVar2;
                                if (!z6 || !z3) {
                                    z5 = false;
                                }
                                jVar.f = z5;
                                return wVar2;
                            }
                            z3 = false;
                            layoutParams = wVar2.f916a.getLayoutParams();
                            if (layoutParams != null) {
                            }
                            jVar.c = wVar2;
                            z5 = false;
                            jVar.f = z5;
                            return wVar2;
                        }
                    }
                    wVar2 = wVar;
                    boolean z62 = z2;
                    wVar2.a(0, 8192);
                    if (RecyclerView.this.J.j) {
                    }
                    if (!RecyclerView.this.J.a()) {
                    }
                    z3 = a(wVar2, RecyclerView.this.l.b(i3), i2, j);
                    layoutParams = wVar2.f916a.getLayoutParams();
                    if (layoutParams != null) {
                    }
                    jVar.c = wVar2;
                    z5 = false;
                    jVar.f = z5;
                    return wVar2;
                }
            } else {
                wVar = null;
            }
            z2 = false;
            if (wVar == null) {
            }
            if (wVar == null) {
            }
            wVar2 = wVar;
            boolean z622 = z2;
            wVar2.a(0, 8192);
            if (RecyclerView.this.J.j) {
            }
            if (!RecyclerView.this.J.a()) {
            }
            z3 = a(wVar2, RecyclerView.this.l.b(i3), i2, j);
            layoutParams = wVar2.f916a.getLayoutParams();
            if (layoutParams != null) {
            }
            jVar.c = wVar2;
            z5 = false;
            jVar.f = z5;
            return wVar2;
        }

        /* access modifiers changed from: package-private */
        public w a(long j, int i2, boolean z) {
            for (int size = this.f905a.size() - 1; size >= 0; size--) {
                w wVar = this.f905a.get(size);
                if (wVar.j() == j && !wVar.n()) {
                    if (i2 == wVar.k()) {
                        wVar.c(32);
                        if (wVar.t() && !RecyclerView.this.J.a()) {
                            wVar.a(2, 14);
                        }
                        return wVar;
                    } else if (!z) {
                        this.f905a.remove(size);
                        RecyclerView.this.removeDetachedView(wVar.f916a, false);
                        b(wVar.f916a);
                    }
                }
            }
            int size2 = this.c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                w wVar2 = this.c.get(size2);
                if (wVar2.j() == j && !wVar2.v()) {
                    if (i2 == wVar2.k()) {
                        if (!z) {
                            this.c.remove(size2);
                        }
                        return wVar2;
                    } else if (!z) {
                        d(size2);
                        return null;
                    }
                }
            }
        }

        public void a() {
            this.f905a.clear();
            d();
        }

        public void a(int i2) {
            this.h = i2;
            b();
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, int i3) {
            int i4;
            int i5;
            int i6;
            if (i2 < i3) {
                i5 = i3;
                i4 = -1;
                i6 = i2;
            } else {
                i5 = i2;
                i4 = 1;
                i6 = i3;
            }
            int size = this.c.size();
            for (int i7 = 0; i7 < size; i7++) {
                w wVar = this.c.get(i7);
                if (wVar != null && wVar.c >= i6 && wVar.c <= i5) {
                    if (wVar.c == i2) {
                        wVar.a(i3 - i2, false);
                    } else {
                        wVar.a(i4, false);
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, int i3, boolean z) {
            int i4 = i2 + i3;
            for (int size = this.c.size() - 1; size >= 0; size--) {
                w wVar = this.c.get(size);
                if (wVar != null) {
                    if (wVar.c >= i4) {
                        wVar.a(-i3, z);
                    } else if (wVar.c >= i2) {
                        wVar.c(8);
                        d(size);
                    }
                }
            }
        }

        public void a(View view) {
            w e2 = RecyclerView.e(view);
            if (e2.u()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (e2.l()) {
                e2.m();
            } else if (e2.n()) {
                e2.o();
            }
            b(e2);
            if (RecyclerView.this.F != null && !e2.A()) {
                RecyclerView.this.F.d(e2);
            }
        }

        /* access modifiers changed from: package-private */
        public void a(a aVar, a aVar2, boolean z) {
            a();
            g().a(aVar, aVar2, z);
        }

        /* access modifiers changed from: package-private */
        public void a(o oVar) {
            o oVar2 = this.e;
            if (oVar2 != null) {
                oVar2.c();
            }
            this.e = oVar;
            if (this.e != null && RecyclerView.this.getAdapter() != null) {
                this.e.b();
            }
        }

        /* access modifiers changed from: package-private */
        public void a(u uVar) {
            this.i = uVar;
        }

        /* access modifiers changed from: package-private */
        public void a(w wVar, boolean z) {
            RecyclerView.c(wVar);
            View view = wVar.f916a;
            if (RecyclerView.this.N != null) {
                androidx.core.g.u.a(view, RecyclerView.this.N.e.d(view));
            }
            if (z) {
                d(wVar);
            }
            wVar.p = null;
            g().a(wVar);
        }

        /* access modifiers changed from: package-private */
        public boolean a(w wVar) {
            if (wVar.t()) {
                return RecyclerView.this.J.a();
            }
            if (wVar.c < 0 || wVar.c >= RecyclerView.this.s.b()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + wVar + RecyclerView.this.b());
            } else if (!RecyclerView.this.J.a() && RecyclerView.this.s.c(wVar.c) != wVar.k()) {
                return false;
            } else {
                if (RecyclerView.this.s.c()) {
                    return wVar.j() == RecyclerView.this.s.b(wVar.c);
                }
                return true;
            }
        }

        public int b(int i2) {
            if (i2 >= 0 && i2 < RecyclerView.this.J.e()) {
                return !RecyclerView.this.J.a() ? i2 : RecyclerView.this.l.b(i2);
            }
            throw new IndexOutOfBoundsException("invalid position " + i2 + ". State item count is " + RecyclerView.this.J.e() + RecyclerView.this.b());
        }

        /* access modifiers changed from: package-private */
        public w b(int i2, boolean z) {
            int size = this.f905a.size();
            int i3 = 0;
            int i4 = 0;
            while (i4 < size) {
                w wVar = this.f905a.get(i4);
                if (wVar.n() || wVar.g() != i2 || wVar.q() || (!RecyclerView.this.J.g && wVar.t())) {
                    i4++;
                } else {
                    wVar.c(32);
                    return wVar;
                }
            }
            if (!z) {
                View c2 = RecyclerView.this.m.c(i2);
                if (c2 != null) {
                    w e2 = RecyclerView.e(c2);
                    RecyclerView.this.m.e(c2);
                    int b2 = RecyclerView.this.m.b(c2);
                    if (b2 != -1) {
                        RecyclerView.this.m.e(b2);
                        c(c2);
                        e2.c(8224);
                        return e2;
                    }
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + e2 + RecyclerView.this.b());
                }
            }
            int size2 = this.c.size();
            while (i3 < size2) {
                w wVar2 = this.c.get(i3);
                if (wVar2.q() || wVar2.g() != i2 || wVar2.v()) {
                    i3++;
                } else {
                    if (!z) {
                        this.c.remove(i3);
                    }
                    return wVar2;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public void b() {
            this.d = this.h + (RecyclerView.this.t != null ? RecyclerView.this.t.x : 0);
            for (int size = this.c.size() - 1; size >= 0 && this.c.size() > this.d; size--) {
                d(size);
            }
        }

        /* access modifiers changed from: package-private */
        public void b(int i2, int i3) {
            int size = this.c.size();
            for (int i4 = 0; i4 < size; i4++) {
                w wVar = this.c.get(i4);
                if (wVar != null && wVar.c >= i2) {
                    wVar.a(i3, true);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void b(View view) {
            w e2 = RecyclerView.e(view);
            e2.m = null;
            e2.n = false;
            e2.o();
            b(e2);
        }

        /* access modifiers changed from: package-private */
        public void b(w wVar) {
            boolean z;
            boolean z2 = false;
            if (wVar.l() || wVar.f916a.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(wVar.l());
                sb.append(" isAttached:");
                if (wVar.f916a.getParent() != null) {
                    z2 = true;
                }
                sb.append(z2);
                sb.append(RecyclerView.this.b());
                throw new IllegalArgumentException(sb.toString());
            } else if (wVar.u()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + wVar + RecyclerView.this.b());
            } else if (!wVar.e()) {
                boolean C = wVar.C();
                if ((RecyclerView.this.s != null && C && RecyclerView.this.s.b(wVar)) || wVar.A()) {
                    if (this.d <= 0 || wVar.b(526)) {
                        z = false;
                    } else {
                        int size = this.c.size();
                        if (size >= this.d && size > 0) {
                            d(0);
                            size--;
                        }
                        if (RecyclerView.j && size > 0 && !RecyclerView.this.I.a(wVar.c)) {
                            int i2 = size - 1;
                            while (i2 >= 0) {
                                if (!RecyclerView.this.I.a(this.c.get(i2).c)) {
                                    break;
                                }
                                i2--;
                            }
                            size = i2 + 1;
                        }
                        this.c.add(size, wVar);
                        z = true;
                    }
                    if (!z) {
                        a(wVar, true);
                        z2 = true;
                    }
                } else {
                    z = false;
                }
                RecyclerView.this.n.g(wVar);
                if (!z && !z2 && C) {
                    wVar.p = null;
                }
            } else {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.b());
            }
        }

        public View c(int i2) {
            return a(i2, false);
        }

        public List<w> c() {
            return this.g;
        }

        /* access modifiers changed from: package-private */
        public void c(int i2, int i3) {
            int i4 = i3 + i2;
            for (int size = this.c.size() - 1; size >= 0; size--) {
                w wVar = this.c.get(size);
                if (wVar != null) {
                    int i5 = wVar.c;
                    if (i5 >= i2 && i5 < i4) {
                        wVar.c(2);
                        d(size);
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void c(View view) {
            w e2 = RecyclerView.e(view);
            if (!e2.b(12) && e2.D() && !RecyclerView.this.b(e2)) {
                if (this.f906b == null) {
                    this.f906b = new ArrayList<>();
                }
                e2.a(this, true);
                this.f906b.add(e2);
            } else if (!e2.q() || e2.t() || RecyclerView.this.s.c()) {
                e2.a(this, false);
                this.f905a.add(e2);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.b());
            }
        }

        /* access modifiers changed from: package-private */
        public void c(w wVar) {
            if (wVar.n) {
                this.f906b.remove(wVar);
            } else {
                this.f905a.remove(wVar);
            }
            wVar.m = null;
            wVar.n = false;
            wVar.o();
        }

        /* access modifiers changed from: package-private */
        public void d() {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                d(size);
            }
            this.c.clear();
            if (RecyclerView.j) {
                RecyclerView.this.I.a();
            }
        }

        /* access modifiers changed from: package-private */
        public void d(int i2) {
            a(this.c.get(i2), true);
            this.c.remove(i2);
        }

        /* access modifiers changed from: package-private */
        public void d(w wVar) {
            if (RecyclerView.this.u != null) {
                RecyclerView.this.u.a(wVar);
            }
            if (RecyclerView.this.s != null) {
                RecyclerView.this.s.a(wVar);
            }
            if (RecyclerView.this.J != null) {
                RecyclerView.this.n.g(wVar);
            }
        }

        /* access modifiers changed from: package-private */
        public int e() {
            return this.f905a.size();
        }

        /* access modifiers changed from: package-private */
        public View e(int i2) {
            return this.f905a.get(i2).f916a;
        }

        /* access modifiers changed from: package-private */
        public w f(int i2) {
            ArrayList<w> arrayList = this.f906b;
            if (arrayList != null) {
                int size = arrayList.size();
                if (size != 0) {
                    int i3 = 0;
                    int i4 = 0;
                    while (i4 < size) {
                        w wVar = this.f906b.get(i4);
                        if (wVar.n() || wVar.g() != i2) {
                            i4++;
                        } else {
                            wVar.c(32);
                            return wVar;
                        }
                    }
                    if (RecyclerView.this.s.c()) {
                        int b2 = RecyclerView.this.l.b(i2);
                        if (b2 > 0 && b2 < RecyclerView.this.s.b()) {
                            long b3 = RecyclerView.this.s.b(b2);
                            while (i3 < size) {
                                w wVar2 = this.f906b.get(i3);
                                if (wVar2.n() || wVar2.j() != b3) {
                                    i3++;
                                } else {
                                    wVar2.c(32);
                                    return wVar2;
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public void f() {
            this.f905a.clear();
            ArrayList<w> arrayList = this.f906b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* access modifiers changed from: package-private */
        public o g() {
            if (this.e == null) {
                this.e = new o();
            }
            return this.e;
        }

        /* access modifiers changed from: package-private */
        public void h() {
            int size = this.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                w wVar = this.c.get(i2);
                if (wVar != null) {
                    wVar.c(6);
                    wVar.a((Object) null);
                }
            }
            if (RecyclerView.this.s == null || !RecyclerView.this.s.c()) {
                d();
            }
        }

        /* access modifiers changed from: package-private */
        public void i() {
            int size = this.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.c.get(i2).c();
            }
            int size2 = this.f905a.size();
            for (int i3 = 0; i3 < size2; i3++) {
                this.f905a.get(i3).c();
            }
            ArrayList<w> arrayList = this.f906b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    this.f906b.get(i4).c();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void j() {
            int size = this.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                j jVar = (j) this.c.get(i2).f916a.getLayoutParams();
                if (jVar != null) {
                    jVar.e = true;
                }
            }
        }
    }

    public interface q {
        void a(w wVar);
    }

    private class r extends c {
        r() {
        }

        public void a() {
            RecyclerView.this.a((String) null);
            RecyclerView.this.J.f = true;
            RecyclerView.this.c(true);
            if (!RecyclerView.this.l.d()) {
                RecyclerView.this.requestLayout();
            }
        }

        public void a(int i, int i2, int i3) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.l.a(i, i2, i3)) {
                b();
            }
        }

        public void a(int i, int i2, Object obj) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.l.a(i, i2, obj)) {
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public void b() {
            if (!RecyclerView.i || !RecyclerView.this.x || !RecyclerView.this.w) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.C = true;
                recyclerView.requestLayout();
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            androidx.core.g.u.a((View) recyclerView2, recyclerView2.p);
        }

        public void b(int i, int i2) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.l.b(i, i2)) {
                b();
            }
        }

        public void c(int i, int i2) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.l.c(i, i2)) {
                b();
            }
        }
    }

    public static abstract class s {

        /* renamed from: a  reason: collision with root package name */
        private int f908a = -1;

        /* renamed from: b  reason: collision with root package name */
        private RecyclerView f909b;
        private i c;
        private boolean d;
        private boolean e;
        private View f;
        private final a g = new a(0, 0);
        private boolean h;

        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private int f910a;

            /* renamed from: b  reason: collision with root package name */
            private int f911b;
            private int c;
            private int d;
            private Interpolator e;
            private boolean f;
            private int g;

            public a(int i, int i2) {
                this(i, i2, MessageNano.UNSET_ENUM_VALUE, (Interpolator) null);
            }

            public a(int i, int i2, int i3, Interpolator interpolator) {
                this.d = -1;
                this.f = false;
                this.g = 0;
                this.f910a = i;
                this.f911b = i2;
                this.c = i3;
                this.e = interpolator;
            }

            private void b() {
                if (this.e != null && this.c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                } else if (this.c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public void a(int i) {
                this.d = i;
            }

            public void a(int i, int i2, int i3, Interpolator interpolator) {
                this.f910a = i;
                this.f911b = i2;
                this.c = i3;
                this.e = interpolator;
                this.f = true;
            }

            /* access modifiers changed from: package-private */
            public void a(RecyclerView recyclerView) {
                int i = this.d;
                if (i >= 0) {
                    this.d = -1;
                    recyclerView.c(i);
                    this.f = false;
                } else if (this.f) {
                    b();
                    recyclerView.G.a(this.f910a, this.f911b, this.c, this.e);
                    this.g++;
                    if (this.g > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f = false;
                } else {
                    this.g = 0;
                }
            }

            /* access modifiers changed from: package-private */
            public boolean a() {
                return this.d >= 0;
            }
        }

        public interface b {
            PointF d(int i);
        }

        public int a(View view) {
            return this.f909b.h(view);
        }

        /* access modifiers changed from: protected */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public void a(int i, int i2) {
            RecyclerView recyclerView = this.f909b;
            if (this.f908a == -1 || recyclerView == null) {
                f();
            }
            if (this.d && this.f == null && this.c != null) {
                PointF d2 = d(this.f908a);
                if (!(d2 == null || (d2.x == 0.0f && d2.y == 0.0f))) {
                    recyclerView.a((int) Math.signum(d2.x), (int) Math.signum(d2.y), (int[]) null);
                }
            }
            this.d = false;
            View view = this.f;
            if (view != null) {
                if (a(view) == this.f908a) {
                    a(this.f, recyclerView.J, this.g);
                    this.g.a(recyclerView);
                    f();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f = null;
                }
            }
            if (this.e) {
                a(i, i2, recyclerView.J, this.g);
                boolean a2 = this.g.a();
                this.g.a(recyclerView);
                if (a2 && this.e) {
                    this.d = true;
                    recyclerView.G.a();
                }
            }
        }

        /* access modifiers changed from: protected */
        public abstract void a(int i, int i2, t tVar, a aVar);

        /* access modifiers changed from: protected */
        public void a(PointF pointF) {
            float sqrt = (float) Math.sqrt((double) ((pointF.x * pointF.x) + (pointF.y * pointF.y)));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        /* access modifiers changed from: protected */
        public abstract void a(View view, t tVar, a aVar);

        /* access modifiers changed from: package-private */
        public void a(RecyclerView recyclerView, i iVar) {
            recyclerView.G.b();
            if (this.h) {
                Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f909b = recyclerView;
            this.c = iVar;
            if (this.f908a != -1) {
                this.f909b.J.f912a = this.f908a;
                this.e = true;
                this.d = true;
                this.f = e(i());
                a();
                this.f909b.G.a();
                this.h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* access modifiers changed from: protected */
        public abstract void b();

        /* access modifiers changed from: protected */
        public void b(View view) {
            if (a(view) == i()) {
                this.f = view;
            }
        }

        public void c(int i) {
            this.f908a = i;
        }

        public PointF d(int i) {
            i e2 = e();
            if (e2 instanceof b) {
                return ((b) e2).d(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        public View e(int i) {
            return this.f909b.t.c(i);
        }

        public i e() {
            return this.c;
        }

        /* access modifiers changed from: protected */
        public final void f() {
            if (this.e) {
                this.e = false;
                b();
                this.f909b.J.f912a = -1;
                this.f = null;
                this.f908a = -1;
                this.d = false;
                this.c.b(this);
                this.c = null;
                this.f909b = null;
            }
        }

        public boolean g() {
            return this.d;
        }

        public boolean h() {
            return this.e;
        }

        public int i() {
            return this.f908a;
        }

        public int j() {
            return this.f909b.t.z();
        }
    }

    public static class t {

        /* renamed from: a  reason: collision with root package name */
        int f912a = -1;

        /* renamed from: b  reason: collision with root package name */
        int f913b = 0;
        int c = 0;
        int d = 1;
        int e = 0;
        boolean f = false;
        boolean g = false;
        boolean h = false;
        boolean i = false;
        boolean j = false;
        boolean k = false;
        int l;
        long m;
        int n;
        int o;
        int p;
        private SparseArray<Object> q;

        /* access modifiers changed from: package-private */
        public void a(int i2) {
            if ((this.d & i2) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.d));
            }
        }

        /* access modifiers changed from: package-private */
        public void a(a aVar) {
            this.d = 1;
            this.e = aVar.b();
            this.g = false;
            this.h = false;
            this.i = false;
        }

        public boolean a() {
            return this.g;
        }

        public boolean b() {
            return this.k;
        }

        public int c() {
            return this.f912a;
        }

        public boolean d() {
            return this.f912a != -1;
        }

        public int e() {
            return this.g ? this.f913b - this.c : this.e;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f912a + ", mData=" + this.q + ", mItemCount=" + this.e + ", mIsMeasuring=" + this.i + ", mPreviousLayoutItemCount=" + this.f913b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.g + ", mRunSimpleAnimations=" + this.j + ", mRunPredictiveAnimations=" + this.k + '}';
        }
    }

    public static abstract class u {
        public abstract View a(p pVar, int i, int i2);
    }

    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        OverScroller f914a;

        /* renamed from: b  reason: collision with root package name */
        Interpolator f915b = RecyclerView.Q;
        private int d;
        private int e;
        private boolean f = false;
        private boolean g = false;

        v() {
            this.f914a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.Q);
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
            int width = z ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
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
            RecyclerView.this.removeCallbacks(this);
            androidx.core.g.u.a((View) RecyclerView.this, (Runnable) this);
        }

        /* access modifiers changed from: package-private */
        public void a() {
            if (this.f) {
                this.g = true;
            } else {
                c();
            }
        }

        public void a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.e = 0;
            this.d = 0;
            if (this.f915b != RecyclerView.Q) {
                this.f915b = RecyclerView.Q;
                this.f914a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.Q);
            }
            this.f914a.fling(0, 0, i, i2, MessageNano.UNSET_ENUM_VALUE, Integer.MAX_VALUE, MessageNano.UNSET_ENUM_VALUE, Integer.MAX_VALUE);
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
            if (this.f915b != interpolator) {
                this.f915b = interpolator;
                this.f914a = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.e = 0;
            this.d = 0;
            RecyclerView.this.setScrollState(2);
            this.f914a.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f914a.computeScrollOffset();
            }
            a();
        }

        public void b() {
            RecyclerView.this.removeCallbacks(this);
            this.f914a.abortAnimation();
        }

        public void run() {
            int i;
            int i2;
            if (RecyclerView.this.t == null) {
                b();
                return;
            }
            this.g = false;
            this.f = true;
            RecyclerView.this.e();
            OverScroller overScroller = this.f914a;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.d;
                int i4 = currY - this.e;
                this.d = currX;
                this.e = currY;
                RecyclerView.this.O[0] = 0;
                RecyclerView.this.O[1] = 0;
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.a(i3, i4, recyclerView.O, (int[]) null, 1)) {
                    i3 -= RecyclerView.this.O[0];
                    i4 -= RecyclerView.this.O[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.d(i3, i4);
                }
                if (RecyclerView.this.s != null) {
                    RecyclerView.this.O[0] = 0;
                    RecyclerView.this.O[1] = 0;
                    RecyclerView recyclerView2 = RecyclerView.this;
                    recyclerView2.a(i3, i4, recyclerView2.O);
                    i2 = RecyclerView.this.O[0];
                    i = RecyclerView.this.O[1];
                    i3 -= i2;
                    i4 -= i;
                    s sVar = RecyclerView.this.t.t;
                    if (sVar != null && !sVar.g() && sVar.h()) {
                        int e2 = RecyclerView.this.J.e();
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
                if (!RecyclerView.this.v.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView.this.O[0] = 0;
                RecyclerView.this.O[1] = 0;
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.a(i2, i, i3, i4, (int[]) null, 1, recyclerView3.O);
                int i5 = i3 - RecyclerView.this.O[0];
                int i6 = i4 - RecyclerView.this.O[1];
                if (!(i2 == 0 && i == 0)) {
                    RecyclerView.this.c(i2, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                s sVar2 = RecyclerView.this.t.t;
                if ((sVar2 != null && sVar2.g()) || !z) {
                    a();
                    if (RecyclerView.this.H != null) {
                        RecyclerView.this.H.a(RecyclerView.this, i2, i);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.e(i7, currVelocity);
                    }
                    if (RecyclerView.j) {
                        RecyclerView.this.I.a();
                    }
                }
            }
            s sVar3 = RecyclerView.this.t.t;
            if (sVar3 != null && sVar3.g()) {
                sVar3.a(0, 0);
            }
            this.f = false;
            if (this.g) {
                c();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.i(1);
        }
    }

    public static abstract class w {
        private static final List<Object> q = Collections.emptyList();

        /* renamed from: a  reason: collision with root package name */
        public final View f916a;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<RecyclerView> f917b;
        int c = -1;
        int d = -1;
        long e = -1;
        int f = -1;
        int g = -1;
        w h = null;
        w i = null;
        int j;
        List<Object> k = null;
        List<Object> l = null;
        p m = null;
        boolean n = false;
        int o = -1;
        RecyclerView p;
        private int r = 0;
        private int s = 0;

        public w(View view) {
            if (view != null) {
                this.f916a = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void a() {
            if (this.k == null) {
                this.k = new ArrayList();
                this.l = Collections.unmodifiableList(this.k);
            }
        }

        public final boolean A() {
            return (this.j & 16) == 0 && !androidx.core.g.u.c(this.f916a);
        }

        /* access modifiers changed from: package-private */
        public boolean B() {
            return (this.j & 16) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean C() {
            return (this.j & 16) == 0 && androidx.core.g.u.c(this.f916a);
        }

        /* access modifiers changed from: package-private */
        public boolean D() {
            return (this.j & 2) != 0;
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, int i3) {
            this.j = (i2 & i3) | (this.j & (~i3));
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, int i3, boolean z) {
            c(8);
            a(i3, z);
            this.c = i2;
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, boolean z) {
            if (this.d == -1) {
                this.d = this.c;
            }
            if (this.g == -1) {
                this.g = this.c;
            }
            if (z) {
                this.g += i2;
            }
            this.c += i2;
            if (this.f916a.getLayoutParams() != null) {
                ((j) this.f916a.getLayoutParams()).e = true;
            }
        }

        /* access modifiers changed from: package-private */
        public void a(p pVar, boolean z) {
            this.m = pVar;
            this.n = z;
        }

        /* access modifiers changed from: package-private */
        public void a(RecyclerView recyclerView) {
            int i2 = this.o;
            if (i2 != -1) {
                this.s = i2;
            } else {
                this.s = androidx.core.g.u.e(this.f916a);
            }
            recyclerView.a(this, 4);
        }

        /* access modifiers changed from: package-private */
        public void a(Object obj) {
            if (obj == null) {
                c(1024);
            } else if ((1024 & this.j) == 0) {
                a();
                this.k.add(obj);
            }
        }

        /* access modifiers changed from: package-private */
        public void b(RecyclerView recyclerView) {
            recyclerView.a(this, this.s);
            this.s = 0;
        }

        /* access modifiers changed from: package-private */
        public boolean b(int i2) {
            return (i2 & this.j) != 0;
        }

        /* access modifiers changed from: package-private */
        public void c() {
            this.d = -1;
            this.g = -1;
        }

        /* access modifiers changed from: package-private */
        public void c(int i2) {
            this.j = i2 | this.j;
        }

        public final void c(boolean z) {
            this.r = z ? this.r - 1 : this.r + 1;
            int i2 = this.r;
            if (i2 < 0) {
                this.r = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.j |= 16;
            } else if (z && this.r == 0) {
                this.j &= -17;
            }
        }

        /* access modifiers changed from: package-private */
        public void d() {
            if (this.d == -1) {
                this.d = this.c;
            }
        }

        /* access modifiers changed from: package-private */
        public boolean e() {
            return (this.j & 128) != 0;
        }

        @Deprecated
        public final int f() {
            int i2 = this.g;
            return i2 == -1 ? this.c : i2;
        }

        public final int g() {
            int i2 = this.g;
            return i2 == -1 ? this.c : i2;
        }

        public final int h() {
            RecyclerView recyclerView = this.p;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.d(this);
        }

        public final int i() {
            return this.d;
        }

        public final long j() {
            return this.e;
        }

        public final int k() {
            return this.f;
        }

        /* access modifiers changed from: package-private */
        public boolean l() {
            return this.m != null;
        }

        /* access modifiers changed from: package-private */
        public void m() {
            this.m.c(this);
        }

        /* access modifiers changed from: package-private */
        public boolean n() {
            return (this.j & 32) != 0;
        }

        /* access modifiers changed from: package-private */
        public void o() {
            this.j &= -33;
        }

        /* access modifiers changed from: package-private */
        public void p() {
            this.j &= -257;
        }

        /* access modifiers changed from: package-private */
        public boolean q() {
            return (this.j & 4) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean r() {
            return (this.j & 2) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean s() {
            return (this.j & 1) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean t() {
            return (this.j & 8) != 0;
        }

        public String toString() {
            String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.c + " id=" + this.e + ", oldPos=" + this.d + ", pLpos:" + this.g);
            if (l()) {
                sb.append(" scrap ");
                sb.append(this.n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (q()) {
                sb.append(" invalid");
            }
            if (!s()) {
                sb.append(" unbound");
            }
            if (r()) {
                sb.append(" update");
            }
            if (t()) {
                sb.append(" removed");
            }
            if (e()) {
                sb.append(" ignored");
            }
            if (u()) {
                sb.append(" tmpDetached");
            }
            if (!A()) {
                sb.append(" not recyclable(" + this.r + ")");
            }
            if (w()) {
                sb.append(" undefined adapter position");
            }
            if (this.f916a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* access modifiers changed from: package-private */
        public boolean u() {
            return (this.j & 256) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean v() {
            return (this.f916a.getParent() == null || this.f916a.getParent() == this.p) ? false : true;
        }

        /* access modifiers changed from: package-private */
        public boolean w() {
            return (this.j & 512) != 0 || q();
        }

        /* access modifiers changed from: package-private */
        public void x() {
            List<Object> list = this.k;
            if (list != null) {
                list.clear();
            }
            this.j &= -1025;
        }

        /* access modifiers changed from: package-private */
        public List<Object> y() {
            if ((this.j & 1024) != 0) {
                return q;
            }
            List<Object> list = this.k;
            return (list == null || list.size() == 0) ? q : this.l;
        }

        /* access modifiers changed from: package-private */
        public void z() {
            this.j = 0;
            this.c = -1;
            this.d = -1;
            this.e = -1;
            this.g = -1;
            this.r = 0;
            this.h = null;
            this.i = null;
            x();
            this.s = 0;
            this.o = -1;
            RecyclerView.c(this);
        }
    }

    public RecyclerView(Context context) {
        this(context, (AttributeSet) null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.recyclerViewStyle);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.e = new r();
        this.k = new p();
        this.n = new t();
        this.p = new Runnable() {
            public void run() {
                if (RecyclerView.this.z && !RecyclerView.this.isLayoutRequested()) {
                    if (!RecyclerView.this.w) {
                        RecyclerView.this.requestLayout();
                    } else if (RecyclerView.this.B) {
                        RecyclerView.this.A = true;
                    } else {
                        RecyclerView.this.e();
                    }
                }
            }
        };
        this.q = new Rect();
        this.R = new Rect();
        this.r = new RectF();
        this.v = new ArrayList<>();
        this.S = new ArrayList<>();
        this.U = 0;
        this.D = false;
        this.E = false;
        this.ac = 0;
        this.ad = 0;
        this.ae = new e();
        this.F = new e();
        this.aj = 0;
        this.ak = -1;
        this.au = Float.MIN_VALUE;
        this.av = Float.MIN_VALUE;
        boolean z2 = true;
        this.aw = true;
        this.G = new v();
        this.I = j ? new h.a() : null;
        this.J = new t();
        this.K = false;
        this.L = false;
        this.az = new g();
        this.M = false;
        this.aB = new int[2];
        this.aD = new int[2];
        this.aE = new int[2];
        this.O = new int[2];
        this.P = new ArrayList();
        this.aF = new Runnable() {
            public void run() {
                if (RecyclerView.this.F != null) {
                    RecyclerView.this.F.a();
                }
                RecyclerView.this.M = false;
            }
        };
        this.aG = new t.b() {
            public void a(w wVar) {
                RecyclerView.this.t.a(wVar.f916a, RecyclerView.this.k);
            }

            public void a(w wVar, f.c cVar, f.c cVar2) {
                RecyclerView.this.k.c(wVar);
                RecyclerView.this.b(wVar, cVar, cVar2);
            }

            public void b(w wVar, f.c cVar, f.c cVar2) {
                RecyclerView.this.a(wVar, cVar, cVar2);
            }

            public void c(w wVar, f.c cVar, f.c cVar2) {
                wVar.c(false);
                if (RecyclerView.this.D) {
                    if (RecyclerView.this.F.a(wVar, wVar, cVar, cVar2)) {
                        RecyclerView.this.p();
                    }
                } else if (RecyclerView.this.F.c(wVar, cVar, cVar2)) {
                    RecyclerView.this.p();
                }
            }
        };
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.aq = viewConfiguration.getScaledTouchSlop();
        this.au = androidx.core.g.v.a(viewConfiguration, context);
        this.av = androidx.core.g.v.b(viewConfiguration, context);
        this.as = viewConfiguration.getScaledMinimumFlingVelocity();
        this.at = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.F.a(this.az);
        c();
        A();
        z();
        if (androidx.core.g.u.e(this) == 0) {
            androidx.core.g.u.b((View) this, 1);
        }
        this.aa = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new o(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i2, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, R.styleable.RecyclerView, attributeSet, obtainStyledAttributes, i2, 0);
        }
        String string = obtainStyledAttributes.getString(R.styleable.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(STMobileHumanActionNative.ST_MOBILE_DETECT_MODE_IMAGE);
        }
        this.o = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_android_clipToPadding, true);
        this.y = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_fastScrollEnabled, false);
        if (this.y) {
            a((StateListDrawable) obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        a(context, string, attributeSet, i2, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f881a, i2, 0);
            if (Build.VERSION.SDK_INT >= 29) {
                saveAttributeDataForStyleable(context, f881a, attributeSet, obtainStyledAttributes2, i2, 0);
            }
            z2 = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z2);
    }

    private void A() {
        this.m = new d(new d.b() {
            public int a() {
                return RecyclerView.this.getChildCount();
            }

            public int a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            public void a(int i) {
                View childAt = RecyclerView.this.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.this.m(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i);
            }

            public void a(View view, int i) {
                RecyclerView.this.addView(view, i);
                RecyclerView.this.n(view);
            }

            public void a(View view, int i, ViewGroup.LayoutParams layoutParams) {
                w e = RecyclerView.e(view);
                if (e != null) {
                    if (e.u() || e.e()) {
                        e.p();
                    } else {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + e + RecyclerView.this.b());
                    }
                }
                RecyclerView.this.attachViewToParent(view, i, layoutParams);
            }

            public View b(int i) {
                return RecyclerView.this.getChildAt(i);
            }

            public w b(View view) {
                return RecyclerView.e(view);
            }

            public void b() {
                int a2 = a();
                for (int i = 0; i < a2; i++) {
                    View b2 = b(i);
                    RecyclerView.this.m(b2);
                    b2.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            public void c(int i) {
                View b2 = b(i);
                if (b2 != null) {
                    w e = RecyclerView.e(b2);
                    if (e != null) {
                        if (!e.u() || e.e()) {
                            e.c(256);
                        } else {
                            throw new IllegalArgumentException("called detach on an already detached child " + e + RecyclerView.this.b());
                        }
                    }
                }
                RecyclerView.this.detachViewFromParent(i);
            }

            public void c(View view) {
                w e = RecyclerView.e(view);
                if (e != null) {
                    e.a(RecyclerView.this);
                }
            }

            public void d(View view) {
                w e = RecyclerView.e(view);
                if (e != null) {
                    e.b(RecyclerView.this);
                }
            }
        });
    }

    private boolean B() {
        int b2 = this.m.b();
        for (int i2 = 0; i2 < b2; i2++) {
            w e2 = e(this.m.b(i2));
            if (e2 != null && !e2.e() && e2.D()) {
                return true;
            }
        }
        return false;
    }

    private void C() {
        this.G.b();
        i iVar = this.t;
        if (iVar != null) {
            iVar.M();
        }
    }

    private void D() {
        boolean z2;
        EdgeEffect edgeEffect = this.af;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z2 = this.af.isFinished();
        } else {
            z2 = false;
        }
        EdgeEffect edgeEffect2 = this.ag;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 |= this.ag.isFinished();
        }
        EdgeEffect edgeEffect3 = this.ah;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z2 |= this.ah.isFinished();
        }
        EdgeEffect edgeEffect4 = this.ai;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z2 |= this.ai.isFinished();
        }
        if (z2) {
            androidx.core.g.u.d(this);
        }
    }

    private void E() {
        VelocityTracker velocityTracker = this.al;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        i(0);
        D();
    }

    private void F() {
        E();
        setScrollState(0);
    }

    private void G() {
        int i2 = this.W;
        this.W = 0;
        if (i2 != 0 && n()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            androidx.core.g.a.b.a(obtain, i2);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    private boolean H() {
        return this.F != null && this.t.c();
    }

    private void I() {
        if (this.D) {
            this.l.a();
            if (this.E) {
                this.t.a(this);
            }
        }
        if (H()) {
            this.l.b();
        } else {
            this.l.e();
        }
        boolean z2 = false;
        boolean z3 = this.K || this.L;
        this.J.j = this.z && this.F != null && (this.D || z3 || this.t.u) && (!this.D || this.s.c());
        t tVar = this.J;
        if (tVar.j && z3 && !this.D && H()) {
            z2 = true;
        }
        tVar.k = z2;
    }

    private void J() {
        w wVar = null;
        View focusedChild = (!this.aw || !hasFocus() || this.s == null) ? null : getFocusedChild();
        if (focusedChild != null) {
            wVar = d(focusedChild);
        }
        if (wVar == null) {
            K();
            return;
        }
        this.J.m = this.s.c() ? wVar.j() : -1;
        this.J.l = this.D ? -1 : wVar.t() ? wVar.d : wVar.h();
        this.J.n = o(wVar.f916a);
    }

    private void K() {
        t tVar = this.J;
        tVar.m = -1;
        tVar.l = -1;
        tVar.n = -1;
    }

    private View L() {
        int i2 = this.J.l != -1 ? this.J.l : 0;
        int e2 = this.J.e();
        int i3 = i2;
        while (i3 < e2) {
            w e3 = e(i3);
            if (e3 == null) {
                break;
            } else if (e3.f916a.hasFocusable()) {
                return e3.f916a;
            } else {
                i3++;
            }
        }
        int min = Math.min(e2, i2);
        while (true) {
            min--;
            if (min < 0) {
                return null;
            }
            w e4 = e(min);
            if (e4 == null) {
                return null;
            }
            if (e4.f916a.hasFocusable()) {
                return e4.f916a;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00af, code lost:
        if (r0.isFocusable() != false) goto L_0x00b3;
     */
    private void M() {
        View view;
        if (this.aw && this.s != null && hasFocus() && getDescendantFocusability() != 393216) {
            if (getDescendantFocusability() != 131072 || !isFocused()) {
                if (!isFocused()) {
                    View focusedChild = getFocusedChild();
                    if (!c || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                        if (!this.m.c(focusedChild)) {
                            return;
                        }
                    } else if (this.m.b() == 0) {
                        requestFocus();
                        return;
                    }
                }
                View view2 = null;
                w a2 = (this.J.m == -1 || !this.s.c()) ? null : a(this.J.m);
                if (a2 != null && !this.m.c(a2.f916a) && a2.f916a.hasFocusable()) {
                    view2 = a2.f916a;
                } else if (this.m.b() > 0) {
                    view2 = L();
                }
                if (view2 != null) {
                    if (((long) this.J.n) != -1) {
                        view = view2.findViewById(this.J.n);
                        if (view != null) {
                        }
                    }
                    view = view2;
                    view.requestFocus();
                }
            }
        }
    }

    private void N() {
        boolean z2 = true;
        this.J.a(1);
        a(this.J);
        this.J.i = false;
        f();
        this.n.a();
        l();
        I();
        J();
        t tVar = this.J;
        if (!tVar.j || !this.L) {
            z2 = false;
        }
        tVar.h = z2;
        this.L = false;
        this.K = false;
        t tVar2 = this.J;
        tVar2.g = tVar2.k;
        this.J.e = this.s.b();
        a(this.aB);
        if (this.J.j) {
            int b2 = this.m.b();
            for (int i2 = 0; i2 < b2; i2++) {
                w e2 = e(this.m.b(i2));
                if (!e2.e() && (!e2.q() || this.s.c())) {
                    this.n.a(e2, this.F.a(this.J, e2, f.e(e2), e2.y()));
                    if (this.J.h && e2.D() && !e2.t() && !e2.e() && !e2.q()) {
                        this.n.a(a(e2), e2);
                    }
                }
            }
        }
        if (this.J.k) {
            s();
            boolean z3 = this.J.f;
            t tVar3 = this.J;
            tVar3.f = false;
            this.t.c(this.k, tVar3);
            this.J.f = z3;
            for (int i3 = 0; i3 < this.m.b(); i3++) {
                w e3 = e(this.m.b(i3));
                if (!e3.e() && !this.n.d(e3)) {
                    int e4 = f.e(e3);
                    boolean b3 = e3.b(8192);
                    if (!b3) {
                        e4 |= 4096;
                    }
                    f.c a2 = this.F.a(this.J, e3, e4, e3.y());
                    if (b3) {
                        a(e3, a2);
                    } else {
                        this.n.b(e3, a2);
                    }
                }
            }
            t();
        } else {
            t();
        }
        m();
        a(false);
        this.J.d = 2;
    }

    private void O() {
        f();
        l();
        this.J.a(6);
        this.l.e();
        this.J.e = this.s.b();
        t tVar = this.J;
        tVar.c = 0;
        tVar.g = false;
        this.t.c(this.k, tVar);
        t tVar2 = this.J;
        tVar2.f = false;
        this.f = null;
        tVar2.j = tVar2.j && this.F != null;
        this.J.d = 4;
        m();
        a(false);
    }

    private void P() {
        this.J.a(4);
        f();
        l();
        t tVar = this.J;
        tVar.d = 1;
        if (tVar.j) {
            for (int b2 = this.m.b() - 1; b2 >= 0; b2--) {
                w e2 = e(this.m.b(b2));
                if (!e2.e()) {
                    long a2 = a(e2);
                    f.c a3 = this.F.a(this.J, e2);
                    w a4 = this.n.a(a2);
                    if (a4 == null || a4.e()) {
                        this.n.c(e2, a3);
                    } else {
                        boolean a5 = this.n.a(a4);
                        boolean a6 = this.n.a(e2);
                        if (!a5 || a4 != e2) {
                            f.c b3 = this.n.b(a4);
                            this.n.c(e2, a3);
                            f.c c2 = this.n.c(e2);
                            if (b3 == null) {
                                a(a2, e2, a4);
                            } else {
                                a(a4, e2, b3, c2, a5, a6);
                            }
                        } else {
                            this.n.c(e2, a3);
                        }
                    }
                }
            }
            this.n.a(this.aG);
        }
        this.t.b(this.k);
        t tVar2 = this.J;
        tVar2.f913b = tVar2.e;
        this.D = false;
        this.E = false;
        t tVar3 = this.J;
        tVar3.j = false;
        tVar3.k = false;
        this.t.u = false;
        if (this.k.f906b != null) {
            this.k.f906b.clear();
        }
        if (this.t.y) {
            i iVar = this.t;
            iVar.x = 0;
            iVar.y = false;
            this.k.b();
        }
        this.t.a(this.J);
        m();
        a(false);
        this.n.a();
        int[] iArr = this.aB;
        if (k(iArr[0], iArr[1])) {
            c(0, 0);
        }
        M();
        K();
    }

    private String a(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0056  */
    private void a(float f2, float f3, float f4, float f5) {
        boolean z2;
        boolean z3 = true;
        if (f3 < 0.0f) {
            g();
            androidx.core.widget.d.a(this.af, (-f3) / ((float) getWidth()), 1.0f - (f4 / ((float) getHeight())));
        } else if (f3 > 0.0f) {
            h();
            androidx.core.widget.d.a(this.ah, f3 / ((float) getWidth()), f4 / ((float) getHeight()));
        } else {
            z2 = false;
            if (f5 >= 0.0f) {
                i();
                androidx.core.widget.d.a(this.ag, (-f5) / ((float) getHeight()), f2 / ((float) getWidth()));
            } else if (f5 > 0.0f) {
                j();
                androidx.core.widget.d.a(this.ai, f5 / ((float) getHeight()), 1.0f - (f2 / ((float) getWidth())));
            } else {
                z3 = z2;
            }
            if (!z3 || f3 != 0.0f || f5 != 0.0f) {
                androidx.core.g.u.d(this);
            }
            return;
        }
        z2 = true;
        if (f5 >= 0.0f) {
        }
        if (!z3) {
        }
        androidx.core.g.u.d(this);
    }

    private void a(long j2, w wVar, w wVar2) {
        int b2 = this.m.b();
        for (int i2 = 0; i2 < b2; i2++) {
            w e2 = e(this.m.b(i2));
            if (e2 != wVar && a(e2) == j2) {
                a aVar = this.s;
                if (aVar == null || !aVar.c()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + e2 + " \n View Holder 2:" + wVar + b());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + e2 + " \n View Holder 2:" + wVar + b());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + wVar2 + " cannot be found but it is necessary for " + wVar + b());
    }

    private void a(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        Constructor<? extends U> constructor;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                String a2 = a(context, trim);
                try {
                    Class<? extends U> asSubclass = Class.forName(a2, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(i.class);
                    Object[] objArr = null;
                    try {
                        constructor = asSubclass.getConstructor(d);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                    } catch (NoSuchMethodException e2) {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((i) constructor.newInstance(objArr));
                } catch (NoSuchMethodException e3) {
                    e3.initCause(e2);
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + a2, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + a2, e4);
                } catch (InvocationTargetException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e6);
                } catch (IllegalAccessException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + a2, e7);
                } catch (ClassCastException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + a2, e8);
                }
            }
        }
    }

    static void a(View view, Rect rect) {
        j jVar = (j) view.getLayoutParams();
        Rect rect2 = jVar.d;
        rect.set((view.getLeft() - rect2.left) - jVar.leftMargin, (view.getTop() - rect2.top) - jVar.topMargin, view.getRight() + rect2.right + jVar.rightMargin, view.getBottom() + rect2.bottom + jVar.bottomMargin);
    }

    private void a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.q.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof j) {
            j jVar = (j) layoutParams;
            if (!jVar.e) {
                Rect rect = jVar.d;
                this.q.left -= rect.left;
                this.q.right += rect.right;
                this.q.top -= rect.top;
                this.q.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.q);
            offsetRectIntoDescendantCoords(view, this.q);
        }
        this.t.a(this, view, this.q, !this.z, view2 == null);
    }

    private void a(a aVar, boolean z2, boolean z3) {
        a aVar2 = this.s;
        if (aVar2 != null) {
            aVar2.b((c) this.e);
            this.s.b(this);
        }
        if (!z2 || z3) {
            d();
        }
        this.l.a();
        a aVar3 = this.s;
        this.s = aVar;
        if (aVar != null) {
            aVar.a((c) this.e);
            aVar.a(this);
        }
        i iVar = this.t;
        if (iVar != null) {
            iVar.a(aVar3, this.s);
        }
        this.k.a(aVar3, this.s, z2);
        this.J.f = true;
    }

    private void a(w wVar, w wVar2, f.c cVar, f.c cVar2, boolean z2, boolean z3) {
        wVar.c(false);
        if (z2) {
            e(wVar);
        }
        if (wVar != wVar2) {
            if (z3) {
                e(wVar2);
            }
            wVar.h = wVar2;
            e(wVar);
            this.k.c(wVar);
            wVar2.c(false);
            wVar2.i = wVar;
        }
        if (this.F.a(wVar, wVar2, cVar, cVar2)) {
            p();
        }
    }

    private void a(int[] iArr) {
        int b2 = this.m.b();
        if (b2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < b2; i4++) {
            w e2 = e(this.m.b(i4));
            if (!e2.e()) {
                int g2 = e2.g();
                if (g2 < i3) {
                    i3 = g2;
                }
                if (g2 > i2) {
                    i2 = g2;
                }
            }
        }
        iArr[0] = i3;
        iArr[1] = i2;
    }

    private boolean a(MotionEvent motionEvent) {
        m mVar = this.T;
        if (mVar != null) {
            mVar.b(this, motionEvent);
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.T = null;
            }
            return true;
        } else if (motionEvent.getAction() == 0) {
            return false;
        } else {
            return b(motionEvent);
        }
    }

    private boolean a(View view, View view2, int i2) {
        if (view2 == null || view2 == this || c(view2) == null) {
            return false;
        }
        if (view == null || c(view) == null) {
            return true;
        }
        this.q.set(0, 0, view.getWidth(), view.getHeight());
        this.R.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.q);
        offsetDescendantRectToMyCoords(view2, this.R);
        char c2 = 65535;
        int i3 = this.t.x() == 1 ? -1 : 1;
        int i4 = ((this.q.left < this.R.left || this.q.right <= this.R.left) && this.q.right < this.R.right) ? 1 : ((this.q.right > this.R.right || this.q.left >= this.R.right) && this.q.left > this.R.left) ? -1 : 0;
        if ((this.q.top < this.R.top || this.q.bottom <= this.R.top) && this.q.bottom < this.R.bottom) {
            c2 = 1;
        } else if ((this.q.bottom <= this.R.bottom && this.q.top < this.R.bottom) || this.q.top <= this.R.top) {
            c2 = 0;
        }
        if (i2 == 1) {
            return c2 < 0 || (c2 == 0 && i4 * i3 <= 0);
        }
        if (i2 == 2) {
            return c2 > 0 || (c2 == 0 && i4 * i3 >= 0);
        }
        if (i2 == 17) {
            return i4 < 0;
        }
        if (i2 == 33) {
            return c2 < 0;
        }
        if (i2 == 66) {
            return i4 > 0;
        }
        if (i2 == 130) {
            return c2 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i2 + b());
    }

    private boolean b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.S.size();
        int i2 = 0;
        while (i2 < size) {
            m mVar = this.S.get(i2);
            if (!mVar.a(this, motionEvent) || action == 3) {
                i2++;
            } else {
                this.T = mVar;
                return true;
            }
        }
        return false;
    }

    private void c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.ak) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.ak = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.ao = x2;
            this.am = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.ap = y2;
            this.an = y2;
        }
    }

    static void c(w wVar) {
        if (wVar.f917b != null) {
            View view = (View) wVar.f917b.get();
            while (view != null) {
                if (view != wVar.f916a) {
                    ViewParent parent = view.getParent();
                    view = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            wVar.f917b = null;
        }
    }

    static w e(View view) {
        if (view == null) {
            return null;
        }
        return ((j) view.getLayoutParams()).c;
    }

    private void e(w wVar) {
        View view = wVar.f916a;
        boolean z2 = view.getParent() == this;
        this.k.c(b(view));
        if (wVar.u()) {
            this.m.a(view, -1, view.getLayoutParams(), true);
        } else if (!z2) {
            this.m.a(view, true);
        } else {
            this.m.d(view);
        }
    }

    private androidx.core.g.l getScrollingChildHelper() {
        if (this.aC == null) {
            this.aC = new androidx.core.g.l(this);
        }
        return this.aC;
    }

    private boolean k(int i2, int i3) {
        a(this.aB);
        int[] iArr = this.aB;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    static RecyclerView l(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView l2 = l(viewGroup.getChildAt(i2));
            if (l2 != null) {
                return l2;
            }
        }
        return null;
    }

    private int o(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    @SuppressLint({"InlinedApi"})
    private void z() {
        if (androidx.core.g.u.a(this) == 0) {
            androidx.core.g.u.a((View) this, 8);
        }
    }

    /* access modifiers changed from: package-private */
    public long a(w wVar) {
        return this.s.c() ? wVar.j() : (long) wVar.c;
    }

    public View a(float f2, float f3) {
        for (int b2 = this.m.b() - 1; b2 >= 0; b2--) {
            View b3 = this.m.b(b2);
            float translationX = b3.getTranslationX();
            float translationY = b3.getTranslationY();
            if (f2 >= ((float) b3.getLeft()) + translationX && f2 <= ((float) b3.getRight()) + translationX && f3 >= ((float) b3.getTop()) + translationY && f3 <= ((float) b3.getBottom()) + translationY) {
                return b3;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public w a(int i2, boolean z2) {
        int c2 = this.m.c();
        w wVar = null;
        for (int i3 = 0; i3 < c2; i3++) {
            w e2 = e(this.m.d(i3));
            if (e2 != null && !e2.t()) {
                if (z2) {
                    if (e2.c != i2) {
                        continue;
                    }
                } else if (e2.g() != i2) {
                    continue;
                }
                if (!this.m.c(e2.f916a)) {
                    return e2;
                }
                wVar = e2;
            }
        }
        return wVar;
    }

    public w a(long j2) {
        a aVar = this.s;
        w wVar = null;
        if (aVar != null && aVar.c()) {
            int c2 = this.m.c();
            for (int i2 = 0; i2 < c2; i2++) {
                w e2 = e(this.m.d(i2));
                if (e2 != null && !e2.t() && e2.j() == j2) {
                    if (!this.m.c(e2.f916a)) {
                        return e2;
                    }
                    wVar = e2;
                }
            }
        }
        return wVar;
    }

    public void a() {
        setScrollState(0);
        C();
    }

    /* access modifiers changed from: package-private */
    public void a(int i2) {
        i iVar = this.t;
        if (iVar != null) {
            iVar.l(i2);
        }
        h(i2);
        n nVar = this.ax;
        if (nVar != null) {
            nVar.a(this, i2);
        }
        List<n> list = this.ay;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ay.get(size).a(this, i2);
            }
        }
    }

    public void a(int i2, int i3) {
        a(i2, i3, (Interpolator) null);
    }

    public final void a(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    public void a(int i2, int i3, Interpolator interpolator) {
        a(i2, i3, interpolator, (int) MessageNano.UNSET_ENUM_VALUE);
    }

    public void a(int i2, int i3, Interpolator interpolator, int i4) {
        a(i2, i3, interpolator, i4, false);
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, Interpolator interpolator, int i4, boolean z2) {
        i iVar = this.t;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.B) {
            int i5 = 0;
            if (!iVar.f()) {
                i2 = 0;
            }
            if (!this.t.g()) {
                i3 = 0;
            }
            if (i2 != 0 || i3 != 0) {
                if (i4 == Integer.MIN_VALUE || i4 > 0) {
                    if (z2) {
                        if (i2 != 0) {
                            i5 = 1;
                        }
                        if (i3 != 0) {
                            i5 |= 2;
                        }
                        j(i5, 1);
                    }
                    this.G.a(i2, i3, i4, interpolator);
                    return;
                }
                scrollBy(i2, i3);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, Object obj) {
        int c2 = this.m.c();
        int i4 = i2 + i3;
        for (int i5 = 0; i5 < c2; i5++) {
            View d2 = this.m.d(i5);
            w e2 = e(d2);
            if (e2 != null && !e2.e() && e2.c >= i2 && e2.c < i4) {
                e2.c(2);
                e2.a(obj);
                ((j) d2.getLayoutParams()).e = true;
            }
        }
        this.k.c(i2, i3);
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int c2 = this.m.c();
        for (int i5 = 0; i5 < c2; i5++) {
            w e2 = e(this.m.d(i5));
            if (e2 != null && !e2.e()) {
                if (e2.c >= i4) {
                    e2.a(-i3, z2);
                    this.J.f = true;
                } else if (e2.c >= i2) {
                    e2.a(i2 - 1, -i3, z2);
                    this.J.f = true;
                }
            }
        }
        this.k.a(i2, i3, z2);
        requestLayout();
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, int[] iArr) {
        f();
        l();
        androidx.core.c.a.a("RV Scroll");
        a(this.J);
        int a2 = i2 != 0 ? this.t.a(i2, this.k, this.J) : 0;
        int b2 = i3 != 0 ? this.t.b(i3, this.k, this.J) : 0;
        androidx.core.c.a.a();
        x();
        m();
        a(false);
        if (iArr != null) {
            iArr[0] = a2;
            iArr[1] = b2;
        }
    }

    /* access modifiers changed from: package-private */
    public void a(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + b());
        }
        Resources resources = getContext().getResources();
        new g(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R.dimen.fastscroll_margin));
    }

    public void a(h hVar) {
        a(hVar, -1);
    }

    public void a(h hVar, int i2) {
        i iVar = this.t;
        if (iVar != null) {
            iVar.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.v.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.v.add(hVar);
        } else {
            this.v.add(i2, hVar);
        }
        r();
        requestLayout();
    }

    public void a(m mVar) {
        this.S.add(mVar);
    }

    public void a(n nVar) {
        if (this.ay == null) {
            this.ay = new ArrayList();
        }
        this.ay.add(nVar);
    }

    /* access modifiers changed from: package-private */
    public final void a(t tVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.G.f914a;
            tVar.o = overScroller.getFinalX() - overScroller.getCurrX();
            tVar.p = overScroller.getFinalY() - overScroller.getCurrY();
            return;
        }
        tVar.o = 0;
        tVar.p = 0;
    }

    /* access modifiers changed from: package-private */
    public void a(w wVar, f.c cVar) {
        wVar.a(0, 8192);
        if (this.J.h && wVar.D() && !wVar.t() && !wVar.e()) {
            this.n.a(a(wVar), wVar);
        }
        this.n.a(wVar, cVar);
    }

    /* access modifiers changed from: package-private */
    public void a(w wVar, f.c cVar, f.c cVar2) {
        wVar.c(false);
        if (this.F.b(wVar, cVar, cVar2)) {
            p();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        if (o()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + b());
            }
            throw new IllegalStateException(str);
        } else if (this.ad > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + b()));
        }
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z2) {
        if (this.U < 1) {
            this.U = 1;
        }
        if (!z2 && !this.B) {
            this.A = false;
        }
        if (this.U == 1) {
            if (z2 && this.A && !this.B && this.t != null && this.s != null) {
                q();
            }
            if (!this.B) {
                this.A = false;
            }
        }
        this.U--;
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i2;
        int i9 = i3;
        MotionEvent motionEvent2 = motionEvent;
        e();
        if (this.s != null) {
            int[] iArr = this.O;
            iArr[0] = 0;
            iArr[1] = 0;
            a(i8, i9, iArr);
            int[] iArr2 = this.O;
            int i10 = iArr2[0];
            int i11 = iArr2[1];
            i6 = i11;
            i7 = i10;
            i5 = i8 - i10;
            i4 = i9 - i11;
        } else {
            i7 = 0;
            i6 = 0;
            i5 = 0;
            i4 = 0;
        }
        if (!this.v.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.O;
        iArr3[0] = 0;
        iArr3[1] = 0;
        int i12 = i7;
        a(i7, i6, i5, i4, this.aD, 0, iArr3);
        int[] iArr4 = this.O;
        int i13 = i5 - iArr4[0];
        int i14 = i4 - iArr4[1];
        boolean z2 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i15 = this.ao;
        int[] iArr5 = this.aD;
        this.ao = i15 - iArr5[0];
        this.ap -= iArr5[1];
        int[] iArr6 = this.aE;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent2 != null && !androidx.core.g.h.a(motionEvent2, 8194)) {
                a(motionEvent.getX(), (float) i13, motionEvent.getY(), (float) i14);
            }
            d(i2, i3);
        }
        int i16 = i12;
        if (!(i16 == 0 && i6 == 0)) {
            c(i16, i6);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z2 && i16 == 0 && i6 == 0) ? false : true;
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }

    /* access modifiers changed from: package-private */
    public boolean a(View view) {
        f();
        boolean f2 = this.m.f(view);
        if (f2) {
            w e2 = e(view);
            this.k.c(e2);
            this.k.b(e2);
        }
        a(!f2);
        return f2;
    }

    /* access modifiers changed from: package-private */
    public boolean a(AccessibilityEvent accessibilityEvent) {
        if (!o()) {
            return false;
        }
        int a2 = accessibilityEvent != null ? androidx.core.g.a.b.a(accessibilityEvent) : 0;
        if (a2 == 0) {
            a2 = 0;
        }
        this.W = a2 | this.W;
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean a(w wVar, int i2) {
        if (o()) {
            wVar.o = i2;
            this.P.add(wVar);
            return false;
        }
        androidx.core.g.u.b(wVar.f916a, i2);
        return true;
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        i iVar = this.t;
        if (iVar == null || !iVar.a(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public w b(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return e(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* access modifiers changed from: package-private */
    public String b() {
        return " " + super.toString() + ", adapter:" + this.s + ", layout:" + this.t + ", context:" + getContext();
    }

    public void b(int i2) {
        if (!this.B) {
            a();
            i iVar = this.t;
            if (iVar == null) {
                Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            iVar.e(i2);
            awakenScrollBars();
        }
    }

    public void b(h hVar) {
        i iVar = this.t;
        if (iVar != null) {
            iVar.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.v.remove(hVar);
        if (this.v.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        r();
        requestLayout();
    }

    public void b(m mVar) {
        this.S.remove(mVar);
        if (this.T == mVar) {
            this.T = null;
        }
    }

    public void b(n nVar) {
        List<n> list = this.ay;
        if (list != null) {
            list.remove(nVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void b(w wVar, f.c cVar, f.c cVar2) {
        e(wVar);
        wVar.c(false);
        if (this.F.a(wVar, cVar, cVar2)) {
            p();
        }
    }

    /* access modifiers changed from: package-private */
    public void b(boolean z2) {
        this.ac--;
        if (this.ac < 1) {
            this.ac = 0;
            if (z2) {
                G();
                y();
            }
        }
    }

    public boolean b(int i2, int i3) {
        i iVar = this.t;
        int i4 = 0;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        } else if (this.B) {
            return false;
        } else {
            boolean f2 = iVar.f();
            boolean g2 = this.t.g();
            if (!f2 || Math.abs(i2) < this.as) {
                i2 = 0;
            }
            if (!g2 || Math.abs(i3) < this.as) {
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            float f3 = (float) i2;
            float f4 = (float) i3;
            if (!dispatchNestedPreFling(f3, f4)) {
                boolean z2 = f2 || g2;
                dispatchNestedFling(f3, f4, z2);
                l lVar = this.ar;
                if (lVar != null && lVar.a(i2, i3)) {
                    return true;
                }
                if (z2) {
                    if (f2) {
                        i4 = 1;
                    }
                    if (g2) {
                        i4 |= 2;
                    }
                    j(i4, 1);
                    int i5 = this.at;
                    int max = Math.max(-i5, Math.min(i2, i5));
                    int i6 = this.at;
                    this.G.a(max, Math.max(-i6, Math.min(i3, i6)));
                    return true;
                }
            }
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b(w wVar) {
        f fVar = this.F;
        return fVar == null || fVar.a(wVar, wVar.y());
    }

    public View c(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = (View) parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.l = new a(new a.C0030a() {
            public w a(int i) {
                w a2 = RecyclerView.this.a(i, true);
                if (a2 != null && !RecyclerView.this.m.c(a2.f916a)) {
                    return a2;
                }
                return null;
            }

            public void a(int i, int i2) {
                RecyclerView.this.a(i, i2, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.K = true;
                recyclerView.J.c += i2;
            }

            public void a(int i, int i2, Object obj) {
                RecyclerView.this.a(i, i2, obj);
                RecyclerView.this.L = true;
            }

            public void a(a.b bVar) {
                c(bVar);
            }

            public void b(int i, int i2) {
                RecyclerView.this.a(i, i2, false);
                RecyclerView.this.K = true;
            }

            public void b(a.b bVar) {
                c(bVar);
            }

            public void c(int i, int i2) {
                RecyclerView.this.h(i, i2);
                RecyclerView.this.K = true;
            }

            /* access modifiers changed from: package-private */
            public void c(a.b bVar) {
                int i = bVar.f931a;
                if (i == 1) {
                    RecyclerView.this.t.a(RecyclerView.this, bVar.f932b, bVar.d);
                } else if (i == 2) {
                    RecyclerView.this.t.b(RecyclerView.this, bVar.f932b, bVar.d);
                } else if (i == 4) {
                    RecyclerView.this.t.a(RecyclerView.this, bVar.f932b, bVar.d, bVar.c);
                } else if (i == 8) {
                    RecyclerView.this.t.a(RecyclerView.this, bVar.f932b, bVar.d, 1);
                }
            }

            public void d(int i, int i2) {
                RecyclerView.this.g(i, i2);
                RecyclerView.this.K = true;
            }
        });
    }

    /* access modifiers changed from: package-private */
    public void c(int i2) {
        if (this.t != null) {
            setScrollState(2);
            this.t.e(i2);
            awakenScrollBars();
        }
    }

    /* access modifiers changed from: package-private */
    public void c(int i2, int i3) {
        this.ad++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        i(i2, i3);
        n nVar = this.ax;
        if (nVar != null) {
            nVar.a(this, i2, i3);
        }
        List<n> list = this.ay;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ay.get(size).a(this, i2, i3);
            }
        }
        this.ad--;
    }

    /* access modifiers changed from: package-private */
    public void c(boolean z2) {
        this.E = z2 | this.E;
        this.D = true;
        u();
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof j) && this.t.a((j) layoutParams);
    }

    public int computeHorizontalScrollExtent() {
        i iVar = this.t;
        if (iVar != null && iVar.f()) {
            return this.t.g(this.J);
        }
        return 0;
    }

    public int computeHorizontalScrollOffset() {
        i iVar = this.t;
        if (iVar != null && iVar.f()) {
            return this.t.d(this.J);
        }
        return 0;
    }

    public int computeHorizontalScrollRange() {
        i iVar = this.t;
        if (iVar != null && iVar.f()) {
            return this.t.b(this.J);
        }
        return 0;
    }

    public int computeVerticalScrollExtent() {
        i iVar = this.t;
        if (iVar != null && iVar.g()) {
            return this.t.h(this.J);
        }
        return 0;
    }

    public int computeVerticalScrollOffset() {
        i iVar = this.t;
        if (iVar != null && iVar.g()) {
            return this.t.e(this.J);
        }
        return 0;
    }

    public int computeVerticalScrollRange() {
        i iVar = this.t;
        if (iVar != null && iVar.g()) {
            return this.t.c(this.J);
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public int d(w wVar) {
        if (wVar.b(524) || !wVar.s()) {
            return -1;
        }
        return this.l.c(wVar.c);
    }

    public w d(View view) {
        View c2 = c(view);
        if (c2 == null) {
            return null;
        }
        return b(c2);
    }

    /* access modifiers changed from: package-private */
    public void d() {
        f fVar = this.F;
        if (fVar != null) {
            fVar.d();
        }
        i iVar = this.t;
        if (iVar != null) {
            iVar.c(this.k);
            this.t.b(this.k);
        }
        this.k.a();
    }

    public void d(int i2) {
        if (!this.B) {
            i iVar = this.t;
            if (iVar == null) {
                Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                iVar.a(this, this.J, i2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void d(int i2, int i3) {
        boolean z2;
        EdgeEffect edgeEffect = this.af;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z2 = false;
        } else {
            this.af.onRelease();
            z2 = this.af.isFinished();
        }
        EdgeEffect edgeEffect2 = this.ah;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.ah.onRelease();
            z2 |= this.ah.isFinished();
        }
        EdgeEffect edgeEffect3 = this.ag;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.ag.onRelease();
            z2 |= this.ag.isFinished();
        }
        EdgeEffect edgeEffect4 = this.ai;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.ai.onRelease();
            z2 |= this.ai.isFinished();
        }
        if (z2) {
            androidx.core.g.u.d(this);
        }
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    /* access modifiers changed from: protected */
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    /* access modifiers changed from: protected */
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3;
        super.draw(canvas);
        int size = this.v.size();
        boolean z4 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.v.get(i2).a(canvas, this, this.J);
        }
        EdgeEffect edgeEffect = this.af;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.o ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((float) ((-getHeight()) + paddingBottom), 0.0f);
            EdgeEffect edgeEffect2 = this.af;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.ag;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.o) {
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.ag;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.ah;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.o ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate((float) (-paddingTop), (float) (-width));
            EdgeEffect edgeEffect6 = this.ah;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.ai;
        if (edgeEffect7 == null || edgeEffect7.isFinished()) {
            z3 = z2;
        } else {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.o) {
                canvas.translate((float) ((-getWidth()) + getPaddingRight()), (float) ((-getHeight()) + getPaddingBottom()));
            } else {
                canvas.translate((float) (-getWidth()), (float) (-getHeight()));
            }
            EdgeEffect edgeEffect8 = this.ai;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z3 = z4 | z2;
            canvas.restoreToCount(save4);
        }
        if (!z3 && this.F != null && this.v.size() > 0 && this.F.b()) {
            z3 = true;
        }
        if (z3) {
            androidx.core.g.u.d(this);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public w e(int i2) {
        w wVar = null;
        if (this.D) {
            return null;
        }
        int c2 = this.m.c();
        for (int i3 = 0; i3 < c2; i3++) {
            w e2 = e(this.m.d(i3));
            if (e2 != null && !e2.t() && d(e2) == i2) {
                if (!this.m.c(e2.f916a)) {
                    return e2;
                }
                wVar = e2;
            }
        }
        return wVar;
    }

    /* access modifiers changed from: package-private */
    public void e() {
        if (!this.z || this.D) {
            androidx.core.c.a.a("RV FullInvalidate");
            q();
            androidx.core.c.a.a();
        } else if (this.l.d()) {
            if (this.l.a(4) && !this.l.a(11)) {
                androidx.core.c.a.a("RV PartialInvalidate");
                f();
                l();
                this.l.b();
                if (!this.A) {
                    if (B()) {
                        q();
                    } else {
                        this.l.c();
                    }
                }
                a(true);
                m();
                androidx.core.c.a.a();
            } else if (this.l.d()) {
                androidx.core.c.a.a("RV FullInvalidate");
                q();
                androidx.core.c.a.a();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void e(int i2, int i3) {
        if (i2 < 0) {
            g();
            if (this.af.isFinished()) {
                this.af.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            h();
            if (this.ah.isFinished()) {
                this.ah.onAbsorb(i2);
            }
        }
        if (i3 < 0) {
            i();
            if (this.ag.isFinished()) {
                this.ag.onAbsorb(-i3);
            }
        } else if (i3 > 0) {
            j();
            if (this.ai.isFinished()) {
                this.ai.onAbsorb(i3);
            }
        }
        if (i2 != 0 || i3 != 0) {
            androidx.core.g.u.d(this);
        }
    }

    @Deprecated
    public int f(View view) {
        return g(view);
    }

    /* access modifiers changed from: package-private */
    public void f() {
        this.U++;
        if (this.U == 1 && !this.B) {
            this.A = false;
        }
    }

    public void f(int i2) {
        int b2 = this.m.b();
        for (int i3 = 0; i3 < b2; i3++) {
            this.m.b(i3).offsetTopAndBottom(i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void f(int i2, int i3) {
        setMeasuredDimension(i.a(i2, getPaddingLeft() + getPaddingRight(), androidx.core.g.u.i(this)), i.a(i3, getPaddingTop() + getPaddingBottom(), androidx.core.g.u.j(this)));
    }

    public View focusSearch(View view, int i2) {
        View view2;
        boolean z2;
        View d2 = this.t.d(view, i2);
        if (d2 != null) {
            return d2;
        }
        boolean z3 = this.s != null && this.t != null && !o() && !this.B;
        FocusFinder instance = FocusFinder.getInstance();
        if (!z3 || !(i2 == 2 || i2 == 1)) {
            View findNextFocus = instance.findNextFocus(this, view, i2);
            if (findNextFocus != null || !z3) {
                view2 = findNextFocus;
            } else {
                e();
                if (c(view) == null) {
                    return null;
                }
                f();
                view2 = this.t.a(view, i2, this.k, this.J);
                a(false);
            }
        } else {
            if (this.t.g()) {
                int i3 = i2 == 2 ? 130 : 33;
                z2 = instance.findNextFocus(this, view, i3) == null;
                if (f882b) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.t.f()) {
                int i4 = (this.t.x() == 1) ^ (i2 == 2) ? 66 : 17;
                z2 = instance.findNextFocus(this, view, i4) == null;
                if (f882b) {
                    i2 = i4;
                }
            }
            if (z2) {
                e();
                if (c(view) == null) {
                    return null;
                }
                f();
                this.t.a(view, i2, this.k, this.J);
                a(false);
            }
            view2 = instance.findNextFocus(this, view, i2);
        }
        if (view2 == null || view2.hasFocusable()) {
            return a(view, view2, i2) ? view2 : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        a(view2, (View) null);
        return view;
    }

    public int g(View view) {
        w e2 = e(view);
        if (e2 != null) {
            return e2.h();
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public void g() {
        if (this.af == null) {
            this.af = this.ae.a(this, 0);
            if (this.o) {
                this.af.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.af.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void g(int i2) {
        int b2 = this.m.b();
        for (int i3 = 0; i3 < b2; i3++) {
            this.m.b(i3).offsetLeftAndRight(i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void g(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int c2 = this.m.c();
        if (i2 < i3) {
            i5 = i3;
            i4 = -1;
            i6 = i2;
        } else {
            i5 = i2;
            i6 = i3;
            i4 = 1;
        }
        for (int i7 = 0; i7 < c2; i7++) {
            w e2 = e(this.m.d(i7));
            if (e2 != null && e2.c >= i6 && e2.c <= i5) {
                if (e2.c == i2) {
                    e2.a(i3 - i2, false);
                } else {
                    e2.a(i4, false);
                }
                this.J.f = true;
            }
        }
        this.k.a(i2, i3);
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        i iVar = this.t;
        if (iVar != null) {
            return iVar.a();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + b());
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        i iVar = this.t;
        if (iVar != null) {
            return iVar.a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + b());
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        i iVar = this.t;
        if (iVar != null) {
            return iVar.a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + b());
    }

    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public a getAdapter() {
        return this.s;
    }

    public int getBaseline() {
        i iVar = this.t;
        return iVar != null ? iVar.y() : super.getBaseline();
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        d dVar = this.aA;
        return dVar == null ? super.getChildDrawingOrder(i2, i3) : dVar.a(i2, i3);
    }

    public boolean getClipToPadding() {
        return this.o;
    }

    public o getCompatAccessibilityDelegate() {
        return this.N;
    }

    public e getEdgeEffectFactory() {
        return this.ae;
    }

    public f getItemAnimator() {
        return this.F;
    }

    public int getItemDecorationCount() {
        return this.v.size();
    }

    public i getLayoutManager() {
        return this.t;
    }

    public int getMaxFlingVelocity() {
        return this.at;
    }

    public int getMinFlingVelocity() {
        return this.as;
    }

    /* access modifiers changed from: package-private */
    public long getNanoTime() {
        if (j) {
            return System.nanoTime();
        }
        return 0;
    }

    public l getOnFlingListener() {
        return this.ar;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.aw;
    }

    public o getRecycledViewPool() {
        return this.k.g();
    }

    public int getScrollState() {
        return this.aj;
    }

    public int h(View view) {
        w e2 = e(view);
        if (e2 != null) {
            return e2.g();
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public void h() {
        if (this.ah == null) {
            this.ah = this.ae.a(this, 2);
            if (this.o) {
                this.ah.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.ah.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void h(int i2) {
    }

    /* access modifiers changed from: package-private */
    public void h(int i2, int i3) {
        int c2 = this.m.c();
        for (int i4 = 0; i4 < c2; i4++) {
            w e2 = e(this.m.d(i4));
            if (e2 != null && !e2.e() && e2.c >= i2) {
                e2.a(i3, false);
                this.J.f = true;
            }
        }
        this.k.b(i2, i3);
        requestLayout();
    }

    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().b();
    }

    /* access modifiers changed from: package-private */
    public void i() {
        if (this.ag == null) {
            this.ag = this.ae.a(this, 1);
            if (this.o) {
                this.ag.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.ag.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void i(int i2) {
        getScrollingChildHelper().c(i2);
    }

    public void i(int i2, int i3) {
    }

    public void i(View view) {
    }

    public boolean isAttachedToWindow() {
        return this.w;
    }

    public final boolean isLayoutSuppressed() {
        return this.B;
    }

    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().a();
    }

    /* access modifiers changed from: package-private */
    public void j() {
        if (this.ai == null) {
            this.ai = this.ae.a(this, 3);
            if (this.o) {
                this.ai.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.ai.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void j(View view) {
    }

    public boolean j(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    /* access modifiers changed from: package-private */
    public Rect k(View view) {
        j jVar = (j) view.getLayoutParams();
        if (!jVar.e) {
            return jVar.d;
        }
        if (this.J.a() && (jVar.e() || jVar.c())) {
            return jVar.d;
        }
        Rect rect = jVar.d;
        rect.set(0, 0, 0, 0);
        int size = this.v.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.q.set(0, 0, 0, 0);
            this.v.get(i2).a(this.q, view, this, this.J);
            rect.left += this.q.left;
            rect.top += this.q.top;
            rect.right += this.q.right;
            rect.bottom += this.q.bottom;
        }
        jVar.e = false;
        return rect;
    }

    /* access modifiers changed from: package-private */
    public void k() {
        this.ai = null;
        this.ag = null;
        this.ah = null;
        this.af = null;
    }

    /* access modifiers changed from: package-private */
    public void l() {
        this.ac++;
    }

    /* access modifiers changed from: package-private */
    public void m() {
        b(true);
    }

    /* access modifiers changed from: package-private */
    public void m(View view) {
        w e2 = e(view);
        j(view);
        a aVar = this.s;
        if (!(aVar == null || e2 == null)) {
            aVar.d(e2);
        }
        List<k> list = this.ab;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ab.get(size).b(view);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void n(View view) {
        w e2 = e(view);
        i(view);
        a aVar = this.s;
        if (!(aVar == null || e2 == null)) {
            aVar.c(e2);
        }
        List<k> list = this.ab;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ab.get(size).a(view);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean n() {
        AccessibilityManager accessibilityManager = this.aa;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean o() {
        return this.ac > 0;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004f, code lost:
        if (r0 >= 30.0f) goto L_0x0053;
     */
    public void onAttachedToWindow() {
        float f2;
        super.onAttachedToWindow();
        this.ac = 0;
        boolean z2 = true;
        this.w = true;
        if (!this.z || isLayoutRequested()) {
            z2 = false;
        }
        this.z = z2;
        i iVar = this.t;
        if (iVar != null) {
            iVar.c(this);
        }
        this.M = false;
        if (j) {
            this.H = h.f978a.get();
            if (this.H == null) {
                this.H = new h();
                Display y2 = androidx.core.g.u.y(this);
                if (!isInEditMode() && y2 != null) {
                    f2 = y2.getRefreshRate();
                }
                f2 = 60.0f;
                this.H.d = (long) (1.0E9f / f2);
                h.f978a.set(this.H);
            }
            this.H.a(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f fVar = this.F;
        if (fVar != null) {
            fVar.d();
        }
        a();
        this.w = false;
        i iVar = this.t;
        if (iVar != null) {
            iVar.b(this, this.k);
        }
        this.P.clear();
        removeCallbacks(this.aF);
        this.n.b();
        if (j) {
            h hVar = this.H;
            if (hVar != null) {
                hVar.b(this);
                this.H = null;
            }
        }
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.v.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.v.get(i2).b(canvas, this, this.J);
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float f3;
        if (this.t != null && !this.B && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f3 = this.t.g() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.t.f()) {
                    f2 = motionEvent.getAxisValue(10);
                    if (!(f3 == 0.0f && f2 == 0.0f)) {
                        a((int) (f2 * this.au), (int) (f3 * this.av), motionEvent);
                    }
                }
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    float axisValue = motionEvent.getAxisValue(26);
                    if (this.t.g()) {
                        f3 = -axisValue;
                    } else if (this.t.f()) {
                        f2 = axisValue;
                        f3 = 0.0f;
                        a((int) (f2 * this.au), (int) (f3 * this.av), motionEvent);
                    }
                }
                f3 = 0.0f;
                f2 = 0.0f;
                a((int) (f2 * this.au), (int) (f3 * this.av), motionEvent);
            }
            f2 = 0.0f;
            a((int) (f2 * this.au), (int) (f3 * this.av), motionEvent);
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.B) {
            return false;
        }
        this.T = null;
        if (b(motionEvent)) {
            F();
            return true;
        }
        i iVar = this.t;
        if (iVar == null) {
            return false;
        }
        boolean f2 = iVar.f();
        boolean g2 = this.t.g();
        if (this.al == null) {
            this.al = VelocityTracker.obtain();
        }
        this.al.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.V) {
                this.V = false;
            }
            this.ak = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.ao = x2;
            this.am = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.ap = y2;
            this.an = y2;
            if (this.aj == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                i(1);
            }
            int[] iArr = this.aE;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = f2 ? 1 : 0;
            if (g2) {
                i2 |= 2;
            }
            j(i2, 0);
        } else if (actionMasked == 1) {
            this.al.clear();
            i(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.ak);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ak + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.aj != 1) {
                int i3 = x3 - this.am;
                int i4 = y3 - this.an;
                if (!f2 || Math.abs(i3) <= this.aq) {
                    z2 = false;
                } else {
                    this.ao = x3;
                    z2 = true;
                }
                if (g2 && Math.abs(i4) > this.aq) {
                    this.ap = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            F();
        } else if (actionMasked == 5) {
            this.ak = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.ao = x4;
            this.am = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.ap = y4;
            this.an = y4;
        } else if (actionMasked == 6) {
            c(motionEvent);
        }
        return this.aj == 1;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        androidx.core.c.a.a("RV OnLayout");
        q();
        androidx.core.c.a.a();
        this.z = true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        i iVar = this.t;
        if (iVar == null) {
            f(i2, i3);
            return;
        }
        boolean z2 = false;
        if (iVar.d()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.t.a(this.k, this.J, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (!z2 && this.s != null) {
                if (this.J.d == 1) {
                    N();
                }
                this.t.c(i2, i3);
                this.J.i = true;
                O();
                this.t.d(i2, i3);
                if (this.t.n()) {
                    this.t.c(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.J.i = true;
                    O();
                    this.t.d(i2, i3);
                }
            }
        } else if (this.x) {
            this.t.a(this.k, this.J, i2, i3);
        } else {
            if (this.C) {
                f();
                l();
                I();
                m();
                if (this.J.k) {
                    this.J.g = true;
                } else {
                    this.l.e();
                    this.J.g = false;
                }
                this.C = false;
                a(false);
            } else if (this.J.k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            a aVar = this.s;
            if (aVar != null) {
                this.J.e = aVar.b();
            } else {
                this.J.e = 0;
            }
            f();
            this.t.a(this.k, this.J, i2, i3);
            a(false);
            this.J.g = false;
        }
    }

    /* access modifiers changed from: protected */
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (o()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.f = (SavedState) parcelable;
        super.onRestoreInstanceState(this.f.getSuperState());
        if (this.t != null && this.f.mLayoutState != null) {
            this.t.a(this.f.mLayoutState);
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f;
        if (savedState2 != null) {
            savedState.copyFrom(savedState2);
        } else {
            i iVar = this.t;
            if (iVar != null) {
                savedState.mLayoutState = iVar.e();
            } else {
                savedState.mLayoutState = null;
            }
        }
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 || i3 != i5) {
            k();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00f8  */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        MotionEvent motionEvent2 = motionEvent;
        boolean z3 = false;
        if (this.B || this.V) {
            return false;
        }
        if (a(motionEvent)) {
            F();
            return true;
        }
        i iVar = this.t;
        if (iVar == null) {
            return false;
        }
        boolean f2 = iVar.f();
        boolean g2 = this.t.g();
        if (this.al == null) {
            this.al = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.aE;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.aE;
        obtain.offsetLocation((float) iArr2[0], (float) iArr2[1]);
        if (actionMasked == 0) {
            this.ak = motionEvent2.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.ao = x2;
            this.am = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.ap = y2;
            this.an = y2;
            int i2 = f2 ? 1 : 0;
            if (g2) {
                i2 |= 2;
            }
            j(i2, 0);
        } else if (actionMasked == 1) {
            this.al.addMovement(obtain);
            this.al.computeCurrentVelocity(1000, (float) this.at);
            float f3 = f2 ? -this.al.getXVelocity(this.ak) : 0.0f;
            float f4 = g2 ? -this.al.getYVelocity(this.ak) : 0.0f;
            if ((f3 == 0.0f && f4 == 0.0f) || !b((int) f3, (int) f4)) {
                setScrollState(0);
            }
            E();
            z3 = true;
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent2.findPointerIndex(this.ak);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ak + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x3 = (int) (motionEvent2.getX(findPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent2.getY(findPointerIndex) + 0.5f);
            int i3 = this.ao - x3;
            int i4 = this.ap - y3;
            if (this.aj != 1) {
                if (f2) {
                    i3 = i3 > 0 ? Math.max(0, i3 - this.aq) : Math.min(0, i3 + this.aq);
                    if (i3 != 0) {
                        z2 = true;
                        if (g2) {
                            i4 = i4 > 0 ? Math.max(0, i4 - this.aq) : Math.min(0, i4 + this.aq);
                            if (i4 != 0) {
                                z2 = true;
                            }
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                }
                z2 = false;
                if (g2) {
                }
                if (z2) {
                }
            }
            int i5 = i3;
            int i6 = i4;
            if (this.aj == 1) {
                int[] iArr3 = this.O;
                iArr3[0] = 0;
                iArr3[1] = 0;
                if (a(f2 ? i5 : 0, g2 ? i6 : 0, this.O, this.aD, 0)) {
                    int[] iArr4 = this.O;
                    i5 -= iArr4[0];
                    i6 -= iArr4[1];
                    int[] iArr5 = this.aE;
                    int i7 = iArr5[0];
                    int[] iArr6 = this.aD;
                    iArr5[0] = i7 + iArr6[0];
                    iArr5[1] = iArr5[1] + iArr6[1];
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int i8 = i6;
                int[] iArr7 = this.aD;
                this.ao = x3 - iArr7[0];
                this.ap = y3 - iArr7[1];
                if (a(f2 ? i5 : 0, g2 ? i8 : 0, motionEvent2)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                if (!(this.H == null || (i5 == 0 && i8 == 0))) {
                    this.H.a(this, i5, i8);
                }
            }
        } else if (actionMasked == 3) {
            F();
        } else if (actionMasked == 5) {
            this.ak = motionEvent2.getPointerId(actionIndex);
            int x4 = (int) (motionEvent2.getX(actionIndex) + 0.5f);
            this.ao = x4;
            this.am = x4;
            int y4 = (int) (motionEvent2.getY(actionIndex) + 0.5f);
            this.ap = y4;
            this.an = y4;
        } else if (actionMasked == 6) {
            c(motionEvent);
        }
        if (!z3) {
            this.al.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    /* access modifiers changed from: package-private */
    public void p() {
        if (!this.M && this.w) {
            androidx.core.g.u.a((View) this, this.aF);
            this.M = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void q() {
        if (this.s == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.t == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            t tVar = this.J;
            tVar.i = false;
            if (tVar.d == 1) {
                N();
                this.t.f(this);
                O();
            } else if (!this.l.f() && this.t.C() == getWidth() && this.t.D() == getHeight()) {
                this.t.f(this);
            } else {
                this.t.f(this);
                O();
            }
            P();
        }
    }

    /* access modifiers changed from: package-private */
    public void r() {
        int c2 = this.m.c();
        for (int i2 = 0; i2 < c2; i2++) {
            ((j) this.m.d(i2).getLayoutParams()).e = true;
        }
        this.k.j();
    }

    /* access modifiers changed from: protected */
    public void removeDetachedView(View view, boolean z2) {
        w e2 = e(view);
        if (e2 != null) {
            if (e2.u()) {
                e2.p();
            } else if (!e2.e()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + e2 + b());
            }
        }
        view.clearAnimation();
        m(view);
        super.removeDetachedView(view, z2);
    }

    public void requestChildFocus(View view, View view2) {
        if (!this.t.a(this, this.J, view, view2) && view2 != null) {
            a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.t.a(this, view, rect, z2);
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.S.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.S.get(i2).a(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    public void requestLayout() {
        if (this.U != 0 || this.B) {
            this.A = true;
        } else {
            super.requestLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public void s() {
        int c2 = this.m.c();
        for (int i2 = 0; i2 < c2; i2++) {
            w e2 = e(this.m.d(i2));
            if (!e2.e()) {
                e2.d();
            }
        }
    }

    public void scrollBy(int i2, int i3) {
        i iVar = this.t;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.B) {
            boolean f2 = iVar.f();
            boolean g2 = this.t.g();
            if (f2 || g2) {
                if (!f2) {
                    i2 = 0;
                }
                if (!g2) {
                    i3 = 0;
                }
                a(i2, i3, (MotionEvent) null);
            }
        }
    }

    public void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!a(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(o oVar) {
        this.N = oVar;
        androidx.core.g.u.a((View) this, (androidx.core.g.a) this.N);
    }

    public void setAdapter(a aVar) {
        setLayoutFrozen(false);
        a(aVar, false, true);
        c(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(d dVar) {
        if (dVar != this.aA) {
            this.aA = dVar;
            setChildrenDrawingOrderEnabled(this.aA != null);
        }
    }

    public void setClipToPadding(boolean z2) {
        if (z2 != this.o) {
            k();
        }
        this.o = z2;
        super.setClipToPadding(z2);
        if (this.z) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(e eVar) {
        androidx.core.f.e.a(eVar);
        this.ae = eVar;
        k();
    }

    public void setHasFixedSize(boolean z2) {
        this.x = z2;
    }

    public void setItemAnimator(f fVar) {
        f fVar2 = this.F;
        if (fVar2 != null) {
            fVar2.d();
            this.F.a((f.b) null);
        }
        this.F = fVar;
        f fVar3 = this.F;
        if (fVar3 != null) {
            fVar3.a(this.az);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.k.a(i2);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(i iVar) {
        if (iVar != this.t) {
            a();
            if (this.t != null) {
                f fVar = this.F;
                if (fVar != null) {
                    fVar.d();
                }
                this.t.c(this.k);
                this.t.b(this.k);
                this.k.a();
                if (this.w) {
                    this.t.b(this, this.k);
                }
                this.t.b((RecyclerView) null);
                this.t = null;
            } else {
                this.k.a();
            }
            this.m.a();
            this.t = iVar;
            if (iVar != null) {
                if (iVar.q == null) {
                    this.t.b(this);
                    if (this.w) {
                        this.t.c(this);
                    }
                } else {
                    throw new IllegalArgumentException("LayoutManager " + iVar + " is already attached to a RecyclerView:" + iVar.q.b());
                }
            }
            this.k.b();
            requestLayout();
        }
    }

    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition((LayoutTransition) null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().a(z2);
    }

    public void setOnFlingListener(l lVar) {
        this.ar = lVar;
    }

    @Deprecated
    public void setOnScrollListener(n nVar) {
        this.ax = nVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.aw = z2;
    }

    public void setRecycledViewPool(o oVar) {
        this.k.a(oVar);
    }

    public void setRecyclerListener(q qVar) {
        this.u = qVar;
    }

    /* access modifiers changed from: package-private */
    public void setScrollState(int i2) {
        if (i2 != this.aj) {
            this.aj = i2;
            if (i2 != 2) {
                C();
            }
            a(i2);
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            } else {
                this.aq = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.aq = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(u uVar) {
        this.k.a(uVar);
    }

    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().b(i2);
    }

    public void stopNestedScroll() {
        getScrollingChildHelper().c();
    }

    public final void suppressLayout(boolean z2) {
        if (z2 != this.B) {
            a("Do not suppressLayout in layout or scroll");
            if (!z2) {
                this.B = false;
                if (!(!this.A || this.t == null || this.s == null)) {
                    requestLayout();
                }
                this.A = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.B = true;
            this.V = true;
            a();
        }
    }

    /* access modifiers changed from: package-private */
    public void t() {
        int c2 = this.m.c();
        for (int i2 = 0; i2 < c2; i2++) {
            w e2 = e(this.m.d(i2));
            if (!e2.e()) {
                e2.c();
            }
        }
        this.k.i();
    }

    /* access modifiers changed from: package-private */
    public void u() {
        int c2 = this.m.c();
        for (int i2 = 0; i2 < c2; i2++) {
            w e2 = e(this.m.d(i2));
            if (e2 != null && !e2.e()) {
                e2.c(6);
            }
        }
        r();
        this.k.h();
    }

    public void v() {
        if (this.v.size() != 0) {
            i iVar = this.t;
            if (iVar != null) {
                iVar.a("Cannot invalidate item decorations during a scroll or layout");
            }
            r();
            requestLayout();
        }
    }

    public boolean w() {
        return !this.z || this.D || this.l.d();
    }

    /* access modifiers changed from: package-private */
    public void x() {
        int b2 = this.m.b();
        for (int i2 = 0; i2 < b2; i2++) {
            View b3 = this.m.b(i2);
            w b4 = b(b3);
            if (!(b4 == null || b4.i == null)) {
                View view = b4.i.f916a;
                int left = b3.getLeft();
                int top = b3.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void y() {
        for (int size = this.P.size() - 1; size >= 0; size--) {
            w wVar = this.P.get(size);
            if (wVar.f916a.getParent() == this && !wVar.e()) {
                int i2 = wVar.o;
                if (i2 != -1) {
                    androidx.core.g.u.b(wVar.f916a, i2);
                    wVar.o = -1;
                }
            }
        }
        this.P.clear();
    }
}
