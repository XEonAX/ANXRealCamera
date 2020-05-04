package androidx.media;

import java.util.Arrays;

/* compiled from: AudioAttributesImplBase */
class c implements a {

    /* renamed from: a  reason: collision with root package name */
    int f789a = 0;

    /* renamed from: b  reason: collision with root package name */
    int f790b = 0;
    int c = 0;
    int d = -1;

    c() {
    }

    public int a() {
        int i = this.d;
        return i != -1 ? i : AudioAttributesCompat.a(false, this.c, this.f789a);
    }

    public int b() {
        return this.f790b;
    }

    public int c() {
        return this.f789a;
    }

    public int d() {
        int i = this.c;
        int a2 = a();
        if (a2 == 6) {
            i |= 4;
        } else if (a2 == 7) {
            i |= 1;
        }
        return i & 273;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f790b == cVar.b() && this.c == cVar.d() && this.f789a == cVar.c() && this.d == cVar.d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f790b), Integer.valueOf(this.c), Integer.valueOf(this.f789a), Integer.valueOf(this.d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.d != -1) {
            sb.append(" stream=");
            sb.append(this.d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.a(this.f789a));
        sb.append(" content=");
        sb.append(this.f790b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.c).toUpperCase());
        return sb.toString();
    }
}
