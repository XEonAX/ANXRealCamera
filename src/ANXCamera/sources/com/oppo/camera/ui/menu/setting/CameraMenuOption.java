package com.oppo.camera.ui.menu.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.oppo.camera.R;
import com.oppo.camera.ui.d;
import com.oppo.camera.ui.f;
import com.oppo.camera.ui.menu.BasicOptionItemList;
import com.oppo.camera.ui.menu.a;
import com.oppo.camera.ui.menu.c;
import com.oppo.camera.ui.menu.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CameraMenuOption implements BasicOptionItemList.OptionItemListListener, e {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f2803a = false;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f2804b = false;
    protected boolean c = true;
    protected int d = 0;
    protected Context e = null;
    protected BasicOptionItemList f = null;
    protected e g = null;
    protected OnItemClickListener h = null;
    protected d i = null;
    protected int j = 0;
    /* access modifiers changed from: private */
    public boolean k = false;
    private LayoutTranslationAnimation l = null;
    private ViewGroup m = null;
    private int n = 0;
    private int o = 0;
    private int p = 330;
    private int q = 150;
    private int r = 0;
    private int s = 0;
    private float t = 2.2f;
    private String u = null;
    private ArrayList<com.oppo.camera.ui.menu.d> v = null;
    private boolean w = true;
    private a x = null;

    private class LayoutTranslationAnimation extends Animation implements Animation.AnimationListener {

        /* renamed from: b  reason: collision with root package name */
        private int f2807b = 0;
        private int c = 0;
        private boolean d = false;

        public LayoutTranslationAnimation() {
            boolean unused = CameraMenuOption.this.k = false;
            this.d = false;
        }

        public int a() {
            return this.c;
        }

        public void a(int i) {
            this.c = i;
        }

        public void a(int i, int i2) {
            this.f2807b = i;
            this.c = i2;
        }

        /* access modifiers changed from: protected */
        public void applyTransformation(float f, Transformation transformation) {
            if (CameraMenuOption.this.A() != null && !this.d) {
                int i = this.c;
                int i2 = this.f2807b;
                int i3 = ((int) (((float) (i - i2)) * f)) + i2;
                CameraMenuOption cameraMenuOption = CameraMenuOption.this;
                cameraMenuOption.a(i3, cameraMenuOption.A().getTop(), CameraMenuOption.this.A().getWidth() + i3, CameraMenuOption.this.A().getBottom());
            }
        }

        public void cancel() {
            this.d = true;
            super.cancel();
        }

        public void onAnimationEnd(Animation animation) {
            boolean unused = CameraMenuOption.this.k = false;
            this.d = false;
            if (1 == CameraMenuOption.this.w() && CameraMenuOption.this.A() != null) {
                CameraMenuOption.this.A().setClickable(true);
                CameraMenuOption.this.A().setAlpha(1.0f);
            }
        }

        public void onAnimationRepeat(Animation animation) {
            boolean unused = CameraMenuOption.this.k = true;
        }

        public void onAnimationStart(Animation animation) {
            if (hasStarted() && !hasEnded()) {
                boolean unused = CameraMenuOption.this.k = true;
            }
            this.d = false;
        }
    }

    public interface OnItemClickListener {
        void a(CameraMenuOption cameraMenuOption);
    }

    public CameraMenuOption(Context context, a aVar, e eVar, d dVar, int i2, String str) {
        this.e = context;
        this.g = eVar;
        if (aVar != null) {
            this.x = aVar;
            if (!f.a(this.x)) {
                com.oppo.camera.d.a("CameraMenuOption", "CameraMenuOption, getOptionKey: " + aVar.getOptionKey());
                return;
            }
            this.v = new ArrayList<>(this.x.getOptionItems());
            m(n(str));
        }
        this.r = this.e.getResources().getDimensionPixelSize(R.dimen.menu_panel_padding_left_right);
        this.s = this.e.getResources().getDimensionPixelSize(R.dimen.menu_rec_mode_padding_left);
        this.i = dVar;
        this.d = i2;
    }

    private String n(String str) {
        String optionDefaultValue = this.x.getOptionDefaultValue();
        return (optionDefaultValue == null || !f.b(optionDefaultValue, this.v)) ? (str == null || !f.b(str, this.v)) ? this.v.get(0).d() : str : optionDefaultValue;
    }

    public View A() {
        return null;
    }

    public Drawable B() {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList == null || this.j >= arrayList.size()) {
            return null;
        }
        Drawable a2 = this.v.get(this.j).a();
        return a2 == null ? this.v.get(0).a() : a2;
    }

    public Bitmap C() {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList == null || this.j >= arrayList.size()) {
            return null;
        }
        Bitmap b2 = this.v.get(this.j).b();
        return b2 == null ? this.v.get(0).b() : b2;
    }

    public Bitmap D() {
        a aVar = this.x;
        if (aVar != null) {
            return aVar.getOptionExpandIcon();
        }
        return null;
    }

    public Bitmap E() {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList == null || this.j >= arrayList.size()) {
            return null;
        }
        return this.v.get(0).c();
    }

    public String F() {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList == null || this.j >= arrayList.size()) {
            return null;
        }
        return this.v.get(this.j).e();
    }

    public boolean G() {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        return arrayList == null || arrayList.size() <= 0 || this.v.get(0).c() == null;
    }

    public int H() {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public boolean I() {
        return this.x.getOptionOnOff();
    }

    public boolean J() {
        return this.x.getImageTitleMode();
    }

    public boolean K() {
        return this.x.getImageTitleColorChangeable();
    }

    public int L() {
        return this.x.getGroupType();
    }

    public int M() {
        return this.j;
    }

    public String a() {
        a aVar = this.x;
        if (aVar != null) {
            return aVar.getOptionKey();
        }
        return null;
    }

    public void a(float f2) {
        if (A() != null) {
            View A = A();
            if (f2 == 1.0f && !A().isEnabled()) {
                f2 = A().getAlpha();
            }
            A.setAlpha(f2);
        }
    }

    public void a(int i2) {
        if (this.f2804b || H() <= 0) {
            i2 = 8;
        }
        if (A() != null && x() != i2) {
            A().setVisibility(i2);
        }
    }

    public void a(int i2, int i3) {
        com.oppo.camera.d.a("CameraMenuOption", "animationLayoutTranslationToX, startPos: " + i2 + "endPos: " + i3 + " key: " + a());
        if (i2 != i3 && A() != null) {
            if (this.l == null) {
                this.l = new LayoutTranslationAnimation();
                this.l.setInterpolator(new AccelerateDecelerateInterpolator());
                LayoutTranslationAnimation layoutTranslationAnimation = this.l;
                layoutTranslationAnimation.setAnimationListener(layoutTranslationAnimation);
                this.t = ((float) ((com.oppo.camera.o.d.N() - this.e.getResources().getDimensionPixelSize(R.dimen.menu_indicator_layout_width)) - (this.e.getResources().getDimensionPixelSize(R.dimen.menu_panel_padding_left_right) * 2))) / ((float) this.p);
            }
            if (this.k) {
                this.l.a(i3);
                return;
            }
            this.k = true;
            int abs = (int) (((float) Math.abs(i3 - i2)) / this.t);
            int i4 = this.q;
            if (abs < i4) {
                abs = i4;
            }
            this.l.a(i2, i3);
            this.l.setDuration((long) abs);
            A().clearAnimation();
            A().startAnimation(this.l);
        }
    }

    public void a(int i2, int i3, int i4, int i5) {
        if (A() != null) {
            A().layout(i2, i3, i4, i5);
        }
    }

    public void a(int i2, boolean z) {
        BasicOptionItemList basicOptionItemList = this.f;
        if (basicOptionItemList != null) {
            basicOptionItemList.a(i2, z);
        }
    }

    public void a(Bitmap bitmap) {
    }

    public void a(Bitmap bitmap, boolean z) {
    }

    public void a(View view) {
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null && A() != null) {
            try {
                this.m = viewGroup;
                viewGroup.addView(A());
            } catch (Exception e2) {
                com.oppo.camera.d.a("CameraMenuOption", "addItemViewToParent, Exception: " + e2.toString());
            }
        }
    }

    public void a(OnItemClickListener onItemClickListener) {
        this.h = onItemClickListener;
    }

    public void a(CameraMenuOption cameraMenuOption, int i2) {
        e eVar = this.g;
        if (eVar != null) {
            boolean z = true;
            if (!eVar.a(a(), true)) {
                com.oppo.camera.d.a("CameraMenuOption", "onItemSelected, key: " + a() + ", return");
                return;
            }
            String a2 = this.g.a(a(), this.j, i2);
            if (a2 != null) {
                i2 = f.a(a2, this.v);
            }
            if (this.j != i2) {
                g(i2);
                o();
                if (this.g.b(a(), true)) {
                    z = false;
                }
            }
            BasicOptionItemList basicOptionItemList = this.f;
            if (basicOptionItemList != null) {
                basicOptionItemList.setOptionItemIcon(this.x.getOptionSingleIcon());
                this.f.setSelectItemIndex(this.j);
            }
            if (!(A() == null || 3 == L())) {
                A().invalidate();
            }
            if (z) {
                n();
            }
        }
    }

    public void a(String str) {
        com.oppo.camera.d.a("CameraMenuOption", "showPopUpWindowBegin, key: " + str + ", option key: " + a());
        if (y() && !g() && A() != null) {
            A().setClickable(false);
            if (str.equals(a())) {
                c(1);
                int left = A().getLeft();
                int i2 = this.r;
                this.n = left;
                if (u()) {
                    v();
                }
                if (left != i2) {
                    a(left, i2);
                } else {
                    A().setClickable(true);
                    A().setAlpha(1.0f);
                }
                o();
                return;
            }
            f(str);
        }
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void a(boolean z, boolean z2) {
        float f2 = 0.5f;
        if (this.f2803a || !p()) {
            if (A() != null) {
                A().setEnabled(false);
                A().setAlpha(0.5f);
            }
            this.w = false;
            BasicOptionItemList basicOptionItemList = this.f;
            if (basicOptionItemList != null) {
                basicOptionItemList.a(false, true);
                return;
            }
            return;
        }
        if (A() != null) {
            A().setEnabled(z);
            View A = A();
            if (!z2 || z) {
                f2 = 1.0f;
            }
            A.setAlpha(f2);
        }
        this.w = z;
        BasicOptionItemList basicOptionItemList2 = this.f;
        if (basicOptionItemList2 != null) {
            basicOptionItemList2.a(z, z2);
        }
    }

    public boolean a(String str, String str2) {
        if (str != null && !str.equals(a())) {
            return false;
        }
        com.oppo.camera.d.a("CameraMenuOption", "disableMenuOption, key: " + str);
        if (p()) {
            this.f2803a = true;
            a(false, true);
            this.w = !this.f2803a;
            if (str2 != null && j(str2)) {
                a(C());
            }
            if (A() != null) {
                A().invalidate();
            }
        }
        return true;
    }

    public boolean a(String str, String str2, int i2, int i3) {
        boolean z = false;
        if (str == null || !str.equals(a())) {
            return false;
        }
        if (this.v != null) {
            int i4 = 0;
            while (true) {
                if (i4 >= this.v.size()) {
                    break;
                }
                com.oppo.camera.ui.menu.d dVar = this.v.get(i4);
                if (str2.equals(dVar.d())) {
                    dVar.b(this.e.getResources().getString(i2));
                    dVar.a(BitmapFactory.decodeResource(this.e.getResources(), i3));
                    BasicOptionItemList basicOptionItemList = this.f;
                    if (basicOptionItemList != null) {
                        CameraMenuOption b2 = basicOptionItemList.b(i4);
                        if (b2 != null) {
                            b2.h(dVar.e());
                            b2.a(dVar.b());
                            if (this.j == i4) {
                                z = true;
                            }
                            b2.b(z);
                        }
                    }
                } else {
                    i4++;
                }
            }
        }
        return true;
    }

    public boolean a(String str, String str2, int i2, boolean z) {
        if (str != null && str.equals(a()) && g()) {
            e eVar = this.g;
            if (eVar != null && eVar.a(str)) {
                this.f2804b = false;
                a(false);
                e(str2);
                a(this.g.getMenuPanelEnable(), this.g.getMenuPanelAshed());
                if (i2 != 0 || !z) {
                    a(i2);
                } else {
                    d(i2);
                }
            }
            return true;
        } else if (str == null || !str.equals(a()) || w() != 0) {
            return false;
        } else {
            if (i2 == 0) {
                d(i2);
            }
            return true;
        }
    }

    public boolean a(String str, String str2, String str3) {
        if (str != null && !str.equals(a())) {
            return false;
        }
        if (p()) {
            this.f2803a = false;
            a(true, false);
            this.w = !this.f2803a;
            if (str3 == null) {
                e(str2);
            } else if (j(str3)) {
                a(C());
            }
            if (A() != null) {
                A().invalidate();
            }
        }
        return true;
    }

    public boolean a(String str, String str2, List<String> list) {
        if (str == null || !str.equals(a())) {
            return false;
        }
        if (a(list, n(str2))) {
            if (this.f != null) {
                k();
            }
            o();
            if (H() < 2) {
                a(false, true);
            } else if (!this.f2803a && this.g.getMenuPanelEnable()) {
                a(true, false);
            }
            if (H() <= 0) {
                a(8);
            } else {
                e(str2);
            }
        } else {
            e(str2);
            o();
        }
        return true;
    }

    public boolean a(String str, boolean z) {
        if (str == null || !str.equals(a())) {
            return false;
        }
        this.f2804b = true;
        if (!(A() == null || x() == 8)) {
            if (!z || 4 == A().getVisibility()) {
                a(8);
            } else {
                com.oppo.camera.o.d.a(A(), 8, (Animation.AnimationListener) null, 300);
            }
        }
        return true;
    }

    public boolean a(String str, String... strArr) {
        if (str == null || !str.equals(a())) {
            return false;
        }
        com.oppo.camera.d.a("CameraMenuOption", "addMenuOptionItems, key: " + str);
        if (strArr == null || strArr.length <= 0) {
            return true;
        }
        for (String l2 : strArr) {
            int l3 = l(l2);
            if (l3 >= 0 && this.f != null) {
                f fVar = new f(this.e, this.i, this.d);
                fVar.b();
                com.oppo.camera.ui.menu.d f2 = f(l3);
                if (f2 != null) {
                    fVar.h(f2.e());
                    fVar.a(f2.b());
                    this.f.a((CameraMenuOption) fVar, l3);
                }
            }
        }
        BasicOptionItemList basicOptionItemList = this.f;
        if (basicOptionItemList == null) {
            return true;
        }
        basicOptionItemList.setSelectItemIndex(this.j);
        return true;
    }

    public boolean a(List<String> list, String str) {
        int i2;
        if (list == null || list.size() <= 0) {
            i2 = this.v.size();
            this.v.clear();
        } else {
            ArrayList<com.oppo.camera.ui.menu.d> arrayList = new ArrayList<>();
            ArrayList<com.oppo.camera.ui.menu.d> optionItems = this.x.getOptionItems();
            for (int i3 = 0; i3 < optionItems.size(); i3++) {
                if (list.indexOf(optionItems.get(i3).d()) >= 0) {
                    arrayList.add(optionItems.get(i3));
                }
            }
            i2 = Math.abs(this.v.size() - arrayList.size());
            if (i2 == 0) {
                int i4 = i2;
                for (int i5 = 0; i5 < this.v.size(); i5++) {
                    if (!this.v.get(i5).d().equals(arrayList.get(i5).d())) {
                        i4++;
                    }
                }
                i2 = i4;
            }
            this.v.clear();
            this.v = arrayList;
            m(str);
        }
        return i2 > 0;
    }

    public void b() {
        o();
        p();
        com.oppo.camera.ui.menu.f.a((e) this);
        boolean z = this.w;
        this.f2803a = !z;
        a(z, this.f2803a);
    }

    public void b(int i2) {
        com.oppo.camera.d.a("CameraMenuOption", "key: " + a() + " resetLayout left: " + i2);
        if (A() != null) {
            A().layout(i2, A().getTop(), A().getWidth() + i2, A().getBottom());
        }
    }

    public void b(String str) {
    }

    public void b(boolean z) {
    }

    public void b(boolean z, boolean z2) {
        if (w() != 0) {
            if (A() != null) {
                A().setClickable(true);
                A().setAlpha(1.0f);
                if (3 == w() && z) {
                    A().setVisibility(0);
                } else if (1 == w() && z2) {
                    c(0);
                    o();
                    b(this.n);
                }
            }
            c(0);
        }
    }

    public boolean b(String str, String... strArr) {
        if (str == null || !str.equals(a())) {
            return false;
        }
        com.oppo.camera.d.a("CameraMenuOption", "removeMenuOptionItems, key: " + str + ", mOptionItemList: " + this.f);
        if (strArr == null || strArr.length <= 0) {
            return true;
        }
        for (String k2 : strArr) {
            int k3 = k(k2);
            if (k3 >= 0) {
                BasicOptionItemList basicOptionItemList = this.f;
                if (basicOptionItemList != null) {
                    basicOptionItemList.a(k3);
                    this.f.setSelectItemIndex(this.j);
                }
                o();
            }
        }
        return true;
    }

    public Bitmap c(boolean z) {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList == null || this.j >= arrayList.size()) {
            return null;
        }
        return z ? this.v.get(1).b() : this.v.get(0).b();
    }

    public void c() {
        com.oppo.camera.ui.menu.f.a((e) this);
    }

    public void c(int i2) {
        com.oppo.camera.d.a("CameraMenuOption", "key: " + a() + " setItemState, state( " + this.o + " ==> " + i2 + " )");
        this.o = i2;
    }

    public void c(String str) {
        com.oppo.camera.d.a("CameraMenuOption", "hidePopUpWindowBegin, key: " + str + ", option key: " + a());
        if (A() != null) {
            if (1 == w()) {
                A().setClickable(false);
            }
            if (3 == w()) {
                A().clearAnimation();
                g(str);
            } else if (1 == w()) {
                c(2);
                o();
                A().clearAnimation();
                if (x() != 0) {
                    v();
                    b(this.n);
                } else if (this.l != null) {
                    if (u()) {
                        v();
                    }
                    a(A().getLeft(), this.n);
                }
            }
        }
    }

    public void d() {
        BasicOptionItemList basicOptionItemList = this.f;
        if (basicOptionItemList != null) {
            basicOptionItemList.f();
        }
        if (u()) {
            v();
        }
        b(true, true);
        com.oppo.camera.ui.menu.f.b((e) this);
    }

    public void d(int i2) {
        if (A() != null && x() != i2) {
            com.oppo.camera.o.d.a(A(), i2, (Animation.AnimationListener) null, 300);
        }
    }

    public void d(String str) {
        if (A() != null) {
            A().setClickable(true);
            if (w() != 0) {
                A().setAlpha(1.0f);
            }
            if (3 == w() && !g()) {
                A().setVisibility(0);
            } else if (1 == w()) {
                c(0);
                b(this.n);
            }
        }
        o();
        c(0);
    }

    public void e(int i2) {
        this.d = i2;
    }

    public void e(String str) {
        if (!this.f2803a) {
            m(n(str));
            if (!g()) {
                o();
            }
            BasicOptionItemList basicOptionItemList = this.f;
            if (basicOptionItemList != null) {
                basicOptionItemList.setSelectItemIndex(this.j);
            }
        }
    }

    public boolean e() {
        return false;
    }

    public com.oppo.camera.ui.menu.d f(int i2) {
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList == null || arrayList.size() <= i2) {
            return null;
        }
        return this.v.get(i2);
    }

    public void f(String str) {
        com.oppo.camera.d.a("CameraMenuOption", "hideMenu, option key: " + a() + ", remove: " + this.f2804b + ", state:" + " " + w() + ", itemView: " + A() + ", show: " + y());
        if (y() && !g() && w() == 0 && A() != null) {
            c(3);
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(150);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() {
                public void onAnimationEnd(Animation animation) {
                    if (CameraMenuOption.this.A() != null && 3 == CameraMenuOption.this.w()) {
                        CameraMenuOption.this.A().setVisibility(4);
                    }
                }

                public void onAnimationRepeat(Animation animation) {
                }

                public void onAnimationStart(Animation animation) {
                }
            });
            A().clearAnimation();
            A().startAnimation(alphaAnimation);
        }
    }

    public boolean f() {
        BasicOptionItemList basicOptionItemList = this.f;
        return basicOptionItemList != null && basicOptionItemList.isShown();
    }

    public void g(int i2) {
        if (i2 >= 0 && i2 < this.v.size()) {
            i(this.v.get(i2).d());
        }
    }

    public void g(String str) {
        com.oppo.camera.d.a("CameraMenuOption", "showMenu, option key: " + a() + ", remove: " + this.f2804b + ", state: " + w() + ", itemView: " + A());
        if (A() != null && 3 == w() && !g()) {
            c(4);
            com.oppo.camera.o.d.a(A(), 0, (Animation.AnimationListener) null, 200);
            if (A().getAnimation() != null) {
                A().getAnimation().setStartOffset(50);
            }
        }
    }

    public boolean g() {
        return this.f2804b;
    }

    public void h(String str) {
    }

    public boolean h() {
        return this.c;
    }

    public void i() {
        j();
        BasicOptionItemList basicOptionItemList = this.f;
        if (basicOptionItemList != null) {
            basicOptionItemList.setVisibility(8);
            this.f.a(this.g.getOrientation(), false);
            this.f.setOptionItemIcon(this.x.getOptionSingleIcon());
            this.f.setSelectItemIndex(this.j);
        }
    }

    public void i(String str) {
        int a2 = f.a(str, this.v);
        if (a2 >= 0) {
            this.j = a2;
            this.u = str;
            SharedPreferences.Editor edit = this.g.getSharedPreferences().edit();
            edit.putString(this.x.getOptionKey(), str);
            edit.apply();
            return;
        }
        com.oppo.camera.d.e("CameraMenuOption", "setOptionValue fail! index: " + a2);
    }

    public void j() {
        com.oppo.camera.d.a("CameraMenuOption", "initializeOptionItems");
        if (!I()) {
            int H = H();
            if (H > 0) {
                this.f = new c(this.e, this.i);
                for (int i2 = 0; i2 < H; i2++) {
                    f fVar = new f(this.e, this.i, this.d);
                    fVar.b();
                    com.oppo.camera.ui.menu.d f2 = f(i2);
                    if (f2 != null) {
                        if (L() == 3) {
                            fVar.a(f2.b(), false);
                            fVar.a(f2.c(), true);
                        } else {
                            fVar.h(f2.e());
                        }
                    }
                    this.f.a((CameraMenuOption) fVar);
                }
                this.f.setOptionItemIcon(this.x.getOptionSingleIcon());
                this.f.setSelectItemIndex(this.j);
                this.f.setOptionItemListListener(this);
                this.f.a(A(), 0, 2);
                this.f.setVisibility(8);
            }
        }
    }

    public boolean j(String str) {
        int a2 = f.a(str, this.v);
        if (a2 < 0 || a2 == this.j) {
            return false;
        }
        this.j = a2;
        this.u = this.v.get(this.j).d();
        com.oppo.camera.d.a(str, "setOptionValueNoToPreferences, key: " + a() + ", mOptionValue: " + this.u);
        return true;
    }

    public int k(String str) {
        if (this.x.getOptionOnOff() || !f.b(str, this.v)) {
            return -1;
        }
        int a2 = f.a(str, this.v);
        if (a2 >= 0) {
            this.v.remove(a2);
        }
        if (this.v.size() <= 0) {
            com.oppo.camera.d.a("CameraMenuOption", "removeOptionItem, the remain item is 0, Error");
            return a2;
        } else if (this.u.equals(str)) {
            this.u = this.v.get(0).d();
            this.j = 0;
            i(this.u);
            return a2;
        } else {
            this.j = f.a(this.u, this.v);
            return a2;
        }
    }

    public void k() {
        BasicOptionItemList basicOptionItemList = this.f;
        if (basicOptionItemList != null) {
            basicOptionItemList.g();
            this.f = null;
        }
    }

    public int l(String str) {
        if (this.x.getOptionOnOff() || f.b(str, this.v) || !f.b(str, this.x.getOptionItems())) {
            return -1;
        }
        int a2 = f.a(str, this.x.getOptionItems());
        if (a2 == 0) {
            this.v.add(a2, this.x.getOptionItems().get(a2));
        } else {
            int i2 = 0;
            int i3 = a2 - 1;
            while (true) {
                if (i3 < 0) {
                    break;
                }
                int a3 = f.a(this.x.getOptionItems().get(i3).d(), this.v);
                if (a3 >= 0) {
                    i2 = a3 + 1;
                    break;
                }
                i3--;
            }
            this.v.add(i2, this.x.getOptionItems().get(a2));
            a2 = i2;
        }
        if (this.v.size() <= 0) {
            com.oppo.camera.d.a("CameraMenuOption", "addOptionItem, the remain item is 0, Error");
            return a2;
        }
        this.j = f.a(this.u, this.v);
        return a2;
    }

    public void l() {
        b(true, true);
        a(true);
        a aVar = this.x;
        if (aVar != null) {
            aVar.release();
            this.x = null;
        }
        ArrayList<com.oppo.camera.ui.menu.d> arrayList = this.v;
        if (arrayList != null) {
            Iterator<com.oppo.camera.ui.menu.d> it = arrayList.iterator();
            while (it.hasNext()) {
                com.oppo.camera.ui.menu.d next = it.next();
                if (next != null) {
                    next.f();
                }
            }
            this.v.clear();
            this.v = null;
        }
        this.g = null;
        com.oppo.camera.ui.menu.f.b((e) this);
        k();
        if (A() != null) {
            A().clearAnimation();
        }
        LayoutTranslationAnimation layoutTranslationAnimation = this.l;
        if (layoutTranslationAnimation != null) {
            layoutTranslationAnimation.cancel();
            this.l = null;
        }
        r();
        this.e = null;
    }

    public void m() {
        BasicOptionItemList basicOptionItemList = this.f;
        if (basicOptionItemList != null) {
            com.oppo.camera.ui.menu.f.a(basicOptionItemList);
        }
    }

    public void m(String str) {
        this.u = this.g.getSharedPreferences().getString(a(), str);
        if (this.v.size() <= 0 || (!this.w && f.a(this.u, this.v) >= 0)) {
            int a2 = f.a(this.u, this.v);
            if (a2 < 0 || a2 >= this.v.size()) {
                this.j = 0;
                if (this.v.size() > 0) {
                    this.u = this.v.get(this.j).d();
                }
            } else if (this.j != a2) {
                this.j = a2;
            }
        } else {
            this.j = f.a(this.u, this.v);
            if (this.j < 0) {
                this.j = 0;
                if (this.v.size() > 0) {
                    this.u = this.v.get(this.j).d();
                }
            }
        }
    }

    public void n() {
        BasicOptionItemList basicOptionItemList = this.f;
        if (basicOptionItemList != null && basicOptionItemList.isShown()) {
            this.f.d();
        }
    }

    public void o() {
        if (H() <= 0) {
            a((Bitmap) null);
        } else if (G()) {
            a(C());
        } else {
            a(E());
        }
        h(F());
        if (A() != null) {
            A().invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public boolean p() {
        return H() >= 2;
    }

    public int q() {
        return this.n;
    }

    /* access modifiers changed from: protected */
    public void r() {
        if (!(this.m == null || A() == null)) {
            this.m.removeView(A());
        }
        this.m = null;
    }

    public int s() {
        return 0;
    }

    public int t() {
        return 0;
    }

    public boolean u() {
        return this.k;
    }

    public void v() {
        LayoutTranslationAnimation layoutTranslationAnimation = this.l;
        if (layoutTranslationAnimation != null) {
            if (this.k) {
                layoutTranslationAnimation.cancel();
            }
            this.k = false;
        }
    }

    public int w() {
        return this.o;
    }

    public int x() {
        if (A() != null) {
            return A().getVisibility();
        }
        return 8;
    }

    public boolean y() {
        if (A() != null) {
            return A().isShown();
        }
        return false;
    }

    public int z() {
        if (this.k) {
            LayoutTranslationAnimation layoutTranslationAnimation = this.l;
            if (layoutTranslationAnimation != null) {
                return layoutTranslationAnimation.a();
            }
        }
        if (A() != null) {
            return A().getLeft();
        }
        return 0;
    }
}
