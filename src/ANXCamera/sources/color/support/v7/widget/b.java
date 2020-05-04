package color.support.v7.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
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
import androidx.core.g.y;
import color.support.v7.appcompat.R;
import color.support.v7.widget.c;
import com.google.protobuf.nano.MessageNano;
import java.lang.reflect.Method;

/* compiled from: ColorBaseListPopupWindow */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Method f1438a;
    /* access modifiers changed from: private */
    public Handler A;
    private Rect B;
    private boolean C;

    /* renamed from: b  reason: collision with root package name */
    private Context f1439b;
    protected c c;
    int d;
    private ListAdapter e;
    /* access modifiers changed from: private */
    public C0043b f;
    private int g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private int l;
    private boolean m;
    private boolean n;
    private View o;
    private int p;
    private DataSetObserver q;
    private View r;
    private Drawable s;
    private AdapterView.OnItemClickListener t;
    private AdapterView.OnItemSelectedListener u;
    /* access modifiers changed from: private */
    public final h v;
    private final g w;
    private final f x;
    private final d y;
    private Runnable z;

    /* renamed from: color.support.v7.widget.b$1  reason: invalid class name */
    /* compiled from: ColorBaseListPopupWindow */
    class AnonymousClass1 extends c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f1440a;

        public b a() {
            return this.f1440a;
        }
    }

    /* compiled from: ColorBaseListPopupWindow */
    private class a implements ListAdapter {

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f1444b;

        public a(ListAdapter listAdapter) {
            this.f1444b = listAdapter;
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1444b;
            return listAdapter != null && listAdapter.areAllItemsEnabled();
        }

        public int getCount() {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter == null) {
                return 0;
            }
            return listAdapter.getCount();
        }

        public Object getItem(int i) {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter == null) {
                return null;
            }
            return listAdapter.getItem(i);
        }

        public long getItemId(int i) {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter == null) {
                return 0;
            }
            return listAdapter.getItemId(i);
        }

        public int getItemViewType(int i) {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter == null) {
                return 0;
            }
            return listAdapter.getItemViewType(i);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter == null) {
                return null;
            }
            View view2 = listAdapter.getView(i, view, viewGroup);
            if (view2 == null) {
                return view2;
            }
            view2.setAlpha(0.0f);
            view2.animate().alpha(1.0f).setInterpolator(androidx.core.g.b.b.a(0.33f, 0.0f, 0.66f, 1.0f)).setDuration(350).setStartDelay(150).start();
            return view2;
        }

        public int getViewTypeCount() {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter == null) {
                return 0;
            }
            return listAdapter.getViewTypeCount();
        }

        public boolean hasStableIds() {
            ListAdapter listAdapter = this.f1444b;
            return listAdapter != null && listAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            ListAdapter listAdapter = this.f1444b;
            return listAdapter != null && listAdapter.isEmpty();
        }

        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1444b;
            return listAdapter != null && listAdapter.isEnabled(i);
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter != null) {
                listAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            ListAdapter listAdapter = this.f1444b;
            if (listAdapter != null) {
                listAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: color.support.v7.widget.b$b  reason: collision with other inner class name */
    /* compiled from: ColorBaseListPopupWindow */
    private static class C0043b extends color.support.v7.internal.widget.c {
        /* access modifiers changed from: private */
        public boolean f;
        private boolean g;
        private boolean h;
        private y i;
        private androidx.core.widget.f j;

        public C0043b(Context context, boolean z) {
            super(context, (AttributeSet) null, R.attr.dropDownListViewStyle);
            this.g = z;
            setCacheColorHint(0);
        }

        private void a(View view, int i2) {
            performItemClick(view, i2, getItemIdAtPosition(i2));
        }

        private void a(View view, int i2, float f2, float f3) {
            this.h = true;
            setPressed(true);
            layoutChildren();
            setSelection(i2);
            a(i2, view, f2, f3);
            setSelectorEnabled(false);
            refreshDrawableState();
        }

        private void d() {
            this.h = false;
            setPressed(false);
            drawableStateChanged();
            y yVar = this.i;
            if (yVar != null) {
                yVar.b();
                this.i = null;
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:5:0x000c, code lost:
            if (r0 != 3) goto L_0x000e;
         */
        /* JADX WARNING: Removed duplicated region for block: B:12:0x001e  */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x004f  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x0065  */
        public boolean a(MotionEvent motionEvent, int i2) {
            boolean z;
            boolean z2;
            int findPointerIndex;
            int a2 = androidx.core.g.h.a(motionEvent);
            if (a2 == 1) {
                z2 = false;
                findPointerIndex = motionEvent.findPointerIndex(i2);
                if (findPointerIndex >= 0) {
                }
                z = false;
                z2 = false;
                d();
                if (!z2) {
                }
                return z2;
            } else if (a2 == 2) {
                z2 = true;
                findPointerIndex = motionEvent.findPointerIndex(i2);
                if (findPointerIndex >= 0) {
                    int x = (int) motionEvent.getX(findPointerIndex);
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int pointToPosition = pointToPosition(x, y);
                    if (pointToPosition == -1) {
                        z = true;
                        if (!z2 || z) {
                            d();
                        }
                        if (!z2) {
                            if (this.j == null) {
                                this.j = new androidx.core.widget.f(this);
                            }
                            this.j.a(true);
                            this.j.onTouch(this, motionEvent);
                        } else {
                            androidx.core.widget.f fVar = this.j;
                            if (fVar != null) {
                                fVar.a(false);
                            }
                        }
                        return z2;
                    }
                    View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                    a(childAt, pointToPosition, (float) x, (float) y);
                    if (a2 == 1) {
                        a(childAt, pointToPosition);
                    }
                }
                z = false;
                z2 = false;
                d();
                if (!z2) {
                }
                return z2;
            }
            z = false;
            z2 = true;
            d();
            if (!z2) {
            }
            return z2;
        }

        /* access modifiers changed from: protected */
        public boolean c() {
            return this.h || super.c();
        }

        public boolean hasFocus() {
            return this.g || super.hasFocus();
        }

        public boolean hasWindowFocus() {
            return this.g || super.hasWindowFocus();
        }

        public boolean isFocused() {
            return this.g || super.isFocused();
        }

        public boolean isInTouchMode() {
            return (this.g && this.f) || super.isInTouchMode();
        }
    }

    /* compiled from: ColorBaseListPopupWindow */
    public static abstract class c implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        private final float f1445a;

        /* renamed from: b  reason: collision with root package name */
        private final int f1446b;
        private final int c;
        /* access modifiers changed from: private */
        public final View d;
        private Runnable e;
        private Runnable f;
        private boolean g;
        private boolean h;
        private int i;
        private final int[] j;

        /* compiled from: ColorBaseListPopupWindow */
        private class a implements Runnable {
            private a() {
            }

            /* synthetic */ a(c cVar, AnonymousClass1 r2) {
                this();
            }

            public void run() {
                c.this.d.getParent().requestDisallowInterceptTouchEvent(true);
            }
        }

        /* renamed from: color.support.v7.widget.b$c$b  reason: collision with other inner class name */
        /* compiled from: ColorBaseListPopupWindow */
        private class C0044b implements Runnable {
            private C0044b() {
            }

            /* synthetic */ C0044b(c cVar, AnonymousClass1 r2) {
                this();
            }

            public void run() {
                c.this.e();
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
            if (r1 != 3) goto L_0x0070;
         */
        private boolean a(MotionEvent motionEvent) {
            View view = this.d;
            if (!view.isEnabled()) {
                return false;
            }
            int a2 = androidx.core.g.h.a(motionEvent);
            if (a2 != 0) {
                if (a2 != 1) {
                    if (a2 == 2) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.i);
                        if (findPointerIndex >= 0 && !a(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f1445a)) {
                            d();
                            view.getParent().requestDisallowInterceptTouchEvent(true);
                            return true;
                        }
                    }
                }
                d();
            } else {
                this.i = motionEvent.getPointerId(0);
                this.h = false;
                if (this.e == null) {
                    this.e = new a(this, (AnonymousClass1) null);
                }
                view.postDelayed(this.e, (long) this.f1446b);
                if (this.f == null) {
                    this.f = new C0044b(this, (AnonymousClass1) null);
                }
                view.postDelayed(this.f, (long) this.c);
            }
            return false;
        }

        private static boolean a(View view, float f2, float f3, float f4) {
            float f5 = -f4;
            return f2 >= f5 && f3 >= f5 && f2 < ((float) (view.getRight() - view.getLeft())) + f4 && f3 < ((float) (view.getBottom() - view.getTop())) + f4;
        }

        private boolean a(View view, MotionEvent motionEvent) {
            int[] iArr = this.j;
            view.getLocationOnScreen(iArr);
            motionEvent.offsetLocation((float) (-iArr[0]), (float) (-iArr[1]));
            return true;
        }

        private boolean b(MotionEvent motionEvent) {
            View view = this.d;
            b a2 = a();
            if (a2 != null && a2.d()) {
                C0043b a3 = a2.f;
                if (a3 != null && a3.isShown()) {
                    MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                    b(view, obtainNoHistory);
                    a(a3, obtainNoHistory);
                    boolean a4 = a3.a(obtainNoHistory, this.i);
                    obtainNoHistory.recycle();
                    int a5 = androidx.core.g.h.a(motionEvent);
                    return a4 && (a5 != 1 && a5 != 3);
                }
            }
            return false;
        }

        private boolean b(View view, MotionEvent motionEvent) {
            int[] iArr = this.j;
            view.getLocationOnScreen(iArr);
            motionEvent.offsetLocation((float) iArr[0], (float) iArr[1]);
            return true;
        }

        private void d() {
            Runnable runnable = this.f;
            if (runnable != null) {
                this.d.removeCallbacks(runnable);
            }
            Runnable runnable2 = this.e;
            if (runnable2 != null) {
                this.d.removeCallbacks(runnable2);
            }
        }

        /* access modifiers changed from: private */
        public void e() {
            d();
            View view = this.d;
            if (view.isEnabled() && !view.isLongClickable() && b()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(obtain);
                obtain.recycle();
                this.g = true;
                this.h = true;
            }
        }

        public abstract b a();

        /* access modifiers changed from: protected */
        public boolean b() {
            b a2 = a();
            if (a2 == null || a2.d()) {
                return true;
            }
            a2.h();
            return true;
        }

        /* access modifiers changed from: protected */
        public boolean c() {
            b a2 = a();
            if (a2 == null || !a2.d()) {
                return true;
            }
            a2.c();
            return true;
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z;
            boolean z2 = this.g;
            if (z2) {
                z = this.h ? b(motionEvent) : b(motionEvent) || !c();
            } else {
                z = a(motionEvent) && b();
                if (z) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    this.d.onTouchEvent(obtain);
                    obtain.recycle();
                }
            }
            this.g = z;
            return z || z2;
        }
    }

    /* compiled from: ColorBaseListPopupWindow */
    private class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f1449a;

        public void run() {
            this.f1449a.n();
        }
    }

    /* compiled from: ColorBaseListPopupWindow */
    private class e extends DataSetObserver {
        private e() {
        }

        /* synthetic */ e(b bVar, AnonymousClass1 r2) {
            this();
        }

        public void onChanged() {
            if (b.this.d()) {
                b.this.h();
            }
        }

        public void onInvalidated() {
            b.this.c();
        }
    }

    /* compiled from: ColorBaseListPopupWindow */
    private class f implements AbsListView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f1451a;

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !this.f1451a.o() && this.f1451a.c.getContentView() != null) {
                this.f1451a.A.removeCallbacks(this.f1451a.v);
                this.f1451a.v.run();
            }
        }
    }

    /* compiled from: ColorBaseListPopupWindow */
    protected class g implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f1452a;

        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && this.f1452a.c != null && this.f1452a.c.isShowing() && x >= 0 && x < this.f1452a.c.getWidth() && y >= 0 && y < this.f1452a.c.getHeight()) {
                this.f1452a.A.postDelayed(this.f1452a.v, 250);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                this.f1452a.A.removeCallbacks(this.f1452a.v);
                return false;
            }
        }
    }

    /* compiled from: ColorBaseListPopupWindow */
    private class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f1453a;

        public void run() {
            if (this.f1453a.f != null && this.f1453a.f.getCount() > this.f1453a.f.getChildCount() && this.f1453a.f.getChildCount() <= this.f1453a.d) {
                this.f1453a.c.setInputMethodMode(2);
                this.f1453a.h();
            }
        }
    }

    static {
        Class<c> cls = c.class;
        try {
            f1438a = cls.getDeclaredMethod("a", new Class[]{Boolean.TYPE});
        } catch (NoSuchMethodException unused) {
            Log.i("BaseListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }

    private void a() {
        View view = this.o;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.o);
            }
        }
    }

    private void a(boolean z2) {
        Method method = f1438a;
        if (method != null) {
            try {
                method.invoke(this.c, new Object[]{Boolean.valueOf(z2)});
            } catch (Exception unused) {
                Log.i("BaseListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    public void a(int i2) {
        this.j = i2;
        this.k = true;
    }

    public void a(Drawable drawable) {
        this.c.setBackgroundDrawable(drawable);
    }

    public void a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.q;
        if (dataSetObserver == null) {
            this.q = new e(this, (AnonymousClass1) null);
        } else {
            ListAdapter listAdapter2 = this.e;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.e = listAdapter;
        if (this.e != null) {
            listAdapter.registerDataSetObserver(this.q);
        }
        C0043b bVar = this.f;
        if (bVar != null) {
            bVar.setAdapter(new a(this.e));
        }
    }

    public void a(c.a aVar) {
        this.c.a(aVar);
    }

    public void b(int i2) {
        this.i = i2;
    }

    public void c() {
        this.c.dismiss();
        a();
        this.c.setContentView((View) null);
        this.f = null;
        this.A.removeCallbacks(this.v);
    }

    public void c(int i2) {
        this.h = i2;
    }

    public void d(int i2) {
        Drawable background = this.c.getBackground();
        if (background != null) {
            background.getPadding(this.B);
            this.h = this.B.left + this.B.right + i2;
            return;
        }
        c(i2);
    }

    public boolean d() {
        return this.c.isShowing();
    }

    public Drawable e() {
        return this.c.getBackground();
    }

    public void e(int i2) {
        this.g = i2;
    }

    public int f() {
        if (!this.k) {
            return 0;
        }
        return this.j;
    }

    public void f(int i2) {
        this.c.setInputMethodMode(i2);
    }

    public int g() {
        return this.i;
    }

    public void g(int i2) {
        C0043b bVar = this.f;
        if (d() && bVar != null) {
            boolean unused = bVar.f = false;
            bVar.setSelection(i2);
            if (Build.VERSION.SDK_INT >= 11 && bVar.getChoiceMode() != 0) {
                bVar.setItemChecked(i2, true);
            }
        }
    }

    public void h() {
        int i2;
        int i3;
        int i4;
        int i5;
        int j2 = j();
        boolean o2 = o();
        boolean z2 = true;
        int i6 = -1;
        if (this.c.isShowing()) {
            int i7 = this.h;
            if (i7 == -1) {
                i4 = -1;
            } else {
                if (i7 == -2) {
                    i7 = l().getWidth();
                }
                i4 = i7;
            }
            int i8 = this.g;
            if (i8 == -1) {
                if (!o2) {
                    j2 = -1;
                }
                if (o2) {
                    c cVar = this.c;
                    if (this.h != -1) {
                        i6 = 0;
                    }
                    cVar.setWindowLayoutMode(i6, 0);
                } else {
                    this.c.setWindowLayoutMode(this.h == -1 ? -1 : 0, -1);
                }
            } else if (i8 != -2) {
                i5 = i8;
                c cVar2 = this.c;
                if (this.n || this.m) {
                    z2 = false;
                }
                cVar2.setOutsideTouchable(z2);
                this.c.update(l(), this.i, this.j, i4, i5);
                return;
            }
            i5 = j2;
            c cVar22 = this.c;
            z2 = false;
            cVar22.setOutsideTouchable(z2);
            this.c.update(l(), this.i, this.j, i4, i5);
            return;
        }
        int i9 = this.h;
        if (i9 == -1) {
            i2 = -1;
        } else {
            if (i9 == -2) {
                this.c.setWidth(l().getWidth());
            } else {
                this.c.setWidth(i9);
            }
            i2 = 0;
        }
        int i10 = this.g;
        if (i10 == -1) {
            i3 = -1;
        } else {
            if (i10 == -2) {
                this.c.setHeight(j2);
            } else {
                this.c.setHeight(i10);
            }
            i3 = 0;
        }
        this.c.setWindowLayoutMode(i2, i3);
        if (l() instanceof color.support.v7.internal.widget.b) {
            a(false);
        } else {
            a(true);
        }
        c cVar3 = this.c;
        if (this.n || this.m) {
            z2 = false;
        }
        cVar3.setOutsideTouchable(z2);
        this.c.setTouchInterceptor(this.w);
        androidx.core.widget.h.a(this.c, l(), this.i, this.j, this.l);
        this.f.setSelection(-1);
        if (!this.C || this.f.isInTouchMode()) {
            n();
        }
        if (!this.C) {
            this.A.post(this.y);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v27, resolved type: color.support.v7.widget.b$b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v28, resolved type: color.support.v7.widget.b$b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v2, resolved type: android.widget.LinearLayout} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v31, resolved type: color.support.v7.widget.b$b} */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Multi-variable type inference failed */
    public int j() {
        int i2;
        int i3 = 0;
        if (this.f == null) {
            Context context = this.f1439b;
            this.z = new Runnable() {
                public void run() {
                    View l = b.this.l();
                    if (l != null && l.getWindowToken() != null) {
                        b.this.h();
                    }
                }
            };
            this.f = new C0043b(context, !this.C);
            Drawable drawable = this.s;
            if (drawable != null) {
                this.f.setSelector(drawable);
            }
            this.f.setAdapter(new a(this.e));
            this.f.setOnItemClickListener(this.t);
            this.f.setFocusable(true);
            this.f.setFocusableInTouchMode(true);
            this.f.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i != -1) {
                        C0043b a2 = b.this.f;
                        if (a2 != null) {
                            boolean unused = a2.f = false;
                        }
                    }
                }

                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f.setOnScrollListener(this.x);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.u;
            if (onItemSelectedListener != null) {
                this.f.setOnItemSelectedListener(onItemSelectedListener);
            }
            C0043b bVar = this.f;
            View view = this.o;
            if (view != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i4 = this.p;
                if (i4 == 0) {
                    linearLayout.addView(view);
                    linearLayout.addView(bVar, layoutParams);
                } else if (i4 != 1) {
                    Log.e("BaseListPopupWindow", "Invalid hint position " + this.p);
                } else {
                    linearLayout.addView(bVar, layoutParams);
                    linearLayout.addView(view);
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(this.h, MessageNano.UNSET_ENUM_VALUE), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i2 = layoutParams2.bottomMargin + view.getMeasuredHeight() + layoutParams2.topMargin;
                bVar = linearLayout;
            } else {
                i2 = 0;
            }
            this.c.setContentView(bVar);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.c.getContentView();
            View view2 = this.o;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i2 = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i2 = 0;
            }
        }
        Drawable background = this.c.getBackground();
        if (background != null) {
            background.getPadding(this.B);
            i3 = this.B.top + this.B.bottom;
            if (!this.k) {
                this.j = -this.B.top;
            }
        } else {
            this.B.setEmpty();
        }
        int inputMethodMode = this.c.getInputMethodMode();
        int maxAvailableHeight = this.c.getMaxAvailableHeight(l(), this.j);
        if (this.m || this.g == -1) {
            return maxAvailableHeight + i3;
        }
        int i5 = this.h;
        int a2 = this.f.a(i5 != -2 ? i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f1439b.getResources().getDisplayMetrics().widthPixels - (this.B.left + this.B.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f1439b.getResources().getDisplayMetrics().widthPixels - (this.B.left + this.B.right), MessageNano.UNSET_ENUM_VALUE), 0, -1, maxAvailableHeight - i2, -1);
        if (a2 > 0) {
            i2 += i3;
        }
        return a2 + i2;
    }

    public View l() {
        return this.r;
    }

    public int m() {
        return this.h;
    }

    public void n() {
        C0043b bVar = this.f;
        if (bVar != null) {
            boolean unused = bVar.f = true;
            bVar.requestLayout();
        }
    }

    public boolean o() {
        return this.c.getInputMethodMode() == 2;
    }

    public ListView p() {
        return this.f;
    }
}
