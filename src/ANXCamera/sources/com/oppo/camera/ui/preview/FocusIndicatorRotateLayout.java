package com.oppo.camera.ui.preview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public class FocusIndicatorRotateLayout extends View implements g {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public int f2867a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public Runnable f2868b = new a();
    private Runnable c = new b();
    private boolean d = false;
    /* access modifiers changed from: private */
    public c e;

    private class a implements Runnable {
        private a() {
        }

        public void run() {
            FocusIndicatorRotateLayout.this.setVisibility(4);
            if (FocusIndicatorRotateLayout.this.e != null) {
                FocusIndicatorRotateLayout.this.e.a();
            }
            int unused = FocusIndicatorRotateLayout.this.f2867a = 0;
        }
    }

    private class b implements Runnable {
        private b() {
        }

        public void run() {
            FocusIndicatorRotateLayout focusIndicatorRotateLayout = FocusIndicatorRotateLayout.this;
            focusIndicatorRotateLayout.postDelayed(focusIndicatorRotateLayout.f2868b, 200);
        }
    }

    public interface c {
        void a();
    }

    public FocusIndicatorRotateLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a() {
        if (!this.d) {
            c();
            if (this.f2867a == 0) {
                setVisibility(0);
                animate().cancel();
                animate().withLayer().setDuration(160).scaleX(0.55f).scaleY(0.55f);
                this.f2867a = 1;
            }
        }
    }

    public void a(boolean z) {
        a(z, false);
    }

    public void a(boolean z, boolean z2) {
        if (!this.d) {
            if (z2 || this.f2867a == 1) {
                setVisibility(0);
                animate().cancel();
                animate().withLayer().setDuration(100).scaleX(0.55f).scaleY(0.55f).withEndAction(z ? this.c : null);
                this.f2867a = 2;
            }
        }
    }

    public void b(boolean z) {
        if (!this.d && this.f2867a == 1) {
            setVisibility(0);
            animate().cancel();
            animate().withLayer().setDuration(100).scaleX(0.55f).scaleY(0.55f).withEndAction(z ? this.c : null);
            this.f2867a = 2;
        }
    }

    public boolean b() {
        return this.f2867a == 0;
    }

    public void c() {
        animate().cancel();
        removeCallbacks(this.f2868b);
        this.f2868b.run();
        setScaleX(1.0f);
        setScaleY(1.0f);
    }

    public void setOnFocusIndicatorDisappearListener(c cVar) {
        this.e = cVar;
    }
}
