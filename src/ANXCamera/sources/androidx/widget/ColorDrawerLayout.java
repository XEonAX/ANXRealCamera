package androidx.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.core.g.u;
import androidx.customview.a.c;
import androidx.customview.view.AbsSavedState;
import com.a.a.f;
import java.util.ArrayList;
import java.util.List;

public class ColorDrawerLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f1079a = {16842931};

    /* renamed from: b  reason: collision with root package name */
    static final boolean f1080b = (Build.VERSION.SDK_INT >= 19);
    private static final int[] c = {16843828};
    private static final boolean d;
    private int A;
    private int B;
    private int C;
    private int D;
    private boolean E;
    private boolean F;
    private b G;
    private List<b> H;
    private float I;
    private float J;
    private Drawable K;
    private Drawable L;
    private Drawable M;
    private Drawable N;
    private Object O;
    private boolean P;
    private Drawable Q;
    private Drawable R;
    private Drawable S;
    private Drawable T;
    private Drawable U;
    private final ArrayList<View> V;
    private Rect W;
    private Matrix aa;
    private f ab;
    private View ac;
    /* access modifiers changed from: private */
    public int ad;
    private final a e;
    private float f;
    private int g;
    private int h;
    private float i;
    private Paint j;
    private final androidx.customview.a.c k;
    private final androidx.customview.a.c l;
    private final androidx.customview.a.c m;
    private final d n;
    private final d o;
    private final d p;
    private Rect q;
    /* access modifiers changed from: private */
    public int r;
    private boolean s;
    private boolean t;
    /* access modifiers changed from: private */
    public int u;
    private int v;
    private boolean w;
    private boolean x;
    /* access modifiers changed from: private */
    public boolean y;
    private int z;

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
        int lockModeBottom;
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        float onScreen;
        int openDrawerGravity = 0;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
            this.lockModeBottom = parcel.readInt();
            this.onScreen = parcel.readFloat();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
            parcel.writeInt(this.lockModeBottom);
            parcel.writeFloat(this.onScreen);
        }
    }

    static final class a extends androidx.core.g.a {
        public void a(View view, androidx.core.g.a.d dVar) {
            super.a(view, dVar);
            if (!ColorDrawerLayout.l(view)) {
                dVar.b((View) null);
            }
        }
    }

    public interface b {
        void a(int i);

        void a(View view);

        void a(View view, float f);

        void b(View view);
    }

    public static class c extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f1081a = 0;

        /* renamed from: b  reason: collision with root package name */
        float f1082b;
        boolean c;
        int d;

        public c(int i, int i2) {
            super(i, i2);
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ColorDrawerLayout.f1079a);
            this.f1081a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.f1081a = cVar.f1081a;
        }
    }

    private class d extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ColorDrawerLayout f1083a;

        /* renamed from: b  reason: collision with root package name */
        private final int f1084b;
        private androidx.customview.a.c c;
        private int d;
        private final Runnable e;

        private void b() {
            View view;
            int i = this.f1084b;
            View view2 = null;
            if (i == 3) {
                view2 = this.f1083a.b(80);
                view = this.f1083a.b(5);
            } else if (i == 5) {
                view2 = this.f1083a.b(3);
                view = this.f1083a.b(80);
            } else if (i != 80) {
                view = null;
            } else {
                view2 = this.f1083a.b(3);
                view = this.f1083a.b(5);
            }
            if (view2 != null) {
                this.f1083a.i(view2);
            }
            if (view != null) {
                this.f1083a.i(view);
            }
        }

        public int a(View view) {
            if (!this.f1083a.g(view) || this.f1083a.a(view, 80)) {
                return 0;
            }
            return view.getWidth();
        }

        public int a(View view, int i, int i2) {
            if (this.f1083a.a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            if (!this.f1083a.a(view, 5)) {
                return 0;
            }
            int width = this.f1083a.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        public void a() {
            this.f1083a.removeCallbacks(this.e);
        }

        public void a(int i) {
            View c2 = this.c.c();
            if (i == 1) {
                this.d = c2 == null ? this.f1083a.getHeight() : c2.getTop();
            }
            this.f1083a.a(this.f1084b, i, c2);
        }

        public void a(int i, int i2) {
            this.f1083a.postDelayed(this.e, 160);
        }

        public void a(View view, float f, float f2) {
            int width;
            float d2 = this.f1083a.d(view);
            int width2 = view.getWidth();
            int height = view.getHeight();
            int left = view.getLeft();
            int top = view.getTop();
            if (this.f1083a.a(view, 3)) {
                int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i > 0 || (i == 0 && d2 > 0.5f)) {
                    left = 0;
                    this.c.a(left, top);
                    this.f1083a.invalidate();
                }
                width = -width2;
            } else if (this.f1083a.a(view, 5)) {
                width = this.f1083a.getWidth();
                if (f < 0.0f || (f == 0.0f && d2 > 0.5f)) {
                    width -= width2;
                }
            } else {
                top = this.f1083a.getHeight() - view.getMinimumHeight();
                int unused = this.f1083a.ad = 1;
                int top2 = this.d - view.getTop();
                if (top2 > this.f1083a.u) {
                    top = this.f1083a.getHeight() - height;
                    int unused2 = this.f1083a.ad = 0;
                } else if (top2 < (-this.f1083a.u) && this.f1083a.y) {
                    top = this.f1083a.getHeight();
                    int unused3 = this.f1083a.ad = 2;
                }
                this.c.a(left, top);
                this.f1083a.invalidate();
            }
            left = width;
            this.c.a(left, top);
            this.f1083a.invalidate();
        }

        public void a(View view, int i) {
            ((c) view.getLayoutParams()).c = false;
            b();
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x0048  */
        public void a(View view, int i, int i2, int i3, int i4) {
            float f;
            float width;
            int width2 = view.getWidth();
            int height = view.getHeight();
            int i5 = 4;
            if (this.f1083a.a(view, 3)) {
                width = (float) (i + width2);
            } else if (this.f1083a.a(view, 5)) {
                width = (float) (this.f1083a.getWidth() - i);
            } else {
                f = ((float) (this.f1083a.getMeasuredHeight() - i2)) / ((float) height);
                u.b(view, f == 0.0f ? 4 : 1);
                this.f1083a.b(view, f);
                if (f != 0.0f) {
                    i5 = 0;
                }
                view.setVisibility(i5);
                this.f1083a.invalidate();
            }
            f = width / ((float) width2);
            this.f1083a.b(view, f);
            if (f != 0.0f) {
            }
            view.setVisibility(i5);
            this.f1083a.invalidate();
        }

        public int b(View view, int i, int i2) {
            return Math.min(this.f1083a.getHeight(), Math.max(i, Math.max(this.f1083a.getHeight() - view.getHeight(), this.f1083a.r)));
        }

        public void b(int i, int i2) {
            View b2 = (i & 1) == 1 ? this.f1083a.b(3) : (i & 2) == 2 ? this.f1083a.b(5) : this.f1083a.b(80);
            if (b2 != null && this.f1083a.a(b2) == 0) {
                this.c.a(b2, i2);
            }
        }

        public boolean b(int i) {
            return false;
        }

        public boolean b(View view, int i) {
            return this.f1083a.g(view) && this.f1083a.a(view, this.f1084b) && this.f1083a.a(view) == 0;
        }
    }

    static {
        boolean z2 = true;
        if (Build.VERSION.SDK_INT < 21) {
            z2 = false;
        }
        d = z2;
    }

    private boolean a(float f2, float f3, View view) {
        if (this.W == null) {
            this.W = new Rect();
        }
        view.getHitRect(this.W);
        return this.W.contains((int) f2, (int) f3);
    }

    private boolean a(Drawable drawable, int i2) {
        if (drawable == null || !androidx.core.graphics.drawable.a.b(drawable)) {
            return false;
        }
        androidx.core.graphics.drawable.a.b(drawable, i2);
        return true;
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent b2 = b(motionEvent, view);
            boolean dispatchGenericMotionEvent = view.dispatchGenericMotionEvent(b2);
            b2.recycle();
            return dispatchGenericMotionEvent;
        }
        float scrollX = (float) (getScrollX() - view.getLeft());
        float scrollY = (float) (getScrollY() - view.getTop());
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean dispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return dispatchGenericMotionEvent2;
    }

    private MotionEvent b(MotionEvent motionEvent, View view) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation((float) (getScrollX() - view.getLeft()), (float) (getScrollY() - view.getTop()));
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.aa == null) {
                this.aa = new Matrix();
            }
            matrix.invert(this.aa);
            obtain.transform(this.aa);
        }
        return obtain;
    }

    static String c(int i2) {
        return (i2 & 3) == 3 ? "LEFT" : (i2 & 5) == 5 ? "RIGHT" : (i2 & 80) == 80 ? "BOTTOM" : Integer.toHexString(i2);
    }

    private void c(View view, boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((z2 || g(childAt)) && (!z2 || childAt != view)) {
                u.b(childAt, 4);
            } else {
                u.b(childAt, 1);
            }
        }
    }

    private void d() {
        if (!d) {
            this.L = e();
            this.M = f();
            this.N = this.U;
        }
    }

    private Drawable e() {
        int f2 = u.f(this);
        if (f2 == 0) {
            Drawable drawable = this.Q;
            if (drawable != null) {
                a(drawable, f2);
                return this.Q;
            }
        } else {
            Drawable drawable2 = this.R;
            if (drawable2 != null) {
                a(drawable2, f2);
                return this.R;
            }
        }
        return this.S;
    }

    private Drawable f() {
        int f2 = u.f(this);
        if (f2 == 0) {
            Drawable drawable = this.R;
            if (drawable != null) {
                a(drawable, f2);
                return this.R;
            }
        } else {
            Drawable drawable2 = this.Q;
            if (drawable2 != null) {
                a(drawable2, f2);
                return this.Q;
            }
        }
        return this.T;
    }

    private boolean g() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((c) getChildAt(i2).getLayoutParams()).c) {
                return true;
            }
        }
        return false;
    }

    private boolean h() {
        return c() != null;
    }

    static boolean l(View view) {
        return (u.e(view) == 4 || u.e(view) == 2) ? false : true;
    }

    private static boolean m(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    public int a(int i2) {
        int f2 = u.f(this);
        if (i2 == 3) {
            int i3 = this.z;
            if (i3 != 3) {
                return i3;
            }
            int i4 = f2 == 0 ? this.B : this.C;
            if (i4 != 3) {
                return i4;
            }
            return 0;
        } else if (i2 == 5) {
            int i5 = this.A;
            if (i5 != 3) {
                return i5;
            }
            int i6 = f2 == 0 ? this.C : this.B;
            if (i6 != 3) {
                return i6;
            }
            return 0;
        } else if (i2 == 80) {
            int i7 = this.D;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        } else if (i2 == 8388611) {
            int i8 = this.B;
            if (i8 != 3) {
                return i8;
            }
            int i9 = f2 == 0 ? this.z : this.A;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        } else if (i2 != 8388613) {
            return 0;
        } else {
            int i10 = this.C;
            if (i10 != 3) {
                return i10;
            }
            int i11 = f2 == 0 ? this.A : this.z;
            if (i11 != 3) {
                return i11;
            }
            return 0;
        }
    }

    public int a(View view) {
        if (g(view)) {
            return a(((c) view.getLayoutParams()).f1081a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* access modifiers changed from: package-private */
    public View a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            c cVar = (c) childAt.getLayoutParams();
            if ((cVar.d & 1) == 1) {
                return childAt;
            }
            if (a(childAt, 80) && cVar.f1082b > 0.0f) {
                return childAt;
            }
        }
        return null;
    }

    public void a(int i2, float f2, boolean z2) {
        if (f2 == 1.0f) {
            a(i2, z2);
        } else if (f2 == 0.0f) {
            b(i2, z2);
        } else {
            View b2 = b(i2);
            if (b2 != null) {
                c cVar = (c) b2.getLayoutParams();
                this.ad = 1;
                if (this.x) {
                    cVar.f1082b = f2;
                    cVar.d = 2;
                    c(b2, true);
                } else if (z2) {
                    cVar.d |= 2;
                    if (a(b2, 3)) {
                        this.k.a(b2, (int) (0.0f - (((float) b2.getWidth()) * f2)), b2.getTop());
                    } else if (a(b2, 5)) {
                        this.l.a(b2, (int) (((float) (getWidth() - b2.getWidth())) * f2), b2.getTop());
                    } else {
                        this.m.a(b2, b2.getPaddingLeft(), (int) (((float) getHeight()) - (((float) b2.getHeight()) * f2)));
                    }
                } else {
                    c(b2, f2);
                    a(cVar.f1081a, 0, b2);
                    b2.setVisibility(0);
                }
                invalidate();
                return;
            }
            throw new IllegalArgumentException("No drawer view found with gravity " + c(i2));
        }
    }

    public void a(int i2, int i3) {
        int a2 = androidx.core.g.c.a(i3, u.f(this));
        if (i3 == 3) {
            this.z = i2;
        } else if (i3 == 5) {
            this.A = i2;
        } else if (i3 == 80) {
            this.D = i2;
        } else if (i3 == 8388611) {
            this.B = i2;
        } else if (i3 == 8388613) {
            this.C = i2;
        }
        if (i2 != 0) {
            (a2 != 3 ? a2 != 5 ? this.m : this.l : this.k).e();
        }
        if (i2 == 1) {
            View b2 = b(a2);
            if (b2 != null) {
                i(b2);
            }
        } else if (i2 == 2) {
            View b3 = b(a2);
            if (b3 != null) {
                h(b3);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, View view) {
        int a2 = this.k.a();
        int a3 = this.l.a();
        int a4 = this.m.a();
        int i4 = (a2 == 1 || a3 == 1 || a4 == 1) ? 1 : (a2 == 2 || a3 == 2 || a4 == 2) ? 2 : 0;
        if (view != null && i3 == 0) {
            c cVar = (c) view.getLayoutParams();
            if (cVar.f1082b == 0.0f) {
                b(view);
            } else if (cVar.f1082b == 1.0f) {
                c(view);
            } else {
                cVar.d &= 2;
            }
        }
        if (i4 != this.v) {
            this.v = i4;
            List<b> list = this.H;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.H.get(size).a(i4);
                }
            }
        }
    }

    public void a(int i2, boolean z2) {
        View b2 = b(i2);
        if (b2 != null) {
            a(b2, z2);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + c(i2));
    }

    /* access modifiers changed from: package-private */
    public void a(View view, float f2) {
        List<b> list = this.H;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.H.get(size).a(view, f2);
            }
        }
    }

    public void a(View view, boolean z2) {
        if (g(view)) {
            c cVar = (c) view.getLayoutParams();
            this.ad = 0;
            if (this.x) {
                cVar.f1082b = 1.0f;
                cVar.d = 1;
                c(view, true);
            } else if (z2) {
                cVar.d |= 2;
                if (a(view, 3)) {
                    this.k.a(view, 0, view.getTop());
                } else if (a(view, 5)) {
                    this.l.a(view, getWidth() - view.getWidth(), view.getTop());
                } else {
                    this.m.a(view, view.getPaddingLeft(), 0);
                }
            } else {
                c(view, 1.0f);
                a(cVar.f1081a, 0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void a(b bVar) {
        if (bVar != null) {
            if (this.H == null) {
                this.H = new ArrayList();
            }
            this.H.add(bVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z2) {
        int childCount = getChildCount();
        boolean z3 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            c cVar = (c) childAt.getLayoutParams();
            if (g(childAt) && (!z2 || cVar.c)) {
                z3 |= a(childAt, 3) ? this.k.a(childAt, -childAt.getWidth(), childAt.getTop()) : a(childAt, 5) ? this.l.a(childAt, getWidth(), childAt.getTop()) : this.m.a(childAt, childAt.getLeft(), getHeight());
                cVar.c = false;
            }
        }
        this.n.a();
        this.o.a();
        this.p.a();
        if (z3) {
            invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(View view, int i2) {
        return (e(view) & i2) == i2;
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z2 = false;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (!g(childAt)) {
                    this.V.add(childAt);
                } else if (j(childAt)) {
                    childAt.addFocusables(arrayList, i2, i3);
                    z2 = true;
                }
            }
            if (!z2) {
                int size = this.V.size();
                for (int i5 = 0; i5 < size; i5++) {
                    View view = this.V.get(i5);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i2, i3);
                    }
                }
            }
            this.V.clear();
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (a() != null || g(view)) {
            u.b(view, 4);
        } else {
            u.b(view, 1);
        }
        if (!f1080b) {
            u.a(view, (androidx.core.g.a) this.e);
        }
    }

    /* access modifiers changed from: package-private */
    public View b(int i2) {
        int a2 = androidx.core.g.c.a(i2, u.f(this)) & 119;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if ((e(childAt) & 119) == a2) {
                return childAt;
            }
        }
        return null;
    }

    public void b() {
        a(false);
    }

    public void b(int i2, boolean z2) {
        View b2 = b(i2);
        if (b2 != null) {
            b(b2, z2);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + c(i2));
    }

    /* access modifiers changed from: package-private */
    public void b(View view) {
        c cVar = (c) view.getLayoutParams();
        if (a(view, 80) && cVar.d != 4) {
            cVar.d = 1;
        }
        if ((cVar.d & 1) == 1) {
            cVar.d = 0;
            List<b> list = this.H;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.H.get(size).b(view);
                }
            }
            c(view, false);
            if (hasWindowFocus()) {
                View rootView = getRootView();
                if (rootView != null) {
                    rootView.sendAccessibilityEvent(32);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(View view, float f2) {
        c cVar = (c) view.getLayoutParams();
        if (f2 != cVar.f1082b) {
            cVar.f1082b = f2;
            a(view, f2);
        }
    }

    public void b(View view, boolean z2) {
        if (g(view)) {
            c cVar = (c) view.getLayoutParams();
            this.ad = 2;
            if (this.x) {
                cVar.f1082b = 0.0f;
                cVar.d = 0;
            } else if (z2) {
                cVar.d |= 4;
                if (a(view, 3)) {
                    this.k.a(view, -view.getWidth(), view.getTop());
                } else if (a(view, 5)) {
                    this.l.a(view, getWidth(), view.getTop());
                } else {
                    this.m.a(view, view.getLeft(), getHeight());
                }
            } else {
                c(view, 0.0f);
                a(cVar.f1081a, 0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void b(b bVar) {
        if (bVar != null) {
            List<b> list = this.H;
            if (list != null) {
                list.remove(bVar);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public View c() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (g(childAt) && k(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void c(View view) {
        c cVar = (c) view.getLayoutParams();
        if ((cVar.d & 1) == 0) {
            cVar.d = 1;
            List<b> list = this.H;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.H.get(size).a(view);
                }
            }
            c(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c(View view, float f2) {
        float d2 = d(view);
        if (a(view, 80)) {
            view.offsetTopAndBottom((int) ((d2 - f2) * ((float) view.getMeasuredHeight())));
        } else {
            float width = (float) view.getWidth();
            int i2 = ((int) (width * f2)) - ((int) (d2 * width));
            if (!a(view, 3)) {
                i2 = -i2;
            }
            view.offsetLeftAndRight(i2);
        }
        b(view, f2);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof c) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f2 = Math.max(f2, ((c) getChildAt(i2).getLayoutParams()).f1082b);
        }
        this.i = f2;
        boolean a2 = this.k.a(true);
        boolean a3 = this.l.a(true);
        boolean a4 = this.m.a(true);
        if (a2 || a3 || a4) {
            u.d(this);
        }
    }

    /* access modifiers changed from: package-private */
    public float d(View view) {
        return ((c) view.getLayoutParams()).f1082b;
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.i <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            View childAt = getChildAt(i2);
            if (a(x2, y2, childAt) && !f(childAt) && a(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        int i2;
        Canvas canvas2 = canvas;
        View view2 = view;
        int height = getHeight();
        boolean f2 = f(view2);
        int width = getWidth();
        int height2 = getHeight();
        int save = canvas.save();
        int i3 = 80;
        int i4 = 0;
        if (f2) {
            int childCount = getChildCount();
            i2 = width;
            int i5 = height2;
            int i6 = 0;
            int i7 = 0;
            while (i6 < childCount) {
                View childAt = getChildAt(i6);
                if (childAt != view2 && childAt.getVisibility() == 0 && ((m(childAt) || a(childAt, i3)) && g(childAt) && childAt.getHeight() >= height)) {
                    if (a(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i7) {
                            i7 = right;
                        }
                    } else if (a(childAt, 5)) {
                        int left = childAt.getLeft();
                        if (left < i2) {
                            i2 = left;
                        }
                    } else {
                        int top = childAt.getTop();
                        if (top < i5) {
                            Rect rect = this.q;
                            i5 = top + (rect != null ? rect.height() : 0);
                        }
                    }
                }
                i6++;
                i3 = 80;
            }
            canvas2.clipRect(i7, 0, i2, i5);
            i4 = i7;
        } else {
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas2.restoreToCount(save);
        float f3 = this.i;
        if (f3 > 0.0f && f2) {
            int i8 = this.h;
            this.j.setColor((i8 & 16777215) | (((int) (((float) ((-16777216 & i8) >>> 24)) * f3)) << 24));
            canvas.drawRect((float) i4, 0.0f, (float) i2, (float) getHeight(), this.j);
        } else if (this.L != null && a(view2, 3)) {
            int intrinsicWidth = this.L.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(((float) right2) / ((float) this.k.b()), 1.0f));
            this.L.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.L.setAlpha((int) (max * 255.0f));
            this.L.draw(canvas2);
        } else if (this.M != null && a(view2, 5)) {
            int intrinsicWidth2 = this.M.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min(((float) (getWidth() - left2)) / ((float) this.l.b()), 1.0f));
            this.M.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.M.setAlpha((int) (max2 * 255.0f));
            this.M.draw(canvas2);
        } else if (this.N != null && a(view2, 80)) {
            int intrinsicHeight = this.N.getIntrinsicHeight();
            int top2 = view.getTop();
            float max3 = Math.max(0.0f, Math.min(((float) (getHeight() - top2)) / ((float) this.m.b()), 1.0f));
            this.N.setBounds(view.getLeft(), top2 - intrinsicHeight, view.getRight(), view.getBottom());
            this.M.setAlpha((int) (max3 * 255.0f));
            this.M.draw(canvas2);
        }
        return drawChild;
    }

    /* access modifiers changed from: package-private */
    public int e(View view) {
        return androidx.core.g.c.a(((c) view.getLayoutParams()).f1081a, u.f(this));
    }

    /* access modifiers changed from: package-private */
    public boolean f(View view) {
        return ((c) view.getLayoutParams()).f1081a == 0;
    }

    /* access modifiers changed from: package-private */
    public boolean g(View view) {
        int a2 = androidx.core.g.c.a(((c) view.getLayoutParams()).f1081a, u.f(view));
        return ((a2 & 3) == 0 && (a2 & 5) == 0 && (a2 & 80) == 0) ? false : true;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c ? new c((c) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    public int getBottomDrawerActionOffset() {
        return this.u;
    }

    public float getDrawerElevation() {
        if (d) {
            return this.f;
        }
        return 0.0f;
    }

    public int getSettlingDirection() {
        return this.ad;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.K;
    }

    public void h(View view) {
        a(view, true);
    }

    public void i(View view) {
        b(view, true);
    }

    public boolean j(View view) {
        if (g(view)) {
            return (((c) view.getLayoutParams()).d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean k(View view) {
        if (g(view)) {
            return ((c) view.getLayoutParams()).f1082b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.x = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.x = true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0020  */
    /* JADX WARNING: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    public void onDraw(Canvas canvas) {
        int i2;
        super.onDraw(canvas);
        if (this.P && this.K != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                Object obj = this.O;
                if (obj != null) {
                    i2 = ((WindowInsets) obj).getSystemWindowInsetTop();
                    if (i2 <= 0) {
                        this.K.setBounds(0, 0, getWidth(), i2);
                        this.K.draw(canvas);
                        return;
                    }
                    return;
                }
            }
            i2 = 0;
            if (i2 <= 0) {
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0050, code lost:
        if (r0 != 3) goto L_0x00c7;
     */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0107  */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3;
        int actionMasked = motionEvent.getActionMasked();
        boolean a2 = this.k.a(motionEvent) | this.l.a(motionEvent);
        View b2 = b(80);
        if (b2 != null) {
            c cVar = (c) b2.getLayoutParams();
            this.s = cVar.f1082b == 1.0f || cVar.f1082b == 0.0f;
        } else {
            this.s = true;
        }
        if (!this.s && this.t) {
            a2 |= this.m.a(motionEvent);
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.k.d(3)) {
                        this.n.a();
                        this.o.a();
                        float x2 = motionEvent.getX();
                        float y2 = motionEvent.getY();
                        if (this.t) {
                            if (this.q != null && x2 > ((float) (b2.getLeft() + this.q.left)) && x2 < ((float) (b2.getLeft() + this.q.right)) && y2 > ((float) (b2.getTop() + this.q.top)) && y2 < ((float) (b2.getTop() + this.q.bottom))) {
                                motionEvent.setAction(0);
                                this.m.b(motionEvent);
                                z2 = true;
                                z3 = false;
                            }
                        }
                        z2 = false;
                        z3 = false;
                    }
                }
                z2 = false;
                z3 = false;
            }
            a(true);
            this.E = false;
            this.F = false;
            z2 = false;
            z3 = false;
        } else {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            this.I = x3;
            this.J = y3;
            if (this.i > 0.0f) {
                View d2 = this.k.d((int) x3, (int) y3);
                if (d2 != null && f(d2)) {
                    z3 = true;
                    this.E = false;
                    this.F = false;
                    if (this.s) {
                        this.t = this.q.contains((int) x3, ((int) y3) - b2.getTop());
                    } else {
                        this.t = false;
                    }
                    z2 = false;
                }
            }
            z3 = false;
            this.E = false;
            this.F = false;
            if (this.s) {
            }
            z2 = false;
        }
        return a2 || z3 || g() || this.F || z2;
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || !h()) {
            return super.onKeyDown(i2, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        View c2 = c();
        if (c2 != null && a(c2) == 0) {
            b();
        }
        return c2 != null;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        float f2;
        int i6;
        boolean z3 = true;
        this.w = true;
        int i7 = i4 - i2;
        int childCount = getChildCount();
        int i8 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (f(childAt)) {
                    childAt.layout(cVar.leftMargin, cVar.topMargin, cVar.leftMargin + childAt.getMeasuredWidth(), cVar.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        float f3 = (float) measuredWidth;
                        i6 = (-measuredWidth) + ((int) (cVar.f1082b * f3));
                        f2 = ((float) (measuredWidth + i6)) / f3;
                    } else if (a(childAt, 5)) {
                        float f4 = (float) measuredWidth;
                        int i9 = i7 - ((int) (cVar.f1082b * f4));
                        f2 = ((float) (i7 - i9)) / f4;
                        i6 = i9;
                    } else {
                        int i10 = i5 - i3;
                        float f5 = (float) measuredHeight;
                        f2 = ((float) (i10 - (i10 - ((int) (cVar.f1082b * f5))))) / f5;
                        i6 = childAt.getPaddingLeft();
                    }
                    boolean z4 = f2 != cVar.f1082b ? z3 : false;
                    int i11 = cVar.f1081a & 119;
                    if (i11 == 16) {
                        int i12 = i5 - i3;
                        int i13 = (i12 - measuredHeight) / 2;
                        if (i13 < cVar.topMargin) {
                            i13 = cVar.topMargin;
                        } else if (i13 + measuredHeight > i12 - cVar.bottomMargin) {
                            i13 = (i12 - cVar.bottomMargin) - measuredHeight;
                        }
                        childAt.layout(i6, i13, measuredWidth + i6, measuredHeight + i13);
                    } else if (i11 != 80) {
                        childAt.layout(i6, cVar.topMargin, measuredWidth + i6, cVar.topMargin + measuredHeight);
                    } else {
                        int measuredHeight2 = (int) (((float) (i5 - i3)) - (((c) childAt.getLayoutParams()).f1082b * ((float) childAt.getMeasuredHeight())));
                        childAt.layout(i6, measuredHeight2, measuredWidth + i6, (childAt.getMeasuredHeight() + measuredHeight2) - cVar.bottomMargin);
                    }
                    if (z4) {
                        b(childAt, f2);
                    }
                    int i14 = cVar.f1082b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i14) {
                        childAt.setVisibility(i14);
                    }
                }
            }
            i8++;
            z3 = true;
        }
        this.w = false;
        this.x = false;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x012d  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x014e  */
    @SuppressLint({"WrongConstant"})
    public void onMeasure(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int i6;
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        char c2 = 0;
        if (!(mode == 1073741824 && mode2 == 1073741824)) {
            if (isInEditMode()) {
                if (mode != Integer.MIN_VALUE && mode == 0) {
                    size = 300;
                }
                if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                    size2 = 300;
                }
            } else {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
        }
        setMeasuredDimension(size, size2);
        boolean z3 = this.O != null && u.q(this);
        int f2 = u.f(this);
        int childCount = getChildCount();
        int i7 = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                z2 = z3;
                char c3 = c2;
            } else {
                c cVar = (c) childAt.getLayoutParams();
                if (z3) {
                    int a2 = androidx.core.g.c.a(cVar.f1081a, f2);
                    if (!u.q(childAt)) {
                        z2 = z3;
                        if (Build.VERSION.SDK_INT >= 21) {
                            WindowInsets windowInsets = (WindowInsets) this.O;
                            if (a2 == 3) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
                                i4 = 0;
                            } else {
                                i4 = 0;
                                if (a2 == 5) {
                                    windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                                } else if (a2 == 80) {
                                    windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                                }
                            }
                            cVar.leftMargin = windowInsets.getSystemWindowInsetLeft();
                            cVar.topMargin = windowInsets.getSystemWindowInsetTop();
                            cVar.rightMargin = windowInsets.getSystemWindowInsetRight();
                            cVar.bottomMargin = windowInsets.getSystemWindowInsetBottom();
                            if (f(childAt)) {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec((size - cVar.leftMargin) - cVar.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - cVar.topMargin) - cVar.bottomMargin, 1073741824));
                            } else if (g(childAt)) {
                                if (d) {
                                    float l2 = u.l(childAt);
                                    float f3 = this.f;
                                    if (l2 != f3) {
                                        u.a(childAt, f3);
                                    }
                                }
                                int e2 = e(childAt) & 119;
                                int i8 = e2 == 3 ? 1 : i4;
                                if (e2 == 5) {
                                    i6 = 80;
                                    i5 = 1;
                                } else {
                                    i5 = i4;
                                    i6 = 80;
                                }
                                int i9 = e2 == i6 ? 1 : i4;
                                if ((i8 == 0 || !z4) && ((i5 == 0 || !z5) && (i9 == 0 || !z6))) {
                                    if (i8 != 0) {
                                        z4 = true;
                                    } else if (i5 != 0) {
                                        z5 = true;
                                    } else {
                                        z6 = true;
                                    }
                                    childAt.measure(getChildMeasureSpec(i2, i9 != 0 ? i4 : this.g + cVar.leftMargin + cVar.rightMargin, cVar.width), getChildMeasureSpec(i3, cVar.topMargin + cVar.bottomMargin, cVar.height));
                                    i7++;
                                    z3 = z2;
                                    c2 = 0;
                                } else {
                                    throw new IllegalStateException("Child drawer has absolute gravity " + c(e2) + " but this " + "DrawerLayout" + " already has a " + "drawer view along that edge");
                                }
                            } else {
                                throw new IllegalStateException("Child " + childAt + " at index " + i7 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
                            }
                        }
                    } else if (Build.VERSION.SDK_INT >= 21) {
                        WindowInsets windowInsets2 = (WindowInsets) this.O;
                        if (a2 == 3) {
                            z2 = z3;
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), windowInsets2.getSystemWindowInsetTop(), 0, windowInsets2.getSystemWindowInsetBottom());
                        } else {
                            z2 = z3;
                            if (a2 == 5) {
                                windowInsets2 = windowInsets2.replaceSystemWindowInsets(0, windowInsets2.getSystemWindowInsetTop(), windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                            } else if (a2 == 80) {
                                windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), 0, windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                            }
                        }
                        childAt.dispatchApplyWindowInsets(windowInsets2);
                    }
                    i4 = 0;
                    if (f(childAt)) {
                    }
                }
                z2 = z3;
                i4 = 0;
                if (f(childAt)) {
                }
            }
            int i10 = i2;
            int i11 = i3;
            i7++;
            z3 = z2;
            c2 = 0;
        }
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!(savedState.openDrawerGravity == 0 || b(savedState.openDrawerGravity) == null)) {
            a(savedState.openDrawerGravity, savedState.onScreen, false);
        }
        if (savedState.lockModeLeft != 3) {
            a(savedState.lockModeLeft, 3);
        }
        if (savedState.lockModeRight != 3) {
            a(savedState.lockModeRight, 5);
        }
        if (savedState.lockModeStart != 3) {
            a(savedState.lockModeStart, 8388611);
        }
        if (savedState.lockModeEnd != 3) {
            a(savedState.lockModeEnd, 8388613);
        }
        if (savedState.lockModeBottom != 3) {
            a(savedState.lockModeBottom, 80);
        }
    }

    public void onRtlPropertiesChanged(int i2) {
        d();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            c cVar = (c) getChildAt(i2).getLayoutParams();
            boolean z2 = true;
            boolean z3 = cVar.d == 1;
            if (cVar.d != 2) {
                z2 = false;
            }
            if (z3 || z2) {
                savedState.openDrawerGravity = cVar.f1081a;
                savedState.onScreen = cVar.f1082b;
            } else {
                i2++;
            }
        }
        savedState.lockModeLeft = this.z;
        savedState.lockModeRight = this.A;
        savedState.lockModeStart = this.B;
        savedState.lockModeEnd = this.C;
        savedState.lockModeBottom = this.D;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        this.k.b(motionEvent);
        this.l.b(motionEvent);
        if (!this.s && this.t) {
            this.m.b(motionEvent);
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.I = x2;
            this.J = y2;
            this.E = false;
            this.F = false;
        } else if (action == 1) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            View d2 = this.k.d((int) x3, (int) y3);
            View a2 = a();
            if (d2 != null && f(d2)) {
                float f2 = x3 - this.I;
                float f3 = y3 - this.J;
                int d3 = this.k.d();
                if (!((f2 * f2) + (f3 * f3) >= ((float) (d3 * d3)) || a2 == null || a(a2) == 2)) {
                    z2 = false;
                    if (!this.y || a2 == null || z2) {
                        a(z2);
                    } else {
                        this.ac = a2;
                        this.ab.b(100.0d);
                    }
                    this.E = false;
                    this.t = false;
                }
            }
            z2 = true;
            if (!this.y) {
            }
            a(z2);
            this.E = false;
            this.t = false;
        } else if (action == 3) {
            a(true);
            this.E = false;
            this.F = false;
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        this.E = z2;
        if (z2) {
            a(true);
        }
    }

    public void requestLayout() {
        if (!this.w) {
            super.requestLayout();
        }
    }

    public void setBottomDrawerActionOffset(int i2) {
        this.u = i2;
    }

    public void setDragRect(Rect rect) {
        this.q = rect;
    }

    public void setDrawerElevation(float f2) {
        this.f = f2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (g(childAt)) {
                u.a(childAt, this.f);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(b bVar) {
        b bVar2 = this.G;
        if (bVar2 != null) {
            b(bVar2);
        }
        if (bVar != null) {
            a(bVar);
        }
        this.G = bVar;
    }

    public void setDrawerLockMode(int i2) {
        a(i2, 3);
        a(i2, 5);
        a(i2, 80);
    }

    public void setOffsetMinTop(int i2) {
        this.r = i2;
    }

    public void setScrimColor(int i2) {
        this.h = i2;
        invalidate();
    }

    public void setStatusBarBackground(int i2) {
        this.K = i2 != 0 ? androidx.core.a.a.a(getContext(), i2) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.K = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i2) {
        this.K = new ColorDrawable(i2);
        invalidate();
    }
}
