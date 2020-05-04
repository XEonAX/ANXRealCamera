package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.app.a;
import androidx.appcompat.widget.ag;

/* compiled from: ScrollingTabContainerView */
public class an extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
    private static final Interpolator j = new DecelerateInterpolator();

    /* renamed from: a  reason: collision with root package name */
    Runnable f332a;

    /* renamed from: b  reason: collision with root package name */
    ag f333b;
    int c;
    int d;
    private b e;
    private Spinner f;
    private boolean g;
    private int h;
    private int i;

    /* compiled from: ScrollingTabContainerView */
    private class a extends BaseAdapter {
        a() {
        }

        public int getCount() {
            return an.this.f333b.getChildCount();
        }

        public Object getItem(int i) {
            return ((c) an.this.f333b.getChildAt(i)).b();
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return an.this.a((a.c) getItem(i), true);
            }
            ((c) view).a((a.c) getItem(i));
            return view;
        }
    }

    /* compiled from: ScrollingTabContainerView */
    private class b implements View.OnClickListener {
        b() {
        }

        public void onClick(View view) {
            ((c) view).b().d();
            int childCount = an.this.f333b.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = an.this.f333b.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* compiled from: ScrollingTabContainerView */
    private class c extends LinearLayout {

        /* renamed from: b  reason: collision with root package name */
        private final int[] f339b = {16842964};
        private a.c c;
        private TextView d;
        private ImageView e;
        private View f;

        public c(Context context, a.c cVar, boolean z) {
            super(context, (AttributeSet) null, R.attr.actionBarTabStyle);
            this.c = cVar;
            au a2 = au.a(context, (AttributeSet) null, this.f339b, R.attr.actionBarTabStyle, 0);
            if (a2.g(0)) {
                setBackgroundDrawable(a2.a(0));
            }
            a2.b();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public void a() {
            a.c cVar = this.c;
            View c2 = cVar.c();
            CharSequence charSequence = null;
            if (c2 != null) {
                ViewParent parent = c2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(c2);
                    }
                    addView(c2);
                }
                this.f = c2;
                TextView textView = this.d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.e;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.e.setImageDrawable((Drawable) null);
                    return;
                }
                return;
            }
            View view = this.f;
            if (view != null) {
                removeView(view);
                this.f = null;
            }
            Drawable a2 = cVar.a();
            CharSequence b2 = cVar.b();
            if (a2 != null) {
                if (this.e == null) {
                    n nVar = new n(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    nVar.setLayoutParams(layoutParams);
                    addView(nVar, 0);
                    this.e = nVar;
                }
                this.e.setImageDrawable(a2);
                this.e.setVisibility(0);
            } else {
                ImageView imageView2 = this.e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.e.setImageDrawable((Drawable) null);
                }
            }
            boolean z = !TextUtils.isEmpty(b2);
            if (z) {
                if (this.d == null) {
                    x xVar = new x(getContext(), (AttributeSet) null, R.attr.actionBarTabTextStyle);
                    xVar.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    xVar.setLayoutParams(layoutParams2);
                    addView(xVar);
                    this.d = xVar;
                }
                this.d.setText(b2);
                this.d.setVisibility(0);
            } else {
                TextView textView2 = this.d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.e;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.e());
            }
            if (!z) {
                charSequence = cVar.e();
            }
            aw.a(this, charSequence);
        }

        public void a(a.c cVar) {
            this.c = cVar;
            a();
        }

        public a.c b() {
            return this.c;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (an.this.c > 0 && getMeasuredWidth() > an.this.c) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(an.this.c, 1073741824), i2);
            }
        }

        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    private boolean a() {
        Spinner spinner = this.f;
        return spinner != null && spinner.getParent() == this;
    }

    private void b() {
        if (!a()) {
            if (this.f == null) {
                this.f = d();
            }
            removeView(this.f333b);
            addView(this.f, new ViewGroup.LayoutParams(-2, -1));
            if (this.f.getAdapter() == null) {
                this.f.setAdapter(new a());
            }
            Runnable runnable = this.f332a;
            if (runnable != null) {
                removeCallbacks(runnable);
                this.f332a = null;
            }
            this.f.setSelection(this.i);
        }
    }

    private boolean c() {
        if (!a()) {
            return false;
        }
        removeView(this.f);
        addView(this.f333b, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f.getSelectedItemPosition());
        return false;
    }

    private Spinner d() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), (AttributeSet) null, R.attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new ag.a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* access modifiers changed from: package-private */
    public c a(a.c cVar, boolean z) {
        c cVar2 = new c(getContext(), cVar, z);
        if (z) {
            cVar2.setBackgroundDrawable((Drawable) null);
            cVar2.setLayoutParams(new AbsListView.LayoutParams(-1, this.h));
        } else {
            cVar2.setFocusable(true);
            if (this.e == null) {
                this.e = new b();
            }
            cVar2.setOnClickListener(this.e);
        }
        return cVar2;
    }

    public void a(int i2) {
        final View childAt = this.f333b.getChildAt(i2);
        Runnable runnable = this.f332a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        this.f332a = new Runnable() {
            public void run() {
                an.this.smoothScrollTo(childAt.getLeft() - ((an.this.getWidth() - childAt.getWidth()) / 2), 0);
                an.this.f332a = null;
            }
        };
        post(this.f332a);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f332a;
        if (runnable != null) {
            post(runnable);
        }
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(getContext());
        setContentHeight(a2.e());
        this.d = a2.g();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f332a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        ((c) view).b().d();
    }

    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f333b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.c = -1;
        } else {
            if (childCount > 2) {
                this.c = (int) (((float) View.MeasureSpec.getSize(i2)) * 0.4f);
            } else {
                this.c = View.MeasureSpec.getSize(i2) / 2;
            }
            this.c = Math.min(this.c, this.d);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
        if (z2 || !this.g) {
            z = false;
        }
        if (z) {
            this.f333b.measure(0, makeMeasureSpec);
            if (this.f333b.getMeasuredWidth() > View.MeasureSpec.getSize(i2)) {
                b();
            } else {
                c();
            }
        } else {
            c();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z2 && measuredWidth != measuredWidth2) {
            setTabSelected(this.i);
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.g = z;
    }

    public void setContentHeight(int i2) {
        this.h = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.i = i2;
        int childCount = this.f333b.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = this.f333b.getChildAt(i3);
            boolean z = i3 == i2;
            childAt.setSelected(z);
            if (z) {
                a(i2);
            }
            i3++;
        }
        Spinner spinner = this.f;
        if (spinner != null && i2 >= 0) {
            spinner.setSelection(i2);
        }
    }
}
