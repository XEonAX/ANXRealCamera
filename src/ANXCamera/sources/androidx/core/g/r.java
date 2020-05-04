package androidx.core.g;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: OneShotPreDrawListener */
public final class r implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a  reason: collision with root package name */
    private final View f568a;

    /* renamed from: b  reason: collision with root package name */
    private ViewTreeObserver f569b;
    private final Runnable c;

    private r(View view, Runnable runnable) {
        this.f568a = view;
        this.f569b = view.getViewTreeObserver();
        this.c = runnable;
    }

    public static r a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        } else if (runnable != null) {
            r rVar = new r(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(rVar);
            view.addOnAttachStateChangeListener(rVar);
            return rVar;
        } else {
            throw new NullPointerException("runnable == null");
        }
    }

    public void a() {
        if (this.f569b.isAlive()) {
            this.f569b.removeOnPreDrawListener(this);
        } else {
            this.f568a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f568a.removeOnAttachStateChangeListener(this);
    }

    public boolean onPreDraw() {
        a();
        this.c.run();
        return true;
    }

    public void onViewAttachedToWindow(View view) {
        this.f569b = view.getViewTreeObserver();
    }

    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
