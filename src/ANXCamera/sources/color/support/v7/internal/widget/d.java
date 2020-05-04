package color.support.v7.internal.widget;

import com.google.protobuf.nano.MessageNano;

/* compiled from: RtlSpacingHelper */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private int f1404a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f1405b = 0;
    private int c = MessageNano.UNSET_ENUM_VALUE;
    private int d = MessageNano.UNSET_ENUM_VALUE;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    public int a() {
        return this.f1404a;
    }

    public void a(int i, int i2) {
        this.c = i;
        this.d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1404a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f1405b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1404a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1405b = i2;
        }
    }

    public void a(boolean z) {
        if (z != this.g) {
            this.g = z;
            if (!this.h) {
                this.f1404a = this.e;
                this.f1405b = this.f;
            } else if (z) {
                int i = this.d;
                if (i == Integer.MIN_VALUE) {
                    i = this.e;
                }
                this.f1404a = i;
                int i2 = this.c;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = this.f;
                }
                this.f1405b = i2;
            } else {
                int i3 = this.c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = this.e;
                }
                this.f1404a = i3;
                int i4 = this.d;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = this.f;
                }
                this.f1405b = i4;
            }
        }
    }

    public int b() {
        return this.f1405b;
    }

    public void b(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.e = i;
            this.f1404a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.f1405b = i2;
        }
    }

    public int c() {
        return this.g ? this.f1405b : this.f1404a;
    }

    public int d() {
        return this.g ? this.f1404a : this.f1405b;
    }
}
