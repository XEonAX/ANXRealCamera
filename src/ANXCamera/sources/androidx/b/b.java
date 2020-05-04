package androidx.b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: ArraySet */
public final class b<E> implements Collection<E>, Set<E> {
    private static final int[] c = new int[0];
    private static final Object[] d = new Object[0];
    private static Object[] e;
    private static int f;
    private static Object[] g;
    private static int h;

    /* renamed from: a  reason: collision with root package name */
    Object[] f423a;

    /* renamed from: b  reason: collision with root package name */
    int f424b;
    private int[] i;
    private f<E, E> j;

    public b() {
        this(0);
    }

    public b(int i2) {
        if (i2 == 0) {
            this.i = c;
            this.f423a = d;
        } else {
            d(i2);
        }
        this.f424b = 0;
    }

    private int a() {
        int i2 = this.f424b;
        if (i2 == 0) {
            return -1;
        }
        int a2 = c.a(this.i, i2, 0);
        if (a2 < 0 || this.f423a[a2] == null) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.i[i3] == 0) {
            if (this.f423a[i3] == null) {
                return i3;
            }
            i3++;
        }
        int i4 = a2 - 1;
        while (i4 >= 0 && this.i[i4] == 0) {
            if (this.f423a[i4] == null) {
                return i4;
            }
            i4--;
        }
        return ~i3;
    }

    private int a(Object obj, int i2) {
        int i3 = this.f424b;
        if (i3 == 0) {
            return -1;
        }
        int a2 = c.a(this.i, i3, i2);
        if (a2 < 0 || obj.equals(this.f423a[a2])) {
            return a2;
        }
        int i4 = a2 + 1;
        while (i4 < i3 && this.i[i4] == i2) {
            if (obj.equals(this.f423a[i4])) {
                return i4;
            }
            i4++;
        }
        int i5 = a2 - 1;
        while (i5 >= 0 && this.i[i5] == i2) {
            if (obj.equals(this.f423a[i5])) {
                return i5;
            }
            i5--;
        }
        return ~i4;
    }

    private static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (h < 10) {
                    objArr[0] = g;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    g = objArr;
                    h++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (b.class) {
                if (f < 10) {
                    objArr[0] = e;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    e = objArr;
                    f++;
                }
            }
        }
    }

    private f<E, E> b() {
        if (this.j == null) {
            this.j = new f<E, E>() {
                /* access modifiers changed from: protected */
                public int a() {
                    return b.this.f424b;
                }

                /* access modifiers changed from: protected */
                public int a(Object obj) {
                    return b.this.a(obj);
                }

                /* access modifiers changed from: protected */
                public Object a(int i, int i2) {
                    return b.this.f423a[i];
                }

                /* access modifiers changed from: protected */
                public E a(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }

                /* access modifiers changed from: protected */
                public void a(int i) {
                    b.this.c(i);
                }

                /* access modifiers changed from: protected */
                public void a(E e, E e2) {
                    b.this.add(e);
                }

                /* access modifiers changed from: protected */
                public int b(Object obj) {
                    return b.this.a(obj);
                }

                /* access modifiers changed from: protected */
                public Map<E, E> b() {
                    throw new UnsupportedOperationException("not a map");
                }

                /* access modifiers changed from: protected */
                public void c() {
                    b.this.clear();
                }
            };
        }
        return this.j;
    }

    private void d(int i2) {
        if (i2 == 8) {
            synchronized (b.class) {
                if (g != null) {
                    Object[] objArr = g;
                    this.f423a = objArr;
                    g = (Object[]) objArr[0];
                    this.i = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    h--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (b.class) {
                if (e != null) {
                    Object[] objArr2 = e;
                    this.f423a = objArr2;
                    e = (Object[]) objArr2[0];
                    this.i = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f--;
                    return;
                }
            }
        }
        this.i = new int[i2];
        this.f423a = new Object[i2];
    }

    public int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public void a(int i2) {
        int[] iArr = this.i;
        if (iArr.length < i2) {
            Object[] objArr = this.f423a;
            d(i2);
            int i3 = this.f424b;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.i, 0, i3);
                System.arraycopy(objArr, 0, this.f423a, 0, this.f424b);
            }
            a(iArr, objArr, this.f424b);
        }
    }

    public boolean add(E e2) {
        int i2;
        int i3;
        if (e2 == null) {
            i3 = a();
            i2 = 0;
        } else {
            int hashCode = e2.hashCode();
            i2 = hashCode;
            i3 = a(e2, hashCode);
        }
        if (i3 >= 0) {
            return false;
        }
        int i4 = ~i3;
        int i5 = this.f424b;
        if (i5 >= this.i.length) {
            int i6 = 4;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.i;
            Object[] objArr = this.f423a;
            d(i6);
            int[] iArr2 = this.i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f423a, 0, objArr.length);
            }
            a(iArr, objArr, this.f424b);
        }
        int i7 = this.f424b;
        if (i4 < i7) {
            int[] iArr3 = this.i;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr2 = this.f423a;
            System.arraycopy(objArr2, i4, objArr2, i8, this.f424b - i4);
        }
        this.i[i4] = i2;
        this.f423a[i4] = e2;
        this.f424b++;
        return true;
    }

    public boolean addAll(Collection<? extends E> collection) {
        a(this.f424b + collection.size());
        boolean z = false;
        for (Object add : collection) {
            z |= add(add);
        }
        return z;
    }

    public E b(int i2) {
        return this.f423a[i2];
    }

    public E c(int i2) {
        E[] eArr = this.f423a;
        E e2 = eArr[i2];
        int i3 = this.f424b;
        if (i3 <= 1) {
            a(this.i, eArr, i3);
            this.i = c;
            this.f423a = d;
            this.f424b = 0;
        } else {
            int[] iArr = this.i;
            int i4 = 8;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                this.f424b--;
                int i5 = this.f424b;
                if (i2 < i5) {
                    int[] iArr2 = this.i;
                    int i6 = i2 + 1;
                    System.arraycopy(iArr2, i6, iArr2, i2, i5 - i2);
                    Object[] objArr = this.f423a;
                    System.arraycopy(objArr, i6, objArr, i2, this.f424b - i2);
                }
                this.f423a[this.f424b] = null;
            } else {
                if (i3 > 8) {
                    i4 = i3 + (i3 >> 1);
                }
                int[] iArr3 = this.i;
                Object[] objArr2 = this.f423a;
                d(i4);
                this.f424b--;
                if (i2 > 0) {
                    System.arraycopy(iArr3, 0, this.i, 0, i2);
                    System.arraycopy(objArr2, 0, this.f423a, 0, i2);
                }
                int i7 = this.f424b;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    System.arraycopy(iArr3, i8, this.i, i2, i7 - i2);
                    System.arraycopy(objArr2, i8, this.f423a, i2, this.f424b - i2);
                }
            }
        }
        return e2;
    }

    public void clear() {
        int i2 = this.f424b;
        if (i2 != 0) {
            a(this.i, this.f423a, i2);
            this.i = c;
            this.f423a = d;
            this.f424b = 0;
        }
    }

    public boolean contains(Object obj) {
        return a(obj) >= 0;
    }

    public boolean containsAll(Collection<?> collection) {
        for (Object contains : collection) {
            if (!contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            int i2 = 0;
            while (i2 < this.f424b) {
                try {
                    if (!set.contains(b(i2))) {
                        return false;
                    }
                    i2++;
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int[] iArr = this.i;
        int i2 = this.f424b;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public boolean isEmpty() {
        return this.f424b <= 0;
    }

    public Iterator<E> iterator() {
        return b().e().iterator();
    }

    public boolean remove(Object obj) {
        int a2 = a(obj);
        if (a2 < 0) {
            return false;
        }
        c(a2);
        return true;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean z = false;
        for (Object remove : collection) {
            z |= remove(remove);
        }
        return z;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.f424b - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f423a[i2])) {
                c(i2);
                z = true;
            }
        }
        return z;
    }

    public int size() {
        return this.f424b;
    }

    public Object[] toArray() {
        int i2 = this.f424b;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f423a, 0, objArr, 0, i2);
        return objArr;
    }

    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f424b) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f424b);
        }
        System.arraycopy(this.f423a, 0, tArr, 0, this.f424b);
        int length = tArr.length;
        int i2 = this.f424b;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f424b * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f424b; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object b2 = b(i2);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
