package com.oppo.camera.c;

import android.app.Activity;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Handler;
import android.os.Message;
import android.util.Size;
import com.oppo.camera.d;
import com.oppo.camera.e.c;
import com.oppo.camera.e.f;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.ui.beauty3d.g;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: Beauty3DManager */
public class b {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public Activity f1841a = null;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public volatile int f1842b = 0;
    private volatile boolean c = false;
    /* access modifiers changed from: private */
    public boolean d = false;
    private int e = 0;
    private f f = null;
    /* access modifiers changed from: private */
    public g g = null;
    /* access modifiers changed from: private */
    public d h = null;
    private c i = null;
    private int[] j = {1};
    private int[] k = {2};
    private int[] l = {3};
    /* access modifiers changed from: private */
    public int m = 0;
    /* access modifiers changed from: private */
    public int n = 0;
    /* access modifiers changed from: private */
    public int o = 0;
    /* access modifiers changed from: private */
    public int p = 0;
    private Handler q = new Handler() {
        public void handleMessage(Message message) {
            TotalCaptureResult totalCaptureResult = (TotalCaptureResult) message.obj;
            int i = message.what;
            if (i == 1) {
                b.this.e(totalCaptureResult);
            } else if (i == 2) {
                b.this.c(totalCaptureResult);
            } else if (i == 3) {
                b.this.c(totalCaptureResult);
                b.this.d(totalCaptureResult);
            }
        }
    };
    private g.a r = new g.a() {
        public void a() {
            if (b.this.h != null) {
                b.this.h.c();
            }
        }

        public void a(String str, int[] iArr) {
            if ("com.oppo.beauty3d.mode".equals(str) && iArr != null && iArr[0] == 3) {
                b.this.a(10);
            } else if ("com.oppo.beauty3d.scan.state".equals(str) && iArr != null) {
                b.this.a(2);
            }
            if (iArr != null) {
                b.this.b(str, iArr);
            }
        }

        public void a(boolean z) {
            if (b.this.h != null) {
                b.this.a(false);
                b.this.h.a(z);
            }
        }

        public void b() {
            if (b.this.f1842b != 1 && b.this.h != null) {
                b.this.a(false);
                b.this.a(1);
                b.this.h.d();
                int unused = b.this.m = b.this.m + 1;
            }
        }

        public void c() {
            if (b.this.f1842b != 1 && b.this.h != null) {
                b.this.a(false);
                b.this.a(1);
                b.this.h.d();
            }
        }

        public void d() {
            if (b.this.h != null) {
                b.this.a(0);
                b.this.a(false);
                b.this.h.b(false);
            }
        }

        public void e() {
            d.a("Beauty3DManager", "onEditSave");
            if (com.oppo.camera.ui.preview.a.f.a(b.this.f1841a) == 0) {
                com.oppo.camera.ui.preview.a.f.c(b.this.f1841a);
                int unused = b.this.n = b.this.n + 1;
            }
            if (b.this.h != null) {
                b.this.a(0);
                b.this.a(false);
                b.this.h.b(true);
            }
        }

        public void f() {
            if (b.this.h != null) {
                b.this.h.c(false);
            }
        }

        public void g() {
            b.this.a(8);
            b.this.a(false);
            if (b.this.h != null) {
                b.this.h.e();
            }
            int unused = b.this.p = b.this.p + 1;
        }

        public void h() {
            b.this.o();
            if (b.this.h != null) {
                b.this.h.f();
            }
            int unused = b.this.o = b.this.o + 1;
        }

        public void i() {
            b.this.a(6);
            b.this.a(false);
            if (b.this.h != null) {
                b.this.h.b();
            }
            boolean unused = b.this.d = false;
        }
    };

    public b(Activity activity, d dVar) {
        this.f1841a = activity;
        this.h = dVar;
        this.g = new g(activity);
        this.i = c.a();
        this.i.a(activity);
    }

    private void c(int i2) {
        Integer f2 = this.i.f(i2);
        if (f2 != null) {
            a(f2);
        }
    }

    /* access modifiers changed from: private */
    public void c(TotalCaptureResult totalCaptureResult) {
        c n2 = this.f.n();
        CaptureResult.Key<?> b2 = n2.b("com.oppo.beauty3d.analyses.result");
        if (b2 != null) {
            int[] iArr = (int[]) totalCaptureResult.get(b2);
            if (iArr != null && iArr.length == 6 && iArr[0] == 2) {
                c("com.oppo.beauty3d.analyses.result", Arrays.copyOfRange(iArr, 1, 6));
            }
        }
        CaptureResult.Key<?> b3 = n2.b("com.oppo.beauty3d.analyses.ffd");
        if (b3 != null) {
            int[] iArr2 = (int[]) totalCaptureResult.get(b3);
            if (iArr2 != null && iArr2.length == 11 && iArr2[0] == 3) {
                c("com.oppo.beauty3d.analyses.ffd", Arrays.copyOfRange(iArr2, 1, 11));
            }
        }
    }

    /* access modifiers changed from: private */
    public void d(TotalCaptureResult totalCaptureResult) {
        d.a("Beauty3DManager", "onBeauty3DEdit");
        CaptureResult.Key<?> b2 = this.f.n().b("com.oppo.beauty3d.custom.result");
        if (b2 != null) {
            int[] iArr = (int[]) totalCaptureResult.get(b2);
            if (iArr != null && iArr.length == 2) {
                d.a("Beauty3DManager", "onBeauty3DEdit, styleResult.length: " + iArr.length);
                c("com.oppo.beauty3d.custom.result", iArr);
            }
        }
    }

    /* access modifiers changed from: private */
    public void e(TotalCaptureResult totalCaptureResult) {
        CaptureResult.Key<?> b2 = this.f.n().b("com.oppo.beauty3d.scan.result");
        if (b2 != null) {
            int[] iArr = (int[]) totalCaptureResult.get(b2);
            if (iArr != null && iArr.length >= 2) {
                d.a("Beauty3DManager", "onBeautyScanResult, update hint: " + iArr[0]);
                int i2 = iArr[1];
                if (this.e != i2) {
                    this.e = i2;
                    b(i2);
                }
                int i3 = iArr[0];
                if (i3 == 0) {
                    d.a("Beauty3DManager", "onBeautyScanResult, BEAUTY3D_SCAN_SUCCESS");
                    int i4 = iArr[1];
                    d.a("Beauty3DManager", "onBeautyScanResult, update process: " + i4);
                    if (i4 == 100 && !this.d) {
                        b(100);
                        this.d = true;
                        this.q.removeMessages(1);
                        l();
                    }
                } else if (i3 == 1) {
                    int i5 = iArr[1];
                    d.a("Beauty3DManager", "onBeautyScanResult, update process: " + i5);
                    b(i5);
                } else if (i3 <= 19) {
                    c(i3);
                } else if (i3 >= 20) {
                    d.a("Beauty3DManager", "onBeautyScanResult, updateHintValue: " + i3);
                    a(false);
                    c(i3);
                    this.q.removeMessages(1);
                    this.q.postDelayed(new Runnable() {
                        public void run() {
                            b.this.c(false);
                            if (b.this.h != null) {
                                b.this.h.a();
                            }
                        }
                    }, 2000);
                }
            }
        }
    }

    public int a(TotalCaptureResult totalCaptureResult) {
        if (!this.c) {
            this.q.removeCallbacksAndMessages((Object) null);
            return this.f1842b;
        }
        Message obtain = Message.obtain();
        obtain.obj = totalCaptureResult;
        int i2 = this.f1842b;
        if (i2 == 3) {
            this.q.removeMessages(1);
            obtain.what = 1;
            this.q.sendMessage(obtain);
        } else if (i2 == 7) {
            this.q.removeMessages(2);
            obtain.what = 2;
            this.q.sendMessage(obtain);
        } else if (i2 == 10) {
            this.q.removeMessages(3);
            obtain.what = 3;
            this.q.sendMessage(obtain);
        }
        return this.f1842b;
    }

    public void a() {
        this.g.a(this.r);
    }

    public void a(int i2) {
        d.a("Beauty3DManager", "setBeauty3DState, mBeauty3DState: " + this.f1842b + " -> " + i2);
        this.f1842b = i2;
    }

    public void a(int i2, Size size) {
        g gVar = this.g;
        if (gVar != null && size != null) {
            gVar.a(i2, com.oppo.camera.o.d.b(size.getWidth(), size.getHeight()), com.oppo.camera.o.d.b(size));
        }
    }

    public void a(Size size) {
        this.c = false;
        if (this.f1842b == 3) {
            a(2);
        } else if (this.f1842b == 10) {
            g gVar = this.g;
            if (gVar == null || gVar.k() == 0) {
                a(8);
            } else {
                a(9);
            }
        }
        b(size);
    }

    public void a(f fVar) {
        this.f = fVar;
        a(true);
        d.a("Beauty3DManager", "onBeauty3DSessionConfigured, enterBeauty3D Mode");
    }

    public void a(Integer num) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.a(num);
        }
    }

    public void a(boolean z) {
        this.c = z;
    }

    public boolean a(String str, int[] iArr) {
        f fVar = this.f;
        if (fVar == null) {
            return false;
        }
        fVar.a(str, iArr);
        d.a("Beauty3DManager", "setBeauty3DParams, setParam, key: " + str + ", value: " + iArr[0]);
        return true;
    }

    public void b() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.d();
        }
        c();
    }

    public void b(final int i2) {
        Activity activity = this.f1841a;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (b.this.g != null) {
                        b.this.g.a(i2);
                    }
                }
            });
        }
    }

    public void b(TotalCaptureResult totalCaptureResult) {
        if (this.f1842b == 2) {
            this.q.post(new Runnable() {
                public void run() {
                    b.this.a(3);
                    b.this.b(true);
                }
            });
        } else if (this.f1842b == 6) {
            this.q.post(new Runnable() {
                public void run() {
                    b.this.a(7);
                    b.this.d(true);
                }
            });
        } else if (this.f1842b == 8 || this.f1842b == 9) {
            this.q.post(new Runnable() {
                public void run() {
                    b.this.a(10);
                    b.this.d(true);
                }
            });
        }
        a(totalCaptureResult);
    }

    public void b(Size size) {
        d.a("Beauty3DManager", "onBeauty3DResume, beauty3dState: " + this.f1842b);
        if (this.g != null) {
            int i2 = 1;
            if (this.f1842b == 1) {
                d dVar = this.h;
                if (dVar != null) {
                    dVar.c(true);
                }
                this.g.a(0, false, com.oppo.camera.o.d.F(), com.oppo.camera.o.d.E());
                this.g.d(false);
            } else if (this.f1842b == 2) {
                d dVar2 = this.h;
                if (dVar2 != null) {
                    dVar2.c(true);
                }
                this.g.a(0, false);
                this.g.d(false);
            } else if (this.f1842b == 7 || this.f1842b == 9) {
                d dVar3 = this.h;
                if (dVar3 != null) {
                    dVar3.c(true);
                }
                if (this.f1842b == 7 && this.g.k() != 1) {
                    if (this.g.k() == 0) {
                        this.g.a();
                    }
                    a(1, size);
                }
                this.g.f();
            } else if (this.f1842b == 8 || this.f1842b == 6) {
                d.a("Beauty3DManager", "onBeauty3DResume, editUICurrentState: " + this.g.k());
                if (this.g.k() == 0) {
                    j();
                }
                if (this.f1842b == 8) {
                    i2 = 2;
                }
                a(i2, size);
                this.g.c(false);
            }
            if (this.f1842b != 0) {
                this.g.j();
            }
        }
    }

    public void b(f fVar) {
        this.f = fVar;
        d.a("Beauty3DManager", "onBeauty3DCreateSession, enterBeauty3D Mode");
        if (this.f1842b == 6 || this.f1842b == 7) {
            a("com.oppo.beauty3d.mode", this.k);
            e();
        } else if (this.f1842b == 1) {
            a("com.oppo.beauty3d.mode", this.j);
            a("com.oppo.beauty3d.scan.state", new int[]{0});
        } else if (this.f1842b == 2) {
            a("com.oppo.beauty3d.mode", this.j);
            a("com.oppo.beauty3d.scan.state", new int[]{1});
        } else if (this.f1842b == 8 || this.f1842b == 9) {
            a("com.oppo.beauty3d.mode", this.l);
            if (this.f1842b == 8) {
                a("com.oppo.beauty3d.analyses.rotatedegree", new int[]{0});
                a("com.oppo.beauty3d.custom.position", new int[]{0, 0});
            } else if (this.f1842b == 9) {
                e();
            }
        }
    }

    public void b(boolean z) {
        d dVar = this.h;
        if (dVar != null) {
            dVar.c(false);
        }
        g gVar = this.g;
        if (gVar != null) {
            gVar.d(z);
        }
    }

    public boolean b(String str, int[] iArr) {
        f fVar = this.f;
        if (fVar == null) {
            return false;
        }
        fVar.a(str, iArr);
        this.f.a((f.c) null);
        d.a("Beauty3DManager", "submitBeauty3DParams, setParam, key: " + str + ", value: " + iArr[0]);
        return true;
    }

    public void c() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.m;
        if (i2 > 0) {
            String format = CameraStatisticsUtil.format(CameraStatisticsUtil.BEAUTY3D_SCAN_CLICK, String.valueOf(i2));
            this.m = 0;
            sb.append(format);
        }
        int i3 = this.n;
        if (i3 > 0) {
            String format2 = CameraStatisticsUtil.format(CameraStatisticsUtil.BEAUTY3D_SAVE_CLICK, String.valueOf(i3));
            this.n = 0;
            sb.append(format2);
        }
        int i4 = this.o;
        if (i4 > 0) {
            String format3 = CameraStatisticsUtil.format(CameraStatisticsUtil.BEAUTY3D_DELETE_CLICK, String.valueOf(i4));
            this.o = 0;
            sb.append(format3);
        }
        int i5 = this.p;
        if (i5 > 0) {
            String format4 = CameraStatisticsUtil.format(CameraStatisticsUtil.BEAUTY3D_START_EDIT_CLICK, String.valueOf(i5));
            this.p = 0;
            sb.append(format4);
        }
        if (sb.length() > 0) {
            CameraStatisticsUtil.onCommon(this.f1841a, CameraStatisticsUtil.EVENT_MENU_CLICK, sb.toString(), false);
        }
    }

    public void c(Size size) {
        g gVar = this.g;
        if (gVar != null && size != null) {
            gVar.b(com.oppo.camera.o.d.b(size.getWidth(), size.getHeight()), com.oppo.camera.o.d.b(size), com.oppo.camera.o.d.F(), com.oppo.camera.o.d.E());
        }
    }

    public void c(String str, int[] iArr) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.a(str, iArr);
        }
    }

    public void c(boolean z) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.b(z);
        }
    }

    public void d(Size size) {
        g gVar = this.g;
        if (gVar != null && size != null) {
            gVar.c(com.oppo.camera.o.d.b(size.getWidth(), size.getHeight()), com.oppo.camera.o.d.b(size), com.oppo.camera.o.d.F(), com.oppo.camera.o.d.E());
        }
    }

    public void d(boolean z) {
        d dVar = this.h;
        if (dVar != null) {
            dVar.c(false);
        }
        g gVar = this.g;
        if (gVar != null) {
            gVar.c(z);
        }
    }

    public boolean d() {
        if (this.g == null) {
            return false;
        }
        a(false);
        return this.g.b(this.f1842b);
    }

    public void e() {
        if (this.h != null) {
            HashMap<String, int[]> n2 = n();
            if (n2 != null) {
                for (String next : n2.keySet()) {
                    int[] iArr = n2.get(next);
                    if (iArr != null) {
                        a(next, iArr);
                    }
                }
            }
        }
    }

    public void e(boolean z) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.e(z);
        }
    }

    public int f() {
        return this.f1842b;
    }

    public boolean g() {
        return this.c;
    }

    public void h() {
        d dVar = this.h;
        if (dVar != null) {
            dVar.c(false);
        }
        g gVar = this.g;
        if (gVar != null) {
            gVar.a(0, false, com.oppo.camera.o.d.F(), com.oppo.camera.o.d.E());
        }
    }

    public boolean i() {
        g gVar = this.g;
        if (gVar != null) {
            return gVar.c();
        }
        return false;
    }

    public void j() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.a();
        }
    }

    public void k() {
        if (this.h != null) {
            a(false);
            a(1);
            this.h.d();
            this.m++;
        }
    }

    public void l() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.l();
        }
    }

    public void m() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.b();
        }
    }

    public HashMap<String, int[]> n() {
        g gVar = this.g;
        if (gVar != null) {
            return gVar.g();
        }
        return null;
    }

    public void o() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.h();
        }
    }

    public void p() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.i();
        }
    }

    public void q() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.j();
        }
    }

    public void r() {
        g gVar = this.g;
        if (gVar != null) {
            gVar.e();
        }
        this.g = null;
        this.h = null;
        this.f1842b = 0;
    }
}
