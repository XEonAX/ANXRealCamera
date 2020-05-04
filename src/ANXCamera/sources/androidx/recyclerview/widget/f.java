package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: DiffUtil */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<e> f962a = new Comparator<e>() {
        /* renamed from: a */
        public int compare(e eVar, e eVar2) {
            int i = eVar.f969a - eVar2.f969a;
            return i == 0 ? eVar.f970b - eVar2.f970b : i;
        }
    };

    /* compiled from: DiffUtil */
    public static abstract class a {
        public abstract int a();

        public abstract boolean a(int i, int i2);

        public abstract int b();

        public abstract boolean b(int i, int i2);

        public Object c(int i, int i2) {
            return null;
        }
    }

    /* compiled from: DiffUtil */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<e> f963a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f964b;
        private final int[] c;
        private final a d;
        private final int e;
        private final int f;
        private final boolean g;

        b(a aVar, List<e> list, int[] iArr, int[] iArr2, boolean z) {
            this.f963a = list;
            this.f964b = iArr;
            this.c = iArr2;
            Arrays.fill(this.f964b, 0);
            Arrays.fill(this.c, 0);
            this.d = aVar;
            this.e = aVar.a();
            this.f = aVar.b();
            this.g = z;
            a();
            b();
        }

        private static c a(List<c> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                c cVar = list.get(size);
                if (cVar.f965a == i && cVar.c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).f966b += z ? 1 : -1;
                        size++;
                    }
                    return cVar;
                }
                size--;
            }
            return null;
        }

        private void a() {
            e eVar = this.f963a.isEmpty() ? null : this.f963a.get(0);
            if (eVar == null || eVar.f969a != 0 || eVar.f970b != 0) {
                e eVar2 = new e();
                eVar2.f969a = 0;
                eVar2.f970b = 0;
                eVar2.d = false;
                eVar2.c = 0;
                eVar2.e = false;
                this.f963a.add(0, eVar2);
            }
        }

        private void a(int i, int i2, int i3) {
            if (this.f964b[i - 1] == 0) {
                a(i, i2, i3, false);
            }
        }

        private void a(List<c> list, k kVar, int i, int i2, int i3) {
            if (!this.g) {
                kVar.a(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int i5 = i3 + i4;
                int i6 = this.c[i5] & 31;
                if (i6 == 0) {
                    kVar.a(i, 1);
                    for (c cVar : list) {
                        cVar.f966b++;
                    }
                } else if (i6 == 4 || i6 == 8) {
                    int i7 = this.c[i5] >> 5;
                    kVar.c(a(list, i7, true).f966b, i);
                    if (i6 == 4) {
                        kVar.a(i, 1, this.d.c(i7, i5));
                    }
                } else if (i6 == 16) {
                    list.add(new c(i5, i, false));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString((long) i6));
                }
            }
        }

        private boolean a(int i, int i2, int i3, boolean z) {
            int i4;
            int i5;
            if (z) {
                i2--;
                i5 = i;
                i4 = i2;
            } else {
                i5 = i - 1;
                i4 = i5;
            }
            while (i3 >= 0) {
                e eVar = this.f963a.get(i3);
                int i6 = eVar.f969a + eVar.c;
                int i7 = eVar.f970b + eVar.c;
                int i8 = 8;
                if (z) {
                    for (int i9 = i5 - 1; i9 >= i6; i9--) {
                        if (this.d.a(i9, i4)) {
                            if (!this.d.b(i9, i4)) {
                                i8 = 4;
                            }
                            this.c[i4] = (i9 << 5) | 16;
                            this.f964b[i9] = (i4 << 5) | i8;
                            return true;
                        }
                    }
                    continue;
                } else {
                    for (int i10 = i2 - 1; i10 >= i7; i10--) {
                        if (this.d.a(i4, i10)) {
                            if (!this.d.b(i4, i10)) {
                                i8 = 4;
                            }
                            int i11 = i - 1;
                            this.f964b[i11] = (i10 << 5) | 16;
                            this.c[i10] = (i11 << 5) | i8;
                            return true;
                        }
                    }
                    continue;
                }
                i5 = eVar.f969a;
                i2 = eVar.f970b;
                i3--;
            }
            return false;
        }

        private void b() {
            int i = this.e;
            int i2 = this.f;
            for (int size = this.f963a.size() - 1; size >= 0; size--) {
                e eVar = this.f963a.get(size);
                int i3 = eVar.f969a + eVar.c;
                int i4 = eVar.f970b + eVar.c;
                if (this.g) {
                    while (i > i3) {
                        a(i, i2, size);
                        i--;
                    }
                    while (i2 > i4) {
                        b(i, i2, size);
                        i2--;
                    }
                }
                for (int i5 = 0; i5 < eVar.c; i5++) {
                    int i6 = eVar.f969a + i5;
                    int i7 = eVar.f970b + i5;
                    int i8 = this.d.b(i6, i7) ? 1 : 2;
                    this.f964b[i6] = (i7 << 5) | i8;
                    this.c[i7] = (i6 << 5) | i8;
                }
                i = eVar.f969a;
                i2 = eVar.f970b;
            }
        }

        private void b(int i, int i2, int i3) {
            if (this.c[i2 - 1] == 0) {
                a(i, i2, i3, true);
            }
        }

        private void b(List<c> list, k kVar, int i, int i2, int i3) {
            if (!this.g) {
                kVar.b(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int i5 = i3 + i4;
                int i6 = this.f964b[i5] & 31;
                if (i6 == 0) {
                    kVar.b(i + i4, 1);
                    for (c cVar : list) {
                        cVar.f966b--;
                    }
                } else if (i6 == 4 || i6 == 8) {
                    int i7 = this.f964b[i5] >> 5;
                    c a2 = a(list, i7, false);
                    kVar.c(i + i4, a2.f966b - 1);
                    if (i6 == 4) {
                        kVar.a(a2.f966b - 1, 1, this.d.c(i5, i7));
                    }
                } else if (i6 == 16) {
                    list.add(new c(i5, i + i4, true));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString((long) i6));
                }
            }
        }

        public void a(RecyclerView.a aVar) {
            a((k) new b(aVar));
        }

        public void a(k kVar) {
            c cVar = kVar instanceof c ? (c) kVar : new c(kVar);
            ArrayList arrayList = new ArrayList();
            int i = this.e;
            int i2 = this.f;
            for (int size = this.f963a.size() - 1; size >= 0; size--) {
                e eVar = this.f963a.get(size);
                int i3 = eVar.c;
                int i4 = eVar.f969a + i3;
                int i5 = eVar.f970b + i3;
                if (i4 < i) {
                    b(arrayList, cVar, i4, i - i4, i4);
                }
                if (i5 < i2) {
                    a(arrayList, cVar, i4, i2 - i5, i5);
                }
                for (int i6 = i3 - 1; i6 >= 0; i6--) {
                    if ((this.f964b[eVar.f969a + i6] & 31) == 2) {
                        cVar.a(eVar.f969a + i6, 1, this.d.c(eVar.f969a + i6, eVar.f970b + i6));
                    }
                }
                i = eVar.f969a;
                i2 = eVar.f970b;
            }
            cVar.a();
        }
    }

    /* compiled from: DiffUtil */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        int f965a;

        /* renamed from: b  reason: collision with root package name */
        int f966b;
        boolean c;

        public c(int i, int i2, boolean z) {
            this.f965a = i;
            this.f966b = i2;
            this.c = z;
        }
    }

    /* compiled from: DiffUtil */
    static class d {

        /* renamed from: a  reason: collision with root package name */
        int f967a;

        /* renamed from: b  reason: collision with root package name */
        int f968b;
        int c;
        int d;

        public d() {
        }

        public d(int i, int i2, int i3, int i4) {
            this.f967a = i;
            this.f968b = i2;
            this.c = i3;
            this.d = i4;
        }
    }

    /* compiled from: DiffUtil */
    static class e {

        /* renamed from: a  reason: collision with root package name */
        int f969a;

        /* renamed from: b  reason: collision with root package name */
        int f970b;
        int c;
        boolean d;
        boolean e;

        e() {
        }
    }

    public static b a(a aVar) {
        return a(aVar, true);
    }

    public static b a(a aVar, boolean z) {
        int a2 = aVar.a();
        int b2 = aVar.b();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new d(0, a2, 0, b2));
        int abs = Math.abs(a2 - b2) + a2 + b2;
        int i = abs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            d dVar = (d) arrayList2.remove(arrayList2.size() - 1);
            e a3 = a(aVar, dVar.f967a, dVar.f968b, dVar.c, dVar.d, iArr, iArr2, abs);
            if (a3 != null) {
                if (a3.c > 0) {
                    arrayList.add(a3);
                }
                a3.f969a += dVar.f967a;
                a3.f970b += dVar.c;
                d dVar2 = arrayList3.isEmpty() ? new d() : (d) arrayList3.remove(arrayList3.size() - 1);
                dVar2.f967a = dVar.f967a;
                dVar2.c = dVar.c;
                if (a3.e) {
                    dVar2.f968b = a3.f969a;
                    dVar2.d = a3.f970b;
                } else if (a3.d) {
                    dVar2.f968b = a3.f969a - 1;
                    dVar2.d = a3.f970b;
                } else {
                    dVar2.f968b = a3.f969a;
                    dVar2.d = a3.f970b - 1;
                }
                arrayList2.add(dVar2);
                if (!a3.e) {
                    dVar.f967a = a3.f969a + a3.c;
                    dVar.c = a3.f970b + a3.c;
                } else if (a3.d) {
                    dVar.f967a = a3.f969a + a3.c + 1;
                    dVar.c = a3.f970b + a3.c;
                } else {
                    dVar.f967a = a3.f969a + a3.c;
                    dVar.c = a3.f970b + a3.c + 1;
                }
                arrayList2.add(dVar);
            } else {
                arrayList3.add(dVar);
            }
        }
        Collections.sort(arrayList, f962a);
        b bVar = new b(aVar, arrayList, iArr, iArr2, z);
        return bVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (r1[r13 - 1] < r1[(r26 + r12) + r5]) goto L_0x004d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00ba, code lost:
        if (r2[r13 - 1] < r2[(r26 + r12) + 1]) goto L_0x00c7;
     */
    private static e a(a aVar, int i, int i2, int i3, int i4, int[] iArr, int[] iArr2, int i5) {
        boolean z;
        int i6;
        int i7;
        int i8;
        boolean z2;
        boolean z3;
        int i9;
        int i10;
        a aVar2 = aVar;
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        int i11 = i2 - i;
        int i12 = i4 - i3;
        boolean z4 = true;
        if (i11 < 1 || i12 < 1) {
            return null;
        }
        int i13 = i11 - i12;
        int i14 = ((i11 + i12) + 1) / 2;
        int i15 = (i5 - i14) - 1;
        int i16 = i5 + i14 + 1;
        boolean z5 = false;
        Arrays.fill(iArr3, i15, i16, 0);
        Arrays.fill(iArr4, i15 + i13, i16 + i13, i11);
        boolean z6 = i13 % 2 != 0;
        int i17 = 0;
        while (i17 <= i14) {
            int i18 = -i17;
            int i19 = i18;
            while (i19 <= i17) {
                if (i19 != i18) {
                    if (i19 != i17) {
                    }
                    i9 = iArr3[(i5 + i19) - z4] + z4;
                    z3 = z4;
                    i10 = i9 - i19;
                    while (i9 < i11 && i10 < i12 && aVar2.a(i + i9, i3 + i10)) {
                        i9++;
                        i10++;
                    }
                    int i20 = i5 + i19;
                    iArr3[i20] = i9;
                    if (z6 || i19 < (i13 - i17) + 1 || i19 > (i13 + i17) - 1 || iArr3[i20] < iArr4[i20]) {
                        i19 += 2;
                        z5 = false;
                        z4 = true;
                    } else {
                        e eVar = new e();
                        eVar.f969a = iArr4[i20];
                        eVar.f970b = eVar.f969a - i19;
                        eVar.c = iArr3[i20] - iArr4[i20];
                        eVar.d = z3;
                        eVar.e = false;
                        return eVar;
                    }
                }
                i9 = iArr3[i5 + i19 + (z4 ? 1 : 0)];
                z3 = z5;
                i10 = i9 - i19;
                while (i9 < i11) {
                    i9++;
                    i10++;
                }
                int i202 = i5 + i19;
                iArr3[i202] = i9;
                if (z6) {
                }
                i19 += 2;
                z5 = false;
                z4 = true;
            }
            boolean z7 = z5;
            int i21 = i18;
            while (i21 <= i17) {
                int i22 = i21 + i13;
                if (i22 != i17 + i13) {
                    if (i22 != i18 + i13) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    i6 = iArr4[(i5 + i22) + (z2 ? 1 : 0)] - z2;
                    z = z2;
                    i7 = i6 - i22;
                    while (true) {
                        if (i6 > 0 && i7 > 0) {
                            i8 = i11;
                            if (!aVar2.a((i + i6) - 1, (i3 + i7) - 1)) {
                                break;
                            }
                            i6--;
                            i7--;
                            i11 = i8;
                        } else {
                            i8 = i11;
                        }
                    }
                    i8 = i11;
                    int i23 = i5 + i22;
                    iArr4[i23] = i6;
                    if (!z6 || i22 < i18 || i22 > i17 || iArr3[i23] < iArr4[i23]) {
                        i21 += 2;
                        i11 = i8;
                        z7 = false;
                    } else {
                        e eVar2 = new e();
                        eVar2.f969a = iArr4[i23];
                        eVar2.f970b = eVar2.f969a - i22;
                        eVar2.c = iArr3[i23] - iArr4[i23];
                        eVar2.d = z;
                        eVar2.e = true;
                        return eVar2;
                    }
                } else {
                    z2 = true;
                }
                i6 = iArr4[(i5 + i22) - (z2 ? 1 : 0)];
                z = z7;
                i7 = i6 - i22;
                while (true) {
                    if (i6 > 0) {
                        break;
                    }
                    break;
                    i6--;
                    i7--;
                    i11 = i8;
                }
                i8 = i11;
                int i232 = i5 + i22;
                iArr4[i232] = i6;
                if (!z6) {
                }
                i21 += 2;
                i11 = i8;
                z7 = false;
            }
            i17++;
            z4 = true;
            i11 = i11;
            z5 = false;
        }
        throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
    }
}
