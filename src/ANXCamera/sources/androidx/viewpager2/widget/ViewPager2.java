package androidx.viewpager2.widget;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;

public final class ViewPager2 extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    static boolean f1064a = true;

    /* renamed from: b  reason: collision with root package name */
    int f1065b;
    boolean c;
    RecyclerView d;
    e e;
    a f;
    private final Rect g;
    private final Rect h;
    private RecyclerView.c i;
    private LinearLayoutManager j;
    private int k;
    private Parcelable l;
    private n m;
    private b n;
    private c o;
    private d p;
    private RecyclerView.f q;
    private boolean r;
    private boolean s;
    private int t;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable mAdapterState;
        int mCurrentItem;
        int mRecyclerViewId;

        SavedState(Parcel parcel) {
            super(parcel);
            readValues(parcel, (ClassLoader) null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readValues(parcel, classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readValues(Parcel parcel, ClassLoader classLoader) {
            this.mRecyclerViewId = parcel.readInt();
            this.mCurrentItem = parcel.readInt();
            this.mAdapterState = parcel.readParcelable(classLoader);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mRecyclerViewId);
            parcel.writeInt(this.mCurrentItem);
            parcel.writeParcelable(this.mAdapterState, i);
        }
    }

    private abstract class a {
        /* access modifiers changed from: package-private */
        public void a(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* access modifiers changed from: package-private */
        public void a(RecyclerView.a<?> aVar) {
        }

        /* access modifiers changed from: package-private */
        public boolean a() {
            return false;
        }

        /* access modifiers changed from: package-private */
        public boolean a(int i, Bundle bundle) {
            return false;
        }

        /* access modifiers changed from: package-private */
        public String b() {
            throw new IllegalStateException("Not implemented.");
        }

        /* access modifiers changed from: package-private */
        public void b(RecyclerView.a<?> aVar) {
        }

        /* access modifiers changed from: package-private */
        public boolean b(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        /* access modifiers changed from: package-private */
        public void c() {
        }

        /* access modifiers changed from: package-private */
        public void d() {
        }

        /* access modifiers changed from: package-private */
        public void e() {
        }

        /* access modifiers changed from: package-private */
        public void f() {
        }

        /* access modifiers changed from: package-private */
        public void g() {
        }
    }

    public static abstract class b {
        public void a(int i) {
        }

        public void a(int i, float f, int i2) {
        }

        public void b(int i) {
        }
    }

    public interface c {
        void a(View view, float f);
    }

    private static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final int f1066a;

        /* renamed from: b  reason: collision with root package name */
        private final RecyclerView f1067b;

        d(int i, RecyclerView recyclerView) {
            this.f1066a = i;
            this.f1067b = recyclerView;
        }

        public void run() {
            this.f1067b.d(this.f1066a);
        }
    }

    private void a(RecyclerView.a<?> aVar) {
        if (aVar != null) {
            aVar.a(this.i);
        }
    }

    private void b(RecyclerView.a<?> aVar) {
        if (aVar != null) {
            aVar.b(this.i);
        }
    }

    private void e() {
        if (this.k != -1) {
            RecyclerView.a adapter = getAdapter();
            if (adapter != null) {
                Parcelable parcelable = this.l;
                if (parcelable != null) {
                    if (adapter instanceof androidx.viewpager2.adapter.c) {
                        ((androidx.viewpager2.adapter.c) adapter).a(parcelable);
                    }
                    this.l = null;
                }
                this.f1065b = Math.max(0, Math.min(this.k, adapter.b() - 1));
                this.k = -1;
                this.d.b(this.f1065b);
                this.f.c();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a() {
        n nVar = this.m;
        if (nVar != null) {
            View a2 = nVar.a(this.j);
            if (a2 != null) {
                int d2 = this.j.d(a2);
                if (d2 != this.f1065b && getScrollState() == 0) {
                    this.n.a(d2);
                }
                this.c = false;
                return;
            }
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    public void a(int i2, boolean z) {
        if (!c()) {
            b(i2, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    /* access modifiers changed from: package-private */
    public void b(int i2, boolean z) {
        RecyclerView.a adapter = getAdapter();
        if (adapter == null) {
            if (this.k != -1) {
                this.k = Math.max(i2, 0);
            }
        } else if (adapter.b() > 0) {
            int min = Math.min(Math.max(i2, 0), adapter.b() - 1);
            if (min == this.f1065b && this.e.b()) {
                return;
            }
            if (min != this.f1065b || !z) {
                double d2 = (double) this.f1065b;
                this.f1065b = min;
                this.f.e();
                if (!this.e.b()) {
                    d2 = this.e.d();
                }
                this.e.a(min, z);
                if (!z) {
                    this.d.b(min);
                    return;
                }
                double d3 = (double) min;
                if (Math.abs(d3 - d2) > 3.0d) {
                    this.d.b(d3 > d2 ? min - 3 : min + 3);
                    RecyclerView recyclerView = this.d;
                    recyclerView.post(new d(min, recyclerView));
                    return;
                }
                this.d.d(min);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        return this.j.x() == 1;
    }

    public boolean c() {
        return this.o.a();
    }

    public boolean canScrollHorizontally(int i2) {
        return this.d.canScrollHorizontally(i2);
    }

    public boolean canScrollVertically(int i2) {
        return this.d.canScrollVertically(i2);
    }

    public void d() {
        if (this.p.a() != null) {
            double d2 = this.e.d();
            int i2 = (int) d2;
            float f2 = (float) (d2 - ((double) i2));
            this.p.a(i2, f2, Math.round(((float) getPageSize()) * f2));
        }
    }

    /* access modifiers changed from: protected */
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).mRecyclerViewId;
            sparseArray.put(this.d.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        e();
    }

    public CharSequence getAccessibilityClassName() {
        return this.f.a() ? this.f.b() : super.getAccessibilityClassName();
    }

    public RecyclerView.a getAdapter() {
        return this.d.getAdapter();
    }

    public int getCurrentItem() {
        return this.f1065b;
    }

    public int getItemDecorationCount() {
        return this.d.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.t;
    }

    public int getOrientation() {
        return this.j.h();
    }

    /* access modifiers changed from: package-private */
    public int getPageSize() {
        int i2;
        int i3;
        RecyclerView recyclerView = this.d;
        if (getOrientation() == 0) {
            i2 = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            i3 = recyclerView.getPaddingRight();
        } else {
            i2 = recyclerView.getHeight() - recyclerView.getPaddingTop();
            i3 = recyclerView.getPaddingBottom();
        }
        return i2 - i3;
    }

    public int getScrollState() {
        return this.e.a();
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f.a(accessibilityNodeInfo);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.d.getMeasuredWidth();
        int measuredHeight = this.d.getMeasuredHeight();
        this.g.left = getPaddingLeft();
        this.g.right = (i4 - i2) - getPaddingRight();
        this.g.top = getPaddingTop();
        this.g.bottom = (i5 - i3) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.g, this.h);
        this.d.layout(this.h.left, this.h.top, this.h.right, this.h.bottom);
        if (this.c) {
            a();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        measureChild(this.d, i2, i3);
        int measuredWidth = this.d.getMeasuredWidth();
        int measuredHeight = this.d.getMeasuredHeight();
        int measuredState = this.d.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, measuredState), resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.k = savedState.mCurrentItem;
        this.l = savedState.mAdapterState;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mRecyclerViewId = this.d.getId();
        int i2 = this.k;
        if (i2 == -1) {
            i2 = this.f1065b;
        }
        savedState.mCurrentItem = i2;
        Parcelable parcelable = this.l;
        if (parcelable != null) {
            savedState.mAdapterState = parcelable;
        } else {
            RecyclerView.a adapter = this.d.getAdapter();
            if (adapter instanceof androidx.viewpager2.adapter.c) {
                savedState.mAdapterState = ((androidx.viewpager2.adapter.c) adapter).F_();
            }
        }
        return savedState;
    }

    public void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        return this.f.a(i2, bundle) ? this.f.b(i2, bundle) : super.performAccessibilityAction(i2, bundle);
    }

    public void setAdapter(RecyclerView.a aVar) {
        RecyclerView.a adapter = this.d.getAdapter();
        this.f.b(adapter);
        b(adapter);
        this.d.setAdapter(aVar);
        this.f1065b = 0;
        e();
        this.f.a((RecyclerView.a<?>) aVar);
        a(aVar);
    }

    public void setCurrentItem(int i2) {
        a(i2, true);
    }

    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.f.g();
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 >= 1 || i2 == -1) {
            this.t = i2;
            this.d.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public void setOrientation(int i2) {
        this.j.b(i2);
        this.f.d();
    }

    public void setPageTransformer(c cVar) {
        if (cVar != null) {
            if (!this.r) {
                this.q = this.d.getItemAnimator();
                this.r = true;
            }
            this.d.setItemAnimator((RecyclerView.f) null);
        } else if (this.r) {
            this.d.setItemAnimator(this.q);
            this.q = null;
            this.r = false;
        }
        if (cVar != this.p.a()) {
            this.p.a(cVar);
            d();
        }
    }

    public void setUserInputEnabled(boolean z) {
        this.s = z;
        this.f.f();
    }
}
