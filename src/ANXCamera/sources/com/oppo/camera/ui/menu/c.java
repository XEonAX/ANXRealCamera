package com.oppo.camera.ui.menu;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.ui.RotateImageView;
import com.oppo.camera.ui.d;
import com.oppo.camera.ui.h;
import com.oppo.camera.ui.menu.BasicOptionItemList;
import com.oppo.camera.ui.menu.setting.CameraMenuOption;

/* compiled from: OptionItemIconTextList */
public class c extends BasicOptionItemList {
    /* access modifiers changed from: private */
    public RotateImageView w = null;
    private boolean x = false;
    private h y = null;
    private d z = null;

    /* compiled from: OptionItemIconTextList */
    private class a implements h.a {
        private a() {
        }

        public void a(float f) {
            if (c.this.w != null) {
                c.this.w.setAlpha(f);
            }
            if (c.this.n != null && c.this.n.size() > 0) {
                for (int i = 0; i < c.this.n.size(); i++) {
                    CameraMenuOption cameraMenuOption = (CameraMenuOption) c.this.n.get(i);
                    if (cameraMenuOption != null) {
                        cameraMenuOption.a(f);
                    }
                }
            }
        }

        public void a(int i) {
            if (c.this.w != null) {
                c.this.w.a(i, false);
            }
            if (c.this.n != null && c.this.n.size() > 0) {
                for (int i2 = 0; i2 < c.this.n.size(); i2++) {
                    CameraMenuOption cameraMenuOption = (CameraMenuOption) c.this.n.get(i2);
                    if (cameraMenuOption != null) {
                        cameraMenuOption.a(i, false);
                    }
                }
            }
            c cVar = c.this;
            cVar.l = i;
            cVar.requestLayout();
        }

        public boolean a() {
            return c.this.isShown();
        }
    }

    public c(Context context, d dVar) {
        super(context);
        this.z = dVar;
    }

    private int a(Context context) {
        if (context == null) {
            return 0;
        }
        return com.oppo.camera.o.d.D();
    }

    private void h() {
        if (this.y == null) {
            this.y = new h(1.0f, 0.0f);
            this.y.a((h.a) new a());
            this.y.setDuration(300);
        }
    }

    public void a(int i, boolean z2) {
        if (!this.x) {
            i = 0;
        }
        if (this.y == null) {
            h();
        }
        if (z2 && isShown() && !this.y.b() && this.y.a() != i) {
            startAnimation(this.y);
        }
        this.y.a(i, z2);
    }

    public void a(View view, int i, int i2) {
        super.a(view, i, i2);
        if (view != null && this.q != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Math.max(getItemsMeasureHeight(), a(this.m)));
            layoutParams.topMargin = i2;
            layoutParams.leftMargin = this.f2698b;
            this.q.addView(this, layoutParams);
        }
    }

    public boolean a(CameraMenuOption cameraMenuOption) {
        if (cameraMenuOption == null || this.n == null || this.n.contains(cameraMenuOption)) {
            return false;
        }
        cameraMenuOption.a((CameraMenuOption.OnItemClickListener) this.o);
        this.n.add(cameraMenuOption);
        cameraMenuOption.a((ViewGroup) this);
        return true;
    }

    public boolean a(CameraMenuOption cameraMenuOption, int i) {
        if (cameraMenuOption == null || this.n.contains(cameraMenuOption)) {
            return false;
        }
        if (i < 0) {
            i = 0;
        }
        if (i >= this.n.size()) {
            i = this.n.size();
        }
        this.n.add(i, cameraMenuOption);
        cameraMenuOption.a((CameraMenuOption.OnItemClickListener) this.o);
        cameraMenuOption.a((ViewGroup) this);
        return true;
    }

    /* access modifiers changed from: protected */
    public void b() {
        this.r = new AnimationSet(true);
        this.r.addAnimation(new AlphaAnimation(0.0f, 1.0f));
        if (this.u == null) {
            this.u = new BasicOptionItemList.PopUpFadeInAnimationListener();
        }
        this.r.setAnimationListener(this.u);
        this.r.setDuration(240);
        this.r.setStartOffset(50);
        this.t = new AnimationSet(true);
        this.t.addAnimation(new AlphaAnimation(1.0f, 0.0f));
        if (this.v == null) {
            this.v = new BasicOptionItemList.PopUpFadeOutAnimationListener();
        }
        this.t.setAnimationListener(this.v);
        this.t.setDuration(200);
    }

    public void d() {
        if (isShown()) {
            if (this.t == null) {
                b();
            }
            if (this.t == null) {
                return;
            }
            if (!this.t.hasStarted() || this.t.hasEnded()) {
                clearAnimation();
                startAnimation(this.t);
            }
        }
    }

    public void e() {
        clearAnimation();
        setVisibility(8);
        f.d(this.p.a());
    }

    public void g() {
        RotateImageView rotateImageView = this.w;
        if (rotateImageView != null) {
            removeView(rotateImageView);
            this.w = null;
        }
        this.y = null;
        super.g();
    }

    public int getItemsMeasureHeight() {
        int i = 0;
        if (this.n == null || this.n.size() <= 0) {
            return 0;
        }
        for (CameraMenuOption cameraMenuOption : this.n) {
            if (cameraMenuOption != null) {
                int t = cameraMenuOption.t();
                if (i <= t) {
                    i = t;
                }
            }
        }
        RotateImageView rotateImageView = this.w;
        return (rotateImageView == null || i > rotateImageView.getMeasuredHeight()) ? i : this.w.getMeasuredHeight();
    }

    public int getItemsMeasureWidth() {
        int i = 0;
        if (this.n == null || this.n.size() <= 0) {
            return 0;
        }
        for (CameraMenuOption cameraMenuOption : this.n) {
            if (cameraMenuOption != null) {
                i += cameraMenuOption.s();
            }
        }
        RotateImageView rotateImageView = this.w;
        return rotateImageView != null ? i + rotateImageView.getMeasuredWidth() : i;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        if (this.n != null && this.n.size() > 0) {
            int i5 = i4 - i2;
            int itemsMeasureWidth = ((((i3 - i) - 0) - this.d) - getItemsMeasureWidth()) / (this.n.size() - 1);
            int i6 = 0;
            for (int i7 = 0; i7 < this.n.size(); i7++) {
                CameraMenuOption cameraMenuOption = (CameraMenuOption) this.n.get(i7);
                if (cameraMenuOption != null) {
                    int s = cameraMenuOption.s();
                    int t = cameraMenuOption.t();
                    int i8 = (i5 - t) / 2;
                    if (com.oppo.camera.o.d.U()) {
                        i8 += this.m.getResources().getDimensionPixelSize(R.dimen.ear_screen_menu_item_offset);
                    }
                    cameraMenuOption.a(i6, i8, i6 + s, t + i8);
                    i6 += s + itemsMeasureWidth;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
            if (this.w != null) {
                this.w.measure(com.oppo.camera.o.d.N(), com.oppo.camera.o.d.M());
            }
        } catch (Exception unused) {
        }
    }

    public void setOptionItemIcon(Bitmap bitmap) {
        RotateImageView rotateImageView = this.w;
        if (rotateImageView != null) {
            rotateImageView.setImageBitmap(bitmap);
        }
    }

    public void setSelectItemIndex(int i) {
        if (i >= 0 && i != this.k) {
            this.k = i;
            if (this.n != null && this.n.size() > 0) {
                int i2 = 0;
                while (i2 < this.n.size()) {
                    CameraMenuOption cameraMenuOption = (CameraMenuOption) this.n.get(i2);
                    if (cameraMenuOption != null) {
                        cameraMenuOption.b(i2 == this.k);
                    }
                    i2++;
                }
            }
        }
    }
}
