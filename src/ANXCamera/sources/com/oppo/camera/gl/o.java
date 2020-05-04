package com.oppo.camera.gl;

/* compiled from: IntArray */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private int[] f2177a = new int[8];

    /* renamed from: b  reason: collision with root package name */
    private int f2178b = 0;

    public int a() {
        this.f2178b--;
        return this.f2177a[this.f2178b];
    }

    public void a(int i) {
        int[] iArr = this.f2177a;
        int length = iArr.length;
        int i2 = this.f2178b;
        if (length == i2) {
            int[] iArr2 = new int[(i2 + i2)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f2177a = iArr2;
        }
        int[] iArr3 = this.f2177a;
        int i3 = this.f2178b;
        this.f2178b = i3 + 1;
        iArr3[i3] = i;
    }

    public int b() {
        return this.f2178b;
    }

    public int[] c() {
        return this.f2177a;
    }

    public void d() {
        this.f2178b = 0;
        if (this.f2177a.length != 8) {
            this.f2177a = new int[8];
        }
    }
}
