package com.oppo.camera.m;

import android.app.Activity;
import com.b.a;
import com.b.b;
import com.oppo.camera.d.n;
import com.oppo.camera.ui.c;

/* compiled from: SLVFps960Mode */
public class d extends a {
    /* access modifiers changed from: private */
    public boolean d = false;
    /* access modifiers changed from: private */
    public a e;
    /* access modifiers changed from: private */
    public final b f = new b() {

        /* renamed from: b  reason: collision with root package name */
        private boolean f2256b = false;

        public void a(int i) {
            if (i != 1) {
                String str = null;
                if (i != 2) {
                    if (i == 3) {
                        if (d.this.e != null) {
                            str = d.this.e.c();
                        }
                        this.f2256b = true;
                        d.this.c.b(str);
                        com.oppo.camera.d.e("SLVFps960Mode", "onCompileStatusChange, compile failed!");
                    }
                } else if (!this.f2256b) {
                    if (d.this.e != null) {
                        str = d.this.e.c();
                        com.oppo.camera.d.b("SLVFps960Mode", "onCompileStatusChange, compile finished ! Cost: " + (System.currentTimeMillis() - d.this.e.d()));
                    }
                    com.oppo.camera.d.b("SLVFps960Mode", "onCompileStatusChange mbStopped: " + d.this.d);
                    if (d.this.d) {
                        boolean unused = d.this.d = false;
                        d.this.c.b(str);
                        return;
                    }
                    d.this.c.a(str);
                } else {
                    com.oppo.camera.d.b("SLVFps960Mode", "onCompileStatusChange, compile finished, but already failed!");
                }
            } else {
                this.f2256b = false;
                com.oppo.camera.d.b("SLVFps960Mode", "onCompileStatusChange compile going...");
            }
        }
    };

    public d(Activity activity, c cVar) {
        super(activity, cVar);
        j();
        com.oppo.camera.d.b("SLVFps960Mode", "SLVFps960Mode, new MeicamVideoEngine");
    }

    private void j() {
        this.f2249a.runOnUiThread(new Runnable() {
            public void run() {
                if (d.this.e == null) {
                    d dVar = d.this;
                    a unused = dVar.e = new a(dVar.f2249a, d.this.f);
                }
            }
        });
    }

    public com.oppo.camera.ui.control.c a(int i) {
        return i == 2 ? new com.oppo.camera.ui.control.c(3, "button_color_inside_none", "button_shape_dial_still", 1) : super.a(i);
    }

    /* access modifiers changed from: package-private */
    public String a() {
        return "960FPS";
    }

    public void a(n nVar) {
        if (nVar != null) {
            nVar.d();
            com.oppo.camera.d.b("SLVFps960Mode", "onInitVideoRecorder, writeAuthorEnablePlatfromVideoInterpolator");
        }
    }

    public boolean a(int i, String str) {
        this.d = false;
        if (b()) {
            a aVar = this.e;
            if (aVar != null) {
                aVar.a(i);
                return this.e.a(str);
            }
        }
        return false;
    }

    public boolean b() {
        return true;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public int e() {
        return 2250;
    }

    public void f() {
        this.f2250b.t();
    }

    public void g() {
        this.f2250b.u();
    }

    public void h() {
        this.d = true;
        a aVar = this.e;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void i() {
        this.f2249a.runOnUiThread(new Runnable() {
            public void run() {
                if (d.this.e != null) {
                    d.this.e.b();
                    a unused = d.this.e = null;
                    com.oppo.camera.d.b("SLVFps960Mode", "exit, releaseMeicamVideoEngine");
                }
            }
        });
        super.i();
    }
}
