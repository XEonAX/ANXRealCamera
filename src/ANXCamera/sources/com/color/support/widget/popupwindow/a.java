package com.color.support.widget.popupwindow;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import color.support.v7.appcompat.R;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ColorPopupListWindow */
public class a extends PopupWindow implements View.OnLayoutChangeListener {
    private boolean A;
    /* access modifiers changed from: private */
    public boolean B;
    private Animation.AnimationListener C = new Animation.AnimationListener() {
        public void onAnimationEnd(Animation animation) {
            a.this.i();
            boolean unused = a.this.B = false;
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
            boolean unused = a.this.B = true;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private Context f1734a;

    /* renamed from: b  reason: collision with root package name */
    private BaseAdapter f1735b;
    private BaseAdapter c;
    private BaseAdapter d;
    private View e;
    private Rect f;
    private Rect g;
    private Rect h;
    private List<c> i;
    private ViewGroup j;
    private ListView k;
    private ListView l;
    private AdapterView.OnItemClickListener m;
    private Point n = new Point();
    private int[] o = new int[2];
    private int[] p = new int[2];
    private int[] q = new int[4];
    private float r;
    private float s;
    private int t;
    private int u;
    private Interpolator v;
    private Interpolator w;
    private int x;
    private boolean y;
    private boolean z;

    public a(Context context) {
        super(context);
        this.f1734a = context;
        this.i = new ArrayList();
        this.t = context.getResources().getInteger(R.integer.oppo_animation_time_move_veryfast);
        this.u = context.getResources().getInteger(R.integer.oppo_animation_time_move_veryfast);
        Interpolator loadInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.oppo_curve_opacity_inout);
        this.w = loadInterpolator;
        this.v = loadInterpolator;
        this.x = context.getResources().getDimensionPixelSize(R.dimen.color_popup_list_window_min_width);
        this.l = new ListView(context);
        this.l.setDivider((Drawable) null);
        this.l.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.j = a(context);
        setBackgroundDrawable(new ColorDrawable(0));
        setClippingEnabled(false);
        if (Build.VERSION.SDK_INT > 23) {
            setExitTransition((Transition) null);
            setEnterTransition((Transition) null);
        }
    }

    private ViewGroup a(Context context) {
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.color_popup_list_window_layout, (ViewGroup) null);
        this.k = (ListView) frameLayout.findViewById(R.id.color_popup_list_view);
        Drawable drawable = context.getResources().getDrawable(R.drawable.color_popup_list_window_bg);
        this.h = new Rect();
        drawable.getPadding(this.h);
        frameLayout.setBackground(drawable);
        return frameLayout;
    }

    private void c() {
        this.e.getRootView().getLocationOnScreen(this.o);
        int[] iArr = this.o;
        int i2 = iArr[0];
        int i3 = iArr[1];
        this.e.getRootView().getLocationInWindow(this.o);
        int[] iArr2 = this.o;
        int i4 = iArr2[0];
        int i5 = iArr2[1];
        int[] iArr3 = this.p;
        iArr3[0] = i2 - i4;
        iArr3[1] = i3 - i5;
    }

    private int d() {
        return ((this.f.right - this.f.left) - this.h.left) - this.h.right;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x007a, code lost:
        if (r9.A != false) goto L_0x007c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0089, code lost:
        if (r9.A != false) goto L_0x009d;
     */
    private void e() {
        this.z = true;
        this.y = true;
        if (this.f.right - this.f.left < getWidth()) {
            this.z = false;
            return;
        }
        int max = Math.max(this.f.left, Math.min(this.g.centerX() - (getWidth() / 2), this.f.right - getWidth())) - this.p[0];
        int i2 = this.g.top - this.f.top;
        int i3 = this.f.bottom - this.g.bottom;
        int height = getHeight();
        boolean z2 = i2 >= height;
        boolean z3 = i3 >= height;
        int i4 = this.g.top - height;
        int i5 = this.g.bottom;
        if (i3 > 0 || i2 > 0) {
            if (!this.A ? !z3 : !z2) {
                if (!this.A ? !z2 : !z3) {
                    if (i2 > i3) {
                        i5 = this.f.top;
                        setHeight(i2);
                    } else {
                        i5 = this.g.bottom;
                        setHeight(i3);
                    }
                    this.n.set(max, i5 - this.p[1]);
                    return;
                }
            }
            i5 = i4;
            this.n.set(max, i5 - this.p[1]);
            return;
        }
        this.y = false;
    }

    private void f() {
        if ((this.g.centerX() - this.p[0]) - this.n.x >= getWidth()) {
            this.r = 1.0f;
        } else {
            this.r = ((float) ((this.g.centerX() - this.p[0]) - this.n.x)) / ((float) getWidth());
        }
        if (this.n.y >= this.g.top - this.p[1]) {
            this.s = 0.0f;
        } else {
            this.s = 1.0f;
        }
    }

    private void g() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.5f, 1.0f, 0.5f, 1.0f, 1, this.r, 1, this.s);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        scaleAnimation.setDuration((long) this.t);
        scaleAnimation.setInterpolator(this.v);
        alphaAnimation.setDuration((long) this.u);
        alphaAnimation.setInterpolator(this.w);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(alphaAnimation);
        this.j.startAnimation(animationSet);
    }

    private void h() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.5f, 1.0f, 0.5f, 1, this.r, 1, this.s);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        scaleAnimation.setDuration((long) this.t);
        scaleAnimation.setInterpolator(this.v);
        alphaAnimation.setDuration((long) this.u);
        alphaAnimation.setInterpolator(this.w);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setAnimationListener(this.C);
        this.j.startAnimation(animationSet);
    }

    /* access modifiers changed from: private */
    public void i() {
        super.dismiss();
        this.e.getRootView().removeOnLayoutChangeListener(this);
        setContentView((View) null);
    }

    public void a() {
        BaseAdapter baseAdapter = this.d;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(d(), MessageNano.UNSET_ENUM_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = baseAdapter.getCount();
        int i2 = 0;
        int i3 = 0;
        int i4 = makeMeasureSpec2;
        View view = null;
        int i5 = 0;
        for (int i6 = 0; i6 < count; i6++) {
            int itemViewType = baseAdapter.getItemViewType(i6);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            view = baseAdapter.getView(i6, view, this.l);
            AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
            if (layoutParams.height != -2) {
                i4 = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
            }
            view.measure(makeMeasureSpec, i4);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            if (measuredWidth > i5) {
                i5 = measuredWidth;
            }
            i2 += measuredHeight;
        }
        setWidth(Math.max(i5, this.x) + this.h.left + this.h.right);
        setHeight(i2 + this.h.top + this.h.bottom);
    }

    public void a(View view) {
        if (view == null) {
            return;
        }
        if (!(this.f1735b == null && this.c == null) && !isShowing()) {
            this.e = view;
            this.e.getRootView().removeOnLayoutChangeListener(this);
            this.e.getRootView().addOnLayoutChangeListener(this);
            BaseAdapter baseAdapter = this.c;
            if (baseAdapter == null) {
                this.d = this.f1735b;
            } else {
                this.d = baseAdapter;
            }
            this.k.setAdapter(this.d);
            AdapterView.OnItemClickListener onItemClickListener = this.m;
            if (onItemClickListener != null) {
                this.k.setOnItemClickListener(onItemClickListener);
            }
            this.f = new Rect();
            this.g = new Rect();
            this.e.getWindowVisibleDisplayFrame(this.f);
            this.e.getGlobalVisibleRect(this.g);
            this.g.left -= this.q[0];
            this.g.top -= this.q[1];
            this.g.right += this.q[2];
            this.g.bottom += this.q[3];
            this.e.getRootView().getLocationOnScreen(this.o);
            Rect rect = this.g;
            int[] iArr = this.o;
            rect.offset(iArr[0], iArr[1]);
            c();
            a();
            e();
            if (this.y && this.z) {
                setContentView(this.j);
                f();
                g();
                showAtLocation(this.e, 0, this.n.x, this.n.y);
            }
        }
    }

    public void a(AdapterView.OnItemClickListener onItemClickListener) {
        this.m = onItemClickListener;
    }

    public void a(List<c> list) {
        if (list != null) {
            this.i = list;
            this.f1735b = new b(this.f1734a, list);
        }
    }

    public void a(boolean z2) {
        if (z2) {
            setTouchable(true);
            setFocusable(true);
            setOutsideTouchable(true);
        } else {
            setFocusable(false);
            setOutsideTouchable(false);
        }
        update();
    }

    public ListView b() {
        return this.k;
    }

    public void dismiss() {
        if (!this.B) {
            h();
        }
    }

    public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        Rect rect = new Rect(i2, i3, i4, i5);
        Rect rect2 = new Rect(i6, i7, i8, i9);
        if (isShowing() && !rect.equals(rect2)) {
            i();
        }
    }
}
