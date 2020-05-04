package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.g.r;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.h;
import androidx.lifecycle.e;
import androidx.lifecycle.s;
import androidx.lifecycle.t;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: FragmentManagerImpl */
final class i extends h implements LayoutInflater.Factory2 {
    static final Interpolator D = new DecelerateInterpolator(2.5f);
    static final Interpolator E = new DecelerateInterpolator(1.5f);

    /* renamed from: b  reason: collision with root package name */
    static boolean f689b;
    SparseArray<Parcelable> A = null;
    ArrayList<g> B;
    Runnable C = new Runnable() {
        public void run() {
            i.this.l();
        }
    };
    private OnBackPressedDispatcher F;
    private final androidx.activity.c G = new androidx.activity.c(false) {
        public void c() {
            i.this.h();
        }
    };
    private final CopyOnWriteArrayList<c> H = new CopyOnWriteArrayList<>();
    private j I;
    ArrayList<e> c;
    boolean d;
    int e = 0;
    final ArrayList<Fragment> f = new ArrayList<>();
    final HashMap<String, Fragment> g = new HashMap<>();
    ArrayList<a> h;
    ArrayList<Fragment> i;
    ArrayList<a> j;
    ArrayList<Integer> k;
    ArrayList<h.b> l;
    int m = 0;
    g n;
    d o;
    Fragment p;
    Fragment q;
    boolean r;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    ArrayList<a> w;
    ArrayList<Boolean> x;
    ArrayList<Fragment> y;
    Bundle z = null;

    /* compiled from: FragmentManagerImpl */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Animation f700a;

        /* renamed from: b  reason: collision with root package name */
        public final Animator f701b;

        a(Animator animator) {
            this.f700a = null;
            this.f701b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        a(Animation animation) {
            this.f700a = animation;
            this.f701b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* compiled from: FragmentManagerImpl */
    private static class b extends AnimationSet implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f702a;

        /* renamed from: b  reason: collision with root package name */
        private final View f703b;
        private boolean c;
        private boolean d;
        private boolean e = true;

        b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f702a = viewGroup;
            this.f703b = view;
            addAnimation(animation);
            this.f702a.post(this);
        }

        public boolean getTransformation(long j, Transformation transformation) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation)) {
                this.c = true;
                r.a(this.f702a, this);
            }
            return true;
        }

        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.c = true;
                r.a(this.f702a, this);
            }
            return true;
        }

        public void run() {
            if (this.c || !this.e) {
                this.f702a.endViewTransition(this.f703b);
                this.d = true;
                return;
            }
            this.e = false;
            this.f702a.post(this);
        }
    }

    /* compiled from: FragmentManagerImpl */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        final h.a f704a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f705b;

        c(h.a aVar, boolean z) {
            this.f704a = aVar;
            this.f705b = z;
        }
    }

    /* compiled from: FragmentManagerImpl */
    static class d {

        /* renamed from: a  reason: collision with root package name */
        public static final int[] f706a = {16842755, 16842960, 16842961};
    }

    /* compiled from: FragmentManagerImpl */
    interface e {
        boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* compiled from: FragmentManagerImpl */
    private class f implements e {

        /* renamed from: a  reason: collision with root package name */
        final String f707a;

        /* renamed from: b  reason: collision with root package name */
        final int f708b;
        final int c;

        f(String str, int i, int i2) {
            this.f707a = str;
            this.f708b = i;
            this.c = i2;
        }

        public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
            if (i.this.q != null && this.f708b < 0 && this.f707a == null && i.this.q.u().c()) {
                return false;
            }
            return i.this.a(arrayList, arrayList2, this.f707a, this.f708b, this.c);
        }
    }

    /* compiled from: FragmentManagerImpl */
    static class g implements Fragment.c {

        /* renamed from: a  reason: collision with root package name */
        final boolean f709a;

        /* renamed from: b  reason: collision with root package name */
        final a f710b;
        private int c;

        g(a aVar, boolean z) {
            this.f709a = z;
            this.f710b = aVar;
        }

        public void a() {
            this.c--;
            if (this.c == 0) {
                this.f710b.f675a.k();
            }
        }

        public void b() {
            this.c++;
        }

        public boolean c() {
            return this.c == 0;
        }

        public void d() {
            boolean z = this.c > 0;
            i iVar = this.f710b.f675a;
            int size = iVar.f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = iVar.f.get(i);
                fragment.a((Fragment.c) null);
                if (z && fragment.ak()) {
                    fragment.P();
                }
            }
            this.f710b.f675a.a(this.f710b, this.f709a, !z, true);
        }

        public void e() {
            this.f710b.f675a.a(this.f710b, this.f709a, false, false);
        }
    }

    i() {
    }

    private void D() {
        ArrayList<e> arrayList = this.c;
        boolean z2 = true;
        if (arrayList == null || arrayList.isEmpty()) {
            androidx.activity.c cVar = this.G;
            if (i() <= 0 || !a(this.p)) {
                z2 = false;
            }
            cVar.a(z2);
            return;
        }
        this.G.a(true);
    }

    private void E() {
        if (g()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void F() {
        this.d = false;
        this.x.clear();
        this.w.clear();
    }

    private void G() {
        if (this.B != null) {
            while (!this.B.isEmpty()) {
                this.B.remove(0).d();
            }
        }
    }

    private void H() {
        for (Fragment next : this.g.values()) {
            if (next != null) {
                if (next.ah() != null) {
                    int aj = next.aj();
                    View ah = next.ah();
                    Animation animation = ah.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        ah.clearAnimation();
                    }
                    next.a((View) null);
                    a(next, aj, 0, 0, false);
                } else if (next.ai() != null) {
                    next.ai().end();
                }
            }
        }
    }

    private void I() {
        this.g.values().removeAll(Collections.singleton((Object) null));
    }

    private int a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, androidx.b.b<Fragment> bVar) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            a aVar = arrayList.get(i5);
            boolean booleanValue = arrayList2.get(i5).booleanValue();
            if (aVar.f() && !aVar.a(arrayList, i5 + 1, i3)) {
                if (this.B == null) {
                    this.B = new ArrayList<>();
                }
                g gVar = new g(aVar, booleanValue);
                this.B.add(gVar);
                aVar.a((Fragment.c) gVar);
                if (booleanValue) {
                    aVar.e();
                } else {
                    aVar.b(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, aVar);
                }
                b(bVar);
            }
        }
        return i4;
    }

    static a a(float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(E);
        alphaAnimation.setDuration(220);
        return new a((Animation) alphaAnimation);
    }

    static a a(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(D);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(E);
        alphaAnimation.setDuration(220);
        animationSet.addAnimation(alphaAnimation);
        return new a((Animation) animationSet);
    }

    private void a(androidx.b.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment b2 = bVar.b(i2);
            if (!b2.t) {
                View B2 = b2.B();
                b2.W = B2.getAlpha();
                B2.setAlpha(0.0f);
            }
        }
    }

    private void a(final Fragment fragment, a aVar, int i2) {
        final View view = fragment.O;
        final ViewGroup viewGroup = fragment.N;
        viewGroup.startViewTransition(view);
        fragment.c(i2);
        if (aVar.f700a != null) {
            b bVar = new b(aVar.f700a, viewGroup, view);
            fragment.a(fragment.O);
            bVar.setAnimationListener(new Animation.AnimationListener() {
                public void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() {
                        public void run() {
                            if (fragment.ah() != null) {
                                fragment.a((View) null);
                                i.this.a(fragment, fragment.aj(), 0, 0, false);
                            }
                        }
                    });
                }

                public void onAnimationRepeat(Animation animation) {
                }

                public void onAnimationStart(Animation animation) {
                }
            });
            fragment.O.startAnimation(bVar);
            return;
        }
        Animator animator = aVar.f701b;
        fragment.a(aVar.f701b);
        animator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                viewGroup.endViewTransition(view);
                Animator ai = fragment.ai();
                fragment.a((Animator) null);
                if (ai != null && viewGroup.indexOfChild(view) < 0) {
                    i iVar = i.this;
                    Fragment fragment = fragment;
                    iVar.a(fragment, fragment.aj(), 0, 0, false);
                }
            }
        });
        animator.setTarget(fragment.O);
        animator.start();
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new androidx.core.f.b("FragmentManager"));
        g gVar = this.n;
        if (gVar != null) {
            try {
                gVar.a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        } else {
            try {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e3) {
                Log.e("FragmentManager", "Failed dumping state", e3);
            }
        }
        throw runtimeException;
    }

    private void a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        ArrayList<g> arrayList3 = this.B;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            g gVar = this.B.get(i2);
            if (arrayList != null && !gVar.f709a) {
                int indexOf = arrayList.indexOf(gVar.f710b);
                if (indexOf != -1 && arrayList2.get(indexOf).booleanValue()) {
                    this.B.remove(i2);
                    i2--;
                    size--;
                    gVar.e();
                    i2++;
                }
            }
            if (gVar.c() || (arrayList != null && gVar.f710b.a(arrayList, 0, arrayList.size()))) {
                this.B.remove(i2);
                i2--;
                size--;
                if (arrayList != null && !gVar.f709a) {
                    int indexOf2 = arrayList.indexOf(gVar.f710b);
                    if (indexOf2 != -1 && arrayList2.get(indexOf2).booleanValue()) {
                        gVar.e();
                    }
                }
                gVar.d();
            }
            i2++;
        }
    }

    private void a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        ArrayList<a> arrayList3 = arrayList;
        ArrayList<Boolean> arrayList4 = arrayList2;
        int i5 = i2;
        int i6 = i3;
        boolean z2 = arrayList3.get(i5).t;
        ArrayList<Fragment> arrayList5 = this.y;
        if (arrayList5 == null) {
            this.y = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.y.addAll(this.f);
        Fragment A2 = A();
        boolean z3 = false;
        for (int i7 = i5; i7 < i6; i7++) {
            a aVar = arrayList3.get(i7);
            A2 = !arrayList4.get(i7).booleanValue() ? aVar.a(this.y, A2) : aVar.b(this.y, A2);
            z3 = z3 || aVar.k;
        }
        this.y.clear();
        if (!z2) {
            l.a(this, arrayList, arrayList2, i2, i3, false);
        }
        b(arrayList, arrayList2, i2, i3);
        if (z2) {
            androidx.b.b bVar = new androidx.b.b();
            b((androidx.b.b<Fragment>) bVar);
            int a2 = a(arrayList, arrayList2, i2, i3, (androidx.b.b<Fragment>) bVar);
            a((androidx.b.b<Fragment>) bVar);
            i4 = a2;
        } else {
            i4 = i6;
        }
        if (i4 != i5 && z2) {
            l.a(this, arrayList, arrayList2, i2, i4, true);
            a(this.m, true);
        }
        while (i5 < i6) {
            a aVar2 = arrayList3.get(i5);
            if (arrayList4.get(i5).booleanValue() && aVar2.c >= 0) {
                c(aVar2.c);
                aVar2.c = -1;
            }
            aVar2.a();
            i5++;
        }
        if (z3) {
            n();
        }
    }

    private boolean a(String str, int i2, int i3) {
        l();
        c(true);
        Fragment fragment = this.q;
        if (fragment != null && i2 < 0 && str == null && fragment.u().c()) {
            return true;
        }
        boolean a2 = a(this.w, this.x, str, i2, i3);
        if (a2) {
            this.d = true;
            try {
                b(this.w, this.x);
            } finally {
                F();
            }
        }
        D();
        m();
        I();
        return a2;
    }

    public static int b(int i2, boolean z2) {
        if (i2 == 4097) {
            return z2 ? 1 : 2;
        }
        if (i2 == 4099) {
            return z2 ? 5 : 6;
        }
        if (i2 != 8194) {
            return -1;
        }
        return z2 ? 3 : 4;
    }

    private void b(androidx.b.b<Fragment> bVar) {
        int i2 = this.m;
        if (i2 >= 1) {
            int min = Math.min(i2, 3);
            int size = this.f.size();
            for (int i3 = 0; i3 < size; i3++) {
                Fragment fragment = this.f.get(i3);
                if (fragment.k < min) {
                    a(fragment, min, fragment.ac(), fragment.ad(), false);
                    if (fragment.O != null && !fragment.H && fragment.U) {
                        bVar.add(fragment);
                    }
                }
            }
        }
    }

    private void b(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            a(arrayList, arrayList2);
            int size = arrayList.size();
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                if (!arrayList.get(i2).t) {
                    if (i3 != i2) {
                        a(arrayList, arrayList2, i3, i2);
                    }
                    i3 = i2 + 1;
                    if (arrayList2.get(i2).booleanValue()) {
                        while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).t) {
                            i3++;
                        }
                    }
                    a(arrayList, arrayList2, i2, i3);
                    i2 = i3 - 1;
                }
                i2++;
            }
            if (i3 != size) {
                a(arrayList, arrayList2, i3, size);
            }
        }
    }

    private static void b(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            a aVar = arrayList.get(i2);
            boolean z2 = true;
            if (arrayList2.get(i2).booleanValue()) {
                aVar.a(-1);
                if (i2 != i3 - 1) {
                    z2 = false;
                }
                aVar.b(z2);
            } else {
                aVar.a(1);
                aVar.e();
            }
            i2++;
        }
    }

    private void c(boolean z2) {
        if (this.d) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (this.n == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        } else if (Looper.myLooper() == this.n.m().getLooper()) {
            if (!z2) {
                E();
            }
            if (this.w == null) {
                this.w = new ArrayList<>();
                this.x = new ArrayList<>();
            }
            this.d = true;
            try {
                a((ArrayList<a>) null, (ArrayList<Boolean>) null);
            } finally {
                this.d = false;
            }
        } else {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003b, code lost:
        return false;
     */
    private boolean c(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.c != null) {
                if (this.c.size() != 0) {
                    int size = this.c.size();
                    boolean z2 = false;
                    for (int i2 = 0; i2 < size; i2++) {
                        z2 |= this.c.get(i2).a(arrayList, arrayList2);
                    }
                    this.c.clear();
                    this.n.m().removeCallbacks(this.C);
                    return z2;
                }
            }
        }
    }

    public static int d(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    /* JADX INFO: finally extract failed */
    private void e(int i2) {
        try {
            this.d = true;
            a(i2, false);
            this.d = false;
            l();
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    private Fragment u(Fragment fragment) {
        ViewGroup viewGroup = fragment.N;
        View view = fragment.O;
        if (!(viewGroup == null || view == null)) {
            for (int indexOf = this.f.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
                Fragment fragment2 = this.f.get(indexOf);
                if (fragment2.N == viewGroup && fragment2.O != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    private void v(Fragment fragment) {
        if (fragment != null && this.g.get(fragment.o) == fragment) {
            fragment.V();
        }
    }

    private boolean w(Fragment fragment) {
        return (fragment.L && fragment.M) || fragment.C.B();
    }

    public Fragment A() {
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public boolean B() {
        boolean z2 = false;
        for (Fragment next : this.g.values()) {
            if (next != null) {
                z2 = w(next);
                continue;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public LayoutInflater.Factory2 C() {
        return this;
    }

    public int a(a aVar) {
        synchronized (this) {
            if (this.k != null) {
                if (this.k.size() > 0) {
                    int intValue = this.k.remove(this.k.size() - 1).intValue();
                    if (f689b) {
                        Log.v("FragmentManager", "Adding back stack index " + intValue + " with " + aVar);
                    }
                    this.j.set(intValue, aVar);
                    return intValue;
                }
            }
            if (this.j == null) {
                this.j = new ArrayList<>();
            }
            int size = this.j.size();
            if (f689b) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + aVar);
            }
            this.j.add(aVar);
            return size;
        }
    }

    public Fragment a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragment = this.g.get(string);
        if (fragment == null) {
            a((RuntimeException) new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return fragment;
    }

    public Fragment a(String str) {
        if (str != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f.get(size);
                if (fragment != null && str.equals(fragment.G)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (Fragment next : this.g.values()) {
            if (next != null && str.equals(next.G)) {
                return next;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public a a(Fragment fragment, int i2, boolean z2, int i3) {
        int ac = fragment.ac();
        boolean z3 = false;
        fragment.b(0);
        if (fragment.N != null && fragment.N.getLayoutTransition() != null) {
            return null;
        }
        Animation a2 = fragment.a(i2, z2, ac);
        if (a2 != null) {
            return new a(a2);
        }
        Animator b2 = fragment.b(i2, z2, ac);
        if (b2 != null) {
            return new a(b2);
        }
        if (ac != 0) {
            boolean equals = "anim".equals(this.n.l().getResources().getResourceTypeName(ac));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.n.l(), ac);
                    if (loadAnimation != null) {
                        return new a(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.n.l(), ac);
                    if (loadAnimator != null) {
                        return new a(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.n.l(), ac);
                        if (loadAnimation2 != null) {
                            return new a(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (i2 == 0) {
            return null;
        }
        int b3 = b(i2, z2);
        if (b3 < 0) {
            return null;
        }
        switch (b3) {
            case 1:
                return a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return a(0.0f, 1.0f);
            case 6:
                return a(1.0f, 0.0f);
            default:
                if (i3 == 0 && this.n.h()) {
                    i3 = this.n.i();
                }
                if (i3 == 0) {
                }
                return null;
        }
    }

    public k a() {
        return new a(this);
    }

    public void a(int i2, int i3) {
        if (i2 >= 0) {
            a((e) new f((String) null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public void a(int i2, a aVar) {
        synchronized (this) {
            if (this.j == null) {
                this.j = new ArrayList<>();
            }
            int size = this.j.size();
            if (i2 < size) {
                if (f689b) {
                    Log.v("FragmentManager", "Setting back stack index " + i2 + " to " + aVar);
                }
                this.j.set(i2, aVar);
            } else {
                while (size < i2) {
                    this.j.add((Object) null);
                    if (this.k == null) {
                        this.k = new ArrayList<>();
                    }
                    if (f689b) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.k.add(Integer.valueOf(size));
                    size++;
                }
                if (f689b) {
                    Log.v("FragmentManager", "Adding back stack index " + i2 + " with " + aVar);
                }
                this.j.add(aVar);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, boolean z2) {
        if (this.n == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        } else if (z2 || i2 != this.m) {
            this.m = i2;
            int size = this.f.size();
            for (int i3 = 0; i3 < size; i3++) {
                j(this.f.get(i3));
            }
            for (Fragment next : this.g.values()) {
                if (next != null && ((next.u || next.I) && !next.U)) {
                    j(next);
                }
            }
            j();
            if (this.r) {
                g gVar = this.n;
                if (gVar != null && this.m == 4) {
                    gVar.g();
                    this.r = false;
                }
            }
        }
    }

    public void a(Configuration configuration) {
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragment = this.f.get(i2);
            if (fragment != null) {
                fragment.a(configuration);
            }
        }
    }

    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.A != this) {
            a((RuntimeException) new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.o);
    }

    /* access modifiers changed from: package-private */
    public void a(Parcelable parcelable) {
        FragmentState fragmentState;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.mActive != null) {
                for (Fragment next : this.I.c()) {
                    if (f689b) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + next);
                    }
                    Iterator<FragmentState> it = fragmentManagerState.mActive.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            fragmentState = null;
                            break;
                        }
                        fragmentState = it.next();
                        if (fragmentState.mWho.equals(next.o)) {
                            break;
                        }
                    }
                    if (fragmentState == null) {
                        if (f689b) {
                            Log.v("FragmentManager", "Discarding retained Fragment " + next + " that was not found in the set of active Fragments " + fragmentManagerState.mActive);
                        }
                        Fragment fragment = next;
                        a(fragment, 1, 0, 0, false);
                        next.u = true;
                        a(fragment, 0, 0, 0, false);
                    } else {
                        fragmentState.mInstance = next;
                        next.m = null;
                        next.z = 0;
                        next.w = false;
                        next.t = false;
                        next.r = next.q != null ? next.q.o : null;
                        next.q = null;
                        if (fragmentState.mSavedFragmentState != null) {
                            fragmentState.mSavedFragmentState.setClassLoader(this.n.l().getClassLoader());
                            next.m = fragmentState.mSavedFragmentState.getSparseParcelableArray("android:view_state");
                            next.l = fragmentState.mSavedFragmentState;
                        }
                    }
                }
                this.g.clear();
                Iterator<FragmentState> it2 = fragmentManagerState.mActive.iterator();
                while (it2.hasNext()) {
                    FragmentState next2 = it2.next();
                    if (next2 != null) {
                        Fragment instantiate = next2.instantiate(this.n.l().getClassLoader(), f());
                        instantiate.A = this;
                        if (f689b) {
                            Log.v("FragmentManager", "restoreSaveState: active (" + instantiate.o + "): " + instantiate);
                        }
                        this.g.put(instantiate.o, instantiate);
                        next2.mInstance = null;
                    }
                }
                this.f.clear();
                if (fragmentManagerState.mAdded != null) {
                    Iterator<String> it3 = fragmentManagerState.mAdded.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment2 = this.g.get(it3.next());
                        if (fragment2 == null) {
                            a((RuntimeException) new IllegalStateException("No instantiated fragment for (" + r1 + ")"));
                        }
                        fragment2.t = true;
                        if (f689b) {
                            Log.v("FragmentManager", "restoreSaveState: added (" + r1 + "): " + fragment2);
                        }
                        if (!this.f.contains(fragment2)) {
                            synchronized (this.f) {
                                this.f.add(fragment2);
                            }
                        } else {
                            throw new IllegalStateException("Already added " + fragment2);
                        }
                    }
                }
                if (fragmentManagerState.mBackStack != null) {
                    this.h = new ArrayList<>(fragmentManagerState.mBackStack.length);
                    for (BackStackState instantiate2 : fragmentManagerState.mBackStack) {
                        a instantiate3 = instantiate2.instantiate(this);
                        if (f689b) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + r0 + " (index " + instantiate3.c + "): " + instantiate3);
                            PrintWriter printWriter = new PrintWriter(new androidx.core.f.b("FragmentManager"));
                            instantiate3.a("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.h.add(instantiate3);
                        if (instantiate3.c >= 0) {
                            a(instantiate3.c, instantiate3);
                        }
                    }
                } else {
                    this.h = null;
                }
                if (fragmentManagerState.mPrimaryNavActiveWho != null) {
                    this.q = this.g.get(fragmentManagerState.mPrimaryNavActiveWho);
                    v(this.q);
                }
                this.e = fragmentManagerState.mNextFragmentIndex;
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v0, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v2, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v4, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v5, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v6, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v7, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v8, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v9, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v10, resolved type: int} */
    /* JADX WARNING: type inference failed for: r11v1 */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x02f6  */
    /* JADX WARNING: Removed duplicated region for block: B:152:0x0317  */
    /* JADX WARNING: Removed duplicated region for block: B:267:0x04ff  */
    /* JADX WARNING: Removed duplicated region for block: B:269:? A[RETURN, SYNTHETIC] */
    public void a(Fragment fragment, int i2, int i3, int i4, boolean z2) {
        int i5;
        char c2;
        char c3;
        char c4;
        char c5;
        ViewGroup viewGroup;
        String str;
        String str2;
        String str3;
        Fragment fragment2 = fragment;
        boolean z3 = true;
        if (!fragment2.t || fragment2.I) {
            i5 = i2;
            if (i5 > 1) {
                i5 = 1;
            }
        } else {
            i5 = i2;
        }
        if (fragment2.u && i5 > fragment2.k) {
            i5 = (fragment2.k != 0 || !fragment.i()) ? fragment2.k : 1;
        }
        if (fragment2.Q && fragment2.k < 3 && i5 > 2) {
            i5 = 2;
        }
        int min = fragment2.Z == e.b.CREATED ? Math.min(i5, 1) : Math.min(i5, fragment2.Z.ordinal());
        if (fragment2.k <= min) {
            if (!fragment2.v || fragment2.w) {
                if (!(fragment.ah() == null && fragment.ai() == null)) {
                    fragment2.a((View) null);
                    fragment2.a((Animator) null);
                    a(fragment, fragment.aj(), 0, 0, true);
                }
                int i6 = fragment2.k;
                if (i6 != 0) {
                    if (i6 != 1) {
                        if (i6 == 2) {
                            c5 = 2;
                            if (min > c5) {
                                if (f689b) {
                                    Log.v("FragmentManager", "moveto STARTED: " + fragment2);
                                }
                                fragment.S();
                                b(fragment2, false);
                            }
                            c4 = 3;
                            min = min;
                            if (min > c4) {
                            }
                        } else if (i6 == 3) {
                            c4 = 3;
                            if (min > c4) {
                                if (f689b) {
                                    Log.v("FragmentManager", "moveto RESUMED: " + fragment2);
                                }
                                fragment.T();
                                c(fragment2, false);
                                fragment2.l = null;
                                fragment2.m = null;
                            }
                        }
                    }
                } else if (min > 0) {
                    if (f689b) {
                        Log.v("FragmentManager", "moveto CREATED: " + fragment2);
                    }
                    if (fragment2.l != null) {
                        fragment2.l.setClassLoader(this.n.l().getClassLoader());
                        fragment2.m = fragment2.l.getSparseParcelableArray("android:view_state");
                        Fragment a2 = a(fragment2.l, "android:target_state");
                        fragment2.r = a2 != null ? a2.o : null;
                        if (fragment2.r != null) {
                            fragment2.s = fragment2.l.getInt("android:target_req_state", 0);
                        }
                        if (fragment2.n != null) {
                            fragment2.R = fragment2.n.booleanValue();
                            fragment2.n = null;
                        } else {
                            fragment2.R = fragment2.l.getBoolean("android:user_visible_hint", true);
                        }
                        if (!fragment2.R) {
                            fragment2.Q = true;
                            if (min > 2) {
                                min = 2;
                            }
                        }
                    }
                    g gVar = this.n;
                    fragment2.B = gVar;
                    Fragment fragment3 = this.p;
                    fragment2.D = fragment3;
                    fragment2.A = fragment3 != null ? fragment3.C : gVar.f686b;
                    if (fragment2.q == null) {
                        str3 = "Fragment ";
                        str2 = " declared target fragment ";
                    } else if (this.g.get(fragment2.q.o) == fragment2.q) {
                        if (fragment2.q.k < 1) {
                            str3 = "Fragment ";
                            str2 = " declared target fragment ";
                            a(fragment2.q, 1, 0, 0, true);
                        } else {
                            str3 = "Fragment ";
                            str2 = " declared target fragment ";
                        }
                        fragment2.r = fragment2.q.o;
                        fragment2.q = null;
                    } else {
                        throw new IllegalStateException("Fragment " + fragment2 + " declared target fragment " + fragment2.q + " that does not belong to this FragmentManager!");
                    }
                    if (fragment2.r != null) {
                        Fragment fragment4 = this.g.get(fragment2.r);
                        if (fragment4 == null) {
                            throw new IllegalStateException(str3 + fragment2 + str2 + fragment2.r + " that does not belong to this FragmentManager!");
                        } else if (fragment4.k < 1) {
                            a(fragment4, 1, 0, 0, true);
                        }
                    }
                    a(fragment2, this.n.l(), false);
                    fragment.R();
                    if (fragment2.D == null) {
                        this.n.b(fragment2);
                    } else {
                        fragment2.D.a(fragment2);
                    }
                    b(fragment2, this.n.l(), false);
                    if (!fragment2.Y) {
                        a(fragment2, fragment2.l, false);
                        fragment2.l(fragment2.l);
                        b(fragment2, fragment2.l, false);
                        min = min;
                    } else {
                        fragment2.j(fragment2.l);
                        fragment2.k = 1;
                        min = min;
                    }
                }
                if (min > 0) {
                    h(fragment);
                }
                if (min > 1) {
                    if (f689b) {
                        Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment2);
                    }
                    if (!fragment2.v) {
                        if (fragment2.F != 0) {
                            if (fragment2.F == -1) {
                                a((RuntimeException) new IllegalArgumentException("Cannot create fragment " + fragment2 + " for a container view with no id"));
                            }
                            viewGroup = (ViewGroup) this.o.a(fragment2.F);
                            if (viewGroup == null && !fragment2.x) {
                                try {
                                    str = fragment.r().getResourceName(fragment2.F);
                                } catch (Resources.NotFoundException unused) {
                                    str = "unknown";
                                }
                                a((RuntimeException) new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment2.F) + " (" + str + ") for fragment " + fragment2));
                            }
                        } else {
                            viewGroup = null;
                        }
                        fragment2.N = viewGroup;
                        fragment2.b(fragment2.h(fragment2.l), viewGroup, fragment2.l);
                        if (fragment2.O != null) {
                            fragment2.P = fragment2.O;
                            fragment2.O.setSaveFromParentEnabled(false);
                            if (viewGroup != null) {
                                viewGroup.addView(fragment2.O);
                            }
                            if (fragment2.H) {
                                fragment2.O.setVisibility(8);
                            }
                            fragment2.a(fragment2.O, fragment2.l);
                            a(fragment2, fragment2.O, fragment2.l, false);
                            if (fragment2.O.getVisibility() != 0 || fragment2.N == null) {
                                z3 = false;
                            }
                            fragment2.U = z3;
                        } else {
                            fragment2.P = null;
                        }
                    }
                    fragment2.m(fragment2.l);
                    c(fragment2, fragment2.l, false);
                    if (fragment2.O != null) {
                        fragment2.f(fragment2.l);
                    }
                    fragment2.l = null;
                }
                c5 = 2;
                min = min;
                if (min > c5) {
                }
                c4 = 3;
                min = min;
                if (min > c4) {
                }
            } else {
                return;
            }
        } else if (fragment2.k > min) {
            int i7 = fragment2.k;
            if (i7 != 1) {
                if (i7 != 2) {
                    if (i7 == 3) {
                        c3 = 3;
                    } else if (i7 == 4) {
                        if (min < 4) {
                            if (f689b) {
                                Log.v("FragmentManager", "movefrom RESUMED: " + fragment2);
                            }
                            fragment.X();
                            d(fragment2, false);
                        }
                        c3 = 3;
                    }
                    if (min < c3) {
                        if (f689b) {
                            Log.v("FragmentManager", "movefrom STARTED: " + fragment2);
                        }
                        fragment.Y();
                        e(fragment2, false);
                    }
                    c2 = 2;
                } else {
                    c2 = 2;
                }
                if (min < c2) {
                    if (f689b) {
                        Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment2);
                    }
                    if (fragment2.O != null && this.n.a(fragment2) && fragment2.m == null) {
                        r(fragment);
                    }
                    fragment.Z();
                    f(fragment2, false);
                    if (!(fragment2.O == null || fragment2.N == null)) {
                        fragment2.N.endViewTransition(fragment2.O);
                        fragment2.O.clearAnimation();
                        if (fragment.v() == null || !fragment.v().u) {
                            a a3 = (this.m <= 0 || this.u || fragment2.O.getVisibility() != 0 || fragment2.W < 0.0f) ? null : a(fragment2, i3, false, i4);
                            fragment2.W = 0.0f;
                            if (a3 != null) {
                                a(fragment2, a3, min);
                            }
                            fragment2.N.removeView(fragment2.O);
                        }
                    }
                    fragment2.N = null;
                    fragment2.O = null;
                    fragment2.ab = null;
                    fragment2.ac.a(null);
                    fragment2.P = null;
                    fragment2.w = false;
                }
            }
            if (min < 1) {
                if (this.u) {
                    if (fragment.ah() != null) {
                        View ah = fragment.ah();
                        fragment2.a((View) null);
                        ah.clearAnimation();
                    } else if (fragment.ai() != null) {
                        Animator ai = fragment.ai();
                        fragment2.a((Animator) null);
                        ai.cancel();
                    }
                }
                if (fragment.ah() == null && fragment.ai() == null) {
                    if (f689b) {
                        Log.v("FragmentManager", "movefrom CREATED: " + fragment2);
                    }
                    boolean z4 = fragment2.u && !fragment.i();
                    if (z4 || this.I.b(fragment2)) {
                        g gVar2 = this.n;
                        if (gVar2 instanceof t) {
                            z3 = this.I.b();
                        } else if (gVar2.l() instanceof Activity) {
                            z3 = true ^ ((Activity) this.n.l()).isChangingConfigurations();
                        }
                        if (z4 || z3) {
                            this.I.f(fragment2);
                        }
                        fragment.aa();
                        g(fragment2, false);
                    } else {
                        fragment2.k = 0;
                    }
                    fragment.ab();
                    h(fragment2, false);
                    if (!z2) {
                        if (z4 || this.I.b(fragment2)) {
                            l(fragment);
                        } else {
                            fragment2.B = null;
                            fragment2.D = null;
                            fragment2.A = null;
                            if (fragment2.r != null) {
                                Fragment fragment5 = this.g.get(fragment2.r);
                                if (fragment5 != null && fragment5.z()) {
                                    fragment2.q = fragment5;
                                }
                            }
                        }
                    }
                } else {
                    fragment2.c(min);
                    if (fragment2.k == z3) {
                        Log.w("FragmentManager", "moveToState: Fragment state for " + fragment2 + " not updated inline; expected state " + z3 + " found " + fragment2.k);
                        fragment2.k = z3;
                        return;
                    }
                    return;
                }
            }
        }
        z3 = min;
        if (fragment2.k == z3) {
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).a(fragment, context, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.a((h) this, fragment, context);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).a(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.a((h) this, fragment, bundle);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Fragment fragment, View view, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).a(fragment, view, bundle, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.a(this, fragment, view, bundle);
            }
        }
    }

    public void a(Fragment fragment, e.b bVar) {
        if (this.g.get(fragment.o) == fragment && (fragment.B == null || fragment.s() == this)) {
            fragment.Z = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public void a(Fragment fragment, boolean z2) {
        if (f689b) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        k(fragment);
        if (fragment.I) {
            return;
        }
        if (!this.f.contains(fragment)) {
            synchronized (this.f) {
                this.f.add(fragment);
            }
            fragment.t = true;
            fragment.u = false;
            if (fragment.O == null) {
                fragment.V = false;
            }
            if (w(fragment)) {
                this.r = true;
            }
            if (z2) {
                g(fragment);
                return;
            }
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    /* access modifiers changed from: package-private */
    public void a(a aVar, boolean z2, boolean z3, boolean z4) {
        if (z2) {
            aVar.b(z4);
        } else {
            aVar.e();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z2));
        if (z3) {
            l.a(this, (ArrayList<a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z4) {
            a(this.m, true);
        }
        for (Fragment next : this.g.values()) {
            if (next != null && next.O != null && next.U && aVar.b(next.F)) {
                if (next.W > 0.0f) {
                    next.O.setAlpha(next.W);
                }
                if (z4) {
                    next.W = 0.0f;
                } else {
                    next.W = -1.0f;
                    next.U = false;
                }
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v7, resolved type: androidx.activity.d} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v8, resolved type: androidx.fragment.app.Fragment} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v9, resolved type: androidx.fragment.app.Fragment} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v10, resolved type: androidx.fragment.app.Fragment} */
    /* JADX WARNING: Multi-variable type inference failed */
    public void a(g gVar, d dVar, Fragment fragment) {
        if (this.n == null) {
            this.n = gVar;
            this.o = dVar;
            this.p = fragment;
            if (this.p != null) {
                D();
            }
            if (gVar instanceof androidx.activity.d) {
                androidx.activity.d dVar2 = (androidx.activity.d) gVar;
                this.F = dVar2.d();
                Fragment fragment2 = dVar2;
                if (fragment != null) {
                    fragment2 = fragment;
                }
                this.F.a(fragment2, this.G);
            }
            if (fragment != null) {
                this.I = fragment.A.c(fragment);
            } else if (gVar instanceof t) {
                this.I = j.a(((t) gVar).O_());
            } else {
                this.I = new j(false);
            }
        } else {
            throw new IllegalStateException("Already attached");
        }
    }

    public void a(h.a aVar) {
        synchronized (this.H) {
            int i2 = 0;
            int size = this.H.size();
            while (true) {
                if (i2 >= size) {
                    break;
                } else if (this.H.get(i2).f704a == aVar) {
                    this.H.remove(i2);
                    break;
                } else {
                    i2++;
                }
            }
        }
    }

    public void a(h.a aVar, boolean z2) {
        this.H.add(new c(aVar, z2));
    }

    public void a(e eVar, boolean z2) {
        if (!z2) {
            E();
        }
        synchronized (this) {
            if (!this.u) {
                if (this.n != null) {
                    if (this.c == null) {
                        this.c = new ArrayList<>();
                    }
                    this.c.add(eVar);
                    k();
                    return;
                }
            }
            if (!z2) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.g.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment next : this.g.values()) {
                printWriter.print(str);
                printWriter.println(next);
                if (next != null) {
                    next.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size = this.f.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f.get(i2).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.i;
        if (arrayList != null) {
            int size2 = arrayList.size();
            if (size2 > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                for (int i3 = 0; i3 < size2; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.i.get(i3).toString());
                }
            }
        }
        ArrayList<a> arrayList2 = this.h;
        if (arrayList2 != null) {
            int size3 = arrayList2.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                for (int i4 = 0; i4 < size3; i4++) {
                    a aVar = this.h.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(aVar.toString());
                    aVar.a(str2, printWriter);
                }
            }
        }
        synchronized (this) {
            if (this.j != null) {
                int size4 = this.j.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    for (int i5 = 0; i5 < size4; i5++) {
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(this.j.get(i5));
                    }
                }
            }
            if (this.k != null && this.k.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.k.toArray()));
            }
        }
        ArrayList<e> arrayList3 = this.c;
        if (arrayList3 != null) {
            int size5 = arrayList3.size();
            if (size5 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i6 = 0; i6 < size5; i6++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println(this.c.get(i6));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.o);
        if (this.p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.s);
        printWriter.print(" mStopped=");
        printWriter.print(this.t);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.u);
        if (this.r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
    }

    public void a(boolean z2) {
        for (int size = this.f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f.get(size);
            if (fragment != null) {
                fragment.f(z2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i2) {
        return this.m >= i2;
    }

    public boolean a(Menu menu) {
        if (this.m < 1) {
            return false;
        }
        boolean z2 = false;
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragment = this.f.get(i2);
            if (fragment != null && fragment.c(menu)) {
                z2 = true;
            }
        }
        return z2;
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.m < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragment = this.f.get(i2);
            if (fragment != null && fragment.b(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z2 = true;
            }
        }
        if (this.i != null) {
            for (int i3 = 0; i3 < this.i.size(); i3++) {
                Fragment fragment2 = this.i.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.G();
                }
            }
        }
        this.i = arrayList;
        return z2;
    }

    public boolean a(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragment = this.f.get(i2);
            if (fragment != null && fragment.c(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean a(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        i iVar = fragment.A;
        return fragment == iVar.A() && a(iVar.p);
    }

    /* access modifiers changed from: package-private */
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int i4;
        ArrayList<a> arrayList3 = this.h;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.h.remove(size));
            arrayList2.add(true);
        } else {
            if (str != null || i2 >= 0) {
                i4 = this.h.size() - 1;
                while (i4 >= 0) {
                    a aVar = this.h.get(i4);
                    if ((str != null && str.equals(aVar.g())) || (i2 >= 0 && i2 == aVar.c)) {
                        break;
                    }
                    i4--;
                }
                if (i4 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        i4--;
                        if (i4 < 0) {
                            break;
                        }
                        a aVar2 = this.h.get(i4);
                        if ((str == null || !str.equals(aVar2.g())) && (i2 < 0 || i2 != aVar2.c)) {
                            break;
                        }
                    }
                }
            } else {
                i4 = -1;
            }
            if (i4 == this.h.size() - 1) {
                return false;
            }
            for (int size2 = this.h.size() - 1; size2 > i4; size2--) {
                arrayList.add(this.h.remove(size2));
                arrayList2.add(true);
            }
        }
        return true;
    }

    public Fragment b(int i2) {
        for (int size = this.f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f.get(size);
            if (fragment != null && fragment.E == i2) {
                return fragment;
            }
        }
        for (Fragment next : this.g.values()) {
            if (next != null && next.E == i2) {
                return next;
            }
        }
        return null;
    }

    public Fragment b(String str) {
        for (Fragment next : this.g.values()) {
            if (next != null) {
                Fragment a2 = next.a(str);
                if (a2 != null) {
                    return a2;
                }
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public s b(Fragment fragment) {
        return this.I.e(fragment);
    }

    public void b(Menu menu) {
        if (this.m >= 1) {
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                Fragment fragment = this.f.get(i2);
                if (fragment != null) {
                    fragment.d(menu);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).b(fragment, context, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.b((h) this, fragment, context);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).b(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.b((h) this, fragment, bundle);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).b(fragment, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.a(this, fragment);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(a aVar) {
        if (this.h == null) {
            this.h = new ArrayList<>();
        }
        this.h.add(aVar);
    }

    public void b(e eVar, boolean z2) {
        if (!z2 || (this.n != null && !this.u)) {
            c(z2);
            if (eVar.a(this.w, this.x)) {
                this.d = true;
                try {
                    b(this.w, this.x);
                } finally {
                    F();
                }
            }
            D();
            m();
            I();
        }
    }

    public void b(boolean z2) {
        for (int size = this.f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f.get(size);
            if (fragment != null) {
                fragment.g(z2);
            }
        }
    }

    public boolean b() {
        boolean l2 = l();
        G();
        return l2;
    }

    public boolean b(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragment = this.f.get(i2);
            if (fragment != null && fragment.d(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public j c(Fragment fragment) {
        return this.I.d(fragment);
    }

    public void c(int i2) {
        synchronized (this) {
            this.j.set(i2, (Object) null);
            if (this.k == null) {
                this.k = new ArrayList<>();
            }
            if (f689b) {
                Log.v("FragmentManager", "Freeing back stack index " + i2);
            }
            this.k.add(Integer.valueOf(i2));
        }
    }

    /* access modifiers changed from: package-private */
    public void c(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).c(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.c(this, fragment, bundle);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).c(fragment, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.b(this, fragment);
            }
        }
    }

    public boolean c() {
        E();
        return a((String) null, -1, 0);
    }

    public List<Fragment> d() {
        List<Fragment> list;
        if (this.f.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f) {
            list = (List) this.f.clone();
        }
        return list;
    }

    /* access modifiers changed from: package-private */
    public void d(Fragment fragment) {
        if (g()) {
            if (f689b) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else if (this.I.a(fragment) && f689b) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    /* access modifiers changed from: package-private */
    public void d(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).d(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.d(this, fragment, bundle);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void d(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).d(fragment, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.c(this, fragment);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void e(Fragment fragment) {
        if (g()) {
            if (f689b) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.I.c(fragment) && f689b) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    /* access modifiers changed from: package-private */
    public void e(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).e(fragment, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.d(this, fragment);
            }
        }
    }

    public boolean e() {
        return this.u;
    }

    public f f() {
        if (super.f() == f687a) {
            Fragment fragment = this.p;
            if (fragment != null) {
                return fragment.A.f();
            }
            a((f) new f() {
                public Fragment c(ClassLoader classLoader, String str) {
                    return i.this.n.a(i.this.n.l(), str, (Bundle) null);
                }
            });
        }
        return super.f();
    }

    public void f(Fragment fragment) {
        if (!fragment.Q) {
            return;
        }
        if (this.d) {
            this.v = true;
            return;
        }
        fragment.Q = false;
        a(fragment, this.m, 0, 0, false);
    }

    /* access modifiers changed from: package-private */
    public void f(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).f(fragment, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.e(this, fragment);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void g(Fragment fragment) {
        a(fragment, this.m, 0, 0, false);
    }

    /* access modifiers changed from: package-private */
    public void g(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).g(fragment, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.f(this, fragment);
            }
        }
    }

    public boolean g() {
        return this.s || this.t;
    }

    /* access modifiers changed from: package-private */
    public void h() {
        l();
        if (this.G.a()) {
            c();
        } else {
            this.F.a();
        }
    }

    /* access modifiers changed from: package-private */
    public void h(Fragment fragment) {
        if (fragment.v && !fragment.y) {
            fragment.b(fragment.h(fragment.l), (ViewGroup) null, fragment.l);
            if (fragment.O != null) {
                fragment.P = fragment.O;
                fragment.O.setSaveFromParentEnabled(false);
                if (fragment.H) {
                    fragment.O.setVisibility(8);
                }
                fragment.a(fragment.O, fragment.l);
                a(fragment, fragment.O, fragment.l, false);
                return;
            }
            fragment.P = null;
        }
    }

    /* access modifiers changed from: package-private */
    public void h(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            h s2 = fragment2.s();
            if (s2 instanceof i) {
                ((i) s2).h(fragment, true);
            }
        }
        Iterator<c> it = this.H.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f705b) {
                next.f704a.g(this, fragment);
            }
        }
    }

    public int i() {
        ArrayList<a> arrayList = this.h;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public void i(final Fragment fragment) {
        if (fragment.O != null) {
            a a2 = a(fragment, fragment.ad(), !fragment.H, fragment.ae());
            if (a2 == null || a2.f701b == null) {
                if (a2 != null) {
                    fragment.O.startAnimation(a2.f700a);
                    a2.f700a.start();
                }
                fragment.O.setVisibility((!fragment.H || fragment.al()) ? 0 : 8);
                if (fragment.al()) {
                    fragment.h(false);
                }
            } else {
                a2.f701b.setTarget(fragment.O);
                if (!fragment.H) {
                    fragment.O.setVisibility(0);
                } else if (fragment.al()) {
                    fragment.h(false);
                } else {
                    final ViewGroup viewGroup = fragment.N;
                    final View view = fragment.O;
                    viewGroup.startViewTransition(view);
                    a2.f701b.addListener(new AnimatorListenerAdapter() {
                        public void onAnimationEnd(Animator animator) {
                            viewGroup.endViewTransition(view);
                            animator.removeListener(this);
                            if (fragment.O != null && fragment.H) {
                                fragment.O.setVisibility(8);
                            }
                        }
                    });
                }
                a2.f701b.start();
            }
        }
        if (fragment.t && w(fragment)) {
            this.r = true;
        }
        fragment.V = false;
        fragment.a(fragment.H);
    }

    /* access modifiers changed from: package-private */
    public void j() {
        for (Fragment next : this.g.values()) {
            if (next != null) {
                f(next);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void j(Fragment fragment) {
        if (fragment != null) {
            if (this.g.containsKey(fragment.o)) {
                int i2 = this.m;
                if (fragment.u) {
                    i2 = fragment.i() ? Math.min(i2, 1) : Math.min(i2, 0);
                }
                a(fragment, i2, fragment.ad(), fragment.ae(), false);
                if (fragment.O != null) {
                    Fragment u2 = u(fragment);
                    if (u2 != null) {
                        View view = u2.O;
                        ViewGroup viewGroup = fragment.N;
                        int indexOfChild = viewGroup.indexOfChild(view);
                        int indexOfChild2 = viewGroup.indexOfChild(fragment.O);
                        if (indexOfChild2 < indexOfChild) {
                            viewGroup.removeViewAt(indexOfChild2);
                            viewGroup.addView(fragment.O, indexOfChild);
                        }
                    }
                    if (fragment.U && fragment.N != null) {
                        if (fragment.W > 0.0f) {
                            fragment.O.setAlpha(fragment.W);
                        }
                        fragment.W = 0.0f;
                        fragment.U = false;
                        a a2 = a(fragment, fragment.ad(), true, fragment.ae());
                        if (a2 != null) {
                            if (a2.f700a != null) {
                                fragment.O.startAnimation(a2.f700a);
                            } else {
                                a2.f701b.setTarget(fragment.O);
                                a2.f701b.start();
                            }
                        }
                    }
                }
                if (fragment.V) {
                    i(fragment);
                }
            } else if (f689b) {
                Log.v("FragmentManager", "Ignoring moving " + fragment + " to state " + this.m + "since it is not added to " + this);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void k() {
        synchronized (this) {
            boolean z2 = false;
            boolean z3 = this.B != null && !this.B.isEmpty();
            if (this.c != null && this.c.size() == 1) {
                z2 = true;
            }
            if (z3 || z2) {
                this.n.m().removeCallbacks(this.C);
                this.n.m().post(this.C);
                D();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void k(Fragment fragment) {
        if (this.g.get(fragment.o) == null) {
            this.g.put(fragment.o, fragment);
            if (fragment.K) {
                if (fragment.J) {
                    d(fragment);
                } else {
                    e(fragment);
                }
                fragment.K = false;
            }
            if (f689b) {
                Log.v("FragmentManager", "Added fragment to active set " + fragment);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void l(Fragment fragment) {
        if (this.g.get(fragment.o) != null) {
            if (f689b) {
                Log.v("FragmentManager", "Removed fragment from active set " + fragment);
            }
            for (Fragment next : this.g.values()) {
                if (next != null && fragment.o.equals(next.r)) {
                    next.q = fragment;
                    next.r = null;
                }
            }
            this.g.put(fragment.o, (Object) null);
            e(fragment);
            if (fragment.r != null) {
                fragment.q = this.g.get(fragment.r);
            }
            fragment.F();
        }
    }

    /* JADX INFO: finally extract failed */
    public boolean l() {
        c(true);
        boolean z2 = false;
        while (c(this.w, this.x)) {
            this.d = true;
            try {
                b(this.w, this.x);
                F();
                z2 = true;
            } catch (Throwable th) {
                F();
                throw th;
            }
        }
        D();
        m();
        I();
        return z2;
    }

    /* access modifiers changed from: package-private */
    public void m() {
        if (this.v) {
            this.v = false;
            j();
        }
    }

    public void m(Fragment fragment) {
        if (f689b) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.z);
        }
        boolean z2 = !fragment.i();
        if (!fragment.I || z2) {
            synchronized (this.f) {
                this.f.remove(fragment);
            }
            if (w(fragment)) {
                this.r = true;
            }
            fragment.t = false;
            fragment.u = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void n() {
        if (this.l != null) {
            for (int i2 = 0; i2 < this.l.size(); i2++) {
                this.l.get(i2).a();
            }
        }
    }

    public void n(Fragment fragment) {
        if (f689b) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.H) {
            fragment.H = true;
            fragment.V = true ^ fragment.V;
        }
    }

    /* access modifiers changed from: package-private */
    public Parcelable o() {
        ArrayList<String> arrayList;
        G();
        H();
        l();
        this.s = true;
        BackStackState[] backStackStateArr = null;
        if (this.g.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.g.size());
        boolean z2 = false;
        for (Fragment next : this.g.values()) {
            if (next != null) {
                if (next.A != this) {
                    a((RuntimeException) new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                }
                FragmentState fragmentState = new FragmentState(next);
                arrayList2.add(fragmentState);
                if (next.k <= 0 || fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState = next.l;
                } else {
                    fragmentState.mSavedFragmentState = s(next);
                    if (next.r != null) {
                        Fragment fragment = this.g.get(next.r);
                        if (fragment == null) {
                            a((RuntimeException) new IllegalStateException("Failure saving state: " + next + " has target not in fragment manager: " + next.r));
                        }
                        if (fragmentState.mSavedFragmentState == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        a(fragmentState.mSavedFragmentState, "android:target_state", fragment);
                        if (next.s != 0) {
                            fragmentState.mSavedFragmentState.putInt("android:target_req_state", next.s);
                        }
                    }
                }
                if (f689b) {
                    Log.v("FragmentManager", "Saved state of " + next + ": " + fragmentState.mSavedFragmentState);
                }
                z2 = true;
            }
        }
        if (!z2) {
            if (f689b) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        int size = this.f.size();
        if (size > 0) {
            arrayList = new ArrayList<>(size);
            Iterator<Fragment> it = this.f.iterator();
            while (it.hasNext()) {
                Fragment next2 = it.next();
                arrayList.add(next2.o);
                if (next2.A != this) {
                    a((RuntimeException) new IllegalStateException("Failure saving state: active " + next2 + " was removed from the FragmentManager"));
                }
                if (f689b) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next2.o + "): " + next2);
                }
            }
        } else {
            arrayList = null;
        }
        ArrayList<a> arrayList3 = this.h;
        if (arrayList3 != null) {
            int size2 = arrayList3.size();
            if (size2 > 0) {
                backStackStateArr = new BackStackState[size2];
                for (int i2 = 0; i2 < size2; i2++) {
                    backStackStateArr[i2] = new BackStackState(this.h.get(i2));
                    if (f689b) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.h.get(i2));
                    }
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = arrayList2;
        fragmentManagerState.mAdded = arrayList;
        fragmentManagerState.mBackStack = backStackStateArr;
        Fragment fragment2 = this.q;
        if (fragment2 != null) {
            fragmentManagerState.mPrimaryNavActiveWho = fragment2.o;
        }
        fragmentManagerState.mNextFragmentIndex = this.e;
        return fragmentManagerState;
    }

    public void o(Fragment fragment) {
        if (f689b) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.H) {
            fragment.H = false;
            fragment.V = !fragment.V;
        }
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        AttributeSet attributeSet2 = attributeSet;
        String str2 = str;
        Fragment fragment2 = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet2.getAttributeValue((String) null, "class");
        Context context2 = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet2, d.f706a);
        int i2 = 0;
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        String str3 = attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str3 == null || !f.a(context.getClassLoader(), str3)) {
            return null;
        }
        if (view != null) {
            i2 = view.getId();
        }
        if (i2 == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str3);
        }
        if (resourceId != -1) {
            fragment2 = b(resourceId);
        }
        if (fragment2 == null && string != null) {
            fragment2 = a(string);
        }
        if (fragment2 == null && i2 != -1) {
            fragment2 = b(i2);
        }
        if (f689b) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str3 + " existing=" + fragment2);
        }
        if (fragment2 == null) {
            Fragment c2 = f().c(context.getClassLoader(), str3);
            c2.v = true;
            c2.E = resourceId != 0 ? resourceId : i2;
            c2.F = i2;
            c2.G = string;
            c2.w = true;
            c2.A = this;
            g gVar = this.n;
            c2.B = gVar;
            c2.a(gVar.l(), attributeSet2, c2.l);
            a(c2, true);
            fragment = c2;
        } else if (!fragment2.w) {
            fragment2.w = true;
            g gVar2 = this.n;
            fragment2.B = gVar2;
            fragment2.a(gVar2.l(), attributeSet2, fragment2.l);
            fragment = fragment2;
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i2) + " with another fragment for " + str3);
        }
        if (this.m >= 1 || !fragment.v) {
            g(fragment);
        } else {
            a(fragment, 1, 0, 0, false);
        }
        if (fragment.O != null) {
            if (resourceId != 0) {
                fragment.O.setId(resourceId);
            }
            if (fragment.O.getTag() == null) {
                fragment.O.setTag(string);
            }
            return fragment.O;
        }
        throw new IllegalStateException("Fragment " + str3 + " did not create a view.");
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView((View) null, str, context, attributeSet);
    }

    public void p() {
        this.s = false;
        this.t = false;
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f.get(i2);
            if (fragment != null) {
                fragment.U();
            }
        }
    }

    public void p(Fragment fragment) {
        if (f689b) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.I) {
            fragment.I = true;
            if (fragment.t) {
                if (f689b) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                synchronized (this.f) {
                    this.f.remove(fragment);
                }
                if (w(fragment)) {
                    this.r = true;
                }
                fragment.t = false;
            }
        }
    }

    public void q() {
        this.s = false;
        this.t = false;
        e(1);
    }

    public void q(Fragment fragment) {
        if (f689b) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.I) {
            fragment.I = false;
            if (fragment.t) {
                return;
            }
            if (!this.f.contains(fragment)) {
                if (f689b) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                synchronized (this.f) {
                    this.f.add(fragment);
                }
                fragment.t = true;
                if (w(fragment)) {
                    this.r = true;
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
    }

    public void r() {
        this.s = false;
        this.t = false;
        e(2);
    }

    /* access modifiers changed from: package-private */
    public void r(Fragment fragment) {
        if (fragment.P != null) {
            SparseArray<Parcelable> sparseArray = this.A;
            if (sparseArray == null) {
                this.A = new SparseArray<>();
            } else {
                sparseArray.clear();
            }
            fragment.P.saveHierarchyState(this.A);
            if (this.A.size() > 0) {
                fragment.m = this.A;
                this.A = null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public Bundle s(Fragment fragment) {
        Bundle bundle;
        if (this.z == null) {
            this.z = new Bundle();
        }
        fragment.n(this.z);
        d(fragment, this.z, false);
        if (!this.z.isEmpty()) {
            bundle = this.z;
            this.z = null;
        } else {
            bundle = null;
        }
        if (fragment.O != null) {
            r(fragment);
        }
        if (fragment.m != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.m);
        }
        if (!fragment.R) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.R);
        }
        return bundle;
    }

    public void s() {
        this.s = false;
        this.t = false;
        e(3);
    }

    public void t() {
        this.s = false;
        this.t = false;
        e(4);
    }

    public void t(Fragment fragment) {
        if (fragment == null || (this.g.get(fragment.o) == fragment && (fragment.B == null || fragment.s() == this))) {
            Fragment fragment2 = this.q;
            this.q = fragment;
            v(fragment2);
            v(this.q);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.p;
        if (fragment != null) {
            androidx.core.f.a.a(fragment, sb);
        } else {
            androidx.core.f.a.a(this.n, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    public void u() {
        e(3);
    }

    public void v() {
        this.t = true;
        e(2);
    }

    public void w() {
        e(1);
    }

    public void x() {
        this.u = true;
        l();
        e(0);
        this.n = null;
        this.o = null;
        this.p = null;
        if (this.F != null) {
            this.G.b();
            this.F = null;
        }
    }

    public void y() {
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragment = this.f.get(i2);
            if (fragment != null) {
                fragment.W();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void z() {
        D();
        v(this.q);
    }
}
