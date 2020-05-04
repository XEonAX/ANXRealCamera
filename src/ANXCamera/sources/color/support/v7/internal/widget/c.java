package color.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

/* compiled from: ListViewCompat */
public class c extends ListView {
    private static final int[] f = {0};

    /* renamed from: a  reason: collision with root package name */
    final Rect f1401a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    int f1402b = 0;
    int c = 0;
    int d = 0;
    int e = 0;
    private Field g;
    private a h;

    /* compiled from: ListViewCompat */
    private static class a extends androidx.appcompat.b.a.c {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1403a = true;

        public a(Drawable drawable) {
            super(drawable);
        }

        /* access modifiers changed from: package-private */
        public void a(boolean z) {
            this.f1403a = z;
        }

        public void draw(Canvas canvas) {
            if (this.f1403a) {
                super.draw(canvas);
            }
        }

        public boolean setState(int[] iArr) {
            if (this.f1403a) {
                return super.setState(iArr);
            }
            return false;
        }

        public boolean setVisible(boolean z, boolean z2) {
            if (this.f1403a) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    public c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        try {
            this.g = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.g.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    public int a(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i7 = i6;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        View view = null;
        while (i8 < count) {
            int itemViewType = adapter.getItemViewType(i8);
            if (itemViewType != i9) {
                view = null;
                i9 = itemViewType;
            }
            view = adapter.getView(i8, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            view.measure(i, (layoutParams == null || layoutParams.height <= 0) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
            if (i8 > 0) {
                i7 += dividerHeight;
            }
            i7 += view.getMeasuredHeight();
            if (i7 >= i4) {
                return (i5 < 0 || i8 <= i5 || i10 <= 0 || i7 == i4) ? i4 : i10;
            }
            if (i5 >= 0 && i8 >= i5) {
                i10 = i7;
            }
            i8++;
        }
        return i7;
    }

    /* access modifiers changed from: protected */
    public void a() {
        Drawable selector = getSelector();
        if (selector != null && b()) {
            selector.setState(getDrawableState());
        }
    }

    /* access modifiers changed from: protected */
    public void a(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        b(i, view);
        if (z2) {
            Rect rect = this.f1401a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            androidx.core.graphics.drawable.a.a(selector, exactCenterX, exactCenterY);
        }
    }

    /* access modifiers changed from: protected */
    public void a(int i, View view, float f2, float f3) {
        a(i, view);
        Drawable selector = getSelector();
        if (selector != null && i != -1) {
            androidx.core.graphics.drawable.a.a(selector, f2, f3);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas) {
        if (!this.f1401a.isEmpty()) {
            Drawable selector = getSelector();
            if (selector != null) {
                selector.setBounds(this.f1401a);
                selector.draw(canvas);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(int i, View view) {
        Rect rect = this.f1401a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1402b;
        rect.top -= this.c;
        rect.right += this.d;
        rect.bottom += this.e;
        try {
            boolean z = this.g.getBoolean(this);
            if (view.isEnabled() != z) {
                this.g.set(this, Boolean.valueOf(!z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return c() && isPressed();
    }

    /* access modifiers changed from: protected */
    public boolean c() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        a(canvas);
        super.dispatchDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        setSelectorEnabled(true);
        a();
    }

    public void setSelector(Drawable drawable) {
        this.h = drawable != null ? new a(drawable) : null;
        super.setSelector(this.h);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1402b = rect.left;
        this.c = rect.top;
        this.d = rect.right;
        this.e = rect.bottom;
    }

    /* access modifiers changed from: protected */
    public void setSelectorEnabled(boolean z) {
        a aVar = this.h;
        if (aVar != null) {
            aVar.a(z);
        }
    }
}
