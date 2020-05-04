package com.oppo.camera.k;

import co.polarr.renderer.FilterPackageUtil;
import com.oppo.camera.R;
import com.oppo.camera.ui.preview.a.d;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MonoFilterManager */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f2230a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2231b = 0;
    private List<C0060a> c = null;
    private String[] d = null;
    private int[] e = null;

    /* renamed from: com.oppo.camera.k.a$a  reason: collision with other inner class name */
    /* compiled from: MonoFilterManager */
    private class C0060a {

        /* renamed from: b  reason: collision with root package name */
        private int f2233b = 0;
        private int c = 0;
        private String d = null;
        private String e = null;

        public C0060a(int i, int i2, String str, String str2) {
            this.f2233b = i;
            this.c = i2;
            this.d = str;
            this.e = str2;
        }

        public int a() {
            return this.c;
        }

        public String b() {
            return this.d;
        }

        public String c() {
            return this.e;
        }
    }

    public a(int i) {
        this.f2230a = i;
        this.c = new ArrayList();
        d();
        this.f2231b = this.c.size();
        if (this.f2231b > 0) {
            e();
            f();
        }
    }

    private void d() {
        if (com.oppo.camera.e.a.d(15) != 0) {
            C0060a aVar = new C0060a(com.oppo.camera.e.a.d(15), R.string.camera_protrait_filter_mono1, FilterPackageUtil.PORTRAIT4_1, FilterPackageUtil.PORTRAIT4_2);
            this.c.add(aVar);
        }
        if (com.oppo.camera.e.a.d(16) != 0) {
            C0060a aVar2 = new C0060a(com.oppo.camera.e.a.d(16), R.string.camera_protrait_filter_mono2, FilterPackageUtil.PORTRAIT4_3, FilterPackageUtil.PORTRAIT4_4);
            this.c.add(aVar2);
        }
    }

    public static int e(int i) {
        if (1 > i) {
            return com.oppo.camera.e.a.d(15);
        }
        int d2 = com.oppo.camera.e.a.d(16);
        return d2 == 0 ? com.oppo.camera.e.a.d(15) : d2;
    }

    private void e() {
        if (this.d == null) {
            this.d = new String[(this.f2230a + this.f2231b)];
            int length = this.d.length;
            for (int i = 0; i < length; i++) {
                int i2 = this.f2230a;
                if (i < i2) {
                    this.d[i] = d.f[i];
                } else {
                    this.d[i] = c(i - i2);
                }
            }
        }
    }

    private void f() {
        if (this.e == null) {
            this.e = new int[(this.f2230a + this.f2231b)];
            int length = this.e.length;
            for (int i = 0; i < length; i++) {
                int i2 = this.f2230a;
                if (i < i2) {
                    this.e[i] = d.h[i];
                } else {
                    this.e[i] = a(i - i2);
                }
            }
        }
    }

    private boolean f(int i) {
        List<C0060a> list = this.c;
        return list == null || i >= list.size();
    }

    public int a(int i) {
        if (f(i)) {
            return 0;
        }
        return this.c.get(i).a();
    }

    public void a() {
        List<C0060a> list = this.c;
        if (list != null) {
            list.clear();
            this.c = null;
            this.d = null;
            this.e = null;
        }
    }

    public synchronized void a(boolean z, int i) {
        if (!f(i)) {
            com.oppo.camera.d.a("MonoFilterManager", "setIsShelterByIndex, isShelter: " + z + ", index: " + i);
            this.d[this.f2230a + i] = z ? this.c.get(i).c() : this.c.get(i).b();
        }
    }

    public boolean a(int i, int i2) {
        int i3 = this.f2230a;
        return i >= i3 || i2 >= i3;
    }

    public String b(int i) {
        return f(i) ? FilterPackageUtil.F_DEFAULT : this.d[this.f2230a + i];
    }

    public String[] b() {
        return this.d;
    }

    public String c(int i) {
        return f(i) ? FilterPackageUtil.F_DEFAULT : this.c.get(i).b();
    }

    public int[] c() {
        return this.e;
    }

    public String d(int i) {
        return f(i) ? FilterPackageUtil.F_CUBE_2018_11 : this.c.get(i).c();
    }
}
