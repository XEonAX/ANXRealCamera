package color.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ba;
import androidx.core.g.u;
import color.support.v7.appcompat.R;
import com.color.support.widget.popupwindow.c;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ColorActionMenuViewV6 */
public class a extends ActionMenuView {
    public com.color.support.widget.popupwindow.a c;
    /* access modifiers changed from: private */
    public g d;
    private List<Class<?>> e;
    private int f;
    private int g;
    /* access modifiers changed from: private */
    public ArrayList h;
    /* access modifiers changed from: private */
    public i i;
    private int j;
    private boolean k;
    private int l;

    public a(Context context) {
        this(context, (AttributeSet) null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = null;
        this.e = new ArrayList();
        this.k = true;
        this.l = 0;
        this.l = getResources().getDimensionPixelSize(R.dimen.color_actionbar_menuview_padding);
        this.j = getResources().getDimensionPixelSize(R.dimen.color_action_menu_item_min_width);
        this.g = getResources().getDimensionPixelSize(R.dimen.color_action_menu_text_extra_padding);
        this.f = getResources().getDimensionPixelSize(R.dimen.color_actionbar_menuitemview_item_spacing);
    }

    private int b(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        view.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + i6 + i3, marginLayoutParams.width), getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + i6;
    }

    public void a(g gVar) {
        this.d = gVar;
        super.a(gVar);
    }

    public void addView(final View view, int i2, ViewGroup.LayoutParams layoutParams) {
        view.setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View view) {
                return true;
            }
        });
        view.setHapticFeedbackEnabled(false);
        view.setBackground(com.color.support.a.a(getContext(), R.drawable.color_toolbar_menu_bg, getResources().getDimensionPixelSize(R.dimen.color_toolbar_menu_bg_radius)));
        if (view.getClass().getName().equals("androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton")) {
            layoutParams.height = -1;
            view.setMinimumWidth(this.j);
            view.setOnTouchListener((View.OnTouchListener) null);
            view.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    if (a.this.c == null) {
                        a aVar = a.this;
                        aVar.c = new com.color.support.widget.popupwindow.a(aVar.getContext());
                        a.this.c.a(true);
                        ArrayList unused = a.this.h = new ArrayList();
                    }
                    a.this.h.clear();
                    if (a.this.d != null) {
                        for (int i = 0; i < a.this.d.m().size(); i++) {
                            a aVar2 = a.this;
                            i unused2 = aVar2.i = aVar2.d.m().get(i);
                            String str = "";
                            if (a.this.i.getIcon() != null) {
                                ArrayList a2 = a.this.h;
                                Drawable icon = a.this.i.getIcon();
                                if (a.this.i.getTitle() != null) {
                                    str = a.this.i.getTitle().toString();
                                }
                                a2.add(i, new c(icon, str, a.this.i.isEnabled()));
                            } else {
                                ArrayList a3 = a.this.h;
                                if (a.this.i.getTitle() != null) {
                                    str = a.this.i.getTitle().toString();
                                }
                                a3.add(i, new c(str, a.this.i.isEnabled()));
                            }
                        }
                        a.this.c.a((List<c>) a.this.h);
                        a.this.c.a((AdapterView.OnItemClickListener) new AdapterView.OnItemClickListener() {
                            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                                a.this.d.a((MenuItem) a.this.d.m().get(i), 0);
                                a.this.c.dismiss();
                            }
                        });
                    }
                    a.this.c.a(view);
                }
            });
        }
        super.addView(view, i2, layoutParams);
    }

    public Menu getMenu() {
        this.d = (g) super.getMenu();
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            if (getChildAt(i8).getVisibility() != 8) {
                i7++;
            }
        }
        if (i7 > 5) {
            super.onLayout(z, i2, i3, i4, i5);
            return;
        }
        boolean a2 = ba.a(this);
        int i9 = (i5 - i3) / 2;
        if (this.k) {
            if (a2) {
                int width = getWidth() - getPaddingRight();
                while (i6 < childCount) {
                    View childAt = getChildAt(i6);
                    ActionMenuView.c cVar = (ActionMenuView.c) childAt.getLayoutParams();
                    if (childAt.getVisibility() != 8) {
                        int i10 = width - cVar.rightMargin;
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight = childAt.getMeasuredHeight();
                        int i11 = i9 - (measuredHeight / 2);
                        childAt.layout(i10 - measuredWidth, i11, i10, measuredHeight + i11);
                        width = i10 - ((measuredWidth + cVar.leftMargin) + this.f);
                    }
                    i6++;
                }
                return;
            }
            int paddingLeft = getPaddingLeft();
            while (i6 < childCount) {
                View childAt2 = getChildAt(i6);
                ActionMenuView.c cVar2 = (ActionMenuView.c) childAt2.getLayoutParams();
                if (childAt2.getVisibility() != 8) {
                    int i12 = paddingLeft + cVar2.leftMargin;
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight2 = childAt2.getMeasuredHeight();
                    int i13 = i9 - (measuredHeight2 / 2);
                    childAt2.layout(i12, i13, i12 + measuredWidth2, measuredHeight2 + i13);
                    paddingLeft = i12 + measuredWidth2 + cVar2.rightMargin + this.f;
                }
                i6++;
            }
        } else if (a2) {
            int paddingLeft2 = getPaddingLeft();
            boolean z2 = true;
            for (int i14 = childCount - 1; i14 >= 0; i14--) {
                View childAt3 = getChildAt(i14);
                ActionMenuView.c cVar3 = (ActionMenuView.c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8) {
                    paddingLeft2 += cVar3.leftMargin;
                    if (z2) {
                        if ((childAt3 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt3).getText())) {
                            paddingLeft2 += this.g;
                        }
                        z2 = false;
                    }
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i15 = i9 - (measuredHeight3 / 2);
                    if (i14 != 0 || i7 <= 1) {
                        childAt3.layout(paddingLeft2, i15, paddingLeft2 + measuredWidth3, measuredHeight3 + i15);
                        paddingLeft2 += measuredWidth3 + cVar3.rightMargin + this.f;
                    } else {
                        int width2 = ((getWidth() - getPaddingRight()) - cVar3.rightMargin) - measuredWidth3;
                        if ((childAt3 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt3).getText())) {
                            width2 -= this.l;
                        }
                        childAt3.layout(width2, i15, measuredWidth3 + width2, measuredHeight3 + i15);
                    }
                }
            }
        } else {
            int width3 = getWidth() - getPaddingRight();
            boolean z3 = true;
            for (int i16 = childCount - 1; i16 >= 0; i16--) {
                View childAt4 = getChildAt(i16);
                ActionMenuView.c cVar4 = (ActionMenuView.c) childAt4.getLayoutParams();
                if (childAt4.getVisibility() != 8) {
                    width3 -= cVar4.rightMargin;
                    if (z3) {
                        if ((childAt4 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt4).getText())) {
                            width3 -= this.g;
                        }
                        z3 = false;
                    }
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i17 = i9 - (measuredHeight4 / 2);
                    if (i16 != 0 || i7 <= 1) {
                        childAt4.layout(width3 - measuredWidth4, i17, width3, measuredHeight4 + i17);
                        width3 -= (measuredWidth4 + cVar4.leftMargin) + this.f;
                    } else {
                        int paddingLeft3 = getPaddingLeft() + cVar4.leftMargin;
                        if ((childAt4 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt4).getText())) {
                            paddingLeft3 += this.l;
                        }
                        childAt4.layout(paddingLeft3, i17, measuredWidth4 + paddingLeft3, measuredHeight4 + i17);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (this.d == null) {
            super.onMeasure(i2, i3);
            return;
        }
        this.k = true;
        if ((getParent() instanceof Toolbar) && ((Toolbar) getParent()).getIsTitleCenterStyle()) {
            this.k = false;
        }
        setPadding(0, getPaddingTop(), 0, getPaddingBottom());
        boolean z = u.f(this) == 1;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int i4 = 0;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            i4 += b(getChildAt(i5), i2, i4, i3, 0);
        }
        if (this.k) {
            int childCount = getChildCount();
            if (childCount > 0) {
                int i6 = -1;
                int i7 = 0;
                for (int i8 = 0; i8 < childCount; i8++) {
                    if (getChildAt(i8).getVisibility() != 8) {
                        i7++;
                        i6 = i8;
                    }
                }
                int i9 = i4 + ((i7 - 1) * this.f);
                if (i6 != -1) {
                    View childAt = getChildAt(i6);
                    if ((childAt instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt).getText())) {
                        i9 += this.g;
                    }
                }
                size = i9;
            } else {
                size = 0;
            }
            if (z) {
                setPadding(getPaddingLeft(), getPaddingTop(), 0, getPaddingBottom());
            }
        }
        setMeasuredDimension(size, size2);
    }

    public void setOverflowReserved(boolean z) {
        super.setOverflowReserved(z);
        com.color.support.widget.popupwindow.a aVar = this.c;
        if (aVar != null && aVar.isShowing()) {
            this.h.clear();
            if (this.d.m().size() == 0) {
                this.c.dismiss();
                return;
            }
            for (int i2 = 0; i2 < this.d.m().size(); i2++) {
                this.i = this.d.m().get(i2);
                String str = "";
                if (this.i.getIcon() != null) {
                    ArrayList arrayList = this.h;
                    Drawable icon = this.i.getIcon();
                    if (this.i.getTitle() != null) {
                        str = this.i.getTitle().toString();
                    }
                    arrayList.add(i2, new c(icon, str, this.i.isEnabled()));
                } else {
                    ArrayList arrayList2 = this.h;
                    if (this.i.getTitle() != null) {
                        str = this.i.getTitle().toString();
                    }
                    arrayList2.add(i2, new c(str, this.i.isEnabled()));
                }
            }
            ((BaseAdapter) this.c.b().getAdapter()).notifyDataSetChanged();
            this.c.a();
            com.color.support.widget.popupwindow.a aVar2 = this.c;
            aVar2.update(aVar2.getWidth(), this.c.getHeight());
        }
    }
}
