package androidx.core.f;

/* compiled from: Pools */
public final class d {

    /* compiled from: Pools */
    public interface a<T> {
        T a();

        boolean a(T t);
    }

    /* compiled from: Pools */
    public static class b<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f536a;

        /* renamed from: b  reason: collision with root package name */
        private int f537b;

        public b(int i) {
            if (i > 0) {
                this.f536a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean b(T t) {
            for (int i = 0; i < this.f537b; i++) {
                if (this.f536a[i] == t) {
                    return true;
                }
            }
            return false;
        }

        public T a() {
            int i = this.f537b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            T[] tArr = this.f536a;
            T t = tArr[i2];
            tArr[i2] = null;
            this.f537b = i - 1;
            return t;
        }

        public boolean a(T t) {
            if (!b(t)) {
                int i = this.f537b;
                Object[] objArr = this.f536a;
                if (i >= objArr.length) {
                    return false;
                }
                objArr[i] = t;
                this.f537b = i + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* compiled from: Pools */
    public static class c<T> extends b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f538a = new Object();

        public c(int i) {
            super(i);
        }

        public T a() {
            T a2;
            synchronized (this.f538a) {
                a2 = super.a();
            }
            return a2;
        }

        public boolean a(T t) {
            boolean a2;
            synchronized (this.f538a) {
                a2 = super.a(t);
            }
            return a2;
        }
    }
}
