package color.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import androidx.core.g.u;
import color.support.v7.internal.widget.a;

abstract class AbsSpinnerCompat extends a<SpinnerAdapter> {
    private DataSetObserver E;

    /* renamed from: a  reason: collision with root package name */
    SpinnerAdapter f1357a;

    /* renamed from: b  reason: collision with root package name */
    int f1358b;
    int c;
    int d;
    int e;
    int f;
    int g;
    final Rect h;
    final a i;

    static class SavedState extends View.BaseSavedState {
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
        int position;
        long selectedId;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.selectedId = parcel.readLong();
            this.position = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.selectedId + " position=" + this.position + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.selectedId);
            parcel.writeInt(this.position);
        }
    }

    class a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsSpinnerCompat f1359a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<View> f1360b;

        /* access modifiers changed from: package-private */
        public View a(int i) {
            View view = this.f1360b.get(i);
            if (view != null) {
                this.f1360b.delete(i);
            }
            return view;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            SparseArray<View> sparseArray = this.f1360b;
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                View valueAt = sparseArray.valueAt(i);
                if (valueAt != null) {
                    this.f1359a.removeDetachedView(valueAt, true);
                }
            }
            sparseArray.clear();
        }

        public void a(int i, View view) {
            this.f1360b.put(i, view);
        }
    }

    /* access modifiers changed from: package-private */
    public int a(View view) {
        return view.getMeasuredHeight();
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.u = false;
        this.o = false;
        removeAllViewsInLayout();
        this.B = -1;
        this.C = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        invalidate();
    }

    /* access modifiers changed from: package-private */
    public abstract void a(int i2, boolean z);

    /* access modifiers changed from: package-private */
    public int b(View view) {
        return view.getMeasuredWidth();
    }

    /* access modifiers changed from: package-private */
    public void b() {
        int childCount = getChildCount();
        a aVar = this.i;
        int i2 = this.j;
        for (int i3 = 0; i3 < childCount; i3++) {
            aVar.a(i2 + i3, getChildAt(i3));
        }
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    public SpinnerAdapter getAdapter() {
        return this.f1357a;
    }

    public int getCount() {
        return this.z;
    }

    public View getSelectedView() {
        if (this.z <= 0 || this.x < 0) {
            return null;
        }
        return getChildAt(this.x - this.j);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a0  */
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int mode = View.MeasureSpec.getMode(i2);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        Rect rect = this.h;
        int i6 = this.d;
        if (paddingLeft <= i6) {
            paddingLeft = i6;
        }
        rect.left = paddingLeft;
        Rect rect2 = this.h;
        int i7 = this.e;
        if (paddingTop <= i7) {
            paddingTop = i7;
        }
        rect2.top = paddingTop;
        Rect rect3 = this.h;
        int i8 = this.f;
        if (paddingRight > i8) {
            i8 = paddingRight;
        }
        rect3.right = i8;
        Rect rect4 = this.h;
        int i9 = this.g;
        if (paddingBottom > i9) {
            i9 = paddingBottom;
        }
        rect4.bottom = i9;
        if (this.u) {
            f();
        }
        int selectedItemPosition = getSelectedItemPosition();
        boolean z = true;
        if (selectedItemPosition >= 0) {
            SpinnerAdapter spinnerAdapter = this.f1357a;
            if (spinnerAdapter != null && selectedItemPosition < spinnerAdapter.getCount()) {
                View a2 = this.i.a(selectedItemPosition);
                if (a2 == null) {
                    a2 = this.f1357a.getView(selectedItemPosition, (View) null, this);
                }
                if (a2 != null) {
                    this.i.a(selectedItemPosition, a2);
                    if (a2.getLayoutParams() == null) {
                        this.D = true;
                        a2.setLayoutParams(generateDefaultLayoutParams());
                        this.D = false;
                    }
                    measureChild(a2, i2, i3);
                    i5 = a(a2) + this.h.top + this.h.bottom;
                    i4 = b(a2) + this.h.left + this.h.right;
                    z = false;
                    if (z) {
                        i5 = this.h.top + this.h.bottom;
                        if (mode == 0) {
                            i4 = this.h.left + this.h.right;
                        }
                    }
                    int max = Math.max(i5, getSuggestedMinimumHeight());
                    setMeasuredDimension(u.a(Math.max(i4, getSuggestedMinimumWidth()), i2, 0), u.a(max, i3, 0));
                    this.f1358b = i3;
                    this.c = i2;
                }
            }
        }
        i5 = 0;
        i4 = 0;
        if (z) {
        }
        int max2 = Math.max(i5, getSuggestedMinimumHeight());
        setMeasuredDimension(u.a(Math.max(i4, getSuggestedMinimumWidth()), i2, 0), u.a(max2, i3, 0));
        this.f1358b = i3;
        this.c = i2;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.selectedId >= 0) {
            this.u = true;
            this.o = true;
            this.m = savedState.selectedId;
            this.l = savedState.position;
            this.p = 0;
            requestLayout();
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.selectedId = getSelectedItemId();
        if (savedState.selectedId >= 0) {
            savedState.position = getSelectedItemPosition();
        } else {
            savedState.position = -1;
        }
        return savedState;
    }

    public void requestLayout() {
        if (!this.D) {
            super.requestLayout();
        }
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        SpinnerAdapter spinnerAdapter2 = this.f1357a;
        if (spinnerAdapter2 != null) {
            spinnerAdapter2.unregisterDataSetObserver(this.E);
            a();
        }
        this.f1357a = spinnerAdapter;
        int i2 = -1;
        this.B = -1;
        this.C = Long.MIN_VALUE;
        if (this.f1357a != null) {
            this.A = this.z;
            this.z = this.f1357a.getCount();
            d();
            this.E = new a.C0041a();
            this.f1357a.registerDataSetObserver(this.E);
            if (this.z > 0) {
                i2 = 0;
            }
            setSelectedPositionInt(i2);
            setNextSelectedPositionInt(i2);
            if (this.z == 0) {
                g();
            }
        } else {
            d();
            a();
            g();
        }
        requestLayout();
    }

    public void setSelection(int i2) {
        setNextSelectedPositionInt(i2);
        requestLayout();
        invalidate();
    }
}
