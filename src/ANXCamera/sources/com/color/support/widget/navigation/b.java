package com.color.support.widget.navigation;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.os.Build;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;

/* compiled from: ColorNavigationMenuView */
public class b extends ViewGroup implements n {

    /* renamed from: a  reason: collision with root package name */
    private View.OnClickListener f1728a;

    /* renamed from: b  reason: collision with root package name */
    private a[] f1729b;
    private ColorStateList c;
    private ColorStateList d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int[] k;
    private boolean l;
    private int m;
    private SparseArray<a> n;
    private ColorNavigationPresenter o;
    private g p;

    /* compiled from: ColorNavigationMenuView */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f1730a;

        /* renamed from: b  reason: collision with root package name */
        private int f1731b;

        public int a() {
            return this.f1730a;
        }

        public int b() {
            return this.f1731b;
        }
    }

    private boolean c() {
        return Build.VERSION.SDK_INT > 16 && getLayoutDirection() == 1;
    }

    private a getNewItem() {
        return new a(getContext());
    }

    public void a() {
        int size = this.p.size();
        if (size != 0) {
            removeAllViews();
        }
        if (size == 0) {
            this.f = 0;
            this.g = 0;
            this.f1729b = null;
            return;
        }
        this.f1729b = new a[size];
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = (i) this.p.getItem(i2);
            if (iVar.isVisible()) {
                if (i2 >= 5) {
                    break;
                }
                a newItem = getNewItem();
                this.f1729b[i2] = newItem;
                newItem.setIconTintList(this.d);
                newItem.setTextColor(this.c);
                newItem.setTextSize(this.i);
                newItem.setItemBackground(this.h);
                newItem.a(iVar, 0);
                newItem.setItemPosition(i2);
                newItem.setOnClickListener(this.f1728a);
                a aVar = this.n.get(iVar.getItemId());
                if (aVar != null) {
                    newItem.a(aVar.a(), aVar.b());
                }
                addView(newItem);
            }
        }
        this.g = Math.min(this.p.size() - 1, this.g);
        this.p.getItem(this.g).setChecked(true);
    }

    /* access modifiers changed from: package-private */
    public void a(int i2) {
        int size = this.p.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = this.p.getItem(i3);
            if (i2 == item.getItemId()) {
                this.f = i2;
                this.g = i3;
                item.setChecked(true);
                return;
            }
        }
    }

    public void a(g gVar) {
        this.p = gVar;
    }

    public void b() {
        int size = this.p.size();
        if (size != this.f1729b.length) {
            a();
            return;
        }
        int i2 = this.f;
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = this.p.getItem(i3);
            if (item.isChecked()) {
                this.f = item.getItemId();
                this.g = i3;
            }
        }
        if (i2 != this.f) {
            int i4 = Build.VERSION.SDK_INT;
        }
        for (int i5 = 0; i5 < size; i5++) {
            if (this.f1729b[i5] != null) {
                this.o.b(true);
                this.f1729b[i5].a((i) this.p.getItem(i5), 0);
                this.o.b(false);
            }
        }
    }

    public ColorStateList getIconTintList() {
        return this.d;
    }

    public int getItemBackgroundRes() {
        return this.h;
    }

    public ColorStateList getItemTextColor() {
        return this.c;
    }

    public int getSelectedItemId() {
        return this.f;
    }

    public int getWindowAnimations() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int b2 = com.color.support.d.g.b(getContext());
        if (b2 != this.m) {
            a();
            this.m = b2;
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                if (c()) {
                    int i10 = i6 - i8;
                    childAt.layout(i10 - childAt.getMeasuredWidth(), 0, i10, i7);
                } else {
                    childAt.layout(i8, 0, childAt.getMeasuredWidth() + i8, i7);
                }
                i8 += childAt.getMeasuredWidth();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2) - (this.j * 2);
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.e, 1073741824);
        int i4 = size / (childCount == 0 ? 1 : childCount);
        int i5 = size - (i4 * childCount);
        for (int i6 = 0; i6 < childCount; i6++) {
            int[] iArr = this.k;
            iArr[i6] = i4;
            if (i5 > 0) {
                iArr[i6] = iArr[i6] + 1;
                i5--;
            }
        }
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                if (childCount == 1) {
                    int i9 = this.j;
                    childAt.setPadding(i9, 0, i9, 0);
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(this.k[i8] + (this.j * 2), 1073741824), makeMeasureSpec);
                } else if (i8 == 0) {
                    childAt.setPadding(c() ? 0 : this.j, 0, c() ? this.j : 0, 0);
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(this.k[i8] + this.j, 1073741824), makeMeasureSpec);
                } else if (i8 == childCount - 1) {
                    childAt.setPadding(c() ? this.j : 0, 0, c() ? 0 : this.j, 0);
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(this.k[i8] + this.j, 1073741824), makeMeasureSpec);
                } else {
                    childAt.setPadding(0, 0, 0, 0);
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(this.k[i8], 1073741824), makeMeasureSpec);
                }
                childAt.getLayoutParams().width = childAt.getMeasuredWidth();
                i7 += childAt.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i7, View.MeasureSpec.makeMeasureSpec(i7, 1073741824), 0), View.resolveSizeAndState(this.e, makeMeasureSpec, 0));
    }

    @Deprecated
    public void setIconTintList(ColorStateList colorStateList) {
        this.d = colorStateList;
        a[] aVarArr = this.f1729b;
        if (aVarArr != null) {
            for (a iconTintList : aVarArr) {
                iconTintList.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackgroundRes(int i2) {
        this.h = i2;
        a[] aVarArr = this.f1729b;
        if (aVarArr != null) {
            for (a itemBackground : aVarArr) {
                itemBackground.setItemBackground(i2);
            }
        }
    }

    public void setItemHeight(int i2) {
        this.e = i2;
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.c = colorStateList;
        a[] aVarArr = this.f1729b;
        if (aVarArr != null) {
            for (a textColor : aVarArr) {
                textColor.setTextColor(colorStateList);
            }
        }
    }

    public void setItemTextSize(int i2) {
        this.i = i2;
        a[] aVarArr = this.f1729b;
        if (aVarArr != null) {
            for (a textSize : aVarArr) {
                textSize.setTextSize(i2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void setNeedTextAnim(boolean z) {
        this.l = z;
    }

    public void setPresenter(ColorNavigationPresenter colorNavigationPresenter) {
        this.o = colorNavigationPresenter;
    }
}
