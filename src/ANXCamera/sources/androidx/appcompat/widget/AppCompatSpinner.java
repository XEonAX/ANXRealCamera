package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.R;
import androidx.appcompat.app.b;
import androidx.appcompat.view.menu.p;
import androidx.core.g.t;
import androidx.core.g.u;

public class AppCompatSpinner extends Spinner implements t {
    private static final int[] c = {16843505};

    /* renamed from: a  reason: collision with root package name */
    int f246a;

    /* renamed from: b  reason: collision with root package name */
    final Rect f247b;
    private final e d;
    private final Context e;
    private af f;
    private SpinnerAdapter g;
    private final boolean h;
    private d i;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mShowDropdown;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mShowDropdown = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.mShowDropdown ? (byte) 1 : 0);
        }
    }

    class a implements DialogInterface.OnClickListener, d {

        /* renamed from: a  reason: collision with root package name */
        androidx.appcompat.app.b f251a;
        private ListAdapter c;
        private CharSequence d;

        a() {
        }

        public CharSequence a() {
            return this.d;
        }

        public void a(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        public void a(int i, int i2) {
            if (this.c != null) {
                b.a aVar = new b.a(AppCompatSpinner.this.getPopupContext());
                CharSequence charSequence = this.d;
                if (charSequence != null) {
                    aVar.a(charSequence);
                }
                this.f251a = aVar.a(this.c, AppCompatSpinner.this.getSelectedItemPosition(), (DialogInterface.OnClickListener) this).b();
                ListView a2 = this.f251a.a();
                if (Build.VERSION.SDK_INT >= 17) {
                    a2.setTextDirection(i);
                    a2.setTextAlignment(i2);
                }
                this.f251a.show();
            }
        }

        public void a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        public void a(ListAdapter listAdapter) {
            this.c = listAdapter;
        }

        public void a(CharSequence charSequence) {
            this.d = charSequence;
        }

        public Drawable b() {
            return null;
        }

        public void b(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        public int c() {
            return 0;
        }

        public void c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        public void d() {
            androidx.appcompat.app.b bVar = this.f251a;
            if (bVar != null) {
                bVar.dismiss();
                this.f251a = null;
            }
        }

        public boolean e() {
            androidx.appcompat.app.b bVar = this.f251a;
            if (bVar != null) {
                return bVar.isShowing();
            }
            return false;
        }

        public int f() {
            return 0;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick((View) null, i, this.c.getItemId(i));
            }
            d();
        }
    }

    private static class b implements ListAdapter, SpinnerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private SpinnerAdapter f253a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f254b;

        public b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f253a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f254b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            } else if (spinnerAdapter instanceof aq) {
                aq aqVar = (aq) spinnerAdapter;
                if (aqVar.a() == null) {
                    aqVar.a(theme);
                }
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f254b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f253a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f253a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f253a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f253a;
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
            SpinnerAdapter spinnerAdapter = this.f253a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }

        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f254b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f253a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f253a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class c extends ah implements d {

        /* renamed from: a  reason: collision with root package name */
        ListAdapter f255a;
        private CharSequence h;
        private final Rect i = new Rect();
        private int j;

        public c(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            b((View) AppCompatSpinner.this);
            a(true);
            d(0);
            a((AdapterView.OnItemClickListener) new AdapterView.OnItemClickListener(AppCompatSpinner.this) {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    AppCompatSpinner.this.setSelection(i);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i, c.this.f255a.getItemId(i));
                    }
                    c.this.d();
                }
            });
        }

        public CharSequence a() {
            return this.h;
        }

        public void a(int i2, int i3) {
            boolean e = e();
            h();
            i(2);
            super.D_();
            ListView g = g();
            g.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                g.setTextDirection(i2);
                g.setTextAlignment(i3);
            }
            j(AppCompatSpinner.this.getSelectedItemPosition());
            if (!e) {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    final AnonymousClass2 r6 = new ViewTreeObserver.OnGlobalLayoutListener() {
                        public void onGlobalLayout() {
                            c cVar = c.this;
                            if (!cVar.a((View) AppCompatSpinner.this)) {
                                c.this.d();
                                return;
                            }
                            c.this.h();
                            c.super.D_();
                        }
                    };
                    viewTreeObserver.addOnGlobalLayoutListener(r6);
                    a((PopupWindow.OnDismissListener) new PopupWindow.OnDismissListener() {
                        public void onDismiss() {
                            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                            if (viewTreeObserver != null) {
                                viewTreeObserver.removeGlobalOnLayoutListener(r6);
                            }
                        }
                    });
                }
            }
        }

        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.f255a = listAdapter;
        }

        public void a(CharSequence charSequence) {
            this.h = charSequence;
        }

        /* access modifiers changed from: package-private */
        public boolean a(View view) {
            return u.w(view) && view.getGlobalVisibleRect(this.i);
        }

        public void c(int i2) {
            this.j = i2;
        }

        /* access modifiers changed from: package-private */
        public void h() {
            Drawable b2 = b();
            int i2 = 0;
            if (b2 != null) {
                b2.getPadding(AppCompatSpinner.this.f247b);
                i2 = ba.a(AppCompatSpinner.this) ? AppCompatSpinner.this.f247b.right : -AppCompatSpinner.this.f247b.left;
            } else {
                Rect rect = AppCompatSpinner.this.f247b;
                AppCompatSpinner.this.f247b.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.f246a == -2) {
                int a2 = AppCompatSpinner.this.a((SpinnerAdapter) this.f255a, b());
                int i3 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.f247b.left) - AppCompatSpinner.this.f247b.right;
                if (a2 > i3) {
                    a2 = i3;
                }
                h(Math.max(a2, (width - paddingLeft) - paddingRight));
            } else if (AppCompatSpinner.this.f246a == -1) {
                h((width - paddingLeft) - paddingRight);
            } else {
                h(AppCompatSpinner.this.f246a);
            }
            b(ba.a(AppCompatSpinner.this) ? i2 + (((width - paddingRight) - l()) - i()) : i2 + paddingLeft + i());
        }

        public int i() {
            return this.j;
        }
    }

    interface d {
        CharSequence a();

        void a(int i);

        void a(int i, int i2);

        void a(Drawable drawable);

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        Drawable b();

        void b(int i);

        int c();

        void c(int i);

        void d();

        boolean e();

        int f();
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(context, attributeSet, i2, i3, (Resources.Theme) null);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0048, code lost:
        if (r11 != null) goto L_0x004a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004a, code lost:
        r11.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005c, code lost:
        if (r11 != null) goto L_0x004a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0062  */
    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2, int i3, Resources.Theme theme) {
        super(context, attributeSet, i2);
        TypedArray typedArray;
        this.f247b = new Rect();
        au a2 = au.a(context, attributeSet, R.styleable.Spinner, i2, 0);
        this.d = new e(this);
        if (theme != null) {
            this.e = new androidx.appcompat.view.d(context, theme);
        } else {
            int g2 = a2.g(R.styleable.Spinner_popupTheme, 0);
            if (g2 != 0) {
                this.e = new androidx.appcompat.view.d(context, g2);
            } else {
                this.e = context;
            }
        }
        if (i3 == -1) {
            try {
                typedArray = context.obtainStyledAttributes(attributeSet, c, i2, 0);
                try {
                    i3 = typedArray.hasValue(0) ? typedArray.getInt(0, 0) : i3;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                    } catch (Throwable th) {
                        th = th;
                        if (typedArray != null) {
                        }
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                typedArray = null;
                Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
            } catch (Throwable th2) {
                th = th2;
                typedArray = null;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        }
        if (i3 == 0) {
            this.i = new a();
            this.i.a((CharSequence) a2.d(R.styleable.Spinner_android_prompt));
        } else if (i3 == 1) {
            final c cVar = new c(this.e, attributeSet, i2);
            au a3 = au.a(this.e, attributeSet, R.styleable.Spinner, i2, 0);
            this.f246a = a3.f(R.styleable.Spinner_android_dropDownWidth, -2);
            cVar.a(a3.a(R.styleable.Spinner_android_popupBackground));
            cVar.a((CharSequence) a2.d(R.styleable.Spinner_android_prompt));
            a3.b();
            this.i = cVar;
            this.f = new af(this) {
                public p a() {
                    return cVar;
                }

                @SuppressLint({"SyntheticAccessor"})
                public boolean b() {
                    if (AppCompatSpinner.this.getInternalPopup().e()) {
                        return true;
                    }
                    AppCompatSpinner.this.a();
                    return true;
                }
            };
        }
        CharSequence[] f2 = a2.f(R.styleable.Spinner_android_entries);
        if (f2 != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367048, f2);
            arrayAdapter.setDropDownViewResource(R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        a2.b();
        this.h = true;
        SpinnerAdapter spinnerAdapter = this.g;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.g = null;
        }
        this.d.a(attributeSet, i2);
    }

    /* access modifiers changed from: package-private */
    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int i3 = 0;
        View view = null;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i3;
        }
        drawable.getPadding(this.f247b);
        return i3 + this.f247b.left + this.f247b.right;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.i.a(getTextDirection(), getTextAlignment());
        } else {
            this.i.a(-1, -1);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.d;
        if (eVar != null) {
            eVar.c();
        }
    }

    public int getDropDownHorizontalOffset() {
        d dVar = this.i;
        if (dVar != null) {
            return dVar.f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    public int getDropDownVerticalOffset() {
        d dVar = this.i;
        if (dVar != null) {
            return dVar.c();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    public int getDropDownWidth() {
        if (this.i != null) {
            return this.f246a;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final d getInternalPopup() {
        return this.i;
    }

    public Drawable getPopupBackground() {
        d dVar = this.i;
        if (dVar != null) {
            return dVar.b();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    public Context getPopupContext() {
        return this.e;
    }

    public CharSequence getPrompt() {
        d dVar = this.i;
        return dVar != null ? dVar.a() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.d;
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.d;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d dVar = this.i;
        if (dVar != null && dVar.e()) {
            this.i.d();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.i != null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.mShowDropdown) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                    public void onGlobalLayout() {
                        if (!AppCompatSpinner.this.getInternalPopup().e()) {
                            AppCompatSpinner.this.a();
                        }
                        ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                        if (viewTreeObserver == null) {
                            return;
                        }
                        if (Build.VERSION.SDK_INT >= 16) {
                            viewTreeObserver.removeOnGlobalLayoutListener(this);
                        } else {
                            viewTreeObserver.removeGlobalOnLayoutListener(this);
                        }
                    }
                });
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        d dVar = this.i;
        savedState.mShowDropdown = dVar != null && dVar.e();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        af afVar = this.f;
        if (afVar == null || !afVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public boolean performClick() {
        d dVar = this.i;
        if (dVar == null) {
            return super.performClick();
        }
        if (dVar.e()) {
            return true;
        }
        a();
        return true;
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.h) {
            this.g = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.i != null) {
            Context context = this.e;
            if (context == null) {
                context = getContext();
            }
            this.i.a((ListAdapter) new b(spinnerAdapter, context.getTheme()));
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.d;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.d;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    public void setDropDownHorizontalOffset(int i2) {
        d dVar = this.i;
        if (dVar != null) {
            dVar.c(i2);
            this.i.b(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i2);
        }
    }

    public void setDropDownVerticalOffset(int i2) {
        d dVar = this.i;
        if (dVar != null) {
            dVar.a(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i2);
        }
    }

    public void setDropDownWidth(int i2) {
        if (this.i != null) {
            this.f246a = i2;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i2);
        }
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        d dVar = this.i;
        if (dVar != null) {
            dVar.a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(androidx.appcompat.a.a.a.b(getPopupContext(), i2));
    }

    public void setPrompt(CharSequence charSequence) {
        d dVar = this.i;
        if (dVar != null) {
            dVar.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.d;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.d;
        if (eVar != null) {
            eVar.a(mode);
        }
    }
}
