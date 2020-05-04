package color.support.v7.internal.widget;

import android.content.DialogInterface;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SpinnerAdapter;
import androidx.appcompat.widget.ba;
import androidx.core.g.u;
import color.support.v7.internal.widget.AbsSpinnerCompat;
import color.support.v7.internal.widget.a;
import color.support.v7.widget.b;
import color.support.v7.widget.c;
import color.support.v7.widget.d;

class ColorBaseSpinner extends AbsSpinnerCompat implements DialogInterface.OnClickListener {
    protected b.c E;
    c F;
    int G;
    private a H;
    private int I;
    private boolean J;
    /* access modifiers changed from: private */
    public Rect K;
    private final f L;

    static class SavedState extends AbsSpinnerCompat.SavedState {
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
        boolean showDropdown;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.showDropdown = parcel.readByte() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.showDropdown ? (byte) 1 : 0);
        }
    }

    private static class a implements ListAdapter, SpinnerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private SpinnerAdapter f1365a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f1366b;

        public a(SpinnerAdapter spinnerAdapter) {
            this.f1365a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1366b = (ListAdapter) spinnerAdapter;
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1366b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1365a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1365a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f1365a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f1365a;
            if (spinnerAdapter == null) {
                return -1;
            }
            return spinnerAdapter.getItemId(i);
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        public int getViewTypeCount() {
            return 1;
        }

        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1365a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }

        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1366b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1365a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1365a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class b extends d implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ColorBaseSpinner f1367a;

        /* renamed from: b  reason: collision with root package name */
        private CharSequence f1368b;
        private ListAdapter e;

        public CharSequence a() {
            return this.f1368b;
        }

        public void a(int i, int i2) {
            boolean d = d();
            b();
            f(2);
            super.h();
            ListView p = p();
            p.setChoiceMode(1);
            color.support.a.a.a.a(p, i2);
            g(this.f1367a.getSelectedItemPosition());
            if (!d) {
                ViewTreeObserver viewTreeObserver = this.f1367a.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    final AnonymousClass1 r4 = new ViewTreeObserver.OnGlobalLayoutListener() {
                        public void onGlobalLayout() {
                            if (!color.support.a.a.a.c(b.this.f1367a)) {
                                b.this.c();
                                return;
                            }
                            b.this.b();
                            b.super.h();
                        }
                    };
                    viewTreeObserver.addOnGlobalLayoutListener(r4);
                    a((c.a) new c.a() {
                        public void a() {
                            ViewTreeObserver viewTreeObserver = b.this.f1367a.getViewTreeObserver();
                            if (viewTreeObserver != null) {
                                viewTreeObserver.removeGlobalOnLayoutListener(r4);
                            }
                        }
                    });
                }
            }
        }

        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.e = listAdapter;
        }

        public void a(CharSequence charSequence) {
            this.f1368b = charSequence;
        }

        /* access modifiers changed from: package-private */
        public void b() {
            Drawable e2 = e();
            int i = 0;
            if (e2 != null) {
                e2.getPadding(this.f1367a.K);
                i = ba.a(this.f1367a) ? this.f1367a.K.right : -this.f1367a.K.left;
            } else {
                Rect a2 = this.f1367a.K;
                this.f1367a.K.right = 0;
                a2.left = 0;
            }
            int paddingLeft = this.f1367a.getPaddingLeft();
            int paddingRight = this.f1367a.getPaddingRight();
            int width = this.f1367a.getWidth();
            if (this.f1367a.G == -2) {
                int a3 = this.f1367a.a((SpinnerAdapter) this.e, e());
                int i2 = (this.f1367a.getContext().getResources().getDisplayMetrics().widthPixels - this.f1367a.K.left) - this.f1367a.K.right;
                if (a3 > i2) {
                    a3 = i2;
                }
                d(Math.max(a3, (width - paddingLeft) - paddingRight));
            } else if (this.f1367a.G == -1) {
                d((width - paddingLeft) - paddingRight);
            } else {
                d(this.f1367a.G);
            }
            b(ba.a(this.f1367a) ? i + ((width - paddingRight) - m()) : i + paddingLeft);
        }
    }

    interface c {
        CharSequence a();

        void a(int i);

        void a(int i, int i2);

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        void b(int i);

        void c();

        boolean d();

        Drawable e();

        int f();

        int g();
    }

    private void a(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        if (z) {
            addViewInLayout(view, 0, layoutParams);
        }
        view.setSelected(hasFocus());
        if (this.J) {
            view.setEnabled(isEnabled());
        }
        view.measure(ViewGroup.getChildMeasureSpec(this.c, this.h.left + this.h.right, layoutParams.width), ViewGroup.getChildMeasureSpec(this.f1358b, this.h.top + this.h.bottom, layoutParams.height));
        int measuredHeight = this.h.top + ((((getMeasuredHeight() - this.h.bottom) - this.h.top) - view.getMeasuredHeight()) / 2);
        view.layout(0, measuredHeight, view.getMeasuredWidth() + 0, view.getMeasuredHeight() + measuredHeight);
    }

    private View c(int i, boolean z) {
        if (!this.u) {
            View a2 = this.i.a(i);
            if (a2 != null) {
                a(a2, z);
                return a2;
            }
        }
        View view = this.f1357a.getView(i, (View) null, this);
        a(view, z);
        return view;
    }

    /* access modifiers changed from: package-private */
    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int i2 = 0;
        View view = null;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i2;
        }
        drawable.getPadding(this.K);
        return i2 + this.K.left + this.K.right;
    }

    /* access modifiers changed from: package-private */
    public void a(int i, boolean z) {
        int i2;
        int i3 = this.h.left;
        int right = ((getRight() - getLeft()) - this.h.left) - this.h.right;
        if (this.u) {
            f();
        }
        if (this.z == 0) {
            a();
            return;
        }
        if (this.v >= 0) {
            setSelectedPositionInt(this.v);
        }
        b();
        removeAllViewsInLayout();
        this.j = this.x;
        if (this.f1357a != null) {
            View c2 = c(this.x, true);
            int measuredWidth = c2.getMeasuredWidth();
            int a2 = androidx.core.g.c.a(this.I, u.f(this)) & 7;
            if (a2 != 1) {
                if (a2 == 5) {
                    i2 = i3 + right;
                }
                c2.offsetLeftAndRight(i3);
            } else {
                i2 = i3 + (right / 2);
                measuredWidth /= 2;
            }
            i3 = i2 - measuredWidth;
            c2.offsetLeftAndRight(i3);
        }
        this.i.a();
        invalidate();
        g();
        this.u = false;
        this.o = false;
        setNextSelectedPositionInt(this.x);
    }

    public int getBaseline() {
        View view;
        if (getChildCount() > 0) {
            view = getChildAt(0);
        } else if (this.f1357a == null || this.f1357a.getCount() <= 0) {
            view = null;
        } else {
            view = c(0, false);
            this.i.a(0, view);
        }
        if (view == null) {
            return -1;
        }
        int baseline = view.getBaseline();
        if (baseline >= 0) {
            return view.getTop() + baseline;
        }
        return -1;
    }

    public int getDropDownHorizontalOffset() {
        return this.F.g();
    }

    public int getDropDownVerticalOffset() {
        return this.F.f();
    }

    public int getDropDownWidth() {
        return this.G;
    }

    public Drawable getPopupBackground() {
        return this.F.e();
    }

    public CharSequence getPrompt() {
        return this.F.a();
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        setSelection(i);
        dialogInterface.dismiss();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.F;
        if (cVar != null && cVar.d()) {
            this.F.c();
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.q = true;
        a(0, false);
        this.q = false;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.F != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.showDropdown) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                    public void onGlobalLayout() {
                        if (!ColorBaseSpinner.this.F.d()) {
                            ColorBaseSpinner.this.F.a(ColorBaseSpinner.this.getTextDirection(), color.support.a.a.a.a(ColorBaseSpinner.this));
                        }
                        ViewTreeObserver viewTreeObserver = ColorBaseSpinner.this.getViewTreeObserver();
                        if (viewTreeObserver != null) {
                            viewTreeObserver.removeGlobalOnLayoutListener(this);
                        }
                    }
                });
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        c cVar = this.F;
        savedState.showDropdown = cVar != null && cVar.d();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        b.c cVar = this.E;
        if (cVar == null || !cVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            performClick = true;
            if (!this.F.d()) {
                this.F.a(getTextDirection(), color.support.a.a.a.a(this));
            }
        }
        return performClick;
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        super.setAdapter(spinnerAdapter);
        this.i.a();
        if (getContext().getApplicationInfo().targetSdkVersion < 21 || spinnerAdapter == null || spinnerAdapter.getViewTypeCount() == 1) {
            c cVar = this.F;
            if (cVar != null) {
                cVar.a((ListAdapter) new a(spinnerAdapter));
            } else {
                this.H = new a(spinnerAdapter);
            }
        } else {
            throw new IllegalArgumentException("Spinner adapter view type count must be 1");
        }
    }

    public void setDropDownHorizontalOffset(int i) {
        this.F.b(i);
    }

    public void setDropDownVerticalOffset(int i) {
        this.F.a(i);
    }

    public void setDropDownWidth(int i) {
        if (!(this.F instanceof b)) {
            Log.e("ColorBaseSpinner", "Cannot set dropdown width for MODE_DIALOG, ignoring");
        } else {
            this.G = i;
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.J) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).setEnabled(z);
            }
        }
    }

    public void setGravity(int i) {
        if (this.I != i) {
            if ((i & 7) == 0) {
                i |= 8388611;
            }
            this.I = i;
            requestLayout();
        }
    }

    public void setOnItemClickListener(a.b bVar) {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }

    /* access modifiers changed from: package-private */
    public void setOnItemClickListenerInt(a.b bVar) {
        super.setOnItemClickListener(bVar);
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        c cVar = this.F;
        if (!(cVar instanceof b)) {
            Log.e("ColorBaseSpinner", "setPopupBackgroundDrawable: incompatible spinner mode; ignoring...");
        } else {
            ((b) cVar).a(drawable);
        }
    }

    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(this.L.a(i));
    }

    public void setPrompt(CharSequence charSequence) {
        this.F.a(charSequence);
    }

    public void setPromptId(int i) {
        setPrompt(getContext().getText(i));
    }
}
