package com.oppo.camera.ui.menu;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.ui.menu.setting.CameraMenuOption;
import java.util.ArrayList;
import java.util.List;

public class BasicOptionItemList extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    protected int f2697a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected int f2698b = 0;
    protected int c = 0;
    protected int d = 0;
    protected int e = 0;
    protected int f = 0;
    protected int g = 0;
    protected int h = 0;
    protected int i = 0;
    protected int j = 0;
    protected int k = -1;
    protected int l = 0;
    protected Context m = null;
    protected List<CameraMenuOption> n = null;
    protected ItemClickListener o = null;
    protected OptionItemListListener p = null;
    protected ViewGroup q = null;
    protected AnimationSet r = null;
    protected AnimationSet s = null;
    protected AnimationSet t = null;
    protected Animation.AnimationListener u = new PopUpFadeInAnimationListener();
    protected Animation.AnimationListener v = new PopUpFadeOutAnimationListener();
    /* access modifiers changed from: private */
    public boolean w = false;

    private class ItemClickListener implements CameraMenuOption.OnItemClickListener {
        private ItemClickListener() {
        }

        public void a(CameraMenuOption cameraMenuOption) {
            if (BasicOptionItemList.this.n != null && BasicOptionItemList.this.n.size() > 0 && BasicOptionItemList.this.p != null) {
                int indexOf = BasicOptionItemList.this.n.indexOf(cameraMenuOption);
                d.a("BasicOptionItemList", "onItemClick, index: " + indexOf);
                BasicOptionItemList.this.p.a(cameraMenuOption, indexOf);
            }
        }
    }

    public interface OptionItemListListener {
        String a();

        void a(CameraMenuOption cameraMenuOption, int i);
    }

    protected final class PopUpFadeInAnimationListener implements Animation.AnimationListener {
        protected PopUpFadeInAnimationListener() {
        }

        public void onAnimationEnd(Animation animation) {
            BasicOptionItemList.this.a(true, false);
            if (BasicOptionItemList.this.isShown()) {
                if (BasicOptionItemList.this.p != null) {
                    f.b(BasicOptionItemList.this.p.a());
                }
                if (BasicOptionItemList.this.s != null && !BasicOptionItemList.this.w) {
                    BasicOptionItemList basicOptionItemList = BasicOptionItemList.this;
                    basicOptionItemList.startAnimation(basicOptionItemList.s);
                }
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
            BasicOptionItemList.this.a(false, false);
            if (BasicOptionItemList.this.p != null) {
                f.a(BasicOptionItemList.this.p.a());
            }
        }
    }

    protected final class PopUpFadeOutAnimationListener implements Animation.AnimationListener {
        protected PopUpFadeOutAnimationListener() {
        }

        public void onAnimationEnd(Animation animation) {
            BasicOptionItemList.this.a(true, false);
            BasicOptionItemList.this.setVisibility(8);
            boolean unused = BasicOptionItemList.this.w = false;
            if (BasicOptionItemList.this.p != null) {
                f.d(BasicOptionItemList.this.p.a());
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
            BasicOptionItemList.this.a(false, false);
            if (BasicOptionItemList.this.p != null) {
                f.c(BasicOptionItemList.this.p.a());
            }
        }
    }

    public BasicOptionItemList(Context context) {
        super(context);
        this.m = context;
        this.n = new ArrayList();
        this.o = new ItemClickListener();
        this.f2697a = this.m.getResources().getDimensionPixelSize(R.dimen.menu_setting_width);
        this.e = this.m.getResources().getDimensionPixelSize(R.dimen.itemlist_less_than_three_items_margin_left);
        this.f = this.m.getResources().getDimensionPixelSize(R.dimen.itemlist_less_than_two_items_margin_left);
        this.g = this.m.getResources().getDimensionPixelSize(R.dimen.itemlist_more_than_three_items_margin_left);
        this.h = this.m.getResources().getDimensionPixelSize(R.dimen.itemlist_less_than_three_items_padding_right);
        this.i = this.m.getResources().getDimensionPixelSize(R.dimen.itemlist_more_than_three_items_padding_right);
        this.j = this.m.getResources().getDimensionPixelSize(R.dimen.itemlist_min_items_margin);
        this.w = false;
    }

    public void a() {
        List<CameraMenuOption> list = this.n;
        if (list != null) {
            if (list.size() == 3 && getItemsMeasureWidth() <= ((com.oppo.camera.o.d.N() - this.e) - this.h) - (this.j * (this.n.size() - 1))) {
                this.f2698b = this.e;
                this.d = this.h;
            } else if (this.n.size() != 2 || getItemsMeasureWidth() > ((com.oppo.camera.o.d.N() - this.f) - this.h) - (this.j * (this.n.size() - 1))) {
                this.f2698b = this.g;
                this.d = this.i;
            } else {
                this.f2698b = this.f;
                this.d = this.h;
            }
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
        if (layoutParams != null) {
            layoutParams.leftMargin = this.f2698b;
            setLayoutParams(layoutParams);
        }
    }

    public void a(int i2) {
        if (i2 < 0 || i2 >= this.n.size()) {
            d.a("BasicOptionItemList", "removeOptionItem(), exception: the index is error, index: " + i2);
            return;
        }
        this.n.remove(i2);
        this.n.get(i2).l();
    }

    public void a(int i2, boolean z) {
        if (this.l != i2) {
            this.l = i2;
            List<CameraMenuOption> list = this.n;
            if (list != null && !list.isEmpty()) {
                for (CameraMenuOption next : this.n) {
                    if (next != null) {
                        next.a(i2, z);
                    }
                }
            }
        }
    }

    public void a(View view, int i2, int i3) {
        if (view != null) {
            this.q = (ViewGroup) view.getRootView().findViewById(R.id.camera);
        }
    }

    public void a(boolean z, boolean z2) {
        List<CameraMenuOption> list = this.n;
        if (list != null && list.size() >= 1) {
            for (int i2 = 0; i2 < this.n.size(); i2++) {
                this.n.get(i2).a(z, z2);
            }
        }
    }

    public boolean a(CameraMenuOption cameraMenuOption) {
        if (cameraMenuOption == null) {
            return false;
        }
        List<CameraMenuOption> list = this.n;
        if (list == null || list.contains(cameraMenuOption)) {
            return false;
        }
        cameraMenuOption.a((CameraMenuOption.OnItemClickListener) this.o);
        this.n.add(cameraMenuOption);
        cameraMenuOption.a((ViewGroup) this);
        return true;
    }

    public boolean a(CameraMenuOption cameraMenuOption, int i2) {
        if (cameraMenuOption == null || this.n.contains(cameraMenuOption)) {
            return false;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 >= this.n.size()) {
            i2 = this.n.size();
        }
        this.n.add(i2, cameraMenuOption);
        cameraMenuOption.a((CameraMenuOption.OnItemClickListener) this.o);
        cameraMenuOption.a((ViewGroup) this);
        return true;
    }

    public CameraMenuOption b(int i2) {
        if (i2 >= 0 && i2 < this.n.size()) {
            return this.n.get(i2);
        }
        d.a("BasicOptionItemList", "getOptionItem(), exception: the index is error, index: " + i2);
        return null;
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    public void c() {
        a();
        setVisibility(0);
        clearAnimation();
        if (this.r == null) {
            b();
        }
        AnimationSet animationSet = this.r;
        if (animationSet != null) {
            startAnimation(animationSet);
        }
    }

    public void d() {
        if (isShown()) {
            clearAnimation();
            if (this.t == null) {
                b();
            }
            AnimationSet animationSet = this.t;
            if (animationSet != null) {
                startAnimation(animationSet);
                this.w = true;
            }
        }
    }

    public void e() {
        clearAnimation();
        setVisibility(8);
        f.d(this.p.a());
        this.w = false;
    }

    public void f() {
        if (isShown()) {
            clearAnimation();
            setVisibility(8);
        }
        this.w = false;
    }

    public void g() {
        d.a("BasicOptionItemList", "release()");
        if (this.n != null) {
            for (int i2 = 0; i2 < this.n.size(); i2++) {
                CameraMenuOption cameraMenuOption = this.n.get(i2);
                if (cameraMenuOption != null) {
                    cameraMenuOption.l();
                }
            }
            this.n.clear();
            this.n = null;
        }
        removeAllViews();
        ViewGroup viewGroup = this.q;
        if (viewGroup != null) {
            viewGroup.removeView(this);
            this.q = null;
        }
        this.m = null;
        this.p = null;
        this.o = null;
        this.u = null;
        this.v = null;
    }

    public int getItemsMeasureHeight() {
        List<CameraMenuOption> list = this.n;
        int i2 = 0;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        for (CameraMenuOption next : this.n) {
            if (next != null) {
                int t2 = next.t();
                if (i2 < t2) {
                    i2 = t2;
                }
            }
        }
        return i2 * this.n.size();
    }

    public int getItemsMeasureWidth() {
        List<CameraMenuOption> list = this.n;
        int i2 = 0;
        if (list != null && list.size() > 0) {
            for (CameraMenuOption next : this.n) {
                if (next != null) {
                    i2 += next.s();
                }
            }
        }
        return i2;
    }

    public boolean getPopUpWindowState() {
        return isShown();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        List<CameraMenuOption> list = this.n;
        if (list != null && list.size() > 0) {
            int i6 = 0;
            for (CameraMenuOption next : this.n) {
                if (next != null) {
                    int s2 = next.s();
                    int t2 = next.t() + i6;
                    next.a(0, i6, s2, t2);
                    i6 = t2;
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setOptionItemIcon(Bitmap bitmap) {
    }

    public void setOptionItemListListener(OptionItemListListener optionItemListListener) {
        this.p = optionItemListListener;
    }

    public void setSelectItemIndex(int i2) {
        if (i2 >= 0 && i2 != this.k) {
            this.k = i2;
        }
    }
}
