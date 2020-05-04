package com.oppo.camera.professional;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.a.a;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.professional.c;

public class ListProfessionalModeBar extends LinearLayout implements c.b {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f2323a = (!ListProfessionalModeBar.class.desiredAssertionStatus());

    /* renamed from: b  reason: collision with root package name */
    private ListModeBarAdapter f2324b = null;
    private int c = 0;
    private int d = -1;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private Rect h = null;
    private Context i = null;
    private OnItemClickListener j = null;
    private ModeBarStateListener k = null;
    private boolean l = false;
    private ModePressState m = ModePressState.NO_PRESSED;
    private d n;

    public interface ModeBarStateListener {
        void a_(int i);
    }

    public enum ModePressState {
        NO_PRESSED,
        ISO_PRESSED,
        SHUTTER_PRESSED,
        WB_PRESSED,
        AF_PRESSED,
        EV_PRESSED
    }

    public interface OnItemClickListener {
        void a(View view, View view2, int i, long j);
    }

    public ListProfessionalModeBar(Context context, int i2) {
        super(context);
        this.i = context;
        this.c = i2;
        setGravity(17);
        setOrientation(0);
    }

    private void a(int i2, int i3, boolean z) {
        int a2 = a(i2, i3);
        if (a2 != this.d && a2 != -1 && this.e > 0 && a2 < this.f2324b.getCount()) {
            View childAt = getChildAt(a2);
            if (childAt != null) {
                childAt.setPressed(z);
            }
            if (!z && this.n.i(a2) && 4 != a2) {
                this.f2324b.a(childAt, 0, false);
            }
        }
    }

    private boolean b(int i2, int i3) {
        int a2 = a(i2, i3);
        if (a2 == -1 || this.e <= 0 || a2 >= this.f2324b.getCount()) {
            return false;
        }
        View childAt = getChildAt(a2);
        if (childAt != null) {
            if (!((g) childAt).f2354a) {
                return true;
            }
            setPressed(false);
            childAt.setPressed(true);
        }
        setModePressedState(a2);
        int i4 = this.d;
        if (a2 != i4) {
            setPreviousAutoImage(i4);
        }
        this.d = a2;
        a(childAt, a2, this.f2324b.getItemId(a2));
        return true;
    }

    private View c(int i2) {
        g gVar = new g(this.i, this.c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        gVar.setGravity(17);
        gVar.setLayoutParams(layoutParams);
        b bVar = new b(this.i);
        if (3 == i2 || 4 == i2) {
            bVar.a(false);
        }
        bVar.setId(102);
        bVar.setLayoutParams(layoutParams);
        gVar.addView(bVar);
        if (i2 >= 0 && i2 < 4) {
            View view = new View(this.i);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(this.i.getResources().getDimensionPixelSize(R.dimen.main_mode_bar_item_right_width), this.i.getResources().getDimensionPixelSize(R.dimen.main_mode_bar_item_right_height));
            layoutParams2.addRule(21);
            layoutParams2.addRule(15);
            view.setLayoutParams(layoutParams2);
            view.setBackground(a.a(this.i, R.color.profession_right_divider));
            gVar.addView(view);
        }
        ImageView imageView = new ImageView(this.i);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.i.getResources().getDimensionPixelSize(R.dimen.main_mode_bar_item_bottom_width), this.i.getResources().getDimensionPixelSize(R.dimen.main_mode_bar_item_bottom_height));
        layoutParams3.addRule(12);
        layoutParams3.addRule(14);
        imageView.setLayoutParams(layoutParams3);
        imageView.setBackground(this.i.getDrawable(R.drawable.profession_mode_bar_bottom_divider_bg));
        gVar.addView(imageView);
        return gVar;
    }

    private void d() {
        for (int i2 = 0; i2 < this.e; i2++) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
            layoutParams.weight = 1.0f;
            addView(this.f2324b.getView(i2, c(i2), this), layoutParams);
        }
    }

    private void setModePressedState(int i2) {
        if (-1 == i2) {
            d.e("ListProfessionalModeBar", "setModePressedState, invalid position");
        } else if (this.e <= 0 || i2 >= this.f2324b.getCount()) {
        } else {
            if (i2 == this.d) {
                this.m = ModePressState.NO_PRESSED;
            } else if (i2 == 0) {
                this.m = ModePressState.ISO_PRESSED;
            } else if (i2 == 1) {
                this.m = ModePressState.SHUTTER_PRESSED;
            } else if (i2 == 2) {
                this.m = ModePressState.WB_PRESSED;
            } else if (i2 == 3) {
                this.m = ModePressState.AF_PRESSED;
            } else if (i2 != 4) {
                d.e("ListProfessionalModeBar", "setModePressedState, default invalid position");
            } else {
                this.m = ModePressState.EV_PRESSED;
            }
        }
    }

    private void setPreviousAutoImage(int i2) {
        if (-1 != i2 && 4 != i2) {
            View childAt = getChildAt(i2);
            if (childAt == null) {
                return;
            }
            if (this.n.i(i2)) {
                this.f2324b.a(childAt, 0, false);
            } else {
                this.f2324b.a(childAt, 8, false);
            }
        }
    }

    public int a(int i2, int i3) {
        Rect rect = this.h;
        if (rect == null) {
            this.h = new Rect();
            rect = this.h;
        }
        int childCount = getChildCount() - 1;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            if (f2323a || childAt != null) {
                if (childAt.getVisibility() == 0) {
                    childAt.getHitRect(rect);
                    if (rect.contains(i2, i3)) {
                        return childCount;
                    }
                }
                childCount--;
            } else {
                throw new AssertionError();
            }
        }
        d.e("ListProfessionalModeBar", "error frame is " + rect);
        return -1;
    }

    public void a() {
        setItemPressed(false);
        this.d = -1;
    }

    public void a(int i2) {
        ModeBarStateListener modeBarStateListener = this.k;
        if (modeBarStateListener != null) {
            modeBarStateListener.a_(i2);
        }
    }

    public void a(int i2, String str, boolean z) {
        View childAt = getChildAt(i2);
        if (childAt != null) {
            this.f2324b.a(childAt, str);
            if (!z) {
                this.f2324b.a(childAt, 8, false);
            } else if (this.d == i2) {
                this.f2324b.a(childAt, 0, true);
            } else {
                this.f2324b.a(childAt, 0, false);
            }
        }
    }

    public void a(int i2, boolean z) {
        d.b("ListProfessionalModeBar", "setItemPressed, position: " + i2 + ", pressed: " + z);
        int i3 = this.d;
        if (i2 != i3) {
            setPreviousAutoImage(i3);
        }
        this.d = i2;
        if (getChildAt(i2) != null) {
            getChildAt(i2).setPressed(z);
        }
    }

    public boolean a(View view, int i2, long j2) {
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(1);
            this.j.a(this, view, i2, j2);
        }
        return true;
    }

    public void b() {
        if (this.d + 1 <= getItemCount() - 1 && isSelected()) {
            setPressed(false);
            a(this.d + 1, true);
            View childAt = getChildAt(this.d);
            if (childAt != null) {
                int i2 = this.d;
                a(childAt, i2, this.f2324b.getItemId(i2));
            }
        }
    }

    public void b(int i2) {
        View childAt = getChildAt(i2);
        if (childAt != null) {
            this.f2324b.a(i2, childAt);
        }
    }

    public void c() {
        if (this.d - 1 >= 0 && isSelected()) {
            setPressed(false);
            a(this.d - 1, true);
            View childAt = getChildAt(this.d);
            if (childAt != null) {
                int i2 = this.d;
                a(childAt, i2, this.f2324b.getItemId(i2));
            }
        }
    }

    public ListModeBarAdapter getAdapter() {
        return this.f2324b;
    }

    public int getItemCount() {
        return this.e;
    }

    public ModePressState getModePressState() {
        return this.m;
    }

    public int getSelectedPosition() {
        return this.d;
    }

    public boolean isSelected() {
        return -1 != this.d;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        d.e("ListProfessionalModeBar", "onTouchEvent, isEnabled: " + isEnabled());
        if (!isEnabled()) {
            a(this.f, this.g, false);
            return isClickable() || isLongClickable();
        } else if (motionEvent.getPointerCount() > 1) {
            a(this.f, this.g, false);
            return true;
        } else {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f = (int) motionEvent.getX();
                this.g = (int) motionEvent.getY();
                int a2 = a(this.f, this.g);
                if (a2 != -1 && this.e > 0 && a2 < this.f2324b.getCount()) {
                    View childAt = getChildAt(a2);
                    if (childAt == null || !((g) childAt).f2354a) {
                        return true;
                    }
                    childAt.setPressed(true);
                    if (this.n.i(a2) && 4 != a2) {
                        this.f2324b.a(childAt, 0, true);
                    }
                }
            } else if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int y = (int) motionEvent.getY();
                    if (Math.abs(((int) motionEvent.getX()) - this.f) > 10 || Math.abs(y - this.g) > 10) {
                        this.l = true;
                        int a3 = a(this.f, this.g);
                        if (a3 != this.d && a3 != -1 && this.e > 0 && a3 < this.f2324b.getCount()) {
                            View childAt2 = getChildAt(a3);
                            if (childAt2 == null || !((g) childAt2).f2354a) {
                                return true;
                            }
                            childAt2.setPressed(false);
                            if (this.n.i(a3) && 4 != a3) {
                                this.f2324b.a(childAt2, 0, false);
                            }
                        }
                    }
                } else if (actionMasked == 3) {
                    if (this.l) {
                        this.l = false;
                    }
                    int a4 = a(this.f, this.g);
                    if (a4 != this.d && a4 != -1 && this.e > 0 && a4 < this.f2324b.getCount()) {
                        View childAt3 = getChildAt(a4);
                        if (childAt3 != null) {
                            g gVar = (g) childAt3;
                            if (!gVar.f2354a) {
                                return true;
                            }
                            if ((gVar.getChildAt(0) instanceof a) || (gVar.getChildAt(0) instanceof b)) {
                                childAt3.setPressed(false);
                                if (this.n.i(a4) && 4 != a4) {
                                    this.f2324b.a(childAt3, 0, false);
                                }
                            }
                        }
                    }
                } else if (actionMasked != 5) {
                }
            } else if (this.l) {
                this.l = false;
                int a5 = a(this.f, this.g);
                if (a5 != this.d && a5 != -1 && this.e > 0 && a5 < this.f2324b.getCount()) {
                    View childAt4 = getChildAt(a5);
                    if (childAt4 == null || !((g) childAt4).f2354a) {
                        return true;
                    }
                    childAt4.setPressed(false);
                    if (this.n.i(a5) && 4 != a5) {
                        this.f2324b.a(childAt4, 0, false);
                    }
                }
            } else if (!b((int) motionEvent.getX(), (int) motionEvent.getY())) {
                b(this.f, this.g);
            }
            return true;
        }
    }

    public void removeAllViews() {
        int childCount = getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            if (f2323a || childAt != null) {
                childAt.clearAnimation();
                i2++;
            } else {
                throw new AssertionError();
            }
        }
        super.removeAllViews();
    }

    public void setAdapter(ListModeBarAdapter listModeBarAdapter) {
        this.f2324b = listModeBarAdapter;
        this.f2324b.a(new int[]{100, 101, 102});
        this.e = this.f2324b.getCount();
        d();
        requestLayout();
    }

    public void setItemPressed(boolean z) {
        d.b("ListProfessionalModeBar", "setItemPressed, mSelectedPosition: " + this.d + ", pressed: " + z);
        int i2 = this.d;
        if (-1 != i2) {
            View childAt = getChildAt(i2);
            if (childAt != null) {
                childAt.setPressed(z);
                if (!z) {
                    setPreviousAutoImage(this.d);
                }
            }
        }
    }

    public void setModeBarStateListener(ModeBarStateListener modeBarStateListener) {
        this.k = modeBarStateListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.j = onItemClickListener;
    }

    public void setPanelInterface(d dVar) {
        this.n = dVar;
    }
}
