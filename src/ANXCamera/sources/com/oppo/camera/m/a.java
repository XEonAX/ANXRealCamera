package com.oppo.camera.m;

import android.app.Activity;
import com.oppo.camera.d;
import com.oppo.camera.d.n;
import com.oppo.camera.ui.c;

/* compiled from: SLVBaseMode */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected Activity f2249a;

    /* renamed from: b  reason: collision with root package name */
    protected c f2250b;
    protected C0062a c = null;

    /* renamed from: com.oppo.camera.m.a$a  reason: collision with other inner class name */
    /* compiled from: SLVBaseMode */
    public interface C0062a {
        void a(String str);

        void b(String str);
    }

    public a(Activity activity, c cVar) {
        this.f2249a = activity;
        this.f2250b = cVar;
        d.a("SLVBaseMode", " enter");
    }

    public com.oppo.camera.ui.control.c a(int i) {
        if (i == 1) {
            return new com.oppo.camera.ui.control.c(6, "button_color_inside_red", "button_shape_dial_still", 1);
        }
        if (i == 2) {
            return new com.oppo.camera.ui.control.c(5, "button_color_inside_red", "button_shape_dial_still", 1);
        }
        if (i != 3) {
            return null;
        }
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
        cVar.a("button_color_inside_none");
        cVar.a(4);
        return cVar;
    }

    /* access modifiers changed from: package-private */
    public abstract String a();

    public void a(n nVar) {
    }

    public void a(C0062a aVar) {
        this.c = aVar;
    }

    public boolean a(int i, String str) {
        return false;
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return true;
    }

    public boolean d() {
        return true;
    }

    public int e() {
        return Integer.MAX_VALUE;
    }

    public void f() {
    }

    public void g() {
    }

    public void h() {
    }

    public void i() {
        this.f2249a = null;
        this.f2250b = null;
        this.c = null;
        d.a("SLVBaseMode", "exit");
    }
}
