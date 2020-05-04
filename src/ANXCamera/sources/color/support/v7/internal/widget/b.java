package color.support.v7.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RotateDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.widget.ListView;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.ba;
import color.support.v7.appcompat.R;
import color.support.v7.internal.widget.ColorBaseSpinner;
import color.support.v7.internal.widget.a;
import color.support.v7.widget.b;
import color.support.v7.widget.c;
import color.support.v7.widget.e;
import com.color.support.widget.g;
import com.google.protobuf.nano.MessageNano;

/* compiled from: ColorSpinner */
public class b extends ColorBaseSpinner implements g {
    private static final Interpolator H = androidx.core.g.b.b.a(0.133f, 0.0f, 0.3f, 1.0f);
    /* access modifiers changed from: private */
    public static final Interpolator I;
    private static final Interpolator J;
    /* access modifiers changed from: private */
    public static final Interpolator K = androidx.core.g.b.b.a(0.15f, 0.0f, 0.0f, 1.0f);
    /* access modifiers changed from: private */
    public static final Interpolator L = androidx.core.g.b.b.a(0.33f, 0.0f, 0.66f, 1.0f);
    private final Rect M;
    /* access modifiers changed from: private */
    public AnimatorSet N;
    private RotateDrawable O;
    /* access modifiers changed from: private */
    public int P;
    private int Q;
    private boolean R;
    /* access modifiers changed from: private */
    public boolean S;
    /* access modifiers changed from: private */
    public boolean T;
    /* access modifiers changed from: private */
    public boolean U;
    /* access modifiers changed from: private */
    public boolean V;
    /* access modifiers changed from: private */
    public g.a W;
    private TextView aa;
    private int ab;
    private float ac;
    private ColorStateList ad;
    private int ae;
    private int af;
    /* access modifiers changed from: private */
    public a ag;

    /* compiled from: ColorSpinner */
    public interface a {
        void a(b bVar, boolean z);

        void b(b bVar, boolean z);
    }

    /* renamed from: color.support.v7.internal.widget.b$b  reason: collision with other inner class name */
    /* compiled from: ColorSpinner */
    private class C0042b extends ColorBaseSpinner.b implements g.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f1380b;
        private final b.g e;
        private final ColorDrawable f;
        private final int g;
        /* access modifiers changed from: private */
        public int h;
        private boolean i;
        private e j;
        /* access modifiers changed from: private */
        public int k;

        /* renamed from: color.support.v7.internal.widget.b$b$a */
        /* compiled from: ColorSpinner */
        private class a extends AnimatorListenerAdapter {

            /* renamed from: b  reason: collision with root package name */
            private final e f1400b;

            public a(e eVar) {
                this.f1400b = eVar;
            }

            public void onAnimationEnd(Animator animator) {
                AnimatorSet unused = C0042b.this.f1380b.N = null;
                e eVar = this.f1400b;
                if (eVar != null) {
                    eVar.b();
                }
            }
        }

        /* access modifiers changed from: private */
        public int a(View view) {
            int height = view.getHeight();
            return height == 0 ? view.getMeasuredHeight() : height;
        }

        /* access modifiers changed from: private */
        public void a(final ListView listView) {
            if (listView != null) {
                listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
                    public boolean onPreDraw() {
                        listView.getViewTreeObserver().removeOnPreDrawListener(this);
                        if (C0042b.this.a((View) listView) <= C0042b.this.k) {
                            return true;
                        }
                        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
                        layoutParams.height = C0042b.this.k;
                        listView.setLayoutParams(layoutParams);
                        return false;
                    }
                });
            }
        }

        private void c(e eVar) {
            if (this.f1380b.N != null) {
                this.f1380b.N.end();
            }
            AnimatorSet unused = this.f1380b.N = k();
            this.f1380b.N.addListener(new a(this.f1380b.U ? null : eVar));
            this.f1380b.N.start();
            if (this.f1380b.U) {
                boolean unused2 = this.f1380b.U = false;
                eVar.b();
                this.f1380b.N.end();
            }
        }

        private void q() {
            this.c.setTouchInterceptor(this.e);
            this.c.setAnimationStyle(0);
        }

        private void r() {
            this.f.setColor(this.f1380b.getResources().getColor(R.color.color_spiner_background_color));
            this.f.setAlpha(this.g);
            this.c.setBackgroundDrawable(this.f);
        }

        private void s() {
            ListView p = p();
            ViewGroup.LayoutParams layoutParams = p.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -2);
            } else {
                layoutParams.width = -1;
                layoutParams.height = -2;
            }
            p.setLayoutParams(layoutParams);
            if (p.getWidth() == 0 || p.getHeight() == 0) {
                p.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 0), View.MeasureSpec.makeMeasureSpec(layoutParams.height, MessageNano.UNSET_ENUM_VALUE));
            }
        }

        private AnimatorSet t() {
            final ListView p = p();
            final Drawable e2 = e();
            AnimatorSet animatorSet = new AnimatorSet();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
            ofFloat.setInterpolator(b.I);
            ofFloat.setDuration(300);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C0042b.this.f1380b.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, 102});
            ofInt.setDuration(350);
            ofInt.setStartDelay(150);
            ofInt.setInterpolator(b.L);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e2.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
            ofFloat2.setDuration(350);
            ofFloat2.setStartDelay(150);
            ofFloat2.setInterpolator(b.K);
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    ListView listView = p;
                    listView.setTranslationY(((float) (-C0042b.this.a((View) listView))) * (1.0f - floatValue));
                }
            });
            animatorSet.play(ofFloat).with(ofInt).with(ofFloat2);
            animatorSet.addListener(new Animator.AnimatorListener() {
                public void onAnimationCancel(Animator animator) {
                }

                public void onAnimationEnd(Animator animator) {
                    if (C0042b.this.f1380b.ag != null) {
                        C0042b.this.f1380b.ag.a(C0042b.this.f1380b, false);
                    }
                }

                public void onAnimationRepeat(Animator animator) {
                }

                public void onAnimationStart(Animator animator) {
                    ListView listView = p;
                    listView.setTranslationY((float) (-C0042b.this.a((View) listView)));
                    e2.setAlpha(0);
                    if (C0042b.this.f1380b.ag != null) {
                        C0042b.this.f1380b.ag.a(C0042b.this.f1380b, true);
                    }
                }
            });
            return animatorSet;
        }

        private void u() {
            q();
            r();
            s();
            if (this.f1380b.N != null) {
                this.f1380b.N.end();
            }
            AnimatorSet unused = this.f1380b.N = t();
            this.f1380b.N.addListener(new a((e) null));
            this.f1380b.N.start();
            if (this.f1380b.V) {
                boolean unused2 = this.f1380b.V = false;
                this.f1380b.N.end();
            }
        }

        public void a(int i2, int i3) {
            boolean d = d();
            b();
            f(2);
            h();
            ListView p = p();
            p.setDivider((Drawable) null);
            p.setChoiceMode(1);
            p.setTextDirection(i2);
            a(p);
            color.support.a.a.a.a(p, i3);
            g(this.f1380b.getSelectedItemPosition());
            u();
            if (!d) {
                ViewTreeObserver viewTreeObserver = this.f1380b.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    final AnonymousClass5 r5 = new ViewTreeObserver.OnGlobalLayoutListener() {
                        public void onGlobalLayout() {
                            if (!color.support.a.a.a.c(C0042b.this.f1380b)) {
                                C0042b.this.c();
                                return;
                            }
                            C0042b.this.b();
                            C0042b bVar = C0042b.this;
                            bVar.a(bVar.p());
                            C0042b.this.h();
                        }
                    };
                    viewTreeObserver.addOnGlobalLayoutListener(r5);
                    a((c.a) new c.a() {
                        public void a() {
                            ViewTreeObserver viewTreeObserver = C0042b.this.f1380b.getViewTreeObserver();
                            if (viewTreeObserver != null) {
                                color.support.a.a.b.a(viewTreeObserver, r5);
                            }
                            C0042b.super.c();
                        }
                    });
                }
            }
        }

        public void a(WindowManager.LayoutParams layoutParams) {
            layoutParams.windowAnimations = 0;
        }

        public void a(e eVar) {
            this.j = eVar;
            if (this.f1380b.W == null || !this.i) {
                i();
            } else {
                this.f1380b.W.a(this);
            }
        }

        public void b(e eVar) {
            if (this.f1380b.T && this.h != -1) {
                boolean unused = this.f1380b.S = false;
                this.f1380b.setSelection(this.h);
                this.h = -1;
            }
        }

        public void c() {
            this.c.dismiss();
        }

        public void h() {
            super.h();
            q();
        }

        public void i() {
            c(this.j);
        }

        /* access modifiers changed from: protected */
        public int j() {
            if (this.f1380b.G == -1) {
                c(this.f1380b.getContext().getResources().getDisplayMetrics().widthPixels);
            }
            if (this.f1380b.P == -1) {
                e(this.c.getMaxAvailableHeight(l(), f(), false));
            }
            return super.j();
        }

        /* access modifiers changed from: package-private */
        public AnimatorSet k() {
            AnimatorSet animatorSet = new AnimatorSet();
            final ListView p = p();
            final Drawable e2 = e();
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{102, 0});
            ofInt.setInterpolator(b.L);
            ofInt.setDuration(300);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e2.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
            ofFloat.setInterpolator(b.K);
            ofFloat.setDuration(300);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    ListView listView = p;
                    listView.setTranslationY(((float) (-C0042b.this.a((View) listView))) * floatValue);
                }
            });
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
            ofFloat2.setDuration(300);
            ofFloat2.setInterpolator(b.I);
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C0042b.this.f1380b.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            animatorSet.play(ofInt).with(ofFloat).with(ofFloat2);
            animatorSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (C0042b.this.f1380b.ag != null) {
                        C0042b.this.f1380b.ag.b(C0042b.this.f1380b, false);
                    }
                }

                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    if (C0042b.this.f1380b.ag != null) {
                        C0042b.this.f1380b.ag.b(C0042b.this.f1380b, true);
                    }
                }
            });
            return animatorSet;
        }
    }

    static {
        Interpolator interpolator = H;
        I = interpolator;
        J = interpolator;
    }

    private int a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        TextView textView = this.aa;
        if (textView == null) {
            return size;
        }
        measureChild(textView, i, i2);
        return Math.max(this.aa.getMeasuredHeight(), getMeasuredHeight());
    }

    /* access modifiers changed from: private */
    public void a(float f) {
        RotateDrawable rotateDrawable = this.O;
        if (rotateDrawable != null) {
            rotateDrawable.setLevel((int) (f * 10000.0f));
            invalidate();
        }
    }

    private void m() {
        TextView textView = this.aa;
        if (textView != null) {
            float textSize = textView.getTextSize();
            this.aa.setTextSize(0, (float) ((int) this.ac));
            if (Build.VERSION.SDK_INT < 21 && textSize != this.ac) {
                post(new Runnable() {
                    public void run() {
                        b.this.requestLayout();
                    }
                });
            }
        }
    }

    private void n() {
        this.O.setColorFilter(isEnabled() ? this.ae : this.af, PorterDuff.Mode.SRC_IN);
    }

    private int o() {
        int mode = View.MeasureSpec.getMode(this.c);
        int size = View.MeasureSpec.getSize(this.c) - (this.O.getMinimumWidth() + this.Q);
        return size > 0 ? View.MeasureSpec.makeMeasureSpec(size, mode) : this.c;
    }

    /* access modifiers changed from: package-private */
    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        this.R = true;
        if (spinnerAdapter == null) {
            return 0;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition < 0 || selectedItemPosition >= spinnerAdapter.getCount()) {
            return super.a(spinnerAdapter, drawable);
        }
        int o = o();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int itemViewType = spinnerAdapter.getItemViewType(selectedItemPosition);
        View view = spinnerAdapter.getView(selectedItemPosition, (View) null, this);
        if (view instanceof TextView) {
            this.aa = (TextView) view;
            com.color.support.d.b.a(this.aa, true);
            m();
        }
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        }
        view.measure(o, makeMeasureSpec);
        int measuredWidth = view.getMeasuredWidth();
        this.ab = measuredWidth;
        if (drawable == null) {
            return measuredWidth;
        }
        drawable.getPadding(this.M);
        return measuredWidth + this.M.left + this.M.right;
    }

    /* access modifiers changed from: package-private */
    public void a(int i, boolean z) {
        int i2;
        if (this.h != null) {
            RotateDrawable rotateDrawable = this.O;
            if (rotateDrawable != null) {
                i2 = this.Q + rotateDrawable.getMinimumWidth();
                if (getLayoutDirection() == 1) {
                    this.h.left += i2;
                } else {
                    this.h.right += i2;
                }
                super.a(i, z);
                this.h.right -= i2;
            }
        }
        i2 = 0;
        super.a(i, z);
        this.h.right -= i2;
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        RotateDrawable rotateDrawable = this.O;
        if (rotateDrawable != null) {
            rotateDrawable.draw(canvas);
        }
    }

    /* access modifiers changed from: package-private */
    public void e() {
        if (this.S) {
            super.e();
        }
    }

    public /* bridge */ /* synthetic */ SpinnerAdapter getAdapter() {
        return super.getAdapter();
    }

    public /* bridge */ /* synthetic */ int getBaseline() {
        return super.getBaseline();
    }

    public /* bridge */ /* synthetic */ int getCount() {
        return super.getCount();
    }

    public /* bridge */ /* synthetic */ int getDropDownHorizontalOffset() {
        return super.getDropDownHorizontalOffset();
    }

    public /* bridge */ /* synthetic */ int getDropDownVerticalOffset() {
        return super.getDropDownVerticalOffset();
    }

    public /* bridge */ /* synthetic */ int getDropDownWidth() {
        return super.getDropDownWidth();
    }

    public a getOnPopupWindowActionListener() {
        return this.ag;
    }

    public /* bridge */ /* synthetic */ Drawable getPopupBackground() {
        return super.getPopupBackground();
    }

    public /* bridge */ /* synthetic */ CharSequence getPrompt() {
        return super.getPrompt();
    }

    public /* bridge */ /* synthetic */ View getSelectedView() {
        return super.getSelectedView();
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.U = false;
    }

    public /* bridge */ /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
        super.onClick(dialogInterface, i);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        this.U = true;
        AnimatorSet animatorSet = this.N;
        if (animatorSet != null) {
            animatorSet.end();
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.S = true;
        TextView textView = (TextView) findViewById(16908308);
        if (textView != null) {
            textView.setTextColor(this.ad);
            n();
            if (textView.getPaint() != null) {
                com.color.support.d.b.a(textView, true);
                this.aa = textView;
                m();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        RotateDrawable rotateDrawable = this.O;
        if (rotateDrawable != null && this.R) {
            int intrinsicWidth = rotateDrawable.getIntrinsicWidth();
            int intrinsicHeight = this.O.getIntrinsicHeight();
            setMeasuredDimension(this.ab + intrinsicWidth + this.Q, a(i, i2));
            boolean z = !ba.a(this);
            int measuredWidth = z ? (getMeasuredWidth() - intrinsicWidth) - getPaddingRight() : getPaddingLeft();
            int paddingTop = getPaddingTop() + ((((getMeasuredHeight() - intrinsicHeight) - getPaddingTop()) - getPaddingBottom()) / 2);
            if (z) {
                intrinsicWidth += measuredWidth;
            }
            this.O.setBounds(measuredWidth, paddingTop, intrinsicWidth, intrinsicHeight + paddingTop);
            this.R = false;
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.V = true;
        super.onRestoreInstanceState(parcelable);
    }

    public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public /* bridge */ /* synthetic */ boolean performClick() {
        return super.performClick();
    }

    public /* bridge */ /* synthetic */ void requestLayout() {
        super.requestLayout();
    }

    public /* bridge */ /* synthetic */ void setAdapter(SpinnerAdapter spinnerAdapter) {
        super.setAdapter(spinnerAdapter);
    }

    public /* bridge */ /* synthetic */ void setDropDownHorizontalOffset(int i) {
        super.setDropDownHorizontalOffset(i);
    }

    public /* bridge */ /* synthetic */ void setDropDownVerticalOffset(int i) {
        super.setDropDownVerticalOffset(i);
    }

    public /* bridge */ /* synthetic */ void setDropDownWidth(int i) {
        super.setDropDownWidth(i);
    }

    public void setDropdownDismissCallback(g.a aVar) {
        this.W = aVar;
    }

    public void setDropdownItemClickListener(a.b bVar) {
        setOnItemClickListener(bVar);
    }

    public void setDropdownUpdateAfterAnim(boolean z) {
        this.T = z;
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        TextView textView = this.aa;
        if (textView != null) {
            textView.setEnabled(z);
        }
        if (this.O != null) {
            n();
        }
        invalidate();
    }

    public /* bridge */ /* synthetic */ void setGravity(int i) {
        super.setGravity(i);
    }

    public void setOnItemClickListener(a.b bVar) {
        setOnItemClickListenerInt(bVar);
    }

    public void setOnPopupWindowActionListener(a aVar) {
        this.ag = aVar;
    }

    public /* bridge */ /* synthetic */ void setPopupBackgroundDrawable(Drawable drawable) {
        super.setPopupBackgroundDrawable(drawable);
    }

    public /* bridge */ /* synthetic */ void setPopupBackgroundResource(int i) {
        super.setPopupBackgroundResource(i);
    }

    public /* bridge */ /* synthetic */ void setPrompt(CharSequence charSequence) {
        super.setPrompt(charSequence);
    }

    public /* bridge */ /* synthetic */ void setPromptId(int i) {
        super.setPromptId(i);
    }

    public void setSelection(int i) {
        if (!this.T || this.F == null || !this.F.d() || !(this.F instanceof C0042b)) {
            super.setSelection(i);
        } else {
            int unused = ((C0042b) this.F).h = i;
        }
    }

    public void setSpinnerColor(int i) {
        setSpinnerColor(ColorStateList.valueOf(i));
    }

    public void setSpinnerColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            try {
                this.ad = colorStateList;
                this.ae = this.ad.getDefaultColor();
                this.af = this.ad.getColorForState(new int[]{-16842910}, -16777216);
                if (this.aa != null) {
                    this.aa.setTextColor(this.ad);
                }
                if (this.O != null) {
                    n();
                    invalidate();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setSpinnerColorResource(int i) {
        setSpinnerColor(getResources().getColorStateList(i));
    }

    public void setSpinnerTextSize(float f) {
        this.ac = f;
    }
}
