package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.g.r;
import androidx.core.g.u;
import androidx.fragment.app.k;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: FragmentTransition */
class l {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f715a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b  reason: collision with root package name */
    private static final n f716b = (Build.VERSION.SDK_INT >= 21 ? new m() : null);
    private static final n c = a();

    /* compiled from: FragmentTransition */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public Fragment f724a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f725b;
        public a c;
        public Fragment d;
        public boolean e;
        public a f;

        a() {
        }
    }

    static View a(androidx.b.a<String, View> aVar, a aVar2, Object obj, boolean z) {
        a aVar3 = aVar2.c;
        if (obj == null || aVar == null || aVar3.r == null || aVar3.r.isEmpty()) {
            return null;
        }
        return aVar.get(z ? (String) aVar3.r.get(0) : (String) aVar3.s.get(0));
    }

    private static androidx.b.a<String, String> a(int i, ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList arrayList3;
        ArrayList arrayList4;
        androidx.b.a<String, String> aVar = new androidx.b.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            a aVar2 = arrayList.get(i4);
            if (aVar2.b(i)) {
                boolean booleanValue = arrayList2.get(i4).booleanValue();
                if (aVar2.r != null) {
                    int size = aVar2.r.size();
                    if (booleanValue) {
                        arrayList3 = aVar2.r;
                        arrayList4 = aVar2.s;
                    } else {
                        ArrayList arrayList5 = aVar2.r;
                        arrayList3 = aVar2.s;
                        arrayList4 = arrayList5;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = (String) arrayList4.get(i5);
                        String str2 = (String) arrayList3.get(i5);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    static androidx.b.a<String, View> a(n nVar, androidx.b.a<String, String> aVar, Object obj, a aVar2) {
        androidx.core.app.l lVar;
        ArrayList arrayList;
        Fragment fragment = aVar2.f724a;
        View A = fragment.A();
        if (aVar.isEmpty() || obj == null || A == null) {
            aVar.clear();
            return null;
        }
        androidx.b.a<String, View> aVar3 = new androidx.b.a<>();
        nVar.a((Map<String, View>) aVar3, A);
        a aVar4 = aVar2.c;
        if (aVar2.f725b) {
            lVar = fragment.ag();
            arrayList = aVar4.r;
        } else {
            lVar = fragment.af();
            arrayList = aVar4.s;
        }
        if (arrayList != null) {
            aVar3.a(arrayList);
            aVar3.a(aVar.values());
        }
        if (lVar != null) {
            lVar.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = (String) arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    String a2 = a(aVar, str);
                    if (a2 != null) {
                        aVar.remove(a2);
                    }
                } else if (!str.equals(u.n(view))) {
                    String a3 = a(aVar, str);
                    if (a3 != null) {
                        aVar.put(a3, u.n(view));
                    }
                }
            }
        } else {
            a(aVar, aVar3);
        }
        return aVar3;
    }

    private static a a(a aVar, SparseArray<a> sparseArray, int i) {
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        sparseArray.put(i, aVar2);
        return aVar2;
    }

    private static n a() {
        try {
            return (n) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private static n a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object J = fragment.J();
            if (J != null) {
                arrayList.add(J);
            }
            Object I = fragment.I();
            if (I != null) {
                arrayList.add(I);
            }
            Object M = fragment.M();
            if (M != null) {
                arrayList.add(M);
            }
        }
        if (fragment2 != null) {
            Object H = fragment2.H();
            if (H != null) {
                arrayList.add(H);
            }
            Object K = fragment2.K();
            if (K != null) {
                arrayList.add(K);
            }
            Object L = fragment2.L();
            if (L != null) {
                arrayList.add(L);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        n nVar = f716b;
        if (nVar != null && a(nVar, (List<Object>) arrayList)) {
            return f716b;
        }
        n nVar2 = c;
        if (nVar2 != null && a(nVar2, (List<Object>) arrayList)) {
            return c;
        }
        if (f716b == null && c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static Object a(n nVar, ViewGroup viewGroup, View view, androidx.b.a<String, String> aVar, a aVar2, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final Rect rect;
        final View view2;
        n nVar2 = nVar;
        View view3 = view;
        androidx.b.a<String, String> aVar3 = aVar;
        a aVar4 = aVar2;
        ArrayList<View> arrayList3 = arrayList;
        ArrayList<View> arrayList4 = arrayList2;
        Object obj4 = obj;
        Fragment fragment = aVar4.f724a;
        Fragment fragment2 = aVar4.d;
        if (fragment != null) {
            fragment.B().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = aVar4.f725b;
        Object a2 = aVar.isEmpty() ? null : a(nVar, fragment, fragment2, z);
        androidx.b.a<String, View> b2 = b(nVar, aVar3, a2, aVar4);
        androidx.b.a<String, View> a3 = a(nVar, aVar3, a2, aVar4);
        if (aVar.isEmpty()) {
            if (b2 != null) {
                b2.clear();
            }
            if (a3 != null) {
                a3.clear();
            }
            obj3 = null;
        } else {
            a(arrayList3, b2, (Collection<String>) aVar.keySet());
            a(arrayList4, a3, aVar.values());
            obj3 = a2;
        }
        if (obj4 == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(fragment, fragment2, z, b2, true);
        if (obj3 != null) {
            arrayList4.add(view3);
            nVar.a(obj3, view3, arrayList3);
            a(nVar, obj3, obj2, b2, aVar4.e, aVar4.f);
            Rect rect2 = new Rect();
            View a4 = a(a3, aVar4, obj4, z);
            if (a4 != null) {
                nVar.a(obj4, rect2);
            }
            rect = rect2;
            view2 = a4;
        } else {
            view2 = null;
            rect = null;
        }
        final Fragment fragment3 = fragment;
        final Fragment fragment4 = fragment2;
        final boolean z2 = z;
        final androidx.b.a<String, View> aVar5 = a3;
        final n nVar3 = nVar;
        AnonymousClass3 r0 = new Runnable() {
            public void run() {
                l.a(fragment3, fragment4, z2, (androidx.b.a<String, View>) aVar5, false);
                View view = view2;
                if (view != null) {
                    nVar3.a(view, rect);
                }
            }
        };
        r.a(viewGroup, r0);
        return obj3;
    }

    private static Object a(n nVar, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return nVar.c(nVar.b(z ? fragment2.M() : fragment.L()));
    }

    private static Object a(n nVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return nVar.b(z ? fragment.K() : fragment.H());
    }

    private static Object a(n nVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.O() : fragment.N() ? nVar.a(obj2, obj, obj3) : nVar.b(obj2, obj, obj3);
    }

    private static String a(androidx.b.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.c(i))) {
                return aVar.b(i);
            }
        }
        return null;
    }

    static ArrayList<View> a(n nVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View A = fragment.A();
        if (A != null) {
            nVar.a(arrayList2, A);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        nVar.a(obj, arrayList2);
        return arrayList2;
    }

    private static void a(androidx.b.a<String, String> aVar, androidx.b.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.c(size))) {
                aVar.d(size);
            }
        }
    }

    static void a(Fragment fragment, Fragment fragment2, boolean z, androidx.b.a<String, View> aVar, boolean z2) {
        androidx.core.app.l af = z ? fragment2.af() : fragment.af();
        if (af != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.c(i));
            }
            if (z2) {
                af.a(arrayList2, arrayList, (List<View>) null);
            } else {
                af.b(arrayList2, arrayList, (List<View>) null);
            }
        }
    }

    public static void a(a aVar, SparseArray<a> sparseArray, boolean z) {
        int size = aVar.d.size();
        for (int i = 0; i < size; i++) {
            a(aVar, (k.a) aVar.d.get(i), sparseArray, false, z);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0041, code lost:
        if (r10.t != false) goto L_0x0097;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0079, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0095, code lost:
        if (r10.H == false) goto L_0x0097;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0097, code lost:
        r1 = true;
     */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x00eb A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:95:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    private static void a(a aVar, k.a aVar2, SparseArray<a> sparseArray, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        a aVar3;
        i iVar;
        boolean z6;
        a aVar4 = aVar;
        k.a aVar5 = aVar2;
        SparseArray<a> sparseArray2 = sparseArray;
        boolean z7 = z;
        Fragment fragment = aVar5.f714b;
        if (fragment != null) {
            int i = fragment.F;
            if (i != 0) {
                int i2 = z7 ? f715a[aVar5.f713a] : aVar5.f713a;
                boolean z8 = false;
                if (i2 != 1) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                if (i2 != 6) {
                                    if (i2 != 7) {
                                        z5 = false;
                                        z4 = false;
                                        z3 = false;
                                        a aVar6 = sparseArray2.get(i);
                                        if (z8) {
                                            aVar6 = a(aVar6, sparseArray2, i);
                                            aVar6.f724a = fragment;
                                            aVar6.f725b = z7;
                                            aVar6.c = aVar4;
                                        }
                                        aVar3 = aVar6;
                                        if (!z2 && z5) {
                                            if (aVar3 != null && aVar3.d == fragment) {
                                                aVar3.d = null;
                                            }
                                            iVar = aVar4.f675a;
                                            if (fragment.k < 1 && iVar.m >= 1 && !aVar4.t) {
                                                iVar.k(fragment);
                                                iVar.a(fragment, 1, 0, 0, false);
                                            }
                                        }
                                        if (z3 && (aVar3 == null || aVar3.d == null)) {
                                            aVar3 = a(aVar3, sparseArray2, i);
                                            aVar3.d = fragment;
                                            aVar3.e = z7;
                                            aVar3.f = aVar4;
                                        }
                                        if (z2 && z4 && aVar3 != null && aVar3.f724a == fragment) {
                                            aVar3.f724a = null;
                                            return;
                                        }
                                        return;
                                    }
                                }
                            } else if (z2) {
                                if (fragment.V) {
                                    if (!fragment.H) {
                                    }
                                }
                                z6 = false;
                                z4 = false;
                                z3 = false;
                                z8 = z6;
                                z5 = true;
                                a aVar62 = sparseArray2.get(i);
                                if (z8) {
                                }
                                aVar3 = aVar62;
                                aVar3.d = null;
                                iVar = aVar4.f675a;
                                iVar.k(fragment);
                                iVar.a(fragment, 1, 0, 0, false);
                                aVar3 = a(aVar3, sparseArray2, i);
                                aVar3.d = fragment;
                                aVar3.e = z7;
                                aVar3.f = aVar4;
                                if (z2) {
                                    return;
                                }
                                return;
                            } else {
                                z6 = fragment.H;
                                z4 = false;
                                z3 = false;
                                z8 = z6;
                                z5 = true;
                                a aVar622 = sparseArray2.get(i);
                                if (z8) {
                                }
                                aVar3 = aVar622;
                                aVar3.d = null;
                                iVar = aVar4.f675a;
                                iVar.k(fragment);
                                iVar.a(fragment, 1, 0, 0, false);
                                aVar3 = a(aVar3, sparseArray2, i);
                                aVar3.d = fragment;
                                aVar3.e = z7;
                                aVar3.f = aVar4;
                                if (z2) {
                                }
                            }
                        } else if (!z2) {
                            boolean z9 = false;
                            z3 = z9;
                            z5 = false;
                            z4 = true;
                            a aVar6222 = sparseArray2.get(i);
                            if (z8) {
                            }
                            aVar3 = aVar6222;
                            aVar3.d = null;
                            iVar = aVar4.f675a;
                            iVar.k(fragment);
                            iVar.a(fragment, 1, 0, 0, false);
                            aVar3 = a(aVar3, sparseArray2, i);
                            aVar3.d = fragment;
                            aVar3.e = z7;
                            aVar3.f = aVar4;
                            if (z2) {
                            }
                        } else {
                            boolean z92 = false;
                            z3 = z92;
                            z5 = false;
                            z4 = true;
                            a aVar62222 = sparseArray2.get(i);
                            if (z8) {
                            }
                            aVar3 = aVar62222;
                            aVar3.d = null;
                            iVar = aVar4.f675a;
                            iVar.k(fragment);
                            iVar.a(fragment, 1, 0, 0, false);
                            aVar3 = a(aVar3, sparseArray2, i);
                            aVar3.d = fragment;
                            aVar3.e = z7;
                            aVar3.f = aVar4;
                            if (z2) {
                            }
                        }
                    }
                    if (!z2) {
                        boolean z922 = false;
                        z3 = z922;
                        z5 = false;
                        z4 = true;
                        a aVar622222 = sparseArray2.get(i);
                        if (z8) {
                        }
                        aVar3 = aVar622222;
                        aVar3.d = null;
                        iVar = aVar4.f675a;
                        iVar.k(fragment);
                        iVar.a(fragment, 1, 0, 0, false);
                        aVar3 = a(aVar3, sparseArray2, i);
                        aVar3.d = fragment;
                        aVar3.e = z7;
                        aVar3.f = aVar4;
                        if (z2) {
                        }
                    } else {
                        boolean z9222 = false;
                        z3 = z9222;
                        z5 = false;
                        z4 = true;
                        a aVar6222222 = sparseArray2.get(i);
                        if (z8) {
                        }
                        aVar3 = aVar6222222;
                        aVar3.d = null;
                        iVar = aVar4.f675a;
                        iVar.k(fragment);
                        iVar.a(fragment, 1, 0, 0, false);
                        aVar3 = a(aVar3, sparseArray2, i);
                        aVar3.d = fragment;
                        aVar3.e = z7;
                        aVar3.f = aVar4;
                        if (z2) {
                        }
                    }
                }
                if (z2) {
                    z6 = fragment.U;
                    z4 = false;
                    z3 = false;
                    z8 = z6;
                    z5 = true;
                    a aVar62222222 = sparseArray2.get(i);
                    if (z8) {
                    }
                    aVar3 = aVar62222222;
                    aVar3.d = null;
                    iVar = aVar4.f675a;
                    iVar.k(fragment);
                    iVar.a(fragment, 1, 0, 0, false);
                    aVar3 = a(aVar3, sparseArray2, i);
                    aVar3.d = fragment;
                    aVar3.e = z7;
                    aVar3.f = aVar4;
                    if (z2) {
                    }
                } else {
                    if (!fragment.t) {
                    }
                    z6 = false;
                    z4 = false;
                    z3 = false;
                    z8 = z6;
                    z5 = true;
                    a aVar622222222 = sparseArray2.get(i);
                    if (z8) {
                    }
                    aVar3 = aVar622222222;
                    aVar3.d = null;
                    iVar = aVar4.f675a;
                    iVar.k(fragment);
                    iVar.a(fragment, 1, 0, 0, false);
                    aVar3 = a(aVar3, sparseArray2, i);
                    aVar3.d = fragment;
                    aVar3.e = z7;
                    aVar3.f = aVar4;
                    if (z2) {
                    }
                }
            }
        }
    }

    private static void a(i iVar, int i, a aVar, View view, androidx.b.a<String, String> aVar2) {
        Object obj;
        i iVar2 = iVar;
        a aVar3 = aVar;
        View view2 = view;
        ViewGroup viewGroup = iVar2.o.a() ? (ViewGroup) iVar2.o.a(i) : null;
        if (viewGroup != null) {
            Fragment fragment = aVar3.f724a;
            Fragment fragment2 = aVar3.d;
            n a2 = a(fragment2, fragment);
            if (a2 != null) {
                boolean z = aVar3.f725b;
                boolean z2 = aVar3.e;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Object a3 = a(a2, fragment, z);
                Object b2 = b(a2, fragment2, z2);
                ViewGroup viewGroup2 = viewGroup;
                ArrayList arrayList3 = arrayList2;
                Object a4 = a(a2, viewGroup, view, aVar2, aVar, (ArrayList<View>) arrayList2, (ArrayList<View>) arrayList, a3, b2);
                Object obj2 = a3;
                if (obj2 == null && a4 == null) {
                    obj = b2;
                    if (obj == null) {
                        return;
                    }
                } else {
                    obj = b2;
                }
                ArrayList<View> a5 = a(a2, obj, fragment2, (ArrayList<View>) arrayList3, view2);
                ArrayList<View> a6 = a(a2, obj2, fragment, (ArrayList<View>) arrayList, view2);
                a(a6, 4);
                Fragment fragment3 = fragment;
                ArrayList<View> arrayList4 = a5;
                Object a7 = a(a2, obj2, obj, a4, fragment3, z);
                if (a7 != null) {
                    a(a2, obj, fragment2, arrayList4);
                    ArrayList<String> a8 = a2.a((ArrayList<View>) arrayList);
                    a2.a(a7, obj2, a6, obj, arrayList4, a4, arrayList);
                    ViewGroup viewGroup3 = viewGroup2;
                    a2.a(viewGroup3, a7);
                    a2.a(viewGroup3, arrayList3, arrayList, a8, aVar2);
                    a(a6, 0);
                    a2.a(a4, (ArrayList<View>) arrayList3, (ArrayList<View>) arrayList);
                }
            }
        }
    }

    static void a(i iVar, ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (iVar.m >= 1) {
            SparseArray sparseArray = new SparseArray();
            for (int i3 = i; i3 < i2; i3++) {
                a aVar = arrayList.get(i3);
                if (arrayList2.get(i3).booleanValue()) {
                    b(aVar, (SparseArray<a>) sparseArray, z);
                } else {
                    a(aVar, (SparseArray<a>) sparseArray, z);
                }
            }
            if (sparseArray.size() != 0) {
                View view = new View(iVar.n.l());
                int size = sparseArray.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = sparseArray.keyAt(i4);
                    androidx.b.a<String, String> a2 = a(keyAt, arrayList, arrayList2, i, i2);
                    a aVar2 = (a) sparseArray.valueAt(i4);
                    if (z) {
                        a(iVar, keyAt, aVar2, view, a2);
                    } else {
                        b(iVar, keyAt, aVar2, view, a2);
                    }
                }
            }
        }
    }

    private static void a(n nVar, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        final Object obj3 = obj;
        final n nVar2 = nVar;
        final View view2 = view;
        final Fragment fragment2 = fragment;
        final ArrayList<View> arrayList4 = arrayList;
        final ArrayList<View> arrayList5 = arrayList2;
        final ArrayList<View> arrayList6 = arrayList3;
        final Object obj4 = obj2;
        AnonymousClass2 r0 = new Runnable() {
            public void run() {
                Object obj = obj3;
                if (obj != null) {
                    nVar2.c(obj, view2);
                    arrayList5.addAll(l.a(nVar2, obj3, fragment2, (ArrayList<View>) arrayList4, view2));
                }
                if (arrayList6 != null) {
                    if (obj4 != null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(view2);
                        nVar2.b(obj4, (ArrayList<View>) arrayList6, (ArrayList<View>) arrayList);
                    }
                    arrayList6.clear();
                    arrayList6.add(view2);
                }
            }
        };
        ViewGroup viewGroup2 = viewGroup;
        r.a(viewGroup, r0);
    }

    private static void a(n nVar, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.t && fragment.H && fragment.V) {
            fragment.h(true);
            nVar.b(obj, fragment.A(), arrayList);
            r.a(fragment.N, new Runnable() {
                public void run() {
                    l.a((ArrayList<View>) arrayList, 4);
                }
            });
        }
    }

    private static void a(n nVar, Object obj, Object obj2, androidx.b.a<String, View> aVar, boolean z, a aVar2) {
        if (aVar2.r != null && !aVar2.r.isEmpty()) {
            View view = aVar.get(z ? (String) aVar2.s.get(0) : (String) aVar2.r.get(0));
            nVar.a(obj, view);
            if (obj2 != null) {
                nVar.a(obj2, view);
            }
        }
    }

    static void a(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    private static void a(ArrayList<View> arrayList, androidx.b.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View c2 = aVar.c(size);
            if (collection.contains(u.n(c2))) {
                arrayList.add(c2);
            }
        }
    }

    private static boolean a(n nVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!nVar.a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static androidx.b.a<String, View> b(n nVar, androidx.b.a<String, String> aVar, Object obj, a aVar2) {
        androidx.core.app.l lVar;
        ArrayList arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = aVar2.d;
        androidx.b.a<String, View> aVar3 = new androidx.b.a<>();
        nVar.a((Map<String, View>) aVar3, fragment.B());
        a aVar4 = aVar2.f;
        if (aVar2.e) {
            lVar = fragment.af();
            arrayList = aVar4.s;
        } else {
            lVar = fragment.ag();
            arrayList = aVar4.r;
        }
        aVar3.a(arrayList);
        if (lVar != null) {
            lVar.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = (String) arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(u.n(view))) {
                    aVar.put(u.n(view), aVar.remove(str));
                }
            }
        } else {
            aVar.a(aVar3.keySet());
        }
        return aVar3;
    }

    private static Object b(n nVar, ViewGroup viewGroup, View view, androidx.b.a<String, String> aVar, a aVar2, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        androidx.b.a<String, String> aVar3;
        Object obj3;
        Object obj4;
        Rect rect;
        n nVar2 = nVar;
        a aVar4 = aVar2;
        ArrayList<View> arrayList3 = arrayList;
        Object obj5 = obj;
        Fragment fragment = aVar4.f724a;
        Fragment fragment2 = aVar4.d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = aVar4.f725b;
        if (aVar.isEmpty()) {
            aVar3 = aVar;
            obj3 = null;
        } else {
            obj3 = a(nVar2, fragment, fragment2, z);
            aVar3 = aVar;
        }
        androidx.b.a<String, View> b2 = b(nVar2, aVar3, obj3, aVar4);
        if (aVar.isEmpty()) {
            obj4 = null;
        } else {
            arrayList3.addAll(b2.values());
            obj4 = obj3;
        }
        if (obj5 == null && obj2 == null && obj4 == null) {
            return null;
        }
        a(fragment, fragment2, z, b2, true);
        if (obj4 != null) {
            rect = new Rect();
            nVar2.a(obj4, view, arrayList3);
            a(nVar, obj4, obj2, b2, aVar4.e, aVar4.f);
            if (obj5 != null) {
                nVar2.a(obj5, rect);
            }
        } else {
            rect = null;
        }
        final n nVar3 = nVar;
        final androidx.b.a<String, String> aVar5 = aVar;
        final Object obj6 = obj4;
        final a aVar6 = aVar2;
        AnonymousClass4 r13 = r0;
        final ArrayList<View> arrayList4 = arrayList2;
        final View view2 = view;
        final Fragment fragment3 = fragment;
        final Fragment fragment4 = fragment2;
        final boolean z2 = z;
        final ArrayList<View> arrayList5 = arrayList;
        final Object obj7 = obj;
        final Rect rect2 = rect;
        AnonymousClass4 r0 = new Runnable() {
            public void run() {
                androidx.b.a<String, View> a2 = l.a(nVar3, (androidx.b.a<String, String>) aVar5, obj6, aVar6);
                if (a2 != null) {
                    arrayList4.addAll(a2.values());
                    arrayList4.add(view2);
                }
                l.a(fragment3, fragment4, z2, a2, false);
                Object obj = obj6;
                if (obj != null) {
                    nVar3.a(obj, (ArrayList<View>) arrayList5, (ArrayList<View>) arrayList4);
                    View a3 = l.a(a2, aVar6, obj7, z2);
                    if (a3 != null) {
                        nVar3.a(a3, rect2);
                    }
                }
            }
        };
        r.a(viewGroup, r13);
        return obj4;
    }

    private static Object b(n nVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return nVar.b(z ? fragment.I() : fragment.J());
    }

    public static void b(a aVar, SparseArray<a> sparseArray, boolean z) {
        if (aVar.f675a.o.a()) {
            for (int size = aVar.d.size() - 1; size >= 0; size--) {
                a(aVar, (k.a) aVar.d.get(size), sparseArray, true, z);
            }
        }
    }

    private static void b(i iVar, int i, a aVar, View view, androidx.b.a<String, String> aVar2) {
        Object obj;
        i iVar2 = iVar;
        a aVar3 = aVar;
        View view2 = view;
        androidx.b.a<String, String> aVar4 = aVar2;
        ViewGroup viewGroup = iVar2.o.a() ? (ViewGroup) iVar2.o.a(i) : null;
        if (viewGroup != null) {
            Fragment fragment = aVar3.f724a;
            Fragment fragment2 = aVar3.d;
            n a2 = a(fragment2, fragment);
            if (a2 != null) {
                boolean z = aVar3.f725b;
                boolean z2 = aVar3.e;
                Object a3 = a(a2, fragment, z);
                Object b2 = b(a2, fragment2, z2);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = arrayList;
                Object obj2 = b2;
                n nVar = a2;
                Object b3 = b(a2, viewGroup, view, aVar2, aVar, arrayList, arrayList2, a3, obj2);
                Object obj3 = a3;
                if (obj3 == null && b3 == null) {
                    obj = obj2;
                    if (obj == null) {
                        return;
                    }
                } else {
                    obj = obj2;
                }
                ArrayList<View> a4 = a(nVar, obj, fragment2, (ArrayList<View>) arrayList3, view2);
                Object obj4 = (a4 == null || a4.isEmpty()) ? null : obj;
                nVar.b(obj3, view2);
                Object a5 = a(nVar, obj3, obj4, b3, fragment, aVar3.f725b);
                if (a5 != null) {
                    ArrayList arrayList4 = new ArrayList();
                    n nVar2 = nVar;
                    nVar2.a(a5, obj3, arrayList4, obj4, a4, b3, arrayList2);
                    a(nVar2, viewGroup, fragment, view, (ArrayList<View>) arrayList2, obj3, (ArrayList<View>) arrayList4, obj4, a4);
                    ArrayList arrayList5 = arrayList2;
                    nVar.a((View) viewGroup, (ArrayList<View>) arrayList5, (Map<String, String>) aVar4);
                    nVar.a(viewGroup, a5);
                    nVar.a(viewGroup, (ArrayList<View>) arrayList5, (Map<String, String>) aVar4);
                }
            }
        }
    }
}
