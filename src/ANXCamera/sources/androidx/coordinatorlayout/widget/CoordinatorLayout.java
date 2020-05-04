package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.R;
import androidx.core.f.d;
import androidx.core.g.ac;
import androidx.core.g.n;
import androidx.core.g.p;
import androidx.core.g.q;
import androidx.core.g.u;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout extends ViewGroup implements n {

    /* renamed from: a  reason: collision with root package name */
    static final String f448a;

    /* renamed from: b  reason: collision with root package name */
    static final Class<?>[] f449b = {Context.class, AttributeSet.class};
    static final ThreadLocal<Map<String, Constructor<b>>> c = new ThreadLocal<>();
    static final Comparator<View> d;
    private static final d.a<Rect> f = new d.c(12);
    ViewGroup.OnHierarchyChangeListener e;
    private final List<View> g;
    private final a<View> h;
    private final List<View> i;
    private final List<View> j;
    private final int[] k;
    private Paint l;
    private boolean m;
    private boolean n;
    private int[] o;
    private View p;
    private View q;
    private f r;
    private boolean s;
    private ac t;
    private boolean u;
    private Drawable v;
    private q w;
    private final p x;

    protected static class SavedState extends AbsSavedState {
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
        SparseArray<Parcelable> behaviorStates;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.behaviorStates.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.behaviorStates;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.behaviorStates.keyAt(i2);
                parcelableArr[i2] = this.behaviorStates.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    public interface a {
        b a();
    }

    public static abstract class b<V extends View> {
        public b() {
        }

        public b(Context context, AttributeSet attributeSet) {
        }

        public static Object getTag(View view) {
            return ((e) view.getLayoutParams()).n;
        }

        public static void setTag(View view, Object obj) {
            ((e) view.getLayoutParams()).n = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v) {
            return getScrimOpacity(coordinatorLayout, v) > 0.0f;
        }

        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        public int getScrimColor(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public ac onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v, ac acVar) {
            return acVar;
        }

        public void onAttachedToLayoutParams(e eVar) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                onNestedPreScroll(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                onNestedScroll(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        @Deprecated
        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v, view, view2, i);
            }
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return onStartNestedScroll(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                onStopNestedScroll(coordinatorLayout, v, view);
            }
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    @Deprecated
    @Retention(RetentionPolicy.RUNTIME)
    public @interface c {
        Class<? extends b> a();
    }

    private class d implements ViewGroup.OnHierarchyChangeListener {
        d() {
        }

        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.e != null) {
                CoordinatorLayout.this.e.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.a(2);
            if (CoordinatorLayout.this.e != null) {
                CoordinatorLayout.this.e.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        b f452a;

        /* renamed from: b  reason: collision with root package name */
        boolean f453b = false;
        public int c = 0;
        public int d = 0;
        public int e = -1;
        int f = -1;
        public int g = 0;
        public int h = 0;
        int i;
        int j;
        View k;
        View l;
        final Rect m = new Rect();
        Object n;
        private boolean o;
        private boolean p;
        private boolean q;
        private boolean r;

        public e(int i2, int i3) {
            super(i2, i3);
        }

        e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.c = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.d = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.e = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.g = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f453b = obtainStyledAttributes.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
            if (this.f453b) {
                this.f452a = CoordinatorLayout.a(context, attributeSet, obtainStyledAttributes.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            b bVar = this.f452a;
            if (bVar != null) {
                bVar.onAttachedToLayoutParams(this);
            }
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public e(e eVar) {
            super(eVar);
        }

        private void a(View view, CoordinatorLayout coordinatorLayout) {
            this.k = coordinatorLayout.findViewById(this.f);
            View view2 = this.k;
            if (view2 != null) {
                if (view2 != coordinatorLayout) {
                    ViewParent parent = view2.getParent();
                    while (parent != coordinatorLayout && parent != null) {
                        if (parent != view) {
                            if (parent instanceof View) {
                                view2 = (View) parent;
                            }
                            parent = parent.getParent();
                        } else if (coordinatorLayout.isInEditMode()) {
                            this.l = null;
                            this.k = null;
                            return;
                        } else {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                    }
                    this.l = view2;
                } else if (coordinatorLayout.isInEditMode()) {
                    this.l = null;
                    this.k = null;
                } else {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
            } else if (coordinatorLayout.isInEditMode()) {
                this.l = null;
                this.k = null;
            } else {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f) + " to anchor view " + view);
            }
        }

        private boolean a(View view, int i2) {
            int a2 = androidx.core.g.c.a(((e) view.getLayoutParams()).g, i2);
            return a2 != 0 && (androidx.core.g.c.a(this.h, i2) & a2) == a2;
        }

        private boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.k.getId() != this.f) {
                return false;
            }
            View view2 = this.k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.l = null;
                    this.k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.l = view2;
            return true;
        }

        public b a() {
            return this.f452a;
        }

        /* access modifiers changed from: package-private */
        public void a(int i2) {
            a(i2, false);
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, boolean z) {
            if (i2 == 0) {
                this.p = z;
            } else if (i2 == 1) {
                this.q = z;
            }
        }

        /* access modifiers changed from: package-private */
        public void a(Rect rect) {
            this.m.set(rect);
        }

        public void a(b bVar) {
            b bVar2 = this.f452a;
            if (bVar2 != bVar) {
                if (bVar2 != null) {
                    bVar2.onDetachedFromLayoutParams();
                }
                this.f452a = bVar;
                this.n = null;
                this.f453b = true;
                if (bVar != null) {
                    bVar.onAttachedToLayoutParams(this);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void a(boolean z) {
            this.r = z;
        }

        /* access modifiers changed from: package-private */
        public boolean a(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.o;
            if (z) {
                return true;
            }
            b bVar = this.f452a;
            boolean blocksInteractionBelow = (bVar != null ? bVar.blocksInteractionBelow(coordinatorLayout, view) : false) | z;
            this.o = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        /* access modifiers changed from: package-private */
        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 != this.l && !a(view2, u.f(coordinatorLayout))) {
                b bVar = this.f452a;
                if (bVar == null || !bVar.layoutDependsOn(coordinatorLayout, view, view2)) {
                    return false;
                }
            }
            return true;
        }

        /* access modifiers changed from: package-private */
        public Rect b() {
            return this.m;
        }

        /* access modifiers changed from: package-private */
        public View b(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f == -1) {
                this.l = null;
                this.k = null;
                return null;
            }
            if (this.k == null || !b(view, coordinatorLayout)) {
                a(view, coordinatorLayout);
            }
            return this.k;
        }

        /* access modifiers changed from: package-private */
        public boolean b(int i2) {
            if (i2 == 0) {
                return this.p;
            }
            if (i2 != 1) {
                return false;
            }
            return this.q;
        }

        /* access modifiers changed from: package-private */
        public boolean c() {
            return this.k == null && this.f != -1;
        }

        /* access modifiers changed from: package-private */
        public boolean d() {
            if (this.f452a == null) {
                this.o = false;
            }
            return this.o;
        }

        /* access modifiers changed from: package-private */
        public void e() {
            this.o = false;
        }

        /* access modifiers changed from: package-private */
        public boolean f() {
            return this.r;
        }

        /* access modifiers changed from: package-private */
        public void g() {
            this.r = false;
        }
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        public boolean onPreDraw() {
            CoordinatorLayout.this.a(0);
            return true;
        }
    }

    static class g implements Comparator<View> {
        g() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            float v = u.v(view);
            float v2 = u.v(view2);
            if (v > v2) {
                return -1;
            }
            return v < v2 ? 1 : 0;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        Package packageR = CoordinatorLayout.class.getPackage();
        f448a = packageR != null ? packageR.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            d = new g();
        } else {
            d = null;
        }
    }

    public CoordinatorLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.g = new ArrayList();
        this.h = new a<>();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new int[2];
        this.x = new p(this);
        TypedArray obtainStyledAttributes = i2 == 0 ? context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, 0, R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i2, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.o = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.o.length;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr = this.o;
                iArr[i3] = (int) (((float) iArr[i3]) * f2);
            }
        }
        this.v = obtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        g();
        super.setOnHierarchyChangeListener(new d());
    }

    private static int a(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    static b a(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(f448a)) {
            str = f448a + '.' + str;
        }
        try {
            Map map = c.get();
            if (map == null) {
                map = new HashMap();
                c.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(f449b);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (b) constructor.newInstance(new Object[]{context, attributeSet});
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    private static void a(Rect rect) {
        rect.setEmpty();
        f.a(rect);
    }

    private void a(View view, int i2, int i3) {
        e eVar = (e) view.getLayoutParams();
        int a2 = androidx.core.g.c.a(d(eVar.c), i3);
        int i4 = a2 & 7;
        int i5 = a2 & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i3 == 1) {
            i2 = width - i2;
        }
        int b2 = b(i2) - measuredWidth;
        int i6 = 0;
        if (i4 == 1) {
            b2 += measuredWidth / 2;
        } else if (i4 == 5) {
            b2 += measuredWidth;
        }
        if (i5 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i5 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + eVar.leftMargin, Math.min(b2, ((width - getPaddingRight()) - measuredWidth) - eVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + eVar.topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - eVar.bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    private void a(View view, int i2, Rect rect, Rect rect2, e eVar, int i3, int i4) {
        int a2 = androidx.core.g.c.a(e(eVar.c), i2);
        int a3 = androidx.core.g.c.a(c(eVar.d), i2);
        int i5 = a2 & 7;
        int i6 = a2 & 112;
        int i7 = a3 & 7;
        int i8 = a3 & 112;
        int width = i7 != 1 ? i7 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i8 != 16 ? i8 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i5 == 1) {
            width -= i3 / 2;
        } else if (i5 != 5) {
            width -= i3;
        }
        if (i6 == 16) {
            height -= i4 / 2;
        } else if (i6 != 80) {
            height -= i4;
        }
        rect2.set(width, height, i3 + width, i4 + height);
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00fe  */
    private void a(View view, Rect rect, int i2) {
        boolean z;
        boolean z2;
        if (u.u(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            e eVar = (e) view.getLayoutParams();
            b a2 = eVar.a();
            Rect e2 = e();
            Rect e3 = e();
            e3.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (a2 == null || !a2.getInsetDodgeRect(this, view, e2)) {
                e2.set(e3);
            } else if (!e3.contains(e2)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + e2.toShortString() + " | Bounds:" + e3.toShortString());
            }
            a(e3);
            if (e2.isEmpty()) {
                a(e2);
                return;
            }
            int a3 = androidx.core.g.c.a(eVar.h, i2);
            if ((a3 & 48) == 48) {
                int i3 = (e2.top - eVar.topMargin) - eVar.j;
                if (i3 < rect.top) {
                    f(view, rect.top - i3);
                    z = true;
                    if ((a3 & 80) == 80) {
                        int height = ((getHeight() - e2.bottom) - eVar.bottomMargin) + eVar.j;
                        if (height < rect.bottom) {
                            f(view, height - rect.bottom);
                            z = true;
                        }
                    }
                    if (!z) {
                        f(view, 0);
                    }
                    if ((a3 & 3) == 3) {
                        int i4 = (e2.left - eVar.leftMargin) - eVar.i;
                        if (i4 < rect.left) {
                            e(view, rect.left - i4);
                            z2 = true;
                            if ((a3 & 5) == 5) {
                                int width = ((getWidth() - e2.right) - eVar.rightMargin) + eVar.i;
                                if (width < rect.right) {
                                    e(view, width - rect.right);
                                    z2 = true;
                                }
                            }
                            if (!z2) {
                                e(view, 0);
                            }
                            a(e2);
                        }
                    }
                    z2 = false;
                    if ((a3 & 5) == 5) {
                    }
                    if (!z2) {
                    }
                    a(e2);
                }
            }
            z = false;
            if ((a3 & 80) == 80) {
            }
            if (!z) {
            }
            if ((a3 & 3) == 3) {
            }
            z2 = false;
            if ((a3 & 5) == 5) {
            }
            if (!z2) {
            }
            a(e2);
        }
    }

    private void a(View view, View view2, int i2) {
        Rect e2 = e();
        Rect e3 = e();
        try {
            a(view2, e2);
            a(view, i2, e2, e3);
            view.layout(e3.left, e3.top, e3.right, e3.bottom);
        } finally {
            a(e2);
            a(e3);
        }
    }

    private void a(e eVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + eVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - eVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + eVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - eVar.bottomMargin));
        rect.set(max, max2, i2 + max, i3 + max2);
    }

    private void a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = d;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            b a2 = ((e) childAt.getLayoutParams()).a();
            if (a2 != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    a2.onInterceptTouchEvent(this, childAt, obtain);
                } else {
                    a2.onTouchEvent(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((e) getChildAt(i3).getLayoutParams()).e();
        }
        this.p = null;
        this.m = false;
    }

    private boolean a(MotionEvent motionEvent, int i2) {
        MotionEvent motionEvent2 = motionEvent;
        int i3 = i2;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.i;
        a(list);
        int size = list.size();
        boolean z = false;
        boolean z2 = false;
        MotionEvent motionEvent3 = null;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            e eVar = (e) view.getLayoutParams();
            b a2 = eVar.a();
            boolean z3 = true;
            if ((!z && !z2) || actionMasked == 0) {
                if (!z && a2 != null) {
                    if (i3 == 0) {
                        z = a2.onInterceptTouchEvent(this, view, motionEvent2);
                    } else if (i3 == 1) {
                        z = a2.onTouchEvent(this, view, motionEvent2);
                    }
                    if (z) {
                        this.p = view;
                    }
                }
                boolean d2 = eVar.d();
                boolean a3 = eVar.a(this, view);
                if (!a3 || d2) {
                    z3 = false;
                }
                if (a3 && !z3) {
                    break;
                }
                z2 = z3;
            } else if (a2 != null) {
                if (motionEvent3 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent3 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i3 == 0) {
                    a2.onInterceptTouchEvent(this, view, motionEvent3);
                } else if (i3 == 1) {
                    a2.onTouchEvent(this, view, motionEvent3);
                }
            }
        }
        list.clear();
        return z;
    }

    private int b(int i2) {
        int[] iArr = this.o;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i2);
            return 0;
        } else if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        } else {
            Log.e("CoordinatorLayout", "Keyline index " + i2 + " out of range for " + this);
            return 0;
        }
    }

    private ac b(ac acVar) {
        if (acVar.e()) {
            return acVar;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (u.q(childAt)) {
                b a2 = ((e) childAt.getLayoutParams()).a();
                if (a2 != null) {
                    acVar = a2.onApplyWindowInsets(this, childAt, acVar);
                    if (acVar.e()) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return acVar;
    }

    private boolean b(View view) {
        return this.h.c(view);
    }

    private static int c(int i2) {
        if ((i2 & 7) == 0) {
            i2 |= 8388611;
        }
        return (i2 & 112) == 0 ? i2 | 48 : i2;
    }

    private static int d(int i2) {
        if (i2 == 0) {
            return 8388661;
        }
        return i2;
    }

    private void d(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        Rect e2 = e();
        e2.set(getPaddingLeft() + eVar.leftMargin, getPaddingTop() + eVar.topMargin, (getWidth() - getPaddingRight()) - eVar.rightMargin, (getHeight() - getPaddingBottom()) - eVar.bottomMargin);
        if (this.t != null && u.q(this) && !u.q(view)) {
            e2.left += this.t.a();
            e2.top += this.t.b();
            e2.right -= this.t.c();
            e2.bottom -= this.t.d();
        }
        Rect e3 = e();
        androidx.core.g.c.a(c(eVar.c), view.getMeasuredWidth(), view.getMeasuredHeight(), e2, e3, i2);
        view.layout(e3.left, e3.top, e3.right, e3.bottom);
        a(e2);
        a(e3);
    }

    private static int e(int i2) {
        if (i2 == 0) {
            return 17;
        }
        return i2;
    }

    private static Rect e() {
        Rect a2 = f.a();
        return a2 == null ? new Rect() : a2;
    }

    private void e(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.i != i2) {
            u.d(view, i2 - eVar.i);
            eVar.i = i2;
        }
    }

    private void f() {
        this.g.clear();
        this.h.a();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            e a2 = a(childAt);
            a2.b(this, childAt);
            this.h.a(childAt);
            for (int i3 = 0; i3 < childCount; i3++) {
                if (i3 != i2) {
                    View childAt2 = getChildAt(i3);
                    if (a2.a(this, childAt, childAt2)) {
                        if (!this.h.b(childAt2)) {
                            this.h.a(childAt2);
                        }
                        this.h.a(childAt2, childAt);
                    }
                }
            }
        }
        this.g.addAll(this.h.b());
        Collections.reverse(this.g);
    }

    private void f(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.j != i2) {
            u.c(view, i2 - eVar.j);
            eVar.j = i2;
        }
    }

    private void g() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (u.q(this)) {
                if (this.w == null) {
                    this.w = new q() {
                        public ac a(View view, ac acVar) {
                            return CoordinatorLayout.this.a(acVar);
                        }
                    };
                }
                u.a((View) this, this.w);
                setSystemUiVisibility(1280);
                return;
            }
            u.a((View) this, (q) null);
        }
    }

    /* renamed from: a */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* access modifiers changed from: package-private */
    public e a(View view) {
        e eVar = (e) view.getLayoutParams();
        if (!eVar.f453b) {
            if (view instanceof a) {
                b a2 = ((a) view).a();
                if (a2 == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                eVar.a(a2);
                eVar.f453b = true;
            } else {
                c cVar = null;
                for (Class cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    cVar = (c) cls.getAnnotation(c.class);
                    if (cVar != null) {
                        break;
                    }
                }
                if (cVar != null) {
                    try {
                        eVar.a((b) cVar.a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e2) {
                        Log.e("CoordinatorLayout", "Default behavior class " + cVar.a().getName() + " could not be instantiated. Did you forget" + " a default constructor?", e2);
                    }
                }
                eVar.f453b = true;
            }
        }
        return eVar;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public final ac a(ac acVar) {
        if (androidx.core.f.c.a(this.t, acVar)) {
            return acVar;
        }
        this.t = acVar;
        boolean z = true;
        this.u = acVar != null && acVar.b() > 0;
        if (this.u || getBackground() != null) {
            z = false;
        }
        setWillNotDraw(z);
        ac b2 = b(acVar);
        requestLayout();
        return b2;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            } else if (b(getChildAt(i2))) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (z == this.s) {
            return;
        }
        if (z) {
            b();
        } else {
            c();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2) {
        boolean z;
        int i3 = i2;
        int f2 = u.f(this);
        int size = this.g.size();
        Rect e2 = e();
        Rect e3 = e();
        Rect e4 = e();
        for (int i4 = 0; i4 < size; i4++) {
            View view = this.g.get(i4);
            e eVar = (e) view.getLayoutParams();
            if (i3 != 0 || view.getVisibility() != 8) {
                for (int i5 = 0; i5 < i4; i5++) {
                    if (eVar.l == this.g.get(i5)) {
                        c(view, f2);
                    }
                }
                a(view, true, e3);
                if (eVar.g != 0 && !e3.isEmpty()) {
                    int a2 = androidx.core.g.c.a(eVar.g, f2);
                    int i6 = a2 & 112;
                    if (i6 == 48) {
                        e2.top = Math.max(e2.top, e3.bottom);
                    } else if (i6 == 80) {
                        e2.bottom = Math.max(e2.bottom, getHeight() - e3.top);
                    }
                    int i7 = a2 & 7;
                    if (i7 == 3) {
                        e2.left = Math.max(e2.left, e3.right);
                    } else if (i7 == 5) {
                        e2.right = Math.max(e2.right, getWidth() - e3.left);
                    }
                }
                if (eVar.h != 0 && view.getVisibility() == 0) {
                    a(view, e2, f2);
                }
                if (i3 != 2) {
                    c(view, e4);
                    if (!e4.equals(e3)) {
                        b(view, e3);
                    }
                }
                for (int i8 = i4 + 1; i8 < size; i8++) {
                    View view2 = this.g.get(i8);
                    e eVar2 = (e) view2.getLayoutParams();
                    b a3 = eVar2.a();
                    if (a3 != null && a3.layoutDependsOn(this, view2, view)) {
                        if (i3 != 0 || !eVar2.f()) {
                            if (i3 != 2) {
                                z = a3.onDependentViewChanged(this, view2, view);
                            } else {
                                a3.onDependentViewRemoved(this, view2, view);
                                z = true;
                            }
                            if (i3 == 1) {
                                eVar2.a(z);
                            }
                        } else {
                            eVar2.g();
                        }
                    }
                }
            }
        }
        a(e2);
        a(e3);
        a(e4);
    }

    public void a(View view, int i2) {
        this.x.a(view, i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            e eVar = (e) childAt.getLayoutParams();
            if (eVar.b(i2)) {
                b a2 = eVar.a();
                if (a2 != null) {
                    a2.onStopNestedScroll(this, childAt, view, i2);
                }
                eVar.a(i2);
                eVar.g();
            }
        }
        this.q = null;
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    public void a(View view, int i2, int i3, int i4, int i5, int i6) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                int i8 = i6;
            } else {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(i6)) {
                    b a2 = eVar.a();
                    if (a2 != null) {
                        a2.onNestedScroll(this, childAt, view, i2, i3, i4, i5, i6);
                        z = true;
                    }
                }
            }
        }
        if (z) {
            a(1);
        }
    }

    public void a(View view, int i2, int i3, int[] iArr, int i4) {
        int childCount = getChildCount();
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                int i8 = i4;
            } else {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(i4)) {
                    b a2 = eVar.a();
                    if (a2 != null) {
                        int[] iArr2 = this.k;
                        iArr2[1] = 0;
                        iArr2[0] = 0;
                        a2.onNestedPreScroll(this, childAt, view, i2, i3, iArr2, i4);
                        i5 = i2 > 0 ? Math.max(i5, this.k[0]) : Math.min(i5, this.k[0]);
                        i6 = i3 > 0 ? Math.max(i6, this.k[1]) : Math.min(i6, this.k[1]);
                        z = true;
                    }
                }
            }
        }
        iArr[0] = i5;
        iArr[1] = i6;
        if (z) {
            a(1);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(View view, int i2, Rect rect, Rect rect2) {
        e eVar = (e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        a(view, i2, rect, rect2, eVar, measuredWidth, measuredHeight);
        a(eVar, rect2, measuredWidth, measuredHeight);
    }

    /* access modifiers changed from: package-private */
    public void a(View view, Rect rect) {
        b.b(this, view, rect);
    }

    /* access modifiers changed from: package-private */
    public void a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public boolean a(View view, View view2, int i2, int i3) {
        int i4 = i3;
        int childCount = getChildCount();
        boolean z = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                b a2 = eVar.a();
                if (a2 != null) {
                    boolean onStartNestedScroll = a2.onStartNestedScroll(this, childAt, view, view2, i2, i3);
                    eVar.a(i4, onStartNestedScroll);
                    z |= onStartNestedScroll;
                } else {
                    eVar.a(i4, false);
                }
            }
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    public void b() {
        if (this.n) {
            if (this.r == null) {
                this.r = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.r);
        }
        this.s = true;
    }

    public void b(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.c()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        } else if (eVar.k != null) {
            a(view, eVar.k, i2);
        } else if (eVar.e >= 0) {
            a(view, eVar.e, i2);
        } else {
            d(view, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void b(View view, Rect rect) {
        ((e) view.getLayoutParams()).a(rect);
    }

    public void b(View view, View view2, int i2, int i3) {
        this.x.a(view, view2, i2, i3);
        this.q = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            e eVar = (e) childAt.getLayoutParams();
            if (eVar.b(i3)) {
                b a2 = eVar.a();
                if (a2 != null) {
                    a2.onNestedScrollAccepted(this, childAt, view, view2, i2, i3);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        if (this.n && this.r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.r);
        }
        this.s = false;
    }

    /* access modifiers changed from: package-private */
    public void c(View view, int i2) {
        View view2 = view;
        e eVar = (e) view.getLayoutParams();
        if (eVar.k != null) {
            Rect e2 = e();
            Rect e3 = e();
            Rect e4 = e();
            a(eVar.k, e2);
            boolean z = false;
            a(view2, false, e3);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int i3 = measuredHeight;
            a(view, i2, e2, e4, eVar, measuredWidth, measuredHeight);
            if (!(e4.left == e3.left && e4.top == e3.top)) {
                z = true;
            }
            a(eVar, e4, measuredWidth, i3);
            int i4 = e4.left - e3.left;
            int i5 = e4.top - e3.top;
            if (i4 != 0) {
                u.d(view2, i4);
            }
            if (i5 != 0) {
                u.c(view2, i5);
            }
            if (z) {
                b a2 = eVar.a();
                if (a2 != null) {
                    a2.onDependentViewChanged(this, view2, eVar.k);
                }
            }
            a(e2);
            a(e3);
            a(e4);
        }
    }

    /* access modifiers changed from: package-private */
    public void c(View view, Rect rect) {
        rect.set(((e) view.getLayoutParams()).b());
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    /* access modifiers changed from: protected */
    /* renamed from: d */
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.f452a != null) {
            float scrimOpacity = eVar.f452a.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.l == null) {
                    this.l = new Paint();
                }
                this.l.setColor(eVar.f452a.getScrimColor(this, view));
                this.l.setAlpha(a(Math.round(scrimOpacity * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect((float) view.getLeft(), (float) view.getTop(), (float) view.getRight(), (float) view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect((float) getPaddingLeft(), (float) getPaddingTop(), (float) (getWidth() - getPaddingRight()), (float) (getHeight() - getPaddingBottom()), this.l);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j2);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.v;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public final List<View> getDependencySortedChildren() {
        f();
        return Collections.unmodifiableList(this.g);
    }

    public final ac getLastWindowInsets() {
        return this.t;
    }

    public int getNestedScrollAxes() {
        return this.x.a();
    }

    public Drawable getStatusBarBackground() {
        return this.v;
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(false);
        if (this.s) {
            if (this.r == null) {
                this.r = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.r);
        }
        if (this.t == null && u.q(this)) {
            u.p(this);
        }
        this.n = true;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
        if (this.s && this.r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.r);
        }
        View view = this.q;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.n = false;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.u && this.v != null) {
            ac acVar = this.t;
            int b2 = acVar != null ? acVar.b() : 0;
            if (b2 > 0) {
                this.v.setBounds(0, 0, getWidth(), b2);
                this.v.draw(canvas);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean a2 = a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return a2;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int f2 = u.f(this);
        int size = this.g.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view = this.g.get(i6);
            if (view.getVisibility() != 8) {
                b a2 = ((e) view.getLayoutParams()).a();
                if (a2 == null || !a2.onLayoutChild(this, view, f2)) {
                    b(view, f2);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0119, code lost:
        if (r0.onMeasureChild(r30, r20, r11, r21, r23, 0) == false) goto L_0x0128;
     */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c1  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00fb  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x011c  */
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        b a2;
        int i10;
        int i11;
        e eVar;
        int i12;
        f();
        a();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int f2 = u.f(this);
        boolean z = f2 == 1;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int i13 = paddingLeft + paddingRight;
        int i14 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.t != null && u.q(this);
        int size3 = this.g.size();
        int i15 = suggestedMinimumWidth;
        int i16 = suggestedMinimumHeight;
        int i17 = 0;
        int i18 = 0;
        while (i18 < size3) {
            View view = this.g.get(i18);
            if (view.getVisibility() == 8) {
                i5 = i18;
                i4 = size3;
            } else {
                e eVar2 = (e) view.getLayoutParams();
                if (eVar2.e < 0 || mode == 0) {
                    i6 = i16;
                } else {
                    int b2 = b(eVar2.e);
                    int a3 = androidx.core.g.c.a(d(eVar2.c), f2) & 7;
                    i6 = i16;
                    if ((a3 == 3 && !z) || (a3 == 5 && z)) {
                        i7 = Math.max(0, (size - paddingRight) - b2);
                        if (z2) {
                        }
                        i9 = i2;
                        i8 = i3;
                        a2 = eVar2.a();
                        if (a2 != null) {
                        }
                        a(view, i9, i7, i8, 0);
                        e eVar3 = eVar;
                        int max = Math.max(i10, i13 + view.getMeasuredWidth() + eVar3.leftMargin + eVar3.rightMargin);
                        int max2 = Math.max(i12, i14 + view.getMeasuredHeight() + eVar3.topMargin + eVar3.bottomMargin);
                        i15 = max;
                        i17 = View.combineMeasuredStates(i11, view.getMeasuredState());
                        i16 = max2;
                    } else if ((a3 == 5 && !z) || (a3 == 3 && z)) {
                        i7 = Math.max(0, b2 - paddingLeft);
                        if (z2 || u.q(view)) {
                            i9 = i2;
                            i8 = i3;
                        } else {
                            i9 = View.MeasureSpec.makeMeasureSpec(size - (this.t.a() + this.t.c()), mode);
                            i8 = View.MeasureSpec.makeMeasureSpec(size2 - (this.t.b() + this.t.d()), mode2);
                        }
                        a2 = eVar2.a();
                        if (a2 != null) {
                            eVar = eVar2;
                            i12 = i6;
                            i11 = i17;
                            i10 = i15;
                            i5 = i18;
                            i4 = size3;
                        } else {
                            eVar = eVar2;
                            i11 = i17;
                            i10 = i15;
                            i4 = size3;
                            i12 = i6;
                            i5 = i18;
                        }
                        a(view, i9, i7, i8, 0);
                        e eVar32 = eVar;
                        int max3 = Math.max(i10, i13 + view.getMeasuredWidth() + eVar32.leftMargin + eVar32.rightMargin);
                        int max22 = Math.max(i12, i14 + view.getMeasuredHeight() + eVar32.topMargin + eVar32.bottomMargin);
                        i15 = max3;
                        i17 = View.combineMeasuredStates(i11, view.getMeasuredState());
                        i16 = max22;
                    }
                }
                i7 = 0;
                if (z2) {
                }
                i9 = i2;
                i8 = i3;
                a2 = eVar2.a();
                if (a2 != null) {
                }
                a(view, i9, i7, i8, 0);
                e eVar322 = eVar;
                int max32 = Math.max(i10, i13 + view.getMeasuredWidth() + eVar322.leftMargin + eVar322.rightMargin);
                int max222 = Math.max(i12, i14 + view.getMeasuredHeight() + eVar322.topMargin + eVar322.bottomMargin);
                i15 = max32;
                i17 = View.combineMeasuredStates(i11, view.getMeasuredState());
                i16 = max222;
            }
            i18 = i5 + 1;
            size3 = i4;
        }
        int i19 = i17;
        setMeasuredDimension(View.resolveSizeAndState(i15, i2, -16777216 & i19), View.resolveSizeAndState(i16, i3, i19 << 16));
    }

    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(0)) {
                    b a2 = eVar.a();
                    if (a2 != null) {
                        z2 |= a2.onNestedFling(this, childAt, view, f2, f3, z);
                    }
                }
            }
        }
        if (z2) {
            a(1);
        }
        return z2;
    }

    public boolean onNestedPreFling(View view, float f2, float f3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(0)) {
                    b a2 = eVar.a();
                    if (a2 != null) {
                        z |= a2.onNestedPreFling(this, childAt, view, f2, f3);
                    }
                }
            }
        }
        return z;
    }

    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        a(view, i2, i3, iArr, 0);
    }

    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        a(view, i2, i3, i4, i5, 0);
    }

    public void onNestedScrollAccepted(View view, View view2, int i2) {
        b(view, view2, i2, 0);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.behaviorStates;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            b a2 = a(childAt).a();
            if (!(id == -1 || a2 == null)) {
                Parcelable parcelable2 = sparseArray.get(id);
                if (parcelable2 != null) {
                    a2.onRestoreInstanceState(this, childAt, parcelable2);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            b a2 = ((e) childAt.getLayoutParams()).a();
            if (!(id == -1 || a2 == null)) {
                Parcelable onSaveInstanceState = a2.onSaveInstanceState(this, childAt);
                if (onSaveInstanceState != null) {
                    sparseArray.append(id, onSaveInstanceState);
                }
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return a(view, view2, i2, 0);
    }

    public void onStopNestedScroll(View view) {
        a(view, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0012, code lost:
        if (r3 != false) goto L_0x0016;
     */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x004c  */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        MotionEvent motionEvent2;
        MotionEvent motionEvent3 = motionEvent;
        int actionMasked = motionEvent.getActionMasked();
        if (this.p == null) {
            z2 = a(motionEvent3, 1);
        } else {
            z2 = false;
        }
        b a2 = ((e) this.p.getLayoutParams()).a();
        if (a2 != null) {
            z = a2.onTouchEvent(this, this.p, motionEvent3);
            motionEvent2 = null;
            if (this.p != null) {
                z |= super.onTouchEvent(motionEvent);
            } else if (z2) {
                long uptimeMillis = SystemClock.uptimeMillis();
                motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEvent2);
            }
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            if (actionMasked == 1 || actionMasked == 3) {
                a(false);
            }
            return z;
        }
        z = false;
        motionEvent2 = null;
        if (this.p != null) {
        }
        if (motionEvent2 != null) {
        }
        a(false);
        return z;
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        b a2 = ((e) view.getLayoutParams()).a();
        if (a2 == null || !a2.onRequestChildRectangleOnScreen(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.m) {
            a(false);
            this.m = true;
        }
    }

    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        g();
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.e = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.v;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback((Drawable.Callback) null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.v = drawable3;
            Drawable drawable4 = this.v;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.v.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.v, u.f(this));
                this.v.setVisible(getVisibility() == 0, false);
                this.v.setCallback(this);
            }
            u.d(this);
        }
    }

    public void setStatusBarBackgroundColor(int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) {
        setStatusBarBackground(i2 != 0 ? androidx.core.a.a.a(getContext(), i2) : null);
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.v;
        if (drawable != null && drawable.isVisible() != z) {
            this.v.setVisible(z, false);
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.v;
    }
}
