package com.oppo.camera.sticker.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.oppo.camera.R;

public class StickerCategoryRecycleView extends RecyclerView {
    private int R;
    private int S;
    private int T;

    /* renamed from: a  reason: collision with root package name */
    private Rect f2442a;

    /* renamed from: b  reason: collision with root package name */
    private String f2443b;
    private float c;
    private LinearLayoutManager d;
    private g e;
    private Context f;

    public StickerCategoryRecycleView(Context context) {
        this(context, (AttributeSet) null);
    }

    public StickerCategoryRecycleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public StickerCategoryRecycleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2442a = new Rect();
        this.f2443b = "NONE";
        this.c = 0.0f;
        this.d = null;
        this.e = null;
        this.f = null;
        this.f = context;
        this.R = this.f.getResources().getDimensionPixelSize(R.dimen.sticker_type_view_item_size);
        this.S = this.f.getResources().getDimensionPixelSize(R.dimen.sticker_view_padding);
        this.T = this.f.getResources().getDimensionPixelSize(R.dimen.sticker_recycle_list_padding);
    }

    private void A() {
        TranslateAnimation translateAnimation = new TranslateAnimation((float) getLeft(), (float) this.f2442a.left, 0.0f, 0.0f);
        translateAnimation.setDuration(300);
        startAnimation(translateAnimation);
        layout(this.f2442a.left, this.f2442a.top, this.f2442a.right, this.f2442a.bottom);
        this.f2442a.setEmpty();
        this.f2443b = "NONE";
    }

    private void b(String str) {
        int b2 = getAdapter().b();
        if (b2 > 1) {
            if ("LEFT".equals(str)) {
                int r = this.d.r();
                if (r == b2 - 1) {
                    int childCount = getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = getChildAt(i);
                        if (((Integer) childAt.getTag()).intValue() == r && childAt.getLeft() == this.T + (this.S * 4) + (this.R * 4)) {
                            if (this.f2442a.isEmpty()) {
                                this.f2442a.set(getLeft(), getTop(), getRight(), getBottom());
                            }
                            this.f2443b = "LEFT";
                            return;
                        }
                    }
                }
            }
            if ("RIGHT".equals(str)) {
                int p = this.d.p();
                if (p == 0) {
                    int childCount2 = getChildCount();
                    for (int i2 = 0; i2 < childCount2; i2++) {
                        View childAt2 = getChildAt(i2);
                        if (((Integer) childAt2.getTag()).intValue() == p && childAt2.getLeft() == this.T) {
                            if (this.f2442a.isEmpty()) {
                                this.f2442a.set(getLeft(), getTop(), getRight(), getBottom());
                            }
                            this.f2443b = "RIGHT";
                            return;
                        }
                    }
                }
            }
        }
    }

    private void z() {
        if (!this.f2442a.isEmpty()) {
            A();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        g gVar = this.e;
        if (gVar == null || gVar.a()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.d == null) {
            this.d = (LinearLayoutManager) getLayoutManager();
        }
        if (motionEvent.getAction() == 0) {
            this.c = motionEvent.getX();
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1) {
            z();
        } else if (action == 2) {
            float x = motionEvent.getX();
            float f2 = x - this.c;
            this.c = x;
            if ("NONE".equals(this.f2443b)) {
                String str = null;
                if (f2 > 10.0f) {
                    str = "RIGHT";
                }
                if (f2 < -10.0f) {
                    str = "LEFT";
                }
                b(str);
            } else if ("RIGHT".equals(this.f2443b)) {
                int i = (int) (f2 * 0.5f);
                if (getLeft() + i >= this.f2442a.left) {
                    layout(getLeft() + i, getTop(), getRight() + i, getBottom());
                }
            } else if ("LEFT".equals(this.f2443b)) {
                int i2 = (int) (f2 * 0.5f);
                if (getRight() + i2 <= this.f2442a.right) {
                    layout(getLeft() + i2, getTop(), getRight() + i2, getBottom());
                }
            }
            if (!"NONE".equals(this.f2443b)) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setStickerCategoryInterface(g gVar) {
        this.e = gVar;
    }
}
