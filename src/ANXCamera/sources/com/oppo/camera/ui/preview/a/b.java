package com.oppo.camera.ui.preview.a;

import android.content.Context;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.i;
import com.oppo.camera.gl.s;
import com.oppo.camera.ui.preview.a.n;
import com.sensetime.blur.STBlurPreview;
import com.sensetime.faceapi.LicenseHelper;

/* compiled from: BlurTexturePreview */
public class b extends n {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2886a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final Object f2887b = new Object();
    private int c = 0;
    private int g = 0;
    private int h = 0;
    private s i = null;
    private s j = null;
    private boolean k = false;
    /* access modifiers changed from: private */
    public STBlurPreview l = null;
    /* access modifiers changed from: private */
    public p m = null;
    /* access modifiers changed from: private */
    public boolean n = false;
    private boolean o = false;
    private Handler p = null;
    private HandlerThread q = null;
    /* access modifiers changed from: private */
    public Context r = null;

    public b(Context context) {
        super(context);
        this.r = context;
    }

    private void a(int i2, int i3, boolean z) {
        if (this.l != null) {
            d.a("BlurTexturePreview", "initSTBlur, width: " + i2 + ", height: " + i3);
            this.l.initRender(i2, i3, z);
            i.i();
            d.a("BlurTexturePreview", "initSTBlur, X");
        }
    }

    /* access modifiers changed from: private */
    public void p() {
        if (!f2886a) {
            byte[] a2 = com.oppo.camera.Ipa.d.a("license_release.lic");
            byte[] bArr = new byte[(a2.length + 1)];
            System.arraycopy(a2, 0, bArr, 0, a2.length);
            bArr[a2.length] = 0;
            int initLicense = LicenseHelper.initLicense(bArr);
            if (initLicense != 0) {
                d.e("BlurTexturePreview", "checkLicense failed, resultCode : " + initLicense);
                return;
            }
            f2886a = true;
            d.a("BlurTexturePreview", "checkLicense success");
        }
    }

    public void a(int i2, int i3) {
        d.a("BlurTexturePreview", "setSize, height: " + i2 + ", width: " + i3);
        this.c = i3;
        this.g = i2;
    }

    public void a(h hVar) {
        s sVar = this.j;
        if (sVar != null && !sVar.k()) {
            this.j.c(hVar);
            d.a("BlurTexturePreview", "prepareTextures, mInputBlurTexture.getId: " + this.j.d());
        }
        s sVar2 = this.i;
        if (sVar2 != null && !sVar2.k()) {
            this.i.c(hVar);
            d.a("BlurTexturePreview", "prepareTextures, mOutputBlurTexture.getId: " + this.i.d());
        }
    }

    public void a(p pVar) {
        d.a("BlurTexturePreview", "createEngine, sbBlurLicenseChecked: " + f2886a + ", mBlurPreviewHandlerThread: " + this.q + ", version: " + STBlurPreview.getVersion());
        if (this.q == null) {
            this.q = new HandlerThread("BlurPreviewHandlerThread");
            this.q.start();
            this.p = new Handler(this.q.getLooper()) {
                public void handleMessage(Message message) {
                    d.b("BlurTexturePreview", "mBlurPreviewHandler, handleMessage, msg: " + message.what);
                    int i = message.what;
                    if (i == 1) {
                        b.this.p();
                    } else if (i == 2) {
                        boolean unused = b.this.n = false;
                        synchronized (b.this.f2887b) {
                            if (b.this.l == null) {
                                STBlurPreview unused2 = b.this.l = new STBlurPreview(b.this.r, true);
                            }
                        }
                        boolean unused3 = b.this.n = true;
                    } else if (i == 3) {
                        synchronized (b.this.f2887b) {
                            if (b.this.l != null) {
                                b.this.l.destroy();
                                STBlurPreview unused4 = b.this.l = null;
                            }
                            p unused5 = b.this.m = null;
                        }
                    }
                }
            };
        }
        if (!f2886a) {
            this.p.sendEmptyMessage(1);
        }
        synchronized (this.f2887b) {
            if (this.l == null) {
                this.p.sendEmptyMessage(2);
            } else {
                this.n = true;
            }
            this.m = pVar;
        }
    }

    public void a(boolean z) {
        synchronized (this.f2887b) {
            this.k = z;
        }
    }

    public void a(byte[] bArr, int i2, int i3) {
        if (this.n) {
            boolean c2 = a.c(this.d);
            synchronized (this.f2887b) {
                if (!(this.l == null || this.m == null)) {
                    this.l.onPreviewCallback(bArr, i2, i3, c2, true, 1, (STBlurPreview.Callback) null);
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0045, code lost:
        if (r4.m.d() != false) goto L_0x004f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0047, code lost:
        com.oppo.camera.d.e("BlurTexturePreview", "canProcess, not open effect");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x004e, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0051, code lost:
        if (r4.o != false) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0053, code lost:
        com.oppo.camera.d.e("BlurTexturePreview", "canProcess, texture is not inited");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x005a, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005b, code lost:
        return true;
     */
    public boolean a(int i2) {
        if (!c(i2)) {
            return false;
        }
        synchronized (this.f2887b) {
            if (this.m == null) {
                d.a("BlurTexturePreview", "canProcess, Engine has not init!");
                return false;
            } else if (this.m.h() <= 0) {
                d.e("BlurTexturePreview", "canProcess, facesCount: " + this.m.h());
                return false;
            }
        }
    }

    public boolean a(n.a aVar) {
        int i2;
        if (this.m == null || aVar == null || aVar.c == null || this.i == null) {
            return false;
        }
        if (!this.n) {
            d.d("BlurTexturePreview", "process, mSTBlurFilter not create, so return!");
            return false;
        }
        s sVar = aVar.c;
        int g2 = sVar.g();
        int h2 = sVar.h();
        boolean c2 = a.c(this.d);
        synchronized (this.f2887b) {
            if (this.k && this.l != null) {
                a(g2, h2, c2);
                this.k = false;
            }
            GLES20.glViewport(0, 0, g2, h2);
            if (this.l != null) {
                this.l.setParam(4097, !c2 ? 0.95f : 0.8f);
                if (c2) {
                    i2 = this.l.processTexture(sVar.d(), new int[]{this.i.d()}, false);
                } else {
                    int i3 = this.h;
                    int i4 = 180;
                    if (i3 != 0) {
                        if (i3 == 90) {
                            i4 = 270;
                        } else if (i3 == 180) {
                            i4 = 0;
                        } else if (i3 == 270) {
                            i4 = 90;
                        }
                    }
                    this.l.rotateGrdualTexture(i4, false, false);
                    i2 = this.l.processTextureGradual(sVar.d(), new float[]{1.0f, 0.8f, 0.6f, 0.3f}, new int[]{this.i.d()}, false);
                }
                i.i();
            } else {
                i2 = -1;
            }
        }
        GLES20.glViewport(0, 0, aVar.f2931a.d(), aVar.f2931a.e());
        return i2 != -1;
    }

    public void b(int i2) {
        this.h = i2;
    }

    public boolean b() {
        return false;
    }

    public void c() {
    }

    public void d() {
    }

    public int e() {
        return 1;
    }

    public void f() {
        d.a("BlurTexturePreview", "destroyEngine");
        this.n = false;
        Handler handler = this.p;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            HandlerThread handlerThread = this.q;
            if (handlerThread != null && handlerThread.isAlive()) {
                this.p.sendEmptyMessage(3);
            }
        }
        HandlerThread handlerThread2 = this.q;
        if (handlerThread2 != null) {
            handlerThread2.quitSafely();
            this.q = null;
        }
    }

    public s g() {
        return this.j;
    }

    public s h() {
        return this.i;
    }

    public boolean i() {
        return false;
    }

    public void j() {
        d.a("BlurTexturePreview", "newTextures");
        this.j = new s(this.c, this.g, true);
        this.i = new s(this.c, this.g, true);
        this.o = true;
    }

    public void k() {
        d.a("BlurTexturePreview", "recycleTextures");
        if (this.o) {
            s sVar = this.j;
            if (sVar != null) {
                sVar.l();
                this.j = null;
            }
            s sVar2 = this.i;
            if (sVar2 != null) {
                sVar2.l();
                this.i = null;
            }
            this.o = false;
        }
    }
}
