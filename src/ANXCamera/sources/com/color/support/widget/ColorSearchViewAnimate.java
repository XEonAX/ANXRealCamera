package com.color.support.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.f;
import color.support.v7.widget.SearchView;
import color.support.v7.widget.Toolbar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class ColorSearchViewAnimate extends LinearLayout implements androidx.appcompat.view.c {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1624a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f1625b;
    private TextView c;
    /* access modifiers changed from: private */
    public SearchView d;
    private SearchCancelButton e;
    private LinearLayout f;
    private volatile a g;
    private AtomicInteger h;
    private List<c> i;
    /* access modifiers changed from: private */
    public b j;
    /* access modifiers changed from: private */
    public long k;
    private MenuItem l;
    private Toolbar m;
    private boolean n;
    private int o;

    public static class SearchCancelButton extends f {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f1626a = false;

        /* renamed from: b  reason: collision with root package name */
        a f1627b;

        interface a {
            void a();
        }

        public SearchCancelButton(Context context) {
            super(context);
        }

        public SearchCancelButton(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public SearchCancelButton(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        public boolean performClick() {
            a aVar = this.f1627b;
            if (aVar != null) {
                this.f1626a = true;
                aVar.a();
            }
            return super.performClick();
        }

        public void setPerformClickCallback(a aVar) {
            this.f1627b = aVar;
        }

        public void setPerformClicked(boolean z) {
            this.f1626a = z;
        }
    }

    private class a {

        /* renamed from: b  reason: collision with root package name */
        private long f1629b = ColorSearchViewAnimate.this.k;
        /* access modifiers changed from: private */
        public volatile AtomicBoolean c = new AtomicBoolean(false);
        private Runnable d = new Runnable() {
            public void run() {
                ColorSearchViewAnimate.this.d();
                ColorSearchViewAnimate.this.a(true);
                if (ColorSearchViewAnimate.this.j != null) {
                    ColorSearchViewAnimate.this.j.a(1);
                }
                ColorSearchViewAnimate.this.a(0, 1);
            }
        };
        private Runnable e = new Runnable() {
            public void run() {
                ColorSearchViewAnimate.this.c();
                a.this.c.set(false);
                if (ColorSearchViewAnimate.this.j != null) {
                    ColorSearchViewAnimate.this.j.b(1);
                }
            }
        };
        private Runnable f = new Runnable() {
            public void run() {
                ColorSearchViewAnimate.this.c();
                ColorSearchViewAnimate.this.a(false);
                if (ColorSearchViewAnimate.this.j != null) {
                    ColorSearchViewAnimate.this.j.a(0);
                }
                ColorSearchViewAnimate.this.a(1, 0);
            }
        };
        private Runnable g = new Runnable() {
            public void run() {
                ColorSearchViewAnimate.this.d();
                a.this.c.set(false);
                ColorSearchViewAnimate.this.d.a((CharSequence) "", false);
                if (ColorSearchViewAnimate.this.j != null) {
                    ColorSearchViewAnimate.this.j.b(0);
                }
            }
        };

        a() {
        }
    }

    public interface b {
        void a(int i);

        void b(int i);
    }

    public interface c {
        void a(int i, int i2);
    }

    private int a(int i2) {
        return i2;
    }

    /* access modifiers changed from: private */
    public void a(int i2, int i3) {
        List<c> list = this.i;
        if (list != null) {
            for (c next : list) {
                if (next != null) {
                    next.a(i2, i3);
                }
            }
        }
    }

    private void a(View view, int i2) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof RelativeLayout.LayoutParams)) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                Arrays.fill(layoutParams2.getRules(), 0);
                layoutParams2.alignWithParent = true;
                int i3 = i2 & 112;
                int i4 = 15;
                if (i3 != 16) {
                    if (i3 == 48) {
                        i4 = 10;
                    } else if (i3 == 80) {
                        i4 = 12;
                    }
                }
                layoutParams2.addRule(i4);
                view.requestLayout();
            }
        }
    }

    /* access modifiers changed from: private */
    public void c() {
        SearchView searchView = this.d;
        if (searchView != null) {
            AutoCompleteTextView searchAutoComplete = searchView.getSearchAutoComplete();
            if (searchAutoComplete != null) {
                searchAutoComplete.setFocusable(true);
                searchAutoComplete.setFocusableInTouchMode(true);
                searchAutoComplete.requestFocus();
            }
        }
    }

    /* access modifiers changed from: private */
    public void d() {
        SearchView searchView = this.d;
        if (searchView != null) {
            searchView.clearFocus();
            this.d.setFocusable(false);
            this.d.onWindowFocusChanged(false);
            AutoCompleteTextView searchAutoComplete = this.d.getSearchAutoComplete();
            if (searchAutoComplete != null) {
                searchAutoComplete.setFocusable(false);
            }
        }
    }

    private a getAnimatorHelper() {
        if (this.g == null) {
            synchronized (this) {
                if (this.g == null) {
                    this.g = new a();
                }
            }
        }
        return this.g;
    }

    private void setMenuItem(MenuItem menuItem) {
        this.l = menuItem;
        MenuItem menuItem2 = this.l;
        if (menuItem2 != null) {
            Toolbar toolbar = this.m;
            if (menuItem2.getActionView() == this) {
                this.l.setActionView((View) null);
            }
        }
    }

    private void setToolBarAlpha(float f2) {
        Toolbar toolbar = this.m;
        if (toolbar != null) {
            int childCount = toolbar.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.m.getChildAt(i2);
                if (childAt != this) {
                    childAt.setAlpha(f2);
                }
            }
        }
    }

    private void setToolBarChildVisibility(int i2) {
        Toolbar toolbar = this.m;
        if (toolbar != null) {
            int childCount = toolbar.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = this.m.getChildAt(i3);
                if (childAt != this) {
                    childAt.setVisibility(i2);
                }
            }
        }
    }

    public void a() {
    }

    public void a(boolean z) {
        SearchView searchView = this.d;
        if (searchView != null && searchView.getSearchAutoComplete() != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (f1624a) {
                Log.d("ColorSearchViewAnimate", "openSoftInput: " + z);
            }
            if (z) {
                c();
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(this.d.getSearchAutoComplete(), 0);
                }
            } else if (inputMethodManager != null && inputMethodManager.isActive()) {
                inputMethodManager.hideSoftInputFromWindow(this.d.getSearchAutoComplete().getWindowToken(), 0);
            }
        }
    }

    public void addView(View view) {
        super.addView(view);
    }

    public void b() {
    }

    public long getAnimatorDuration() {
        return this.k;
    }

    public int getGravity() {
        return this.o;
    }

    public int getSearchState() {
        return this.h.get();
    }

    public SearchView getSearchView() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(a(i2), i3);
        a((View) this.f, this.o);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        ImageView imageView = this.f1625b;
        if (imageView != null) {
            imageView.setEnabled(z);
        }
        TextView textView = this.c;
        if (textView != null) {
            textView.setEnabled(z);
        }
        LinearLayout linearLayout = this.f;
        if (linearLayout != null) {
            linearLayout.setEnabled(z);
        }
        SearchView searchView = this.d;
        if (searchView != null) {
            searchView.setEnabled(z);
        }
        SearchCancelButton searchCancelButton = this.e;
        if (searchCancelButton != null) {
            searchCancelButton.setEnabled(z);
        }
    }

    public void setGravity(int i2) {
        if (this.o != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 16;
            }
            this.o = i2;
            a((View) this.f, this.o);
        }
    }

    public void setIconCanAnimate(boolean z) {
        this.n = z;
    }

    public void setOnAnimationListener(b bVar) {
        this.j = bVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(charSequence);
        }
        SearchView searchView = this.d;
        if (searchView != null) {
            searchView.setQueryHint(charSequence);
        }
    }
}
