package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.g.u;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: DefaultItemAnimator */
public class e extends q {
    private static TimeInterpolator i;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.w>> f940a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    ArrayList<ArrayList<b>> f941b = new ArrayList<>();
    ArrayList<ArrayList<a>> c = new ArrayList<>();
    ArrayList<RecyclerView.w> d = new ArrayList<>();
    ArrayList<RecyclerView.w> e = new ArrayList<>();
    ArrayList<RecyclerView.w> f = new ArrayList<>();
    ArrayList<RecyclerView.w> g = new ArrayList<>();
    private ArrayList<RecyclerView.w> j = new ArrayList<>();
    private ArrayList<RecyclerView.w> k = new ArrayList<>();
    private ArrayList<b> l = new ArrayList<>();
    private ArrayList<a> m = new ArrayList<>();

    /* compiled from: DefaultItemAnimator */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.w f958a;

        /* renamed from: b  reason: collision with root package name */
        public RecyclerView.w f959b;
        public int c;
        public int d;
        public int e;
        public int f;

        private a(RecyclerView.w wVar, RecyclerView.w wVar2) {
            this.f958a = wVar;
            this.f959b = wVar2;
        }

        a(RecyclerView.w wVar, RecyclerView.w wVar2, int i, int i2, int i3, int i4) {
            this(wVar, wVar2);
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f958a + ", newHolder=" + this.f959b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    /* compiled from: DefaultItemAnimator */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.w f960a;

        /* renamed from: b  reason: collision with root package name */
        public int f961b;
        public int c;
        public int d;
        public int e;

        b(RecyclerView.w wVar, int i, int i2, int i3, int i4) {
            this.f960a = wVar;
            this.f961b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    private void a(List<a> list, RecyclerView.w wVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, wVar) && aVar.f958a == null && aVar.f959b == null) {
                list.remove(aVar);
            }
        }
    }

    private boolean a(a aVar, RecyclerView.w wVar) {
        boolean z = false;
        if (aVar.f959b == wVar) {
            aVar.f959b = null;
        } else if (aVar.f958a != wVar) {
            return false;
        } else {
            aVar.f958a = null;
            z = true;
        }
        wVar.f916a.setAlpha(1.0f);
        wVar.f916a.setTranslationX(0.0f);
        wVar.f916a.setTranslationY(0.0f);
        a(wVar, z);
        return true;
    }

    private void b(a aVar) {
        if (aVar.f958a != null) {
            a(aVar, aVar.f958a);
        }
        if (aVar.f959b != null) {
            a(aVar, aVar.f959b);
        }
    }

    private void u(final RecyclerView.w wVar) {
        final View view = wVar.f916a;
        final ViewPropertyAnimator animate = view.animate();
        this.f.add(wVar);
        animate.setDuration(g()).alpha(0.0f).setListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                animate.setListener((Animator.AnimatorListener) null);
                view.setAlpha(1.0f);
                e.this.i(wVar);
                e.this.f.remove(wVar);
                e.this.c();
            }

            public void onAnimationStart(Animator animator) {
                e.this.l(wVar);
            }
        }).start();
    }

    private void v(RecyclerView.w wVar) {
        if (i == null) {
            i = new ValueAnimator().getInterpolator();
        }
        wVar.f916a.animate().setInterpolator(i);
        d(wVar);
    }

    public void a() {
        boolean z = !this.j.isEmpty();
        boolean z2 = !this.l.isEmpty();
        boolean z3 = !this.m.isEmpty();
        boolean z4 = !this.k.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.w> it = this.j.iterator();
            while (it.hasNext()) {
                u(it.next());
            }
            this.j.clear();
            if (z2) {
                final ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.l);
                this.f941b.add(arrayList);
                this.l.clear();
                AnonymousClass1 r6 = new Runnable() {
                    public void run() {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            b bVar = (b) it.next();
                            e.this.b(bVar.f960a, bVar.f961b, bVar.c, bVar.d, bVar.e);
                        }
                        arrayList.clear();
                        e.this.f941b.remove(arrayList);
                    }
                };
                if (z) {
                    u.a(((b) arrayList.get(0)).f960a.f916a, (Runnable) r6, g());
                } else {
                    r6.run();
                }
            }
            if (z3) {
                final ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(this.m);
                this.c.add(arrayList2);
                this.m.clear();
                AnonymousClass2 r62 = new Runnable() {
                    public void run() {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            e.this.a((a) it.next());
                        }
                        arrayList2.clear();
                        e.this.c.remove(arrayList2);
                    }
                };
                if (z) {
                    u.a(((a) arrayList2.get(0)).f958a.f916a, (Runnable) r62, g());
                } else {
                    r62.run();
                }
            }
            if (z4) {
                final ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(this.k);
                this.f940a.add(arrayList3);
                this.k.clear();
                AnonymousClass3 r5 = new Runnable() {
                    public void run() {
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            e.this.c((RecyclerView.w) it.next());
                        }
                        arrayList3.clear();
                        e.this.f940a.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    long j2 = 0;
                    long g2 = z ? g() : 0;
                    long e2 = z2 ? e() : 0;
                    if (z3) {
                        j2 = h();
                    }
                    u.a(((RecyclerView.w) arrayList3.get(0)).f916a, (Runnable) r5, g2 + Math.max(e2, j2));
                    return;
                }
                r5.run();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(final a aVar) {
        RecyclerView.w wVar = aVar.f958a;
        final View view = null;
        final View view2 = wVar == null ? null : wVar.f916a;
        RecyclerView.w wVar2 = aVar.f959b;
        if (wVar2 != null) {
            view = wVar2.f916a;
        }
        if (view2 != null) {
            final ViewPropertyAnimator duration = view2.animate().setDuration(h());
            this.g.add(aVar.f958a);
            duration.translationX((float) (aVar.e - aVar.c));
            duration.translationY((float) (aVar.f - aVar.d));
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    duration.setListener((Animator.AnimatorListener) null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    e.this.a(aVar.f958a, true);
                    e.this.g.remove(aVar.f958a);
                    e.this.c();
                }

                public void onAnimationStart(Animator animator) {
                    e.this.b(aVar.f958a, true);
                }
            }).start();
        }
        if (view != null) {
            final ViewPropertyAnimator animate = view.animate();
            this.g.add(aVar.f959b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(h()).alpha(1.0f).setListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    animate.setListener((Animator.AnimatorListener) null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    e.this.a(aVar.f959b, false);
                    e.this.g.remove(aVar.f959b);
                    e.this.c();
                }

                public void onAnimationStart(Animator animator) {
                    e.this.b(aVar.f959b, false);
                }
            }).start();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(List<RecyclerView.w> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f916a.animate().cancel();
        }
    }

    public boolean a(RecyclerView.w wVar) {
        v(wVar);
        this.j.add(wVar);
        return true;
    }

    public boolean a(RecyclerView.w wVar, int i2, int i3, int i4, int i5) {
        View view = wVar.f916a;
        int translationX = i2 + ((int) wVar.f916a.getTranslationX());
        int translationY = i3 + ((int) wVar.f916a.getTranslationY());
        v(wVar);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            j(wVar);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX((float) (-i6));
        }
        if (i7 != 0) {
            view.setTranslationY((float) (-i7));
        }
        ArrayList<b> arrayList = this.l;
        b bVar = new b(wVar, translationX, translationY, i4, i5);
        arrayList.add(bVar);
        return true;
    }

    public boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, int i2, int i3, int i4, int i5) {
        if (wVar == wVar2) {
            return a(wVar, i2, i3, i4, i5);
        }
        float translationX = wVar.f916a.getTranslationX();
        float translationY = wVar.f916a.getTranslationY();
        float alpha = wVar.f916a.getAlpha();
        v(wVar);
        int i6 = (int) (((float) (i4 - i2)) - translationX);
        int i7 = (int) (((float) (i5 - i3)) - translationY);
        wVar.f916a.setTranslationX(translationX);
        wVar.f916a.setTranslationY(translationY);
        wVar.f916a.setAlpha(alpha);
        if (wVar2 != null) {
            v(wVar2);
            wVar2.f916a.setTranslationX((float) (-i6));
            wVar2.f916a.setTranslationY((float) (-i7));
            wVar2.f916a.setAlpha(0.0f);
        }
        ArrayList<a> arrayList = this.m;
        a aVar = new a(wVar, wVar2, i2, i3, i4, i5);
        arrayList.add(aVar);
        return true;
    }

    public boolean a(RecyclerView.w wVar, List<Object> list) {
        return !list.isEmpty() || super.a(wVar, list);
    }

    /* access modifiers changed from: package-private */
    public void b(RecyclerView.w wVar, int i2, int i3, int i4, int i5) {
        final View view = wVar.f916a;
        final int i6 = i4 - i2;
        final int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i7 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator animate = view.animate();
        this.e.add(wVar);
        ViewPropertyAnimator duration = animate.setDuration(e());
        final RecyclerView.w wVar2 = wVar;
        AnonymousClass6 r0 = new AnimatorListenerAdapter() {
            public void onAnimationCancel(Animator animator) {
                if (i6 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i7 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            public void onAnimationEnd(Animator animator) {
                animate.setListener((Animator.AnimatorListener) null);
                e.this.j(wVar2);
                e.this.e.remove(wVar2);
                e.this.c();
            }

            public void onAnimationStart(Animator animator) {
                e.this.m(wVar2);
            }
        };
        duration.setListener(r0).start();
    }

    public boolean b() {
        return !this.k.isEmpty() || !this.m.isEmpty() || !this.l.isEmpty() || !this.j.isEmpty() || !this.e.isEmpty() || !this.f.isEmpty() || !this.d.isEmpty() || !this.g.isEmpty() || !this.f941b.isEmpty() || !this.f940a.isEmpty() || !this.c.isEmpty();
    }

    public boolean b(RecyclerView.w wVar) {
        v(wVar);
        wVar.f916a.setAlpha(0.0f);
        this.k.add(wVar);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void c() {
        if (!b()) {
            i();
        }
    }

    /* access modifiers changed from: package-private */
    public void c(final RecyclerView.w wVar) {
        final View view = wVar.f916a;
        final ViewPropertyAnimator animate = view.animate();
        this.d.add(wVar);
        animate.alpha(1.0f).setDuration(f()).setListener(new AnimatorListenerAdapter() {
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            public void onAnimationEnd(Animator animator) {
                animate.setListener((Animator.AnimatorListener) null);
                e.this.k(wVar);
                e.this.d.remove(wVar);
                e.this.c();
            }

            public void onAnimationStart(Animator animator) {
                e.this.n(wVar);
            }
        }).start();
    }

    public void d() {
        int size = this.l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b bVar = this.l.get(size);
            View view = bVar.f960a.f916a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            j(bVar.f960a);
            this.l.remove(size);
        }
        for (int size2 = this.j.size() - 1; size2 >= 0; size2--) {
            i(this.j.get(size2));
            this.j.remove(size2);
        }
        int size3 = this.k.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.w wVar = this.k.get(size3);
            wVar.f916a.setAlpha(1.0f);
            k(wVar);
            this.k.remove(size3);
        }
        for (int size4 = this.m.size() - 1; size4 >= 0; size4--) {
            b(this.m.get(size4));
        }
        this.m.clear();
        if (b()) {
            for (int size5 = this.f941b.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = this.f941b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = (b) arrayList.get(size6);
                    View view2 = bVar2.f960a.f916a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    j(bVar2.f960a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f941b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f940a.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = this.f940a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.w wVar2 = (RecyclerView.w) arrayList2.get(size8);
                    wVar2.f916a.setAlpha(1.0f);
                    k(wVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f940a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.c.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = this.c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b((a) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.c.remove(arrayList3);
                    }
                }
            }
            a((List<RecyclerView.w>) this.f);
            a((List<RecyclerView.w>) this.e);
            a((List<RecyclerView.w>) this.d);
            a((List<RecyclerView.w>) this.g);
            i();
        }
    }

    public void d(RecyclerView.w wVar) {
        View view = wVar.f916a;
        view.animate().cancel();
        int size = this.l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (this.l.get(size).f960a == wVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                j(wVar);
                this.l.remove(size);
            }
        }
        a((List<a>) this.m, wVar);
        if (this.j.remove(wVar)) {
            view.setAlpha(1.0f);
            i(wVar);
        }
        if (this.k.remove(wVar)) {
            view.setAlpha(1.0f);
            k(wVar);
        }
        for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = this.c.get(size2);
            a((List<a>) arrayList, wVar);
            if (arrayList.isEmpty()) {
                this.c.remove(size2);
            }
        }
        for (int size3 = this.f941b.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = this.f941b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (((b) arrayList2.get(size4)).f960a == wVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    j(wVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f941b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f940a.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = this.f940a.get(size5);
            if (arrayList3.remove(wVar)) {
                view.setAlpha(1.0f);
                k(wVar);
                if (arrayList3.isEmpty()) {
                    this.f940a.remove(size5);
                }
            }
        }
        this.f.remove(wVar);
        this.d.remove(wVar);
        this.g.remove(wVar);
        this.e.remove(wVar);
        c();
    }
}
