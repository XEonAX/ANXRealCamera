package androidx.appcompat.widget;

import com.google.protobuf.nano.MessageNano;

/* compiled from: RtlSpacingHelper */
class am {

    /* renamed from: a  reason: collision with root package name */
    private int f330a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f331b = 0;
    private int c = MessageNano.UNSET_ENUM_VALUE;
    private int d = MessageNano.UNSET_ENUM_VALUE;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    am() {
    }

    public int a() {
        return this.f330a;
    }

    public void a(int i, int i2) {
        this.c = i;
        this.d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f330a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f331b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f330a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f331b = i2;
        }
    }

    public void a(boolean z) {
        if (z != this.g) {
            this.g = z;
            if (!this.h) {
                this.f330a = this.e;
                this.f331b = this.f;
            } else if (z) {
                int i = this.d;
                if (i == Integer.MIN_VALUE) {
                    i = this.e;
                }
                this.f330a = i;
                int i2 = this.c;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = this.f;
                }
                this.f331b = i2;
            } else {
                int i3 = this.c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = this.e;
                }
                this.f330a = i3;
                int i4 = this.d;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = this.f;
                }
                this.f331b = i4;
            }
        }
    }

    public int b() {
        return this.f331b;
    }

    public void b(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.e = i;
            this.f330a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.f331b = i2;
        }
    }

    public int c() {
        return this.g ? this.f331b : this.f330a;
    }

    public int d() {
        return this.g ? this.f330a : this.f331b;
    }
}
