package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.b.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.h;
import androidx.fragment.app.k;
import androidx.lifecycle.e;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* compiled from: FragmentStateAdapter */
public abstract class a extends RecyclerView.a<b> implements c {

    /* renamed from: a  reason: collision with root package name */
    final e f1058a;

    /* renamed from: b  reason: collision with root package name */
    final h f1059b;
    final d<Fragment> c;
    private C0032a d;

    /* renamed from: androidx.viewpager2.adapter.a$a  reason: collision with other inner class name */
    /* compiled from: FragmentStateAdapter */
    class C0032a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f1062a;

        /* renamed from: b  reason: collision with root package name */
        private ViewPager2 f1063b;
        private long c;

        /* access modifiers changed from: package-private */
        public void a(boolean z) {
            if (!this.f1062a.a() && this.f1063b.getScrollState() == 0 && !this.f1062a.c.c() && this.f1062a.b() != 0) {
                int currentItem = this.f1063b.getCurrentItem();
                if (currentItem < this.f1062a.b()) {
                    long b2 = this.f1062a.b(currentItem);
                    if (b2 != this.c || z) {
                        Fragment a2 = this.f1062a.c.a(b2);
                        if (a2 != null && a2.w()) {
                            this.c = b2;
                            k a3 = this.f1062a.f1059b.a();
                            Fragment fragment = null;
                            for (int i = 0; i < this.f1062a.c.b(); i++) {
                                long b3 = this.f1062a.c.b(i);
                                Fragment c2 = this.f1062a.c.c(i);
                                if (c2.w()) {
                                    if (b3 != this.c) {
                                        a3.a(c2, e.b.STARTED);
                                    } else {
                                        fragment = c2;
                                    }
                                    c2.b(b3 == this.c);
                                }
                            }
                            if (fragment != null) {
                                a3.a(fragment, e.b.RESUMED);
                            }
                            if (!a3.h()) {
                                a3.d();
                            }
                        }
                    }
                }
            }
        }
    }

    private void a(final Fragment fragment, final FrameLayout frameLayout) {
        this.f1059b.a((h.a) new h.a() {
            public void a(h hVar, Fragment fragment, View view, Bundle bundle) {
                if (fragment == fragment) {
                    hVar.a((h.a) this);
                    a.this.a(view, frameLayout);
                }
            }
        }, false);
    }

    /* access modifiers changed from: package-private */
    public void a(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        } else if (view.getParent() != frameLayout) {
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            frameLayout.addView(view);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(b bVar) {
        Fragment a2 = this.c.a(bVar.j());
        if (a2 != null) {
            FrameLayout a3 = bVar.a();
            View A = a2.A();
            if (!a2.w() && A != null) {
                throw new IllegalStateException("Design assumption violated.");
            } else if (a2.w() && A == null) {
                a(a2, a3);
            } else if (!a2.w() || A.getParent() == null) {
                if (a2.w()) {
                    a(A, a3);
                } else if (!a()) {
                    a(a2, a3);
                    k a4 = this.f1059b.a();
                    a4.a(a2, "f" + bVar.j()).a(a2, e.b.STARTED).d();
                    this.d.a(false);
                } else if (!this.f1059b.e()) {
                    this.f1058a.a(new FragmentStateAdapter$2(this, bVar));
                }
            } else if (A.getParent() != a3) {
                a(A, a3);
            }
        } else {
            throw new IllegalStateException("Design assumption violated.");
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return this.f1059b.g();
    }

    public long b(int i) {
        return (long) i;
    }
}
