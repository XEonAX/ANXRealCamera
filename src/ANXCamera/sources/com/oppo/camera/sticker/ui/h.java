package com.oppo.camera.sticker.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.app.Activity;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.color.compat.os.SystemPropertiesNative;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.ui.RotateImageView;
import com.oppo.camera.ui.control.MainShutterButton;
import java.util.ArrayList;

/* compiled from: StickerMenu */
public class h {
    private Drawable A = null;
    private Drawable B = null;
    /* access modifiers changed from: private */
    public e C = null;
    /* access modifiers changed from: private */
    public g D = null;
    /* access modifiers changed from: private */
    public RelativeLayout E = null;
    /* access modifiers changed from: private */
    public f F = null;
    /* access modifiers changed from: private */
    public StickerCategoryRecycleView G = null;
    /* access modifiers changed from: private */
    public int H = -1;
    /* access modifiers changed from: private */
    public boolean I = false;
    private b J = null;
    /* access modifiers changed from: private */
    public LinearLayoutManager K = null;
    /* access modifiers changed from: private */
    public c L = null;
    private RelativeLayout.LayoutParams M = null;
    private View.OnClickListener N = new View.OnClickListener() {
        public void onClick(View view) {
            if ((h.this.h == null || !h.this.h.isRunning()) && h.this.w.g() && h.this.r.isEnabled() && h.this.r.isClickable()) {
                h.this.d(true);
            } else {
                d.a("StickerMenu", "mEnterMenuButtonOnClickListener, onClick, return");
            }
        }
    };
    private ContentObserver O = new ContentObserver((Handler) null) {
        public void onChange(boolean z) {
            d.a("StickerMenu", "onChange, slefChange: " + z);
            h.this.o.runOnUiThread(new Runnable() {
                public void run() {
                    h.this.a();
                }
            });
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f2468a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2469b;
    private final int c;
    private final int d;
    private Interpolator e = new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f);
    private TimeInterpolator f = new PathInterpolator(0.75f, 0.1f, 0.75f, 1.0f);
    private AnimatorSet g = null;
    /* access modifiers changed from: private */
    public AnimatorSet h = null;
    private AnimatorSet i = null;
    private AnimatorSet j = null;
    private Animator k = null;
    private Animator l = null;
    private boolean m = false;
    private int n = 0;
    /* access modifiers changed from: private */
    public Activity o = null;
    private RelativeLayout p = null;
    /* access modifiers changed from: private */
    public RelativeLayout q = null;
    /* access modifiers changed from: private */
    public RotateImageView r = null;
    private MainShutterButton s = null;
    /* access modifiers changed from: private */
    public StickerPageView t = null;
    /* access modifiers changed from: private */
    public RotateImageView u = null;
    /* access modifiers changed from: private */
    public j v = null;
    /* access modifiers changed from: private */
    public i w = null;
    private c x = null;
    /* access modifiers changed from: private */
    public boolean y = false;
    private Drawable z = null;

    /* compiled from: StickerMenu */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public Drawable f2490a = null;

        /* renamed from: b  reason: collision with root package name */
        public Drawable f2491b = null;
        public String c = null;
        public boolean d = false;

        public a(Drawable drawable, Drawable drawable2, String str, boolean z) {
            this.f2490a = drawable;
            this.f2491b = drawable2;
            this.c = str;
            this.d = z;
        }
    }

    /* compiled from: StickerMenu */
    class b extends RecyclerView.h {

        /* renamed from: a  reason: collision with root package name */
        int f2492a;

        /* renamed from: b  reason: collision with root package name */
        int f2493b;
        int c;

        public b(int i, int i2) {
            this.f2492a = i;
            this.f2493b = i2;
        }

        public void a(int i) {
            this.c = i;
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
            super.a(rect, view, recyclerView, tVar);
            rect.top = 0;
            rect.bottom = 0;
            if (this.c > 6) {
                if (((Integer) view.getTag()).intValue() == 0) {
                    rect.right = 0;
                    rect.left = this.f2493b;
                } else if (((Integer) view.getTag()).intValue() == this.c - 1) {
                    rect.right = this.f2493b;
                    rect.left = this.f2492a;
                } else {
                    rect.right = 0;
                    rect.left = this.f2492a;
                }
            } else if (((Integer) view.getTag()).intValue() == 0) {
            } else {
                if (com.oppo.camera.o.d.Y()) {
                    rect.right = this.f2492a;
                    rect.left = 0;
                    return;
                }
                rect.right = 0;
                rect.left = this.f2492a;
            }
        }
    }

    /* compiled from: StickerMenu */
    public class c implements View.OnLayoutChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private int f2495b = -1;

        public c() {
        }

        public void a(int i) {
            this.f2495b = i;
        }

        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (h.this.I) {
                int i9 = this.f2495b;
                if (i9 != -1) {
                    h.this.a(i9);
                }
                boolean unused = h.this.I = false;
                this.f2495b = -1;
            }
        }
    }

    public h(Activity activity, int i2, boolean z2) {
        d.a("StickerMenu", "StickerMenu");
        this.o = activity;
        this.p = (RelativeLayout) this.o.findViewById(R.id.camera);
        this.n = i2;
        this.L = new c();
        this.f2468a = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_type_view_item_size);
        this.f2469b = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_view_padding);
        this.c = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_recycle_list_padding);
        this.d = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_recycle_list_margin_start);
        if (this.p != null) {
            d.a("StickerMenus");
            this.r = (RotateImageView) activity.getLayoutInflater().inflate(R.layout.enter_sticker_button, (ViewGroup) null);
            this.r.a(this.n, true);
            this.r.setOnClickListener(this.N);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(11);
            layoutParams.addRule(6, R.id.control_panel_layout);
            layoutParams.topMargin = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_menu_button_top_margin);
            layoutParams.rightMargin = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_menu_button_right_margin);
            if (z2) {
                c(true);
            } else {
                c(false);
            }
            this.p.addView(this.r, layoutParams);
            this.z = this.o.getDrawable(R.drawable.sticker_music_play);
            this.A = this.o.getDrawable(R.drawable.sticker_music_pause);
            this.B = this.z;
            this.D = new g() {
                public void a(int i, String str, boolean z) {
                    if (h.this.w != null) {
                        h.this.w.b(str);
                        int unused = h.this.H = i;
                        h.this.a(str, z);
                        h.this.t.a(h.this.H, false);
                        h hVar = h.this;
                        hVar.a(hVar.H);
                        com.oppo.camera.ui.preview.a.h.b((Context) h.this.o).b(str);
                    }
                }

                public boolean a() {
                    return !h.this.I;
                }

                public void b() {
                    if (h.this.w != null) {
                        h.this.w.d();
                    }
                }
            };
            d.b("StickerMenus");
        }
    }

    private void i() {
        Animator animator = this.k;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.l;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private Animator j() {
        if (this.r.getVisibility() != 0) {
            return null;
        }
        this.l = ObjectAnimator.ofFloat(this.r, "alpha", new float[]{1.0f, 0.0f});
        this.l.setInterpolator(this.e);
        this.l.setDuration(80);
        this.l.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
                h.this.r.setClickable(true);
                h.this.r.setVisibility(0);
                h.this.r.setAlpha(1.0f);
            }

            public void onAnimationEnd(Animator animator) {
                h.this.r.setClickable(false);
                h.this.r.setVisibility(4);
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
                h.this.r.setClickable(false);
            }
        });
        return this.l;
    }

    private Animator k() {
        if (this.r.getVisibility() == 0) {
            return null;
        }
        this.k = ObjectAnimator.ofFloat(this.r, "alpha", new float[]{0.0f, 1.0f});
        this.k.setInterpolator(this.e);
        this.k.setDuration(160);
        this.k.setStartDelay(160);
        this.k.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
                h.this.r.setClickable(false);
                h.this.r.setVisibility(4);
                h.this.r.setAlpha(0.0f);
            }

            public void onAnimationEnd(Animator animator) {
                h.this.r.setClickable(true);
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
                h.this.r.setVisibility(0);
                h.this.r.setClickable(false);
            }
        });
        return this.k;
    }

    private int l() {
        int F2 = com.oppo.camera.o.d.F();
        return !MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST.equals(SystemPropertiesNative.get("oppo.hide.navigationbar", "0")) ? F2 - com.oppo.camera.o.d.R() : F2;
    }

    private int m() {
        return this.o.getResources().getDimensionPixelSize(R.dimen.sticker_shutter_button_translate_y);
    }

    public void a() {
        d.a("StickerMenu", "updateLayout, mGridViewRelativeLayout: " + this.q);
        if (this.q != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, l());
            layoutParams.addRule(12);
            layoutParams.bottomMargin = MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST.equals(SystemPropertiesNative.get("oppo.hide.navigationbar", "0")) ? 0 : com.oppo.camera.o.d.R();
            this.q.setLayoutParams(layoutParams);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0074 A[SYNTHETIC] */
    public void a(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.C != null) {
            int childCount = this.G.getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = this.G.getChildAt(i7);
                if (((Integer) childAt.getTag()).intValue() == i2) {
                    int left = childAt.getLeft();
                    int b2 = this.C.b();
                    if (i2 == 0) {
                        i6 = this.c;
                    } else {
                        if (i2 == 1) {
                            i4 = this.c + this.f2468a;
                            i5 = this.f2469b;
                        } else if (i2 == b2 - 1) {
                            i3 = (left - this.c) + (this.f2468a * 4) + (this.f2469b * 4);
                            if (i3 == Integer.MAX_VALUE) {
                                this.G.a(i3, 0);
                            }
                        } else if (i2 == b2 - 2) {
                            i4 = this.c + (this.f2468a * 3);
                            i5 = this.f2469b * 3;
                        } else {
                            i4 = this.c + (this.f2468a * 2);
                            i5 = this.f2469b * 2;
                        }
                        i6 = i4 + i5;
                    }
                    i3 = left - i6;
                    if (i3 == Integer.MAX_VALUE) {
                    }
                }
            }
        }
    }

    public void a(int i2, boolean z2, boolean z3) {
        d.a("StickerMenu", "setVisibility, visible: " + i2 + ", includePanel: " + z3);
        if (z2) {
            if (f()) {
                if (z3) {
                    RelativeLayout relativeLayout = this.q;
                    if (relativeLayout != null) {
                        com.oppo.camera.o.d.a((View) relativeLayout, i2, (Animation.AnimationListener) null, 300);
                    }
                    f fVar = this.F;
                    if (fVar != null) {
                        com.oppo.camera.o.d.a((View) fVar, i2, (Animation.AnimationListener) null, 300);
                    }
                }
            } else if (this.r != null) {
                i();
                if (i2 == 0) {
                    Animator k2 = k();
                    if (k2 != null) {
                        k2.start();
                        return;
                    }
                    return;
                }
                Animator j2 = j();
                if (j2 != null) {
                    j2.start();
                }
            }
        } else if (f()) {
            if (z3) {
                RelativeLayout relativeLayout2 = this.q;
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(i2);
                }
                f fVar2 = this.F;
                if (fVar2 != null) {
                    fVar2.setVisibility(i2);
                }
            }
        } else if (this.r != null) {
            i();
            this.r.setVisibility(i2);
            this.r.setAlpha(i2 == 0 ? 1.0f : 0.0f);
        }
    }

    public void a(StickerItem stickerItem) {
        if (stickerItem == null) {
            this.y = false;
            return;
        }
        b(stickerItem.getStickerUUID());
        this.y = stickerItem.hasMusic();
    }

    public void a(final StickerItem stickerItem, final boolean z2) {
        Activity activity = this.o;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (h.this.v != null) {
                        h.this.v.a(stickerItem, z2);
                    }
                }
            });
        }
    }

    public void a(c cVar) {
        this.x = cVar;
    }

    public void a(i iVar) {
        this.w = iVar;
    }

    public void a(final String str) {
        Activity activity = this.o;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (h.this.v != null) {
                        h.this.v.a(str);
                    }
                }
            });
        }
    }

    public void a(String str, int i2, int i3, String str2, boolean z2, StickerItem stickerItem) {
        if (this.v != null && !TextUtils.isEmpty(str2)) {
            this.v.a(str, i2, i3, com.oppo.camera.ui.preview.a.h.b((Context) this.o).a((Context) this.o, Uri.parse(str2)), z2, stickerItem);
        }
    }

    public void a(final String str, final boolean z2) {
        Activity activity = this.o;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (h.this.v != null) {
                        h.this.v.a(str, z2);
                    }
                }
            });
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x01a6  */
    public void a(ArrayList<a> arrayList, int i2, boolean z2) {
        boolean z3;
        RelativeLayout.LayoutParams layoutParams;
        d.a("StickerMenus.updateStickerCategoryMenu");
        if (this.F == null) {
            this.F = new f(this.o);
            this.F.setBackgroundColor(this.o.getResources().getColor(R.color.plugin_background_color));
        }
        if (this.M == null) {
            this.M = new RelativeLayout.LayoutParams(-1, this.o.getResources().getDimensionPixelSize(R.dimen.sticker_recycle_background_height));
            this.M.addRule(2, R.id.control_panel_layout);
        }
        if (this.E == null) {
            this.E = (RelativeLayout) LayoutInflater.from(this.o).inflate(R.layout.sticker_category_menu, (ViewGroup) null);
            this.C = new e(this.o, this.D, this.n);
            this.C.a(arrayList);
            this.G = (StickerCategoryRecycleView) this.E.findViewById(R.id.RecyclerView);
            this.G.addOnLayoutChangeListener(this.L);
            this.G.setStickerCategoryInterface(this.D);
            this.K = new LinearLayoutManager(this.o);
            this.K.b(0);
            this.G.setItemViewCacheSize(100);
            this.G.setLayoutManager(this.K);
            this.G.setAdapter(this.C);
            this.J = new b(this.f2469b, this.c);
            this.G.a((RecyclerView.h) this.J);
            if (this.C.b() <= 6) {
                int b2 = this.C.b();
                int i3 = this.f2468a;
                layoutParams = new RelativeLayout.LayoutParams((b2 * i3) + ((b2 - 1) * this.f2469b), i3);
                layoutParams.addRule(5);
                layoutParams.setMarginStart(this.d);
            } else {
                int i4 = this.f2468a;
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((i4 * 6) + (this.f2469b * 5), i4);
                layoutParams2.addRule(5);
                layoutParams2.setMarginStart(this.d - this.c);
                layoutParams = layoutParams2;
            }
            if (!f() || this.C.b() <= 1) {
                this.F.setVisibility(4);
            }
            this.F.addView(this.E, layoutParams);
            RelativeLayout relativeLayout = this.p;
            relativeLayout.addView(this.F, relativeLayout.indexOfChild((RelativeLayout) this.o.findViewById(R.id.control_panel_layout)), this.M);
        } else if (arrayList.size() > 1) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.E.getLayoutParams();
            if (arrayList.size() <= 6) {
                int size = arrayList.size();
                int i5 = this.f2468a;
                layoutParams3.width = (size * i5) + ((size - 1) * this.f2469b);
                layoutParams3.height = i5;
                layoutParams3.addRule(5);
                layoutParams3.setMarginStart(this.d);
            } else {
                int i6 = this.f2468a;
                layoutParams3.width = (i6 * 6) + (this.f2469b * 5);
                layoutParams3.height = i6;
                layoutParams3.addRule(5);
                layoutParams3.setMarginStart(this.d - this.c);
            }
            this.E.setLayoutParams(layoutParams3);
            this.C.a(arrayList);
            this.C.e();
        }
        if (!z2) {
            int i7 = this.H;
            if (i7 != -1 && i7 < arrayList.size()) {
                z3 = false;
                if (this.H < arrayList.size()) {
                    this.C.e(this.H);
                    this.G.b(this.H);
                    j jVar = this.v;
                    if (jVar != null) {
                        jVar.b(this.H);
                        this.t.a(this.v.d(), false);
                    }
                    if (z3) {
                        this.I = true;
                        this.L.a(this.H);
                    }
                    this.J.a(arrayList.size());
                    a(arrayList.get(this.H).c, true);
                }
                d.b("StickerMenus.updateStickerCategoryMenu");
            }
        }
        if (-1 == this.H) {
            this.H = 0;
        } else {
            this.H = i2;
        }
        z3 = true;
        if (this.H < arrayList.size()) {
        }
        d.b("StickerMenus.updateStickerCategoryMenu");
    }

    public void a(boolean z2) {
        d.a("StickerMenu", "setEnable, enable: " + z2 + ", isStickerMenuOpen: " + f());
        if (!f()) {
            RotateImageView rotateImageView = this.r;
            if (rotateImageView != null) {
                rotateImageView.setClickable(z2);
            }
        }
    }

    public void a(boolean z2, boolean z3) {
        d.a("StickerMenu", "onResume");
        d.a("StickerMenus.onResume");
        a();
        if (z2) {
            RotateImageView rotateImageView = this.r;
            if (rotateImageView != null) {
                rotateImageView.setAlpha(0.0f);
            }
        }
        if (!z3) {
            a(0, false, false);
        }
        d();
        d.b("StickerMenus.onResume");
    }

    public void a(boolean z2, boolean z3, boolean z4) {
        a(z2, z3, z4, true, true);
    }

    public void a(boolean z2, boolean z3, boolean z4, final boolean z5, boolean z6) {
        AnimatorSet animatorSet = this.g;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.i;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        RelativeLayout relativeLayout = this.q;
        if (relativeLayout != null) {
            relativeLayout.setEnabled(false);
        }
        RelativeLayout relativeLayout2 = this.E;
        if (relativeLayout2 != null) {
            relativeLayout2.setEnabled(false);
        }
        i iVar = this.w;
        if (iVar != null && z5) {
            iVar.b();
        }
        com.oppo.camera.o.d.a((View) this.q, 4, (Animation.AnimationListener) null, 300);
        com.oppo.camera.o.d.a((View) this.F, 4, (Animation.AnimationListener) null, 300);
        f fVar = this.F;
        if (fVar != null) {
            fVar.a(this.y);
        }
        if (this.y) {
            com.oppo.camera.o.d.a((View) this.u, 4, (Animation.AnimationListener) null, 300);
        }
        this.h = new AnimatorSet();
        if (!z2) {
            this.h.play(k());
        }
        this.h.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
                if (h.this.q != null) {
                    h.this.q.setEnabled(true);
                }
                if (h.this.w != null && z5) {
                    h.this.w.c();
                }
                if (h.this.E != null) {
                    h.this.E.setEnabled(true);
                }
            }

            public void onAnimationEnd(Animator animator) {
                if (h.this.q != null) {
                    h.this.q.setEnabled(true);
                }
                if (h.this.E != null) {
                    h.this.E.setEnabled(true);
                }
                if (h.this.w != null && z5) {
                    h.this.w.c();
                }
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
            }
        });
        AnimatorSet animatorSet3 = this.j;
        if (animatorSet3 != null && z6) {
            animatorSet3.start();
        }
        this.h.start();
        this.m = false;
    }

    public void b() {
        d.a("StickerMenu", "onPause");
        if (f()) {
            b(true, false, false);
        }
        a(false);
        this.H = -1;
        e();
    }

    public void b(int i2) {
        this.n = i2;
        RotateImageView rotateImageView = this.r;
        if (rotateImageView != null) {
            rotateImageView.a(this.n, true);
        }
        j jVar = this.v;
        if (jVar != null) {
            jVar.c(this.n);
        }
        e eVar = this.C;
        if (eVar != null) {
            eVar.f(this.n);
        }
        RotateImageView rotateImageView2 = this.u;
        if (rotateImageView2 != null) {
            rotateImageView2.a(this.n, true);
        }
    }

    public void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.B = com.oppo.camera.ui.preview.a.h.b((Context) this.o).a(str) ? this.A : this.z;
            RotateImageView rotateImageView = this.u;
            if (rotateImageView != null) {
                rotateImageView.setImageDrawable(this.B);
            }
        }
    }

    public void b(boolean z2) {
        d.a("StickerMenu", "setStickerPanelEnable, enable: " + z2);
        j jVar = this.v;
        if (jVar != null) {
            jVar.a(z2);
        }
    }

    public void b(boolean z2, boolean z3, boolean z4) {
        AnimatorSet animatorSet = this.g;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.h;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        AnimatorSet animatorSet3 = this.i;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        AnimatorSet animatorSet4 = this.j;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
        }
        RelativeLayout relativeLayout = this.q;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(4);
        }
        f fVar = this.F;
        if (fVar != null) {
            fVar.setVisibility(4);
            this.F.a(this.y);
        }
        RotateImageView rotateImageView = this.u;
        if (rotateImageView != null && this.y) {
            rotateImageView.setVisibility(4);
        }
        RotateImageView rotateImageView2 = this.r;
        if (rotateImageView2 != null) {
            rotateImageView2.setTranslationY(0.0f);
            this.r.setTranslationX(0.0f);
            this.r.setAlpha(1.0f);
            if (z2) {
                this.r.setVisibility(4);
            }
        }
        MainShutterButton mainShutterButton = this.s;
        if (mainShutterButton != null) {
            mainShutterButton.setTranslationY(0.0f);
            this.s.setScaleX(1.0f);
            this.s.setScaleY(1.0f);
        }
        RotateImageView rotateImageView3 = this.r;
        if (rotateImageView3 != null) {
            rotateImageView3.setClickable(true);
        }
        i iVar = this.w;
        if (iVar != null) {
            iVar.b(z3);
        }
        this.m = false;
    }

    public void c() {
        StickerItem stickerItem = null;
        int i2 = 0;
        if (this.t == null) {
            d.a("StickerMenus.initEffectMenuPanel");
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, l());
            layoutParams.addRule(12);
            layoutParams.bottomMargin = MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST.equals(SystemPropertiesNative.get("oppo.hide.navigationbar", "0")) ? 0 : com.oppo.camera.o.d.R();
            this.q = (RelativeLayout) LayoutInflater.from(this.o).inflate(R.layout.sticker_page_view, (ViewGroup) null);
            RelativeLayout relativeLayout = (RelativeLayout) this.o.findViewById(R.id.control_panel_layout);
            this.s = (MainShutterButton) this.o.findViewById(R.id.shutter_button);
            relativeLayout.addView(this.q, relativeLayout.indexOfChild((RelativeLayout) this.o.findViewById(R.id.control_panel_button_layout)), layoutParams);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.s, "translationY", new float[]{0.0f, (float) m()});
            ofFloat.setInterpolator(this.f);
            ofFloat.setDuration(300);
            this.i = new AnimatorSet();
            this.i.play(ofFloat);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.s, "translationY", new float[]{(float) m(), 0.0f});
            ofFloat2.setInterpolator(this.f);
            ofFloat2.setDuration(300);
            this.j = new AnimatorSet();
            this.j.play(ofFloat2);
            i iVar = this.w;
            if (iVar != null) {
                stickerItem = iVar.e();
            }
            this.t = (StickerPageView) this.o.findViewById(R.id.page_view);
            j jVar = new j(this.o, this.n, stickerItem, this.w, this.x);
            this.v = jVar;
            this.v.b(this.H);
            this.t.setAdapter(this.v);
            this.t.a(this.v.d(), false);
            this.t.setStickerCategoryInterface(this.D);
            this.t.setOnPageChangeListener(new ViewPager.f() {
                public void a(int i) {
                    d.b("StickerMenu", "onPageSelected, position: " + i);
                    if (h.this.v != null && h.this.C != null && h.this.D != null && h.this.G != null && h.this.H != i) {
                        int p = h.this.K.p();
                        int r = h.this.K.r();
                        if (p > i || i > r) {
                            int a2 = h.this.v.a();
                            if (i == 0 || i == 1 || (i == 2 && h.this.H == 1)) {
                                h.this.G.b(0);
                            } else {
                                int i2 = a2 - 1;
                                if (i != i2) {
                                    int i3 = a2 - 2;
                                    if (!(i == i3 || (i == a2 - 3 && h.this.H == i3))) {
                                        if (i > h.this.H) {
                                            h.this.G.b(i - 3);
                                        } else {
                                            h.this.G.b(i - 1);
                                        }
                                        boolean unused = h.this.I = true;
                                        h.this.L.a(i);
                                    }
                                }
                                h.this.G.b(i2);
                            }
                        } else {
                            h.this.a(i);
                        }
                        int unused2 = h.this.H = i;
                        h.this.v.b(h.this.H);
                        h.this.C.e(h.this.H);
                        h hVar = h.this;
                        hVar.a(hVar.C.a(h.this.H).c, false);
                    }
                }

                public void a(int i, float f, int i2) {
                    if (f == 0.0f && h.this.C != null && i < h.this.C.b()) {
                        h.this.w.a(h.this.C.a(i).c);
                    }
                }

                public void b(int i) {
                    d.b("StickerMenu", "onPageScrollStateChanged, position: " + i);
                }
            });
            this.u = new RotateImageView(this.o);
            this.u.setImageDrawable(this.B);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            if (this.o.getResources().getConfiguration().getLayoutDirection() == 0) {
                layoutParams2.addRule(11);
                layoutParams2.rightMargin = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_music_margin_right);
            } else {
                layoutParams2.addRule(9);
                layoutParams2.leftMargin = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_music_margin_right);
            }
            layoutParams2.addRule(8);
            layoutParams2.bottomMargin = this.o.getResources().getDimensionPixelSize(R.dimen.sticker_music_margin_bottom);
            layoutParams2.addRule(2, R.id.control_panel_layout);
            this.p.addView(this.u, layoutParams2);
            RotateImageView rotateImageView = this.u;
            if (!this.y) {
                i2 = 4;
            }
            rotateImageView.setVisibility(i2);
            this.u.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    if (h.this.w != null) {
                        h.this.w.f();
                    }
                }
            });
        } else {
            i iVar2 = this.w;
            if (iVar2 != null) {
                stickerItem = iVar2.e();
            }
            j jVar2 = new j(this.o, this.n, stickerItem, this.w, this.x);
            this.v = jVar2;
            this.v.b(this.H);
            this.t.setAdapter(this.v);
            this.t.a(this.v.d(), false);
        }
        d.b("StickerMenus.initEffectMenuPanel");
    }

    public void c(final String str) {
        Activity activity = this.o;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    boolean unused = h.this.y = true;
                    h.this.b(str);
                    com.oppo.camera.o.d.a((View) h.this.u, 0, (Animation.AnimationListener) null, 300);
                    if (h.this.F != null) {
                        h.this.F.a(h.this.y);
                    }
                }
            });
        }
    }

    public void c(boolean z2) {
        if (z2) {
            this.r.setImageResource(R.drawable.sticker_menu_control_button_highlight);
        } else {
            this.r.setImageResource(R.drawable.sticker_menu_control_button);
        }
    }

    public void d() {
        d.a("StickerMenu", "registerNavigationBarObserver");
        this.o.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("manual_hide_navigationbar"), true, this.O);
    }

    public void d(boolean z2) {
        d.a("StickerMenu", "show, isAnim: " + z2);
        AnimatorSet animatorSet = this.h;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.m = true;
        RotateImageView rotateImageView = this.r;
        if (rotateImageView != null) {
            rotateImageView.setClickable(false);
        }
        RelativeLayout relativeLayout = this.q;
        if (relativeLayout != null) {
            relativeLayout.setEnabled(false);
        }
        RelativeLayout relativeLayout2 = this.E;
        if (relativeLayout2 != null) {
            relativeLayout2.setEnabled(false);
        }
        i iVar = this.w;
        if (iVar != null) {
            iVar.a(z2);
        }
        c();
        AnimatorSet animatorSet2 = this.i;
        if (animatorSet2 != null) {
            animatorSet2.start();
        }
        if (z2) {
            com.oppo.camera.o.d.a((View) this.q, 0, (Animation.AnimationListener) null, 300);
            if (this.y) {
                com.oppo.camera.o.d.a((View) this.u, 0, (Animation.AnimationListener) null, 300);
            }
            e eVar = this.C;
            if (eVar != null && eVar.b() > 1) {
                f fVar = this.F;
                if (fVar != null) {
                    com.oppo.camera.o.d.a((View) fVar, 0, (Animation.AnimationListener) null, 300);
                    this.F.a(this.y);
                }
            }
            this.g = new AnimatorSet();
            this.g.play(j());
            this.g.addListener(new Animator.AnimatorListener() {
                public void onAnimationCancel(Animator animator) {
                    if (h.this.q != null) {
                        h.this.q.setEnabled(true);
                    }
                    if (h.this.w != null) {
                        h.this.w.a();
                    }
                }

                public void onAnimationEnd(Animator animator) {
                    if (h.this.q != null) {
                        h.this.q.setEnabled(true);
                    }
                    if (h.this.w != null) {
                        h.this.w.a();
                    }
                }

                public void onAnimationRepeat(Animator animator) {
                }

                public void onAnimationStart(Animator animator) {
                }
            });
            this.g.start();
            return;
        }
        RotateImageView rotateImageView2 = this.r;
        if (rotateImageView2 != null) {
            rotateImageView2.setAlpha(0.0f);
        }
        RelativeLayout relativeLayout3 = this.q;
        if (relativeLayout3 != null) {
            relativeLayout3.setVisibility(0);
            this.q.setEnabled(true);
        }
        i iVar2 = this.w;
        if (iVar2 != null) {
            iVar2.a();
        }
        e eVar2 = this.C;
        if (eVar2 != null && eVar2.b() > 1) {
            f fVar2 = this.F;
            if (fVar2 != null) {
                fVar2.setVisibility(0);
                this.F.a(this.y);
            }
            a(this.H);
        }
    }

    public void e() {
        d.a("StickerMenu", "unregisterNavigationBarObserver");
        this.o.getContentResolver().unregisterContentObserver(this.O);
    }

    public boolean f() {
        if (!this.m) {
            AnimatorSet animatorSet = this.g;
            if (animatorSet == null || !animatorSet.isRunning()) {
                return false;
            }
        }
        return true;
    }

    public void g() {
        Activity activity = this.o;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    boolean unused = h.this.y = false;
                    com.oppo.camera.o.d.a((View) h.this.u, 8, (Animation.AnimationListener) null, 300);
                    if (h.this.F != null) {
                        h.this.F.a(h.this.y);
                    }
                }
            });
        }
    }

    public boolean h() {
        AnimatorSet animatorSet = this.g;
        if (animatorSet != null && animatorSet.isRunning()) {
            return true;
        }
        AnimatorSet animatorSet2 = this.h;
        return animatorSet2 != null && animatorSet2.isRunning();
    }
}
