package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.p;
import androidx.core.g.u;
import androidx.core.widget.h;
import com.google.protobuf.nano.MessageNano;
import java.lang.reflect.Method;

/* compiled from: ListPopupWindow */
public class ah implements p {

    /* renamed from: a  reason: collision with root package name */
    private static Method f315a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f316b;
    private static Method h;
    private Drawable A;
    private AdapterView.OnItemClickListener B;
    private AdapterView.OnItemSelectedListener C;
    private final d D;
    private final c E;
    private final a F;
    private Runnable G;
    private final Rect H;
    private Rect I;
    private boolean J;
    ad c;
    int d;
    final e e;
    final Handler f;
    PopupWindow g;
    private Context i;
    private ListAdapter j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean u;
    private boolean v;
    private View w;
    private int x;
    private DataSetObserver y;
    private View z;

    /* compiled from: ListPopupWindow */
    private class a implements Runnable {
        a() {
        }

        public void run() {
            ah.this.m();
        }
    }

    /* compiled from: ListPopupWindow */
    private class b extends DataSetObserver {
        b() {
        }

        public void onChanged() {
            if (ah.this.e()) {
                ah.this.D_();
            }
        }

        public void onInvalidated() {
            ah.this.d();
        }
    }

    /* compiled from: ListPopupWindow */
    private class c implements AbsListView.OnScrollListener {
        c() {
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ah.this.n() && ah.this.g.getContentView() != null) {
                ah.this.f.removeCallbacks(ah.this.e);
                ah.this.e.run();
            }
        }
    }

    /* compiled from: ListPopupWindow */
    private class d implements View.OnTouchListener {
        d() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ah.this.g != null && ah.this.g.isShowing() && x >= 0 && x < ah.this.g.getWidth() && y >= 0 && y < ah.this.g.getHeight()) {
                ah.this.f.postDelayed(ah.this.e, 250);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ah.this.f.removeCallbacks(ah.this.e);
                return false;
            }
        }
    }

    /* compiled from: ListPopupWindow */
    private class e implements Runnable {
        e() {
        }

        public void run() {
            if (ah.this.c != null && u.w(ah.this.c) && ah.this.c.getCount() > ah.this.c.getChildCount() && ah.this.c.getChildCount() <= ah.this.d) {
                ah.this.g.setInputMethodMode(2);
                ah.this.D_();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            Class<PopupWindow> cls = PopupWindow.class;
            try {
                f315a = cls.getDeclaredMethod("setClipToScreenEnabled", new Class[]{Boolean.TYPE});
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                h = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[]{Rect.class});
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            Class<PopupWindow> cls2 = PopupWindow.class;
            try {
                f316b = cls2.getDeclaredMethod("getMaxAvailableHeight", new Class[]{View.class, Integer.TYPE, Boolean.TYPE});
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ah(Context context) {
        this(context, (AttributeSet) null, R.attr.listPopupWindowStyle);
    }

    public ah(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ah(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.k = -2;
        this.l = -2;
        this.o = 1002;
        this.q = true;
        this.t = 0;
        this.u = false;
        this.v = false;
        this.d = Integer.MAX_VALUE;
        this.x = 0;
        this.e = new e();
        this.D = new d();
        this.E = new c();
        this.F = new a();
        this.H = new Rect();
        this.i = context;
        this.f = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i2, i3);
        this.m = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.n = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.n != 0) {
            this.p = true;
        }
        obtainStyledAttributes.recycle();
        this.g = new p(context, attributeSet, i2, i3);
        this.g.setInputMethodMode(1);
    }

    private int a(View view, int i2, boolean z2) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.g.getMaxAvailableHeight(view, i2, z2);
        }
        Method method = f316b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.g, new Object[]{view, Integer.valueOf(i2), Boolean.valueOf(z2)})).intValue();
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.g.getMaxAvailableHeight(view, i2);
    }

    private void c(boolean z2) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f315a;
            if (method != null) {
                try {
                    method.invoke(this.g, new Object[]{Boolean.valueOf(z2)});
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.g.setIsClippedToScreen(z2);
        }
    }

    private void h() {
        View view = this.w;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.w);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v24, resolved type: androidx.appcompat.widget.ad} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v25, resolved type: androidx.appcompat.widget.ad} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v2, resolved type: android.widget.LinearLayout} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v30, resolved type: androidx.appcompat.widget.ad} */
    /* JADX WARNING: Multi-variable type inference failed */
    private int i() {
        int i2;
        int i3;
        int i4;
        boolean z2 = true;
        if (this.c == null) {
            Context context = this.i;
            this.G = new Runnable() {
                public void run() {
                    View k = ah.this.k();
                    if (k != null && k.getWindowToken() != null) {
                        ah.this.D_();
                    }
                }
            };
            this.c = a(context, !this.J);
            Drawable drawable = this.A;
            if (drawable != null) {
                this.c.setSelector(drawable);
            }
            this.c.setAdapter(this.j);
            this.c.setOnItemClickListener(this.B);
            this.c.setFocusable(true);
            this.c.setFocusableInTouchMode(true);
            this.c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i != -1) {
                        ad adVar = ah.this.c;
                        if (adVar != null) {
                            adVar.setListSelectionHidden(false);
                        }
                    }
                }

                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.c.setOnScrollListener(this.E);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.C;
            if (onItemSelectedListener != null) {
                this.c.setOnItemSelectedListener(onItemSelectedListener);
            }
            ad adVar = this.c;
            View view = this.w;
            if (view != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i5 = this.x;
                if (i5 == 0) {
                    linearLayout.addView(view);
                    linearLayout.addView(adVar, layoutParams);
                } else if (i5 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.x);
                } else {
                    linearLayout.addView(adVar, layoutParams);
                    linearLayout.addView(view);
                }
                int i6 = this.l;
                if (i6 >= 0) {
                    i4 = Integer.MIN_VALUE;
                } else {
                    i6 = 0;
                    i4 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i6, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i2 = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                adVar = linearLayout;
            } else {
                i2 = 0;
            }
            this.g.setContentView(adVar);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.g.getContentView();
            View view2 = this.w;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i2 = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i2 = 0;
            }
        }
        Drawable background = this.g.getBackground();
        if (background != null) {
            background.getPadding(this.H);
            i3 = this.H.top + this.H.bottom;
            if (!this.p) {
                this.n = -this.H.top;
            }
        } else {
            this.H.setEmpty();
            i3 = 0;
        }
        if (this.g.getInputMethodMode() != 2) {
            z2 = false;
        }
        int a2 = a(k(), this.n, z2);
        if (this.u || this.k == -1) {
            return a2 + i3;
        }
        int i7 = this.l;
        int a3 = this.c.a(i7 != -2 ? i7 != -1 ? View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : View.MeasureSpec.makeMeasureSpec(this.i.getResources().getDisplayMetrics().widthPixels - (this.H.left + this.H.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(this.i.getResources().getDisplayMetrics().widthPixels - (this.H.left + this.H.right), MessageNano.UNSET_ENUM_VALUE), 0, -1, a2 - i2, -1);
        if (a3 > 0) {
            i2 += i3 + this.c.getPaddingTop() + this.c.getPaddingBottom();
        }
        return a3 + i2;
    }

    public void D_() {
        int i2 = i();
        boolean n2 = n();
        h.a(this.g, this.o);
        boolean z2 = true;
        if (!this.g.isShowing()) {
            int i3 = this.l;
            if (i3 == -1) {
                i3 = -1;
            } else if (i3 == -2) {
                i3 = k().getWidth();
            }
            int i4 = this.k;
            if (i4 == -1) {
                i2 = -1;
            } else if (i4 != -2) {
                i2 = i4;
            }
            this.g.setWidth(i3);
            this.g.setHeight(i2);
            c(true);
            this.g.setOutsideTouchable(!this.v && !this.u);
            this.g.setTouchInterceptor(this.D);
            if (this.s) {
                h.a(this.g, this.r);
            }
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = h;
                if (method != null) {
                    try {
                        method.invoke(this.g, new Object[]{this.I});
                    } catch (Exception e2) {
                        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                    }
                }
            } else {
                this.g.setEpicenterBounds(this.I);
            }
            h.a(this.g, k(), this.m, this.n, this.t);
            this.c.setSelection(-1);
            if (!this.J || this.c.isInTouchMode()) {
                m();
            }
            if (!this.J) {
                this.f.post(this.F);
            }
        } else if (u.w(k())) {
            int i5 = this.l;
            if (i5 == -1) {
                i5 = -1;
            } else if (i5 == -2) {
                i5 = k().getWidth();
            }
            int i6 = this.k;
            if (i6 == -1) {
                if (!n2) {
                    i2 = -1;
                }
                if (n2) {
                    this.g.setWidth(this.l == -1 ? -1 : 0);
                    this.g.setHeight(0);
                } else {
                    this.g.setWidth(this.l == -1 ? -1 : 0);
                    this.g.setHeight(-1);
                }
            } else if (i6 != -2) {
                i2 = i6;
            }
            PopupWindow popupWindow = this.g;
            if (this.v || this.u) {
                z2 = false;
            }
            popupWindow.setOutsideTouchable(z2);
            this.g.update(k(), this.m, this.n, i5 < 0 ? -1 : i5, i2 < 0 ? -1 : i2);
        }
    }

    /* access modifiers changed from: package-private */
    public ad a(Context context, boolean z2) {
        return new ad(context, z2);
    }

    public void a(int i2) {
        this.n = i2;
        this.p = true;
    }

    public void a(Rect rect) {
        this.I = rect != null ? new Rect(rect) : null;
    }

    public void a(Drawable drawable) {
        this.g.setBackgroundDrawable(drawable);
    }

    public void a(AdapterView.OnItemClickListener onItemClickListener) {
        this.B = onItemClickListener;
    }

    public void a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.y;
        if (dataSetObserver == null) {
            this.y = new b();
        } else {
            ListAdapter listAdapter2 = this.j;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.j = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.y);
        }
        ad adVar = this.c;
        if (adVar != null) {
            adVar.setAdapter(this.j);
        }
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.g.setOnDismissListener(onDismissListener);
    }

    public void a(boolean z2) {
        this.J = z2;
        this.g.setFocusable(z2);
    }

    public Drawable b() {
        return this.g.getBackground();
    }

    public void b(int i2) {
        this.m = i2;
    }

    public void b(View view) {
        this.z = view;
    }

    public void b(boolean z2) {
        this.s = true;
        this.r = z2;
    }

    public int c() {
        if (!this.p) {
            return 0;
        }
        return this.n;
    }

    public void d() {
        this.g.dismiss();
        h();
        this.g.setContentView((View) null);
        this.c = null;
        this.f.removeCallbacks(this.e);
    }

    public void d(int i2) {
        this.x = i2;
    }

    public void e(int i2) {
        this.g.setAnimationStyle(i2);
    }

    public boolean e() {
        return this.g.isShowing();
    }

    public int f() {
        return this.m;
    }

    public void f(int i2) {
        this.t = i2;
    }

    public ListView g() {
        return this.c;
    }

    public void g(int i2) {
        this.l = i2;
    }

    public void h(int i2) {
        Drawable background = this.g.getBackground();
        if (background != null) {
            background.getPadding(this.H);
            this.l = this.H.left + this.H.right + i2;
            return;
        }
        g(i2);
    }

    public void i(int i2) {
        this.g.setInputMethodMode(i2);
    }

    public void j(int i2) {
        ad adVar = this.c;
        if (e() && adVar != null) {
            adVar.setListSelectionHidden(false);
            adVar.setSelection(i2);
            if (adVar.getChoiceMode() != 0) {
                adVar.setItemChecked(i2, true);
            }
        }
    }

    public boolean j() {
        return this.J;
    }

    public View k() {
        return this.z;
    }

    public int l() {
        return this.l;
    }

    public void m() {
        ad adVar = this.c;
        if (adVar != null) {
            adVar.setListSelectionHidden(true);
            adVar.requestLayout();
        }
    }

    public boolean n() {
        return this.g.getInputMethodMode() == 2;
    }
}
