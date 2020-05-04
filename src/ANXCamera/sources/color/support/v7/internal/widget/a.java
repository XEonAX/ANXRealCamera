package color.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Adapter;

/* compiled from: AdapterViewCompat */
public abstract class a<T extends Adapter> extends ViewGroup {
    int A;
    int B;
    long C;
    boolean D;

    /* renamed from: a  reason: collision with root package name */
    private int f1374a;

    /* renamed from: b  reason: collision with root package name */
    private View f1375b;
    private boolean c;
    private boolean d;
    private a<T>.e e;
    @ViewDebug.ExportedProperty(category = "scrolling")
    int j;
    int k;
    int l;
    long m;
    long n;
    boolean o;
    int p;
    boolean q;
    d r;
    b s;
    c t;
    boolean u;
    @ViewDebug.ExportedProperty(category = "list")
    int v;
    long w;
    @ViewDebug.ExportedProperty(category = "list")
    int x;
    long y;
    @ViewDebug.ExportedProperty(category = "list")
    int z;

    /* renamed from: color.support.v7.internal.widget.a$a  reason: collision with other inner class name */
    /* compiled from: AdapterViewCompat */
    class C0041a extends DataSetObserver {

        /* renamed from: b  reason: collision with root package name */
        private Parcelable f1377b = null;

        C0041a() {
        }

        public void onChanged() {
            a aVar = a.this;
            aVar.u = true;
            aVar.A = aVar.z;
            a aVar2 = a.this;
            aVar2.z = aVar2.getAdapter().getCount();
            if (!a.this.getAdapter().hasStableIds() || this.f1377b == null || a.this.A != 0 || a.this.z <= 0) {
                a.this.i();
            } else {
                a.this.onRestoreInstanceState(this.f1377b);
                this.f1377b = null;
            }
            a.this.d();
            a.this.requestLayout();
        }

        public void onInvalidated() {
            a aVar = a.this;
            aVar.u = true;
            if (aVar.getAdapter().hasStableIds()) {
                this.f1377b = a.this.onSaveInstanceState();
            }
            a aVar2 = a.this;
            aVar2.A = aVar2.z;
            a aVar3 = a.this;
            aVar3.z = 0;
            aVar3.x = -1;
            aVar3.y = Long.MIN_VALUE;
            aVar3.v = -1;
            aVar3.w = Long.MIN_VALUE;
            aVar3.o = false;
            aVar3.d();
            a.this.requestLayout();
        }
    }

    /* compiled from: AdapterViewCompat */
    public interface b {
    }

    /* compiled from: AdapterViewCompat */
    public interface c {
    }

    /* compiled from: AdapterViewCompat */
    public interface d {
        void a(a<?> aVar);

        void a(a<?> aVar, View view, int i, long j);
    }

    /* compiled from: AdapterViewCompat */
    private class e implements Runnable {
        private e() {
        }

        public void run() {
            if (!a.this.u) {
                a.this.a();
            } else if (a.this.getAdapter() != null) {
                a.this.post(this);
            }
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        if (this.r != null) {
            int selectedItemPosition = getSelectedItemPosition();
            if (selectedItemPosition >= 0) {
                this.r.a(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
                return;
            }
            this.r.a(this);
        }
    }

    private void a(boolean z2) {
        if (c()) {
            z2 = false;
        }
        if (z2) {
            View view = this.f1375b;
            if (view != null) {
                view.setVisibility(0);
                setVisibility(8);
            } else {
                setVisibility(0);
            }
            if (this.u) {
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
                return;
            }
            return;
        }
        View view2 = this.f1375b;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        setVisibility(0);
    }

    public long a(int i) {
        Adapter adapter = getAdapter();
        if (adapter == null || i < 0) {
            return Long.MIN_VALUE;
        }
        return adapter.getItemId(i);
    }

    public void addView(View view) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    public void addView(View view, int i) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    /* access modifiers changed from: package-private */
    public int b(int i, boolean z2) {
        return i;
    }

    /* access modifiers changed from: package-private */
    public boolean c() {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean canAnimate() {
        return super.canAnimate() && this.z > 0;
    }

    /* access modifiers changed from: package-private */
    public void d() {
        Adapter adapter = getAdapter();
        boolean z2 = false;
        boolean z3 = !(adapter == null || adapter.getCount() == 0) || c();
        super.setFocusableInTouchMode(z3 && this.d);
        super.setFocusable(z3 && this.c);
        if (this.f1375b != null) {
            if (adapter == null || adapter.isEmpty()) {
                z2 = true;
            }
            a(z2);
        }
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        View selectedView = getSelectedView();
        return selectedView != null && selectedView.getVisibility() == 0 && selectedView.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    /* access modifiers changed from: protected */
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    /* access modifiers changed from: protected */
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    /* access modifiers changed from: package-private */
    public void e() {
        if (this.r != null) {
            if (this.q || this.D) {
                if (this.e == null) {
                    this.e = new e();
                }
                post(this.e);
            } else {
                a();
            }
        }
        if (this.x != -1 && isShown() && !isInTouchMode()) {
            sendAccessibilityEvent(4);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0020  */
    public void f() {
        boolean z2;
        int i = this.z;
        boolean z3 = true;
        if (i > 0) {
            if (this.o) {
                this.o = false;
                int h = h();
                if (h >= 0 && b(h, true) == h) {
                    setNextSelectedPositionInt(h);
                    z2 = true;
                    if (!z2) {
                        int selectedItemPosition = getSelectedItemPosition();
                        int i2 = selectedItemPosition >= i ? i - 1 : selectedItemPosition;
                        if (i2 < 0) {
                            i2 = 0;
                        }
                        int b2 = b(i2, true);
                        if (b2 < 0) {
                            b2 = b(i2, false);
                        }
                        if (b2 >= 0) {
                            setNextSelectedPositionInt(b2);
                            g();
                        }
                    }
                    z3 = z2;
                }
            }
            z2 = false;
            if (!z2) {
            }
            z3 = z2;
        } else {
            z3 = false;
        }
        if (!z3) {
            this.x = -1;
            this.y = Long.MIN_VALUE;
            this.v = -1;
            this.w = Long.MIN_VALUE;
            this.o = false;
            g();
        }
    }

    /* access modifiers changed from: package-private */
    public void g() {
        if (this.x != this.B || this.y != this.C) {
            e();
            this.B = this.x;
            this.C = this.y;
        }
    }

    public abstract T getAdapter();

    @ViewDebug.CapturedViewProperty
    public int getCount() {
        return this.z;
    }

    public View getEmptyView() {
        return this.f1375b;
    }

    public int getFirstVisiblePosition() {
        return this.j;
    }

    public int getLastVisiblePosition() {
        return (this.j + getChildCount()) - 1;
    }

    public final b getOnItemClickListener() {
        return this.s;
    }

    public final c getOnItemLongClickListener() {
        return this.t;
    }

    public final d getOnItemSelectedListener() {
        return this.r;
    }

    public Object getSelectedItem() {
        Adapter adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) {
            return null;
        }
        return adapter.getItem(selectedItemPosition);
    }

    @ViewDebug.CapturedViewProperty
    public long getSelectedItemId() {
        return this.w;
    }

    @ViewDebug.CapturedViewProperty
    public int getSelectedItemPosition() {
        return this.v;
    }

    public abstract View getSelectedView();

    /* access modifiers changed from: package-private */
    public int h() {
        int i = this.z;
        if (i == 0) {
            return -1;
        }
        long j2 = this.m;
        int i2 = this.l;
        if (j2 == Long.MIN_VALUE) {
            return -1;
        }
        int i3 = i - 1;
        int min = Math.min(i3, Math.max(0, i2));
        long uptimeMillis = SystemClock.uptimeMillis() + 100;
        Adapter adapter = getAdapter();
        if (adapter == null) {
            return -1;
        }
        int i4 = min;
        int i5 = i4;
        boolean z2 = false;
        while (SystemClock.uptimeMillis() <= uptimeMillis) {
            if (adapter.getItemId(min) != j2) {
                boolean z3 = i4 == i3;
                boolean z4 = i5 == 0;
                if (z3 && z4) {
                    break;
                } else if (z4 || (z2 && !z3)) {
                    i4++;
                    z2 = false;
                    min = i4;
                } else if (z3 || (!z2 && !z4)) {
                    i5--;
                    z2 = true;
                    min = i5;
                }
            } else {
                return min;
            }
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public void i() {
        if (getChildCount() > 0) {
            this.o = true;
            this.n = (long) this.f1374a;
            int i = this.x;
            if (i >= 0) {
                View childAt = getChildAt(i - this.j);
                this.m = this.w;
                this.l = this.v;
                if (childAt != null) {
                    this.k = childAt.getTop();
                }
                this.p = 0;
                return;
            }
            View childAt2 = getChildAt(0);
            Adapter adapter = getAdapter();
            int i2 = this.j;
            if (i2 < 0 || i2 >= adapter.getCount()) {
                this.m = -1;
            } else {
                this.m = adapter.getItemId(this.j);
            }
            this.l = this.j;
            if (childAt2 != null) {
                this.k = childAt2.getTop();
            }
            this.p = 1;
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.e);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        this.f1374a = getHeight();
    }

    public void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    public void removeView(View view) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    public void removeViewAt(int i) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    public abstract void setAdapter(T t2);

    public void setEmptyView(View view) {
        this.f1375b = view;
        Adapter adapter = getAdapter();
        a(adapter == null || adapter.isEmpty());
    }

    public void setFocusable(boolean z2) {
        Adapter adapter = getAdapter();
        boolean z3 = true;
        boolean z4 = adapter == null || adapter.getCount() == 0;
        this.c = z2;
        if (!z2) {
            this.d = false;
        }
        if (!z2 || (z4 && !c())) {
            z3 = false;
        }
        super.setFocusable(z3);
    }

    public void setFocusableInTouchMode(boolean z2) {
        Adapter adapter = getAdapter();
        boolean z3 = false;
        boolean z4 = adapter == null || adapter.getCount() == 0;
        this.d = z2;
        if (z2) {
            this.c = true;
        }
        if (z2 && (!z4 || c())) {
            z3 = true;
        }
        super.setFocusableInTouchMode(z3);
    }

    /* access modifiers changed from: package-private */
    public void setNextSelectedPositionInt(int i) {
        this.v = i;
        this.w = a(i);
        if (this.o && this.p == 0 && i >= 0) {
            this.l = i;
            this.m = this.w;
        }
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    public void setOnItemClickListener(b bVar) {
        this.s = bVar;
    }

    public void setOnItemLongClickListener(c cVar) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.t = cVar;
    }

    public void setOnItemSelectedListener(d dVar) {
        this.r = dVar;
    }

    /* access modifiers changed from: package-private */
    public void setSelectedPositionInt(int i) {
        this.x = i;
        this.y = a(i);
    }

    public abstract void setSelection(int i);
}
