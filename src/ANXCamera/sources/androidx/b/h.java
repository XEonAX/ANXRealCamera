package androidx.b;

/* compiled from: SparseArrayCompat */
public class h<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f441a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private boolean f442b;
    private int[] c;
    private Object[] d;
    private int e;

    public h() {
        this(10);
    }

    public h(int i) {
        this.f442b = false;
        if (i == 0) {
            this.c = c.f426a;
            this.d = c.c;
            return;
        }
        int a2 = c.a(i);
        this.c = new int[a2];
        this.d = new Object[a2];
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f441a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f442b = false;
        this.e = i2;
    }

    /* renamed from: a */
    public h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.c = (int[]) this.c.clone();
            hVar.d = (Object[]) this.d.clone();
            return hVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E a(int i) {
        return a(i, (Object) null);
    }

    public E a(int i, E e2) {
        int a2 = c.a(this.c, this.e, i);
        if (a2 >= 0) {
            E[] eArr = this.d;
            if (eArr[a2] != f441a) {
                return eArr[a2];
            }
        }
        return e2;
    }

    public int b() {
        if (this.f442b) {
            d();
        }
        return this.e;
    }

    public void b(int i) {
        int a2 = c.a(this.c, this.e, i);
        if (a2 >= 0) {
            Object[] objArr = this.d;
            Object obj = objArr[a2];
            Object obj2 = f441a;
            if (obj != obj2) {
                objArr[a2] = obj2;
                this.f442b = true;
            }
        }
    }

    public void b(int i, E e2) {
        int a2 = c.a(this.c, this.e, i);
        if (a2 >= 0) {
            this.d[a2] = e2;
            return;
        }
        int i2 = ~a2;
        if (i2 < this.e) {
            Object[] objArr = this.d;
            if (objArr[i2] == f441a) {
                this.c[i2] = i;
                objArr[i2] = e2;
                return;
            }
        }
        if (this.f442b && this.e >= this.c.length) {
            d();
            i2 = ~c.a(this.c, this.e, i);
        }
        int i3 = this.e;
        if (i3 >= this.c.length) {
            int a3 = c.a(i3 + 1);
            int[] iArr = new int[a3];
            Object[] objArr2 = new Object[a3];
            int[] iArr2 = this.c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.c = iArr;
            this.d = objArr2;
        }
        int i4 = this.e;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.c;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            Object[] objArr4 = this.d;
            System.arraycopy(objArr4, i2, objArr4, i5, this.e - i2);
        }
        this.c[i2] = i;
        this.d[i2] = e2;
        this.e++;
    }

    public int c(int i) {
        if (this.f442b) {
            d();
        }
        return this.c[i];
    }

    public void c() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f442b = false;
    }

    public void c(int i, E e2) {
        int i2 = this.e;
        if (i2 == 0 || i > this.c[i2 - 1]) {
            if (this.f442b && this.e >= this.c.length) {
                d();
            }
            int i3 = this.e;
            if (i3 >= this.c.length) {
                int a2 = c.a(i3 + 1);
                int[] iArr = new int[a2];
                Object[] objArr = new Object[a2];
                int[] iArr2 = this.c;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.c = iArr;
                this.d = objArr;
            }
            this.c[i3] = i;
            this.d[i3] = e2;
            this.e = i3 + 1;
            return;
        }
        b(i, e2);
    }

    public E d(int i) {
        if (this.f442b) {
            d();
        }
        return this.d[i];
    }

    public int e(int i) {
        if (this.f442b) {
            d();
        }
        return c.a(this.c, this.e, i);
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(c(i));
            sb.append('=');
            Object d2 = d(i);
            if (d2 != this) {
                sb.append(d2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
