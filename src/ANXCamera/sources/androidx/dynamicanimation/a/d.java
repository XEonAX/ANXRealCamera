package androidx.dynamicanimation.a;

import androidx.dynamicanimation.a.b;

/* compiled from: SpringAnimation */
public final class d extends b<d> {
    private e w = null;
    private float x = Float.MAX_VALUE;
    private boolean y = false;

    public <K> d(K k, c<K> cVar) {
        super(k, cVar);
    }

    private void c() {
        e eVar = this.w;
        if (eVar != null) {
            double a2 = (double) eVar.a();
            if (a2 > ((double) this.u)) {
                throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
            } else if (a2 < ((double) this.v)) {
                throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
            }
        } else {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
    }

    public d a(e eVar) {
        this.w = eVar;
        return this;
    }

    public void a() {
        c();
        this.w.a((double) b());
        super.a();
    }

    /* access modifiers changed from: package-private */
    public boolean a(float f, float f2) {
        return this.w.a(f, f2);
    }

    /* access modifiers changed from: package-private */
    public boolean b(long j) {
        if (this.y) {
            float f = this.x;
            if (f != Float.MAX_VALUE) {
                this.w.c(f);
                this.x = Float.MAX_VALUE;
            }
            this.p = this.w.a();
            this.o = 0.0f;
            this.y = false;
            return true;
        }
        if (this.x != Float.MAX_VALUE) {
            this.w.a();
            long j2 = j / 2;
            b.a a2 = this.w.a((double) this.p, (double) this.o, j2);
            this.w.c(this.x);
            this.x = Float.MAX_VALUE;
            b.a a3 = this.w.a((double) a2.f651a, (double) a2.f652b, j2);
            this.p = a3.f651a;
            this.o = a3.f652b;
        } else {
            b.a a4 = this.w.a((double) this.p, (double) this.o, j);
            this.p = a4.f651a;
            this.o = a4.f652b;
        }
        this.p = Math.max(this.p, this.v);
        this.p = Math.min(this.p, this.u);
        if (!a(this.p, this.o)) {
            return false;
        }
        this.p = this.w.a();
        this.o = 0.0f;
        return true;
    }
}
