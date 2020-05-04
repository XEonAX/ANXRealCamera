package androidx.fragment.app;

import android.util.Log;
import androidx.core.f.b;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.i;
import androidx.fragment.app.k;
import androidx.lifecycle.e;
import java.io.PrintWriter;
import java.util.ArrayList;

/* compiled from: BackStackRecord */
final class a extends k implements i.e {

    /* renamed from: a  reason: collision with root package name */
    final i f675a;

    /* renamed from: b  reason: collision with root package name */
    boolean f676b;
    int c = -1;

    public a(i iVar) {
        this.f675a = iVar;
    }

    private static boolean b(k.a aVar) {
        Fragment fragment = aVar.f714b;
        return fragment != null && fragment.t && fragment.O != null && !fragment.I && !fragment.H && fragment.ak();
    }

    /* access modifiers changed from: package-private */
    public int a(boolean z) {
        if (!this.f676b) {
            if (i.f689b) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new b("FragmentManager"));
                a("  ", printWriter);
                printWriter.close();
            }
            this.f676b = true;
            if (this.k) {
                this.c = this.f675a.a(this);
            } else {
                this.c = -1;
            }
            this.f675a.a((i.e) this, z);
            return this.c;
        }
        throw new IllegalStateException("commit already called");
    }

    /* access modifiers changed from: package-private */
    public Fragment a(ArrayList<Fragment> arrayList, Fragment fragment) {
        ArrayList<Fragment> arrayList2 = arrayList;
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.d.size()) {
            k.a aVar = (k.a) this.d.get(i);
            int i2 = aVar.f713a;
            if (i2 != 1) {
                if (i2 == 2) {
                    Fragment fragment3 = aVar.f714b;
                    int i3 = fragment3.F;
                    Fragment fragment4 = fragment2;
                    int i4 = i;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment5 = arrayList2.get(size);
                        if (fragment5.F == i3) {
                            if (fragment5 == fragment3) {
                                z = true;
                            } else {
                                if (fragment5 == fragment4) {
                                    this.d.add(i4, new k.a(9, fragment5));
                                    i4++;
                                    fragment4 = null;
                                }
                                k.a aVar2 = new k.a(3, fragment5);
                                aVar2.c = aVar.c;
                                aVar2.e = aVar.e;
                                aVar2.d = aVar.d;
                                aVar2.f = aVar.f;
                                this.d.add(i4, aVar2);
                                arrayList2.remove(fragment5);
                                i4++;
                            }
                        }
                    }
                    if (z) {
                        this.d.remove(i4);
                        i4--;
                    } else {
                        aVar.f713a = 1;
                        arrayList2.add(fragment3);
                    }
                    i = i4;
                    fragment2 = fragment4;
                } else if (i2 == 3 || i2 == 6) {
                    arrayList2.remove(aVar.f714b);
                    if (aVar.f714b == fragment2) {
                        this.d.add(i, new k.a(9, aVar.f714b));
                        i++;
                        fragment2 = null;
                    }
                } else if (i2 != 7) {
                    if (i2 == 8) {
                        this.d.add(i, new k.a(9, fragment2));
                        i++;
                        fragment2 = aVar.f714b;
                    }
                }
                i++;
            }
            arrayList2.add(aVar.f714b);
            i++;
        }
        return fragment2;
    }

    public k a(Fragment fragment) {
        if (fragment.A == null || fragment.A == this.f675a) {
            return super.a(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public k a(Fragment fragment, e.b bVar) {
        if (fragment.A != this.f675a) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f675a);
        } else if (bVar.isAtLeast(e.b.CREATED)) {
            return super.a(fragment, bVar);
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + e.b.CREATED);
        }
    }

    public void a() {
        if (this.u != null) {
            for (int i = 0; i < this.u.size(); i++) {
                ((Runnable) this.u.get(i)).run();
            }
            this.u = null;
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i) {
        if (this.k) {
            if (i.f689b) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.d.size();
            for (int i2 = 0; i2 < size; i2++) {
                k.a aVar = (k.a) this.d.get(i2);
                if (aVar.f714b != null) {
                    aVar.f714b.z += i;
                    if (i.f689b) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f714b + " to " + aVar.f714b.z);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i, Fragment fragment, String str, int i2) {
        super.a(i, fragment, str, i2);
        fragment.A = this.f675a;
    }

    /* access modifiers changed from: package-private */
    public void a(Fragment.c cVar) {
        for (int i = 0; i < this.d.size(); i++) {
            k.a aVar = (k.a) this.d.get(i);
            if (b(aVar)) {
                aVar.f714b.a(cVar);
            }
        }
    }

    public void a(String str, PrintWriter printWriter) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.m);
            printWriter.print(" mIndex=");
            printWriter.print(this.c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f676b);
            if (this.i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.i));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.j));
            }
            if (!(this.e == 0 && this.f == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (!(this.g == 0 && this.h == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (!(this.n == 0 && this.o == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.n));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.o);
            }
            if (!(this.p == 0 && this.q == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.p));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.q);
            }
        }
        if (!this.d.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.d.size();
            for (int i = 0; i < size; i++) {
                k.a aVar = (k.a) this.d.get(i);
                switch (aVar.f713a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + aVar.f713a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.f714b);
                if (z) {
                    if (!(aVar.c == 0 && aVar.d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.d));
                    }
                    if (aVar.e != 0 || aVar.f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f));
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.d.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            k.a aVar = (k.a) this.d.get(i4);
            int i5 = aVar.f714b != null ? aVar.f714b.F : 0;
            if (!(i5 == 0 || i5 == i3)) {
                for (int i6 = i; i6 < i2; i6++) {
                    a aVar2 = arrayList.get(i6);
                    int size2 = aVar2.d.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        k.a aVar3 = (k.a) aVar2.d.get(i7);
                        if ((aVar3.f714b != null ? aVar3.f714b.F : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (i.f689b) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.k) {
            return true;
        }
        this.f675a.b(this);
        return true;
    }

    public int b() {
        return a(false);
    }

    /* access modifiers changed from: package-private */
    public Fragment b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.d.size() - 1; size >= 0; size--) {
            k.a aVar = (k.a) this.d.get(size);
            int i = aVar.f713a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 6:
                            break;
                        case 7:
                            break;
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = aVar.f714b;
                            break;
                        case 10:
                            aVar.h = aVar.g;
                            break;
                    }
                }
                arrayList.add(aVar.f714b);
            }
            arrayList.remove(aVar.f714b);
        }
        return fragment;
    }

    public k b(Fragment fragment) {
        if (fragment.A == null || fragment.A == this.f675a) {
            return super.b(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* access modifiers changed from: package-private */
    public void b(boolean z) {
        for (int size = this.d.size() - 1; size >= 0; size--) {
            k.a aVar = (k.a) this.d.get(size);
            Fragment fragment = aVar.f714b;
            if (fragment != null) {
                fragment.a(i.d(this.i), this.j);
            }
            switch (aVar.f713a) {
                case 1:
                    fragment.b(aVar.f);
                    this.f675a.m(fragment);
                    break;
                case 3:
                    fragment.b(aVar.e);
                    this.f675a.a(fragment, false);
                    break;
                case 4:
                    fragment.b(aVar.e);
                    this.f675a.o(fragment);
                    break;
                case 5:
                    fragment.b(aVar.f);
                    this.f675a.n(fragment);
                    break;
                case 6:
                    fragment.b(aVar.e);
                    this.f675a.q(fragment);
                    break;
                case 7:
                    fragment.b(aVar.f);
                    this.f675a.p(fragment);
                    break;
                case 8:
                    this.f675a.t((Fragment) null);
                    break;
                case 9:
                    this.f675a.t(fragment);
                    break;
                case 10:
                    this.f675a.a(fragment, aVar.g);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f713a);
            }
            if (!(this.t || aVar.f713a == 3 || fragment == null)) {
                this.f675a.j(fragment);
            }
        }
        if (!this.t && z) {
            i iVar = this.f675a;
            iVar.a(iVar.m, true);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b(int i) {
        int size = this.d.size();
        for (int i2 = 0; i2 < size; i2++) {
            k.a aVar = (k.a) this.d.get(i2);
            int i3 = aVar.f714b != null ? aVar.f714b.F : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    public int c() {
        return a(true);
    }

    public void d() {
        i();
        this.f675a.b((i.e) this, false);
    }

    /* access modifiers changed from: package-private */
    public void e() {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            k.a aVar = (k.a) this.d.get(i);
            Fragment fragment = aVar.f714b;
            if (fragment != null) {
                fragment.a(this.i, this.j);
            }
            switch (aVar.f713a) {
                case 1:
                    fragment.b(aVar.c);
                    this.f675a.a(fragment, false);
                    break;
                case 3:
                    fragment.b(aVar.d);
                    this.f675a.m(fragment);
                    break;
                case 4:
                    fragment.b(aVar.d);
                    this.f675a.n(fragment);
                    break;
                case 5:
                    fragment.b(aVar.c);
                    this.f675a.o(fragment);
                    break;
                case 6:
                    fragment.b(aVar.d);
                    this.f675a.p(fragment);
                    break;
                case 7:
                    fragment.b(aVar.c);
                    this.f675a.q(fragment);
                    break;
                case 8:
                    this.f675a.t(fragment);
                    break;
                case 9:
                    this.f675a.t((Fragment) null);
                    break;
                case 10:
                    this.f675a.a(fragment, aVar.h);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f713a);
            }
            if (!(this.t || aVar.f713a == 1 || fragment == null)) {
                this.f675a.j(fragment);
            }
        }
        if (!this.t) {
            i iVar = this.f675a;
            iVar.a(iVar.m, true);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean f() {
        for (int i = 0; i < this.d.size(); i++) {
            if (b((k.a) this.d.get(i))) {
                return true;
            }
        }
        return false;
    }

    public String g() {
        return this.m;
    }

    public boolean h() {
        return this.d.isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.c >= 0) {
            sb.append(" #");
            sb.append(this.c);
        }
        if (this.m != null) {
            sb.append(" ");
            sb.append(this.m);
        }
        sb.append("}");
        return sb.toString();
    }
}
