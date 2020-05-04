package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.g.aa;
import androidx.core.g.y;
import androidx.core.g.z;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ViewPropertyAnimatorCompatSet */
public class h {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<y> f156a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    z f157b;
    private long c = -1;
    private Interpolator d;
    private boolean e;
    private final aa f = new aa() {

        /* renamed from: b  reason: collision with root package name */
        private boolean f159b = false;
        private int c = 0;

        /* access modifiers changed from: package-private */
        public void a() {
            this.c = 0;
            this.f159b = false;
            h.this.b();
        }

        public void a(View view) {
            if (!this.f159b) {
                this.f159b = true;
                if (h.this.f157b != null) {
                    h.this.f157b.a((View) null);
                }
            }
        }

        public void b(View view) {
            int i = this.c + 1;
            this.c = i;
            if (i == h.this.f156a.size()) {
                if (h.this.f157b != null) {
                    h.this.f157b.b((View) null);
                }
                a();
            }
        }
    };

    public h a(long j) {
        if (!this.e) {
            this.c = j;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.e) {
            this.d = interpolator;
        }
        return this;
    }

    public h a(y yVar) {
        if (!this.e) {
            this.f156a.add(yVar);
        }
        return this;
    }

    public h a(y yVar, y yVar2) {
        this.f156a.add(yVar);
        yVar2.b(yVar.a());
        this.f156a.add(yVar2);
        return this;
    }

    public h a(z zVar) {
        if (!this.e) {
            this.f157b = zVar;
        }
        return this;
    }

    public void a() {
        if (!this.e) {
            Iterator<y> it = this.f156a.iterator();
            while (it.hasNext()) {
                y next = it.next();
                long j = this.c;
                if (j >= 0) {
                    next.a(j);
                }
                Interpolator interpolator = this.d;
                if (interpolator != null) {
                    next.a(interpolator);
                }
                if (this.f157b != null) {
                    next.a((z) this.f);
                }
                next.c();
            }
            this.e = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        this.e = false;
    }

    public void c() {
        if (this.e) {
            Iterator<y> it = this.f156a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e = false;
        }
    }
}
