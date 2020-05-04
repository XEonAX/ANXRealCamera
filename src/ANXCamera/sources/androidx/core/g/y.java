package androidx.core.g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* compiled from: ViewPropertyAnimatorCompat */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    Runnable f580a = null;

    /* renamed from: b  reason: collision with root package name */
    Runnable f581b = null;
    int c = -1;
    private WeakReference<View> d;

    /* compiled from: ViewPropertyAnimatorCompat */
    static class a implements z {

        /* renamed from: a  reason: collision with root package name */
        y f586a;

        /* renamed from: b  reason: collision with root package name */
        boolean f587b;

        a(y yVar) {
            this.f586a = yVar;
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: androidx.core.g.z} */
        /* JADX WARNING: Multi-variable type inference failed */
        public void a(View view) {
            this.f587b = false;
            z zVar = null;
            if (this.f586a.c > -1) {
                view.setLayerType(2, (Paint) null);
            }
            if (this.f586a.f580a != null) {
                Runnable runnable = this.f586a.f580a;
                this.f586a.f580a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof z) {
                zVar = tag;
            }
            if (zVar != null) {
                zVar.a(view);
            }
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: androidx.core.g.z} */
        /* JADX WARNING: Multi-variable type inference failed */
        public void b(View view) {
            z zVar = null;
            if (this.f586a.c > -1) {
                view.setLayerType(this.f586a.c, (Paint) null);
                this.f586a.c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f587b) {
                if (this.f586a.f581b != null) {
                    Runnable runnable = this.f586a.f581b;
                    this.f586a.f581b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof z) {
                    zVar = tag;
                }
                if (zVar != null) {
                    zVar.b(view);
                }
                this.f587b = true;
            }
        }

        public void c(View view) {
            Object tag = view.getTag(2113929216);
            z zVar = tag instanceof z ? (z) tag : null;
            if (zVar != null) {
                zVar.c(view);
            }
        }
    }

    y(View view) {
        this.d = new WeakReference<>(view);
    }

    private void a(final View view, final z zVar) {
        if (zVar != null) {
            view.animate().setListener(new AnimatorListenerAdapter() {
                public void onAnimationCancel(Animator animator) {
                    zVar.c(view);
                }

                public void onAnimationEnd(Animator animator) {
                    zVar.b(view);
                }

                public void onAnimationStart(Animator animator) {
                    zVar.a(view);
                }
            });
        } else {
            view.animate().setListener((Animator.AnimatorListener) null);
        }
    }

    public long a() {
        View view = (View) this.d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0;
    }

    public y a(float f) {
        View view = (View) this.d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public y a(long j) {
        View view = (View) this.d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public y a(Interpolator interpolator) {
        View view = (View) this.d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public y a(final ab abVar) {
        final View view = (View) this.d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            AnonymousClass2 r1 = null;
            if (abVar != null) {
                r1 = new ValueAnimator.AnimatorUpdateListener() {
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        abVar.a(view);
                    }
                };
            }
            view.animate().setUpdateListener(r1);
        }
        return this;
    }

    public y a(z zVar) {
        View view = (View) this.d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, zVar);
            } else {
                view.setTag(2113929216, zVar);
                a(view, new a(this));
            }
        }
        return this;
    }

    public y b(float f) {
        View view = (View) this.d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public y b(long j) {
        View view = (View) this.d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public void b() {
        View view = (View) this.d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public void c() {
        View view = (View) this.d.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
