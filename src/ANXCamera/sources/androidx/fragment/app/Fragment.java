package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.l;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.h;
import androidx.lifecycle.i;
import androidx.lifecycle.m;
import androidx.lifecycle.s;
import androidx.lifecycle.t;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;

public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, h, t, androidx.savedstate.c {
    static final Object j = new Object();
    i A;
    g B;
    i C = new i();
    Fragment D;
    int E;
    int F;
    String G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    boolean L;
    boolean M = true;
    ViewGroup N;
    View O;
    View P;
    boolean Q;
    boolean R = true;
    a S;
    Runnable T = new Runnable() {
        public void run() {
            Fragment.this.P();
        }
    };
    boolean U;
    boolean V;
    float W;
    LayoutInflater X;
    boolean Y;
    e.b Z = e.b.RESUMED;

    /* renamed from: a  reason: collision with root package name */
    private Boolean f663a = null;
    i aa;
    o ab;
    m<h> ac = new m<>();
    androidx.savedstate.b ad;

    /* renamed from: b  reason: collision with root package name */
    private boolean f664b;
    private int c;
    int k = 0;
    Bundle l;
    SparseArray<Parcelable> m;
    Boolean n;
    String o = UUID.randomUUID().toString();
    Bundle p;
    Fragment q;
    String r = null;
    int s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    int z;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        final Bundle mState;

        SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            this.mState = parcel.readBundle();
            if (classLoader != null) {
                Bundle bundle = this.mState;
                if (bundle != null) {
                    bundle.setClassLoader(classLoader);
                }
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.mState);
        }
    }

    static class a {

        /* renamed from: a  reason: collision with root package name */
        View f669a;

        /* renamed from: b  reason: collision with root package name */
        Animator f670b;
        int c;
        int d;
        int e;
        int f;
        Object g = null;
        Object h = Fragment.j;
        Object i = null;
        Object j = Fragment.j;
        Object k = null;
        Object l = Fragment.j;
        Boolean m;
        Boolean n;
        l o = null;
        l p = null;
        boolean q;
        c r;
        boolean s;

        a() {
        }
    }

    public static class b extends RuntimeException {
        public b(String str, Exception exc) {
            super(str, exc);
        }
    }

    interface c {
        void a();

        void b();
    }

    public Fragment() {
        a();
    }

    @Deprecated
    public static Fragment a(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) f.b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.g(bundle);
            }
            return fragment;
        } catch (InstantiationException e) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (IllegalAccessException e2) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    private void a() {
        this.aa = new i(this);
        this.ad = androidx.savedstate.b.a((androidx.savedstate.c) this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.aa.a((g) new f() {
                public void a(h hVar, e.a aVar) {
                    if (aVar == e.a.ON_STOP && Fragment.this.O != null) {
                        Fragment.this.O.cancelPendingInputEvents();
                    }
                }
            });
        }
    }

    private a am() {
        if (this.S == null) {
            this.S = new a();
        }
        return this.S;
    }

    public View A() {
        return this.O;
    }

    public final View B() {
        View A2 = A();
        if (A2 != null) {
            return A2;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public void C() {
        this.f664b = true;
    }

    public void D() {
        this.f664b = true;
    }

    public void E() {
        this.f664b = true;
    }

    /* access modifiers changed from: package-private */
    public void F() {
        a();
        this.o = UUID.randomUUID().toString();
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.z = 0;
        this.A = null;
        this.C = new i();
        this.B = null;
        this.E = 0;
        this.F = 0;
        this.G = null;
        this.H = false;
        this.I = false;
    }

    public void G() {
    }

    public Object H() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.g;
    }

    public Object I() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.h == j ? H() : this.S.h;
    }

    public Object J() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.i;
    }

    public Object K() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.j == j ? J() : this.S.j;
    }

    public Object L() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.k;
    }

    public Object M() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.l == j ? L() : this.S.l;
    }

    public boolean N() {
        a aVar = this.S;
        if (aVar == null || aVar.n == null) {
            return true;
        }
        return this.S.n.booleanValue();
    }

    public boolean O() {
        a aVar = this.S;
        if (aVar == null || aVar.m == null) {
            return true;
        }
        return this.S.m.booleanValue();
    }

    public s O_() {
        i iVar = this.A;
        if (iVar != null) {
            return iVar.b(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public void P() {
        i iVar = this.A;
        if (iVar == null || iVar.n == null) {
            am().q = false;
        } else if (Looper.myLooper() != this.A.n.m().getLooper()) {
            this.A.n.m().postAtFrontOfQueue(new Runnable() {
                public void run() {
                    Fragment.this.Q();
                }
            });
        } else {
            Q();
        }
    }

    /* access modifiers changed from: package-private */
    public void Q() {
        c cVar;
        a aVar = this.S;
        if (aVar == null) {
            cVar = null;
        } else {
            aVar.q = false;
            cVar = aVar.r;
            this.S.r = null;
        }
        if (cVar != null) {
            cVar.a();
        }
    }

    /* access modifiers changed from: package-private */
    public void R() {
        this.C.a(this.B, (d) new d() {
            public View a(int i) {
                if (Fragment.this.O != null) {
                    return Fragment.this.O.findViewById(i);
                }
                throw new IllegalStateException("Fragment " + this + " does not have a view");
            }

            public boolean a() {
                return Fragment.this.O != null;
            }
        }, this);
        this.f664b = false;
        a(this.B.l());
        if (!this.f664b) {
            throw new p("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    /* access modifiers changed from: package-private */
    public void S() {
        this.C.p();
        this.C.l();
        this.k = 3;
        this.f664b = false;
        f();
        if (this.f664b) {
            this.aa.a(e.a.ON_START);
            if (this.O != null) {
                this.ab.a(e.a.ON_START);
            }
            this.C.s();
            return;
        }
        throw new p("Fragment " + this + " did not call through to super.onStart()");
    }

    /* access modifiers changed from: package-private */
    public void T() {
        this.C.p();
        this.C.l();
        this.k = 4;
        this.f664b = false;
        C();
        if (this.f664b) {
            this.aa.a(e.a.ON_RESUME);
            if (this.O != null) {
                this.ab.a(e.a.ON_RESUME);
            }
            this.C.t();
            this.C.l();
            return;
        }
        throw new p("Fragment " + this + " did not call through to super.onResume()");
    }

    /* access modifiers changed from: package-private */
    public void U() {
        this.C.p();
    }

    /* access modifiers changed from: package-private */
    public void V() {
        boolean a2 = this.A.a(this);
        Boolean bool = this.f663a;
        if (bool == null || bool.booleanValue() != a2) {
            this.f663a = Boolean.valueOf(a2);
            e(a2);
            this.C.z();
        }
    }

    /* access modifiers changed from: package-private */
    public void W() {
        onLowMemory();
        this.C.y();
    }

    /* access modifiers changed from: package-private */
    public void X() {
        this.C.u();
        if (this.O != null) {
            this.ab.a(e.a.ON_PAUSE);
        }
        this.aa.a(e.a.ON_PAUSE);
        this.k = 3;
        this.f664b = false;
        D();
        if (!this.f664b) {
            throw new p("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    /* access modifiers changed from: package-private */
    public void Y() {
        this.C.v();
        if (this.O != null) {
            this.ab.a(e.a.ON_STOP);
        }
        this.aa.a(e.a.ON_STOP);
        this.k = 2;
        this.f664b = false;
        g();
        if (!this.f664b) {
            throw new p("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    /* access modifiers changed from: package-private */
    public void Z() {
        this.C.w();
        if (this.O != null) {
            this.ab.a(e.a.ON_DESTROY);
        }
        this.k = 1;
        this.f664b = false;
        h();
        if (this.f664b) {
            androidx.loader.a.a.a(this).a();
            this.y = false;
            return;
        }
        throw new p("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.c;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public Animation a(int i, boolean z2, int i2) {
        return null;
    }

    /* access modifiers changed from: package-private */
    public Fragment a(String str) {
        return str.equals(this.o) ? this : this.C.b(str);
    }

    public final String a(int i) {
        return r().getString(i);
    }

    /* access modifiers changed from: package-private */
    public void a(int i, int i2) {
        if (this.S != null || i != 0 || i2 != 0) {
            am();
            a aVar = this.S;
            aVar.e = i;
            aVar.f = i2;
        }
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(int i, String[] strArr, int[] iArr) {
    }

    /* access modifiers changed from: package-private */
    public void a(Animator animator) {
        am().f670b = animator;
    }

    @Deprecated
    public void a(Activity activity) {
        this.f664b = true;
    }

    @Deprecated
    public void a(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f664b = true;
    }

    public void a(Context context) {
        this.f664b = true;
        g gVar = this.B;
        Activity k2 = gVar == null ? null : gVar.k();
        if (k2 != null) {
            this.f664b = false;
            a(k2);
        }
    }

    public void a(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f664b = true;
        g gVar = this.B;
        Activity k2 = gVar == null ? null : gVar.k();
        if (k2 != null) {
            this.f664b = false;
            a(k2, attributeSet, bundle);
        }
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent) {
        a(intent, (Bundle) null);
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        g gVar = this.B;
        if (gVar != null) {
            gVar.a(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* access modifiers changed from: package-private */
    public void a(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.C.a(configuration);
    }

    public void a(Bundle bundle) {
        this.f664b = true;
        j(bundle);
        if (!this.C.a(1)) {
            this.C.q();
        }
    }

    public void a(Menu menu) {
    }

    public void a(Menu menu, MenuInflater menuInflater) {
    }

    /* access modifiers changed from: package-private */
    public void a(View view) {
        am().f669a = view;
    }

    public void a(View view, Bundle bundle) {
    }

    /* access modifiers changed from: package-private */
    public void a(c cVar) {
        am();
        if (cVar != this.S.r) {
            if (cVar == null || this.S.r == null) {
                if (this.S.q) {
                    this.S.r = cVar;
                }
                if (cVar != null) {
                    cVar.b();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
    }

    public void a(Fragment fragment) {
    }

    public void a(Fragment fragment, int i) {
        h s2 = s();
        h s3 = fragment != null ? fragment.s() : null;
        if (s2 == null || s3 == null || s2 == s3) {
            Fragment fragment2 = fragment;
            while (fragment2 != null) {
                if (fragment2 != this) {
                    fragment2 = fragment2.l();
                } else {
                    throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
                }
            }
            if (fragment == null) {
                this.r = null;
                this.q = null;
            } else if (this.A == null || fragment.A == null) {
                this.r = null;
                this.q = fragment;
            } else {
                this.r = fragment.o;
                this.q = null;
            }
            this.s = i;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.E));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.F));
        printWriter.print(" mTag=");
        printWriter.println(this.G);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.k);
        printWriter.print(" mWho=");
        printWriter.print(this.o);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.z);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.t);
        printWriter.print(" mRemoving=");
        printWriter.print(this.u);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.v);
        printWriter.print(" mInLayout=");
        printWriter.println(this.w);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.H);
        printWriter.print(" mDetached=");
        printWriter.print(this.I);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.M);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.L);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.J);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.R);
        if (this.A != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.A);
        }
        if (this.B != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.B);
        }
        if (this.D != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.D);
        }
        if (this.p != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.p);
        }
        if (this.l != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.l);
        }
        if (this.m != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.m);
        }
        Fragment l2 = l();
        if (l2 != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(l2);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.s);
        }
        if (ac() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(ac());
        }
        if (this.N != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.N);
        }
        if (this.O != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.O);
        }
        if (this.P != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.O);
        }
        if (ah() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(ah());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(aj());
        }
        if (m() != null) {
            androidx.loader.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.C + ":");
        i iVar = this.C;
        iVar.a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public void a(boolean z2) {
    }

    public boolean a(MenuItem menuItem) {
        return false;
    }

    /* access modifiers changed from: package-private */
    public void aa() {
        this.C.x();
        this.aa.a(e.a.ON_DESTROY);
        this.k = 0;
        this.f664b = false;
        this.Y = false;
        E();
        if (!this.f664b) {
            throw new p("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    /* access modifiers changed from: package-private */
    public void ab() {
        this.f664b = false;
        d();
        this.X = null;
        if (!this.f664b) {
            throw new p("Fragment " + this + " did not call through to super.onDetach()");
        } else if (!this.C.e()) {
            this.C.x();
            this.C = new i();
        }
    }

    /* access modifiers changed from: package-private */
    public int ac() {
        a aVar = this.S;
        if (aVar == null) {
            return 0;
        }
        return aVar.d;
    }

    /* access modifiers changed from: package-private */
    public int ad() {
        a aVar = this.S;
        if (aVar == null) {
            return 0;
        }
        return aVar.e;
    }

    /* access modifiers changed from: package-private */
    public int ae() {
        a aVar = this.S;
        if (aVar == null) {
            return 0;
        }
        return aVar.f;
    }

    /* access modifiers changed from: package-private */
    public l af() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.o;
    }

    /* access modifiers changed from: package-private */
    public l ag() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.p;
    }

    /* access modifiers changed from: package-private */
    public View ah() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.f669a;
    }

    /* access modifiers changed from: package-private */
    public Animator ai() {
        a aVar = this.S;
        if (aVar == null) {
            return null;
        }
        return aVar.f670b;
    }

    /* access modifiers changed from: package-private */
    public int aj() {
        a aVar = this.S;
        if (aVar == null) {
            return 0;
        }
        return aVar.c;
    }

    /* access modifiers changed from: package-private */
    public boolean ak() {
        a aVar = this.S;
        if (aVar == null) {
            return false;
        }
        return aVar.q;
    }

    /* access modifiers changed from: package-private */
    public boolean al() {
        a aVar = this.S;
        if (aVar == null) {
            return false;
        }
        return aVar.s;
    }

    public Animator b(int i, boolean z2, int i2) {
        return null;
    }

    public LayoutInflater b(Bundle bundle) {
        return i(bundle);
    }

    public e b() {
        return this.aa;
    }

    /* access modifiers changed from: package-private */
    public void b(int i) {
        if (this.S != null || i != 0) {
            am().d = i;
        }
    }

    /* access modifiers changed from: package-private */
    public void b(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.C.p();
        this.y = true;
        this.ab = new o();
        this.O = a(layoutInflater, viewGroup, bundle);
        if (this.O != null) {
            this.ab.a();
            this.ac.a(this.ab);
        } else if (!this.ab.c()) {
            this.ab = null;
        } else {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    public void b(Menu menu) {
    }

    public void b(boolean z2) {
        if (this.M != z2) {
            this.M = z2;
            if (this.L && w() && !y()) {
                this.B.g();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b(Menu menu, MenuInflater menuInflater) {
        boolean z2 = false;
        if (this.H) {
            return false;
        }
        if (this.L && this.M) {
            z2 = true;
            a(menu, menuInflater);
        }
        return z2 | this.C.a(menu, menuInflater);
    }

    public boolean b(MenuItem menuItem) {
        return false;
    }

    /* access modifiers changed from: package-private */
    public void c(int i) {
        am().c = i;
    }

    public void c(boolean z2) {
    }

    /* access modifiers changed from: package-private */
    public boolean c(Menu menu) {
        boolean z2 = false;
        if (this.H) {
            return false;
        }
        if (this.L && this.M) {
            z2 = true;
            a(menu);
        }
        return z2 | this.C.a(menu);
    }

    /* access modifiers changed from: package-private */
    public boolean c(MenuItem menuItem) {
        if (!this.H) {
            return (this.L && this.M && a(menuItem)) || this.C.a(menuItem);
        }
        return false;
    }

    public void d() {
        this.f664b = true;
    }

    public void d(Bundle bundle) {
        this.f664b = true;
    }

    /* access modifiers changed from: package-private */
    public void d(Menu menu) {
        if (!this.H) {
            if (this.L && this.M) {
                b(menu);
            }
            this.C.b(menu);
        }
    }

    public void d(boolean z2) {
    }

    /* access modifiers changed from: package-private */
    public boolean d(MenuItem menuItem) {
        if (!this.H) {
            return b(menuItem) || this.C.b(menuItem);
        }
        return false;
    }

    public final androidx.savedstate.a e() {
        return this.ad.a();
    }

    public void e(Bundle bundle) {
    }

    public void e(boolean z2) {
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public void f() {
        this.f664b = true;
    }

    /* access modifiers changed from: package-private */
    public final void f(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.m;
        if (sparseArray != null) {
            this.P.restoreHierarchyState(sparseArray);
            this.m = null;
        }
        this.f664b = false;
        k(bundle);
        if (!this.f664b) {
            throw new p("Fragment " + this + " did not call through to super.onViewStateRestored()");
        } else if (this.O != null) {
            this.ab.a(e.a.ON_CREATE);
        }
    }

    /* access modifiers changed from: package-private */
    public void f(boolean z2) {
        c(z2);
        this.C.a(z2);
    }

    public void g() {
        this.f664b = true;
    }

    public void g(Bundle bundle) {
        if (this.A == null || !k()) {
            this.p = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    /* access modifiers changed from: package-private */
    public void g(boolean z2) {
        d(z2);
        this.C.b(z2);
    }

    /* access modifiers changed from: package-private */
    public LayoutInflater h(Bundle bundle) {
        this.X = b(bundle);
        return this.X;
    }

    public void h() {
        this.f664b = true;
    }

    /* access modifiers changed from: package-private */
    public void h(boolean z2) {
        am().s = z2;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    @Deprecated
    public LayoutInflater i(Bundle bundle) {
        g gVar = this.B;
        if (gVar != null) {
            LayoutInflater e = gVar.e();
            androidx.core.g.e.a(e, this.C.C());
            return e;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    /* access modifiers changed from: package-private */
    public final boolean i() {
        return this.z > 0;
    }

    public final Bundle j() {
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public void j(Bundle bundle) {
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null) {
                this.C.a(parcelable);
                this.C.q();
            }
        }
    }

    public void k(Bundle bundle) {
        this.f664b = true;
    }

    public final boolean k() {
        i iVar = this.A;
        if (iVar == null) {
            return false;
        }
        return iVar.g();
    }

    public final Fragment l() {
        Fragment fragment = this.q;
        if (fragment != null) {
            return fragment;
        }
        i iVar = this.A;
        if (iVar == null || this.r == null) {
            return null;
        }
        return iVar.g.get(this.r);
    }

    /* access modifiers changed from: package-private */
    public void l(Bundle bundle) {
        this.C.p();
        this.k = 1;
        this.f664b = false;
        this.ad.a(bundle);
        a(bundle);
        this.Y = true;
        if (this.f664b) {
            this.aa.a(e.a.ON_CREATE);
            return;
        }
        throw new p("Fragment " + this + " did not call through to super.onCreate()");
    }

    public Context m() {
        g gVar = this.B;
        if (gVar == null) {
            return null;
        }
        return gVar.l();
    }

    /* access modifiers changed from: package-private */
    public void m(Bundle bundle) {
        this.C.p();
        this.k = 2;
        this.f664b = false;
        d(bundle);
        if (this.f664b) {
            this.C.r();
            return;
        }
        throw new p("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    public final Context n() {
        Context m2 = m();
        if (m2 != null) {
            return m2;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    /* access modifiers changed from: package-private */
    public void n(Bundle bundle) {
        e(bundle);
        this.ad.b(bundle);
        Parcelable o2 = this.C.o();
        if (o2 != null) {
            bundle.putParcelable("android:support:fragments", o2);
        }
    }

    public final c o() {
        g gVar = this.B;
        if (gVar == null) {
            return null;
        }
        return (c) gVar.k();
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.f664b = true;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        p().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onLowMemory() {
        this.f664b = true;
    }

    public final c p() {
        c o2 = o();
        if (o2 != null) {
            return o2;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Object q() {
        g gVar = this.B;
        if (gVar == null) {
            return null;
        }
        return gVar.j();
    }

    public final Resources r() {
        return n().getResources();
    }

    public final h s() {
        return this.A;
    }

    public final h t() {
        h s2 = s();
        if (s2 != null) {
            return s2;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        androidx.core.f.a.a(this, sb);
        sb.append(" (");
        sb.append(this.o);
        sb.append(")");
        if (this.E != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.E));
        }
        if (this.G != null) {
            sb.append(" ");
            sb.append(this.G);
        }
        sb.append('}');
        return sb.toString();
    }

    public final h u() {
        if (this.B != null) {
            return this.C;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public final Fragment v() {
        return this.D;
    }

    public final boolean w() {
        return this.B != null && this.t;
    }

    public final boolean x() {
        return this.I;
    }

    public final boolean y() {
        return this.H;
    }

    public final boolean z() {
        return this.J;
    }
}
