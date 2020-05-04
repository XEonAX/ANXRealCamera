package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
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
import androidx.core.g.u;
import androidx.customview.view.AbsSavedState;
import com.google.protobuf.nano.MessageNano;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    View f1009a;

    /* renamed from: b  reason: collision with root package name */
    float f1010b;
    int c;
    boolean d;
    final androidx.customview.a.c e;
    boolean f;
    final ArrayList<a> g;
    private int h;
    private int i;
    private Drawable j;
    private Drawable k;
    private final int l;
    private boolean m;
    private float n;
    private int o;
    private float p;
    private float q;
    private c r;
    private boolean s;
    private final Rect t;
    private Method u;
    private Field v;
    private boolean w;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean isOpen;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isOpen = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isOpen ? 1 : 0);
        }
    }

    private class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final View f1011a;

        a(View view) {
            this.f1011a = view;
        }

        public void run() {
            if (this.f1011a.getParent() == SlidingPaneLayout.this) {
                this.f1011a.setLayerType(0, (Paint) null);
                SlidingPaneLayout.this.b(this.f1011a);
            }
            SlidingPaneLayout.this.g.remove(this);
        }
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        private static final int[] e = {16843137};

        /* renamed from: a  reason: collision with root package name */
        public float f1013a = 0.0f;

        /* renamed from: b  reason: collision with root package name */
        boolean f1014b;
        boolean c;
        Paint d;

        public b() {
            super(-1, -1);
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.f1013a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public interface c {
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0023  */
    private void a(float f2) {
        boolean z;
        int childCount;
        boolean f3 = f();
        b bVar = (b) this.f1009a.getLayoutParams();
        if (bVar.c) {
            if ((f3 ? bVar.rightMargin : bVar.leftMargin) <= 0) {
                z = true;
                childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    if (childAt != this.f1009a) {
                        int i3 = this.o;
                        this.n = f2;
                        int i4 = ((int) ((1.0f - this.n) * ((float) i3))) - ((int) ((1.0f - f2) * ((float) i3)));
                        if (f3) {
                            i4 = -i4;
                        }
                        childAt.offsetLeftAndRight(i4);
                        if (z) {
                            a(childAt, f3 ? this.n - 1.0f : 1.0f - this.n, this.i);
                        }
                    }
                }
            }
        }
        z = false;
        childCount = getChildCount();
        while (i2 < childCount) {
        }
    }

    private void a(View view, float f2, int i2) {
        b bVar = (b) view.getLayoutParams();
        if (f2 > 0.0f && i2 != 0) {
            int i3 = (((int) (((float) ((-16777216 & i2) >>> 24)) * f2)) << 24) | (i2 & 16777215);
            if (bVar.d == null) {
                bVar.d = new Paint();
            }
            bVar.d.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, bVar.d);
            }
            b(view);
        } else if (view.getLayerType() != 0) {
            if (bVar.d != null) {
                bVar.d.setColorFilter((ColorFilter) null);
            }
            a aVar = new a(view);
            this.g.add(aVar);
            u.a((View) this, (Runnable) aVar);
        }
    }

    private boolean a(View view, int i2) {
        if (!this.s && !a(0.0f, i2)) {
            return false;
        }
        this.f = false;
        return true;
    }

    private boolean b(View view, int i2) {
        if (!this.s && !a(1.0f, i2)) {
            return false;
        }
        this.f = true;
        return true;
    }

    private static boolean d(View view) {
        if (view.isOpaque()) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            return false;
        }
        Drawable background = view.getBackground();
        if (background != null) {
            return background.getOpacity() == -1;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(View view) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        View view2 = view;
        boolean f2 = f();
        int width = f2 ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = f2 ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !d(view)) {
            i5 = 0;
            i4 = 0;
            i3 = 0;
            i2 = 0;
        } else {
            i5 = view.getLeft();
            i4 = view.getRight();
            i3 = view.getTop();
            i2 = view.getBottom();
        }
        int childCount = getChildCount();
        int i7 = 0;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            if (childAt != view2) {
                if (childAt.getVisibility() == 8) {
                    z = f2;
                } else {
                    int max = Math.max(f2 ? paddingLeft : width, childAt.getLeft());
                    int max2 = Math.max(paddingTop, childAt.getTop());
                    if (f2) {
                        z = f2;
                        i6 = width;
                    } else {
                        z = f2;
                        i6 = paddingLeft;
                    }
                    childAt.setVisibility((max < i5 || max2 < i3 || Math.min(i6, childAt.getRight()) > i4 || Math.min(height, childAt.getBottom()) > i2) ? 0 : 4);
                }
                i7++;
                view2 = view;
                f2 = z;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(float f2, int i2) {
        int i3;
        if (!this.m) {
            return false;
        }
        boolean f3 = f();
        b bVar = (b) this.f1009a.getLayoutParams();
        if (f3) {
            i3 = (int) (((float) getWidth()) - ((((float) (getPaddingRight() + bVar.rightMargin)) + (f2 * ((float) this.c))) + ((float) this.f1009a.getWidth())));
        } else {
            i3 = (int) (((float) (getPaddingLeft() + bVar.leftMargin)) + (f2 * ((float) this.c)));
        }
        androidx.customview.a.c cVar = this.e;
        View view = this.f1009a;
        if (!cVar.a(view, i3, view.getTop())) {
            return false;
        }
        a();
        u.d(this);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void b(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            u.a(view, ((b) view.getLayoutParams()).d);
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (!this.w) {
                try {
                    this.u = View.class.getDeclaredMethod("getDisplayList", (Class[]) null);
                } catch (NoSuchMethodException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e2);
                }
                try {
                    this.v = View.class.getDeclaredField("mRecreateDisplayList");
                    this.v.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e3);
                }
                this.w = true;
            }
            if (this.u != null) {
                Field field = this.v;
                if (field != null) {
                    try {
                        field.setBoolean(view, true);
                        this.u.invoke(view, (Object[]) null);
                    } catch (Exception e4) {
                        Log.e("SlidingPaneLayout", "Error refreshing display list state", e4);
                    }
                }
            }
            view.invalidate();
            return;
        }
        u.a(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public boolean b() {
        return b(this.f1009a, 0);
    }

    public boolean c() {
        return a(this.f1009a, 0);
    }

    /* access modifiers changed from: package-private */
    public boolean c(View view) {
        if (view == null) {
            return false;
        }
        return this.m && ((b) view.getLayoutParams()).c && this.f1010b > 0.0f;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof b) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        if (!this.e.a(true)) {
            return;
        }
        if (!this.m) {
            this.e.f();
        } else {
            u.d(this);
        }
    }

    public boolean d() {
        return !this.m || this.f1010b == 1.0f;
    }

    public void draw(Canvas canvas) {
        int i2;
        int i3;
        super.draw(canvas);
        Drawable drawable = f() ? this.k : this.j;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (f()) {
                i3 = childAt.getRight();
                i2 = intrinsicWidth + i3;
            } else {
                int left = childAt.getLeft();
                int i4 = left - intrinsicWidth;
                i2 = left;
                i3 = i4;
            }
            drawable.setBounds(i3, top, i2, bottom);
            drawable.draw(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        b bVar = (b) view.getLayoutParams();
        int save = canvas.save();
        if (this.m && !bVar.f1014b && this.f1009a != null) {
            canvas.getClipBounds(this.t);
            if (f()) {
                Rect rect = this.t;
                rect.left = Math.max(rect.left, this.f1009a.getRight());
            } else {
                Rect rect2 = this.t;
                rect2.right = Math.min(rect2.right, this.f1009a.getLeft());
            }
            canvas.clipRect(this.t);
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        return drawChild;
    }

    public boolean e() {
        return this.m;
    }

    /* access modifiers changed from: package-private */
    public boolean f() {
        return u.f(this) == 1;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new b();
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.i;
    }

    public int getParallaxDistance() {
        return this.o;
    }

    public int getSliderFadeColor() {
        return this.h;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.s = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.s = true;
        int size = this.g.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.g.get(i2).run();
        }
        this.g.clear();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.m && actionMasked == 0 && getChildCount() > 1) {
            if (getChildAt(1) != null) {
                this.f = !this.e.b(r1, (int) motionEvent.getX(), (int) motionEvent.getY());
            }
        }
        if (!this.m || (this.d && actionMasked != 0)) {
            this.e.e();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.e.e();
            return false;
        } else {
            if (actionMasked == 0) {
                this.d = false;
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.p = x;
                this.q = y;
                if (this.e.b(this.f1009a, (int) x, (int) y) && c(this.f1009a)) {
                    z = true;
                    return this.e.a(motionEvent) || z;
                }
            } else if (actionMasked == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float abs = Math.abs(x2 - this.p);
                float abs2 = Math.abs(y2 - this.q);
                if (abs > ((float) this.e.d()) && abs2 > abs) {
                    this.e.e();
                    this.d = true;
                    return false;
                }
            }
            z = false;
            if (this.e.a(motionEvent)) {
                return true;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        boolean f2 = f();
        if (f2) {
            this.e.a(2);
        } else {
            this.e.a(1);
        }
        int i10 = i4 - i2;
        int paddingRight = f2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = f2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.s) {
            this.f1010b = (!this.m || !this.f) ? 0.0f : 1.0f;
        }
        int i11 = paddingRight;
        int i12 = i11;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                b bVar = (b) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (bVar.f1014b) {
                    int i14 = i10 - paddingLeft;
                    int min = (Math.min(i11, i14 - this.l) - i12) - (bVar.leftMargin + bVar.rightMargin);
                    this.c = min;
                    int i15 = f2 ? bVar.rightMargin : bVar.leftMargin;
                    bVar.c = ((i12 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (((float) min) * this.f1010b);
                    i7 = i15 + i16 + i12;
                    this.f1010b = ((float) i16) / ((float) this.c);
                    i6 = 0;
                } else {
                    if (this.m) {
                        int i17 = this.o;
                        if (i17 != 0) {
                            i6 = (int) ((1.0f - this.f1010b) * ((float) i17));
                            i7 = i11;
                        }
                    }
                    i7 = i11;
                    i6 = 0;
                }
                if (f2) {
                    i8 = (i10 - i7) + i6;
                    i9 = i8 - measuredWidth;
                } else {
                    i9 = i7 - i6;
                    i8 = i9 + measuredWidth;
                }
                childAt.layout(i9, paddingTop, i8, childAt.getMeasuredHeight() + paddingTop);
                i11 += childAt.getWidth();
                i12 = i7;
            }
        }
        if (this.s) {
            if (this.m) {
                if (this.o != 0) {
                    a(this.f1010b);
                }
                if (((b) this.f1009a.getLayoutParams()).c) {
                    a(this.f1009a, this.f1010b, this.h);
                }
            } else {
                for (int i18 = 0; i18 < childCount; i18++) {
                    a(getChildAt(i18), 0.0f, this.h);
                }
            }
            a(this.f1009a);
        }
        this.s = false;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            } else if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            } else if (mode2 == 0) {
                size2 = 300;
                mode2 = Integer.MIN_VALUE;
            }
        }
        boolean z = false;
        if (mode2 != Integer.MIN_VALUE) {
            i5 = mode2 != 1073741824 ? 0 : (size2 - getPaddingTop()) - getPaddingBottom();
            i4 = i5;
        } else {
            i4 = (size2 - getPaddingTop()) - getPaddingBottom();
            i5 = 0;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f1009a = null;
        boolean z2 = false;
        int i10 = i5;
        int i11 = paddingLeft;
        float f2 = 0.0f;
        int i12 = 0;
        while (true) {
            i6 = 8;
            if (i12 >= childCount) {
                break;
            }
            View childAt = getChildAt(i12);
            b bVar = (b) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                bVar.c = z;
            } else {
                if (bVar.f1013a > 0.0f) {
                    f2 += bVar.f1013a;
                    if (bVar.width == 0) {
                    }
                }
                int i13 = bVar.leftMargin + bVar.rightMargin;
                childAt.measure(bVar.width == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, MessageNano.UNSET_ENUM_VALUE) : bVar.width == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, 1073741824) : View.MeasureSpec.makeMeasureSpec(bVar.width, 1073741824), bVar.height == -2 ? View.MeasureSpec.makeMeasureSpec(i4, MessageNano.UNSET_ENUM_VALUE) : bVar.height == -1 ? View.MeasureSpec.makeMeasureSpec(i4, 1073741824) : View.MeasureSpec.makeMeasureSpec(bVar.height, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (mode2 == Integer.MIN_VALUE && measuredHeight > i10) {
                    i10 = Math.min(measuredHeight, i4);
                }
                i11 -= measuredWidth;
                boolean z3 = i11 < 0;
                bVar.f1014b = z3;
                boolean z4 = z3 | z2;
                if (bVar.f1014b) {
                    this.f1009a = childAt;
                }
                z2 = z4;
            }
            i12++;
            z = false;
        }
        if (z2 || f2 > 0.0f) {
            int i14 = paddingLeft - this.l;
            int i15 = 0;
            while (i15 < childCount) {
                View childAt2 = getChildAt(i15);
                if (childAt2.getVisibility() != i6) {
                    b bVar2 = (b) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i6) {
                        boolean z5 = bVar2.width == 0 && bVar2.f1013a > 0.0f;
                        int measuredWidth2 = z5 ? 0 : childAt2.getMeasuredWidth();
                        if (!z2 || childAt2 == this.f1009a) {
                            if (bVar2.f1013a > 0.0f) {
                                int makeMeasureSpec = bVar2.width == 0 ? bVar2.height == -2 ? View.MeasureSpec.makeMeasureSpec(i4, MessageNano.UNSET_ENUM_VALUE) : bVar2.height == -1 ? View.MeasureSpec.makeMeasureSpec(i4, 1073741824) : View.MeasureSpec.makeMeasureSpec(bVar2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                if (z2) {
                                    int i16 = paddingLeft - (bVar2.leftMargin + bVar2.rightMargin);
                                    i7 = i14;
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i16, 1073741824);
                                    if (measuredWidth2 != i16) {
                                        childAt2.measure(makeMeasureSpec2, makeMeasureSpec);
                                    }
                                    i15++;
                                    i14 = i7;
                                    i6 = 8;
                                } else {
                                    i7 = i14;
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((bVar2.f1013a * ((float) Math.max(0, i11))) / f2)), 1073741824), makeMeasureSpec);
                                    i15++;
                                    i14 = i7;
                                    i6 = 8;
                                }
                            }
                        } else if (bVar2.width < 0 && (measuredWidth2 > i14 || bVar2.f1013a > 0.0f)) {
                            if (!z5) {
                                i8 = 1073741824;
                                i9 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            } else if (bVar2.height == -2) {
                                i9 = View.MeasureSpec.makeMeasureSpec(i4, MessageNano.UNSET_ENUM_VALUE);
                                i8 = 1073741824;
                            } else if (bVar2.height == -1) {
                                i8 = 1073741824;
                                i9 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                            } else {
                                i8 = 1073741824;
                                i9 = View.MeasureSpec.makeMeasureSpec(bVar2.height, 1073741824);
                            }
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i14, i8), i9);
                        }
                    }
                }
                i7 = i14;
                i15++;
                i14 = i7;
                i6 = 8;
            }
        }
        setMeasuredDimension(size, i10 + getPaddingTop() + getPaddingBottom());
        this.m = z2;
        if (this.e.a() != 0 && !z2) {
            this.e.f();
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
        if (savedState.isOpen) {
            b();
        } else {
            c();
        }
        this.f = savedState.isOpen;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isOpen = e() ? d() : this.f;
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            this.s = true;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.m) {
            return super.onTouchEvent(motionEvent);
        }
        this.e.b(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.p = x;
            this.q = y;
        } else if (actionMasked == 1 && c(this.f1009a)) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f2 = x2 - this.p;
            float f3 = y2 - this.q;
            int d2 = this.e.d();
            if ((f2 * f2) + (f3 * f3) < ((float) (d2 * d2)) && this.e.b(this.f1009a, (int) x2, (int) y2)) {
                a(this.f1009a, 0);
            }
        }
        return true;
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.m) {
            this.f = view == this.f1009a;
        }
    }

    public void setCoveredFadeColor(int i2) {
        this.i = i2;
    }

    public void setPanelSlideListener(c cVar) {
        this.r = cVar;
    }

    public void setParallaxDistance(int i2) {
        this.o = i2;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.j = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.k = drawable;
    }

    @Deprecated
    public void setShadowResource(int i2) {
        setShadowDrawable(getResources().getDrawable(i2));
    }

    public void setShadowResourceLeft(int i2) {
        setShadowDrawableLeft(androidx.core.a.a.a(getContext(), i2));
    }

    public void setShadowResourceRight(int i2) {
        setShadowDrawableRight(androidx.core.a.a.a(getContext(), i2));
    }

    public void setSliderFadeColor(int i2) {
        this.h = i2;
    }
}
