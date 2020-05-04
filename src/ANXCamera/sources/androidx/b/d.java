package androidx.b;

/* compiled from: LongSparseArray */
public class d<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f428a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private boolean f429b;
    private long[] c;
    private Object[] d;
    private int e;

    public d() {
        this(10);
    }

    public d(int i) {
        this.f429b = false;
        if (i == 0) {
            this.c = c.f427b;
            this.d = c.c;
            return;
        }
        int b2 = c.b(i);
        this.c = new long[b2];
        this.d = new Object[b2];
    }

    private void e() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f428a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f429b = false;
        this.e = i2;
    }

    /* renamed from: a */
    public d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.c = (long[]) this.c.clone();
            dVar.d = (Object[]) this.d.clone();
            return dVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E a(long j) {
        return a(j, (Object) null);
    }

    public E a(long j, E e2) {
        int a2 = c.a(this.c, this.e, j);
        if (a2 >= 0) {
            E[] eArr = this.d;
            if (eArr[a2] != f428a) {
                return eArr[a2];
            }
        }
        return e2;
    }

    public void a(int i) {
        Object[] objArr = this.d;
        Object obj = objArr[i];
        Object obj2 = f428a;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f429b = true;
        }
    }

    public int b() {
        if (this.f429b) {
            e();
        }
        return this.e;
    }

    public long b(int i) {
        if (this.f429b) {
            e();
        }
        return this.c[i];
    }

    @Deprecated
    public void b(long j) {
        c(j);
    }

    public void b(long j, E e2) {
        int a2 = c.a(this.c, this.e, j);
        if (a2 >= 0) {
            this.d[a2] = e2;
            return;
        }
        int i = ~a2;
        if (i < this.e) {
            Object[] objArr = this.d;
            if (objArr[i] == f428a) {
                this.c[i] = j;
                objArr[i] = e2;
                return;
            }
        }
        if (this.f429b && this.e >= this.c.length) {
            e();
            i = ~c.a(this.c, this.e, j);
        }
        int i2 = this.e;
        if (i2 >= this.c.length) {
            int b2 = c.b(i2 + 1);
            long[] jArr = new long[b2];
            Object[] objArr2 = new Object[b2];
            long[] jArr2 = this.c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.c = jArr;
            this.d = objArr2;
        }
        int i3 = this.e;
        if (i3 - i != 0) {
            long[] jArr3 = this.c;
            int i4 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i4, i3 - i);
            Object[] objArr4 = this.d;
            System.arraycopy(objArr4, i, objArr4, i4, this.e - i);
        }
        this.c[i] = j;
        this.d[i] = e2;
        this.e++;
    }

    public E c(int i) {
        if (this.f429b) {
            e();
        }
        return this.d[i];
    }

    public void c(long j) {
        int a2 = c.a(this.c, this.e, j);
        if (a2 >= 0) {
            Object[] objArr = this.d;
            Object obj = objArr[a2];
            Object obj2 = f428a;
            if (obj != obj2) {
                objArr[a2] = obj2;
                this.f429b = true;
            }
        }
    }

    public void c(long j, E e2) {
        int i = this.e;
        if (i == 0 || j > this.c[i - 1]) {
            if (this.f429b && this.e >= this.c.length) {
                e();
            }
            int i2 = this.e;
            if (i2 >= this.c.length) {
                int b2 = c.b(i2 + 1);
                long[] jArr = new long[b2];
                Object[] objArr = new Object[b2];
                long[] jArr2 = this.c;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.c = jArr;
                this.d = objArr;
            }
            this.c[i2] = j;
            this.d[i2] = e2;
            this.e = i2 + 1;
            return;
        }
        b(j, e2);
    }

    public boolean c() {
        return b() == 0;
    }

    public void d() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f429b = false;
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
            sb.append(b(i));
            sb.append('=');
            Object c2 = c(i);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
