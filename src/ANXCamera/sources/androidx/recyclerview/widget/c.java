package androidx.recyclerview.widget;

/* compiled from: BatchingListUpdateCallback */
public class c implements k {

    /* renamed from: a  reason: collision with root package name */
    final k f934a;

    /* renamed from: b  reason: collision with root package name */
    int f935b = 0;
    int c = -1;
    int d = -1;
    Object e = null;

    public c(k kVar) {
        this.f934a = kVar;
    }

    public void a() {
        int i = this.f935b;
        if (i != 0) {
            if (i == 1) {
                this.f934a.a(this.c, this.d);
            } else if (i == 2) {
                this.f934a.b(this.c, this.d);
            } else if (i == 3) {
                this.f934a.a(this.c, this.d, this.e);
            }
            this.e = null;
            this.f935b = 0;
        }
    }

    public void a(int i, int i2) {
        if (this.f935b == 1) {
            int i3 = this.c;
            if (i >= i3) {
                int i4 = this.d;
                if (i <= i3 + i4) {
                    this.d = i4 + i2;
                    this.c = Math.min(i, i3);
                    return;
                }
            }
        }
        a();
        this.c = i;
        this.d = i2;
        this.f935b = 1;
    }

    public void a(int i, int i2, Object obj) {
        if (this.f935b == 3) {
            int i3 = this.c;
            int i4 = this.d;
            if (i <= i3 + i4) {
                int i5 = i + i2;
                if (i5 >= i3 && this.e == obj) {
                    this.c = Math.min(i, i3);
                    this.d = Math.max(i4 + i3, i5) - this.c;
                    return;
                }
            }
        }
        a();
        this.c = i;
        this.d = i2;
        this.e = obj;
        this.f935b = 3;
    }

    public void b(int i, int i2) {
        if (this.f935b == 2) {
            int i3 = this.c;
            if (i3 >= i && i3 <= i + i2) {
                this.d += i2;
                this.c = i;
                return;
            }
        }
        a();
        this.c = i;
        this.d = i2;
        this.f935b = 2;
    }

    public void c(int i, int i2) {
        a();
        this.f934a.c(i, i2);
    }
}
