package androidx.recyclerview.widget;

import android.view.View;

/* compiled from: ViewBoundsCheck */
class s {

    /* renamed from: a  reason: collision with root package name */
    final b f995a;

    /* renamed from: b  reason: collision with root package name */
    a f996b = new a();

    /* compiled from: ViewBoundsCheck */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        int f997a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f998b;
        int c;
        int d;
        int e;

        a() {
        }

        /* access modifiers changed from: package-private */
        public int a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.f997a = 0;
        }

        /* access modifiers changed from: package-private */
        public void a(int i) {
            this.f997a = i | this.f997a;
        }

        /* access modifiers changed from: package-private */
        public void a(int i, int i2, int i3, int i4) {
            this.f998b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }

        /* access modifiers changed from: package-private */
        public boolean b() {
            int i = this.f997a;
            if ((i & 7) != 0 && (i & (a(this.d, this.f998b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f997a;
            if ((i2 & 112) != 0 && (i2 & (a(this.d, this.c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f997a;
            if ((i3 & 1792) != 0 && (i3 & (a(this.e, this.f998b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f997a;
            return (i4 & 28672) == 0 || (i4 & (a(this.e, this.c) << 12)) != 0;
        }
    }

    /* compiled from: ViewBoundsCheck */
    interface b {
        int a();

        int a(View view);

        View a(int i);

        int b();

        int b(View view);
    }

    s(b bVar) {
        this.f995a = bVar;
    }

    /* access modifiers changed from: package-private */
    public View a(int i, int i2, int i3, int i4) {
        int a2 = this.f995a.a();
        int b2 = this.f995a.b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View a3 = this.f995a.a(i);
            this.f996b.a(a2, b2, this.f995a.a(a3), this.f995a.b(a3));
            if (i3 != 0) {
                this.f996b.a();
                this.f996b.a(i3);
                if (this.f996b.b()) {
                    return a3;
                }
            }
            if (i4 != 0) {
                this.f996b.a();
                this.f996b.a(i4);
                if (this.f996b.b()) {
                    view = a3;
                }
            }
            i += i5;
        }
        return view;
    }

    /* access modifiers changed from: package-private */
    public boolean a(View view, int i) {
        this.f996b.a(this.f995a.a(), this.f995a.b(), this.f995a.a(view), this.f995a.b(view));
        if (i == 0) {
            return false;
        }
        this.f996b.a();
        this.f996b.a(i);
        return this.f996b.b();
    }
}
