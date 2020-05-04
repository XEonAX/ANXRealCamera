package com.oppo.camera.d;

import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.util.Range;
import android.util.Size;
import android.view.MotionEvent;
import android.view.Surface;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.f;
import com.oppo.camera.e.h;
import com.oppo.camera.g.a;
import com.oppo.camera.k.b;
import com.oppo.camera.panorama.e;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.g;
import com.oppo.camera.v;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* compiled from: ModeManager */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private int f1890a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f1891b;
    private a c = null;
    private HashMap<String, a> d = new LinkedHashMap();
    private f e = null;
    private boolean f = false;
    private boolean g = true;
    private boolean h = false;
    private boolean i = false;
    private String j = "common";
    private Activity k = null;
    private b l = null;
    private c m = null;
    private com.oppo.camera.ui.preview.a.i n = null;

    public i(Activity activity) {
        this.k = activity;
    }

    private void be() {
        if (this.f1891b != this.c.L.k()) {
            this.f1891b = this.c.L.k();
            a(this.f1891b);
        }
    }

    private void k(boolean z) {
        if (z) {
            be();
        }
    }

    public boolean A() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.y();
        }
        return false;
    }

    public String B() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.aR();
        }
        return null;
    }

    public void C() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.aN();
        }
    }

    public boolean D() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.aQ();
        }
        return false;
    }

    public void E() {
        d.a("ModeManager", "displayScreenHint");
        a aVar = this.c;
        if (aVar != null) {
            aVar.cz();
            this.c.cy();
            this.c.bD();
        }
    }

    public void F() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.H();
        }
    }

    public boolean G() {
        return this.f && this.c.as();
    }

    public int H() {
        return this.c.au();
    }

    public String I() {
        return this.c.av();
    }

    public boolean J() {
        return this.c.bv();
    }

    public String K() {
        return this.c.bI();
    }

    public boolean L() {
        return this.c.aB();
    }

    public int M() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ab();
        }
        return 256;
    }

    public int N() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ac();
        }
        return 0;
    }

    public void O() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.C();
        }
    }

    public String P() {
        a aVar = this.c;
        return aVar != null ? aVar.D() : "full";
    }

    public void Q() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.J();
        }
    }

    public void R() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.L();
        }
    }

    public void S() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.M();
        }
    }

    public void T() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.O();
        }
    }

    public String U() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ay();
        }
        return null;
    }

    public void V() {
        synchronized (this) {
            if (this.d != null) {
                for (String str : this.d.keySet()) {
                    a aVar = this.d.get(str);
                    if (aVar != null) {
                        aVar.N();
                    }
                }
                this.d.clear();
                this.f = false;
                this.d = null;
                this.c = null;
            }
        }
        this.k = null;
    }

    public boolean W() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bh();
        }
        return true;
    }

    public boolean X() {
        return this.c.G();
    }

    public boolean Y() {
        if (!this.c.d("pref_time_lapse_key") || com.oppo.camera.c.a_.equals(this.c.ay())) {
            return this.c.bq();
        }
        d.a("ModeManager", "isCanFastCapture(), being timelapse, not support");
        return false;
    }

    public boolean Z() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bF();
        }
        return false;
    }

    public Size a(h hVar) {
        d.a("getPreviewSize");
        Size c2 = this.c.c(hVar);
        d.b("getPreviewSize");
        return c2;
    }

    public Size a(String str, h hVar) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.a(str, hVar);
        }
        return null;
    }

    public a a(String str) {
        return this.d.get(str);
    }

    public DcsMsgData a(DcsMsgData dcsMsgData) {
        a aVar = this.c;
        return aVar != null ? aVar.a(dcsMsgData) : dcsMsgData;
    }

    public DcsMsgData a(DcsMsgData dcsMsgData, v.a aVar) {
        a aVar2 = this.c;
        return aVar2 != null ? aVar2.a(dcsMsgData, aVar) : dcsMsgData;
    }

    public String a(int i2, String str) {
        if (b(i2, str)) {
            return str;
        }
        d.d("ModeManager", "getEnabledModeForCameraId, mode: " + str + " is not enabled for cameraId: " + i2);
        String a2 = com.oppo.camera.o.d.a(this.l.h());
        StringBuilder sb = new StringBuilder();
        sb.append("getEnabledModeForCameraId, switch mode to ");
        sb.append(a2);
        d.d("ModeManager", sb.toString());
        return a2;
    }

    public void a(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.c(i2);
        }
    }

    public void a(int i2, int i3, boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(i2, i3, z);
        }
    }

    public void a(int i2, boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(i2, z);
        }
    }

    public void a(Activity activity) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(activity);
        }
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        this.c.a(sharedPreferences, str);
    }

    public void a(TotalCaptureResult totalCaptureResult) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(totalCaptureResult);
        }
    }

    public void a(Image image) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(image);
        }
    }

    public void a(ImageReader imageReader, boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(imageReader, z);
        }
    }

    public void a(b bVar, c cVar, com.oppo.camera.ui.preview.a.i iVar) {
        this.l = bVar;
        this.m = cVar;
        this.n = iVar;
    }

    public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(dVar, builder, hashMap);
        }
    }

    public void a(f fVar) {
        this.e = fVar;
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(fVar);
        }
    }

    public void a(g gVar) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(gVar);
        }
    }

    public void a(HashMap<String, Surface> hashMap) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(hashMap);
        }
    }

    public void a(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.g(z);
        }
    }

    public void a(boolean z, boolean z2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.c(z, z2);
        }
    }

    public void a(byte[] bArr, int i2, int i3, int i4, boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(bArr, i2, i3, i4, z);
        }
    }

    public boolean a() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cu();
        }
        return false;
    }

    public boolean a(int i2, MotionEvent motionEvent) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.a(i2, motionEvent);
        }
        return false;
    }

    public boolean a(ImageReader imageReader, int i2, boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.a(imageReader, i2, z);
        }
        return false;
    }

    public boolean a(MotionEvent motionEvent) {
        a aVar = this.c;
        if (aVar == null) {
            return false;
        }
        return aVar.a(motionEvent);
    }

    public boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.a(motionEvent, motionEvent2, f2, f3);
        }
        return false;
    }

    public void aA() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.cf();
        }
    }

    public boolean aB() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cg();
        }
        return true;
    }

    public boolean aC() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ch();
        }
        return false;
    }

    public boolean aD() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.aK();
        }
        return false;
    }

    public void aE() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.ci();
        }
    }

    public boolean aF() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cm();
        }
        return false;
    }

    public void aG() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.cn();
        }
    }

    public boolean aH() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cp();
        }
        return false;
    }

    public boolean aI() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.A();
        }
        return false;
    }

    public boolean aJ() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.z();
        }
        return false;
    }

    public int aK() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cq();
        }
        return 0;
    }

    public boolean aL() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bJ();
        }
        return false;
    }

    public int aM() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.aV();
        }
        return 0;
    }

    public void aN() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.cr();
        }
    }

    public String aO() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ct();
        }
        return null;
    }

    public int aP() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bP();
        }
        return 0;
    }

    public String aQ() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bQ();
        }
        return null;
    }

    public int aR() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.aW();
        }
        return 0;
    }

    public int aS() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.K();
        }
        return 0;
    }

    public int aT() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.aS();
        }
        return 0;
    }

    public void aU() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.aT();
        }
    }

    public int aV() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bM();
        }
        return 40;
    }

    public int[] aW() {
        a aVar = this.c;
        return aVar != null ? aVar.bN() : com.oppo.camera.c.e;
    }

    public boolean aX() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.aU();
        }
        return true;
    }

    public boolean aY() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ax();
        }
        return false;
    }

    public void aZ() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.v();
        }
    }

    public int aa() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bG();
        }
        return 0;
    }

    public void ab() {
        this.c.bH();
    }

    public int ac() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cl();
        }
        return 1;
    }

    public void ad() {
        d.a("initBaseModeMap");
        if (this.d == null) {
            d.e("ModeManager", "initBaseModeMap, mBaseModeMap is null!");
            return;
        }
        d.a("ModeManager", "initBaseModeMap, mBaseModeList Size: " + this.d.size());
        if (!this.l.h()) {
            if (this.d.get("common") == null) {
                e eVar = new e(this.k, this.l, this.m, this.n);
                this.d.put(eVar.a(), eVar);
            }
            if (!com.oppo.camera.o.d.z()) {
                if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_PORTRAIT) && this.d.get(CameraStatisticsUtil.EVENT_CAPTURE) == null) {
                    b bVar = new b(this.k, this.l, this.m, this.n);
                    this.d.put(bVar.a(), bVar);
                }
                if (this.l.g()) {
                    if (this.d.get("commonVideo") == null) {
                        f fVar = new f(this.k, this.l, this.m, this.n);
                        this.d.put(fVar.a(), fVar);
                    }
                    if (this.d.get("panorama") == null) {
                        e eVar2 = new e(this.k, this.l, this.m, this.n);
                        this.d.put(eVar2.a(), eVar2);
                    }
                    if (this.d.get("fastVideo") == null) {
                        a aVar = new a(this.k, this.l, this.m, this.n);
                        this.d.put(aVar.a(), aVar);
                    }
                    if (this.d.get("slowVideo") == null && DebugUtil.isVideoHighFrameRateEnabled()) {
                        com.oppo.camera.m.f fVar2 = new com.oppo.camera.m.f(this.k, this.l, this.m, this.n);
                        this.d.put(fVar2.a(), fVar2);
                    }
                    if (this.d.get("professional") == null) {
                        com.oppo.camera.professional.e eVar3 = new com.oppo.camera.professional.e(this.k, this.l, this.m, this.n);
                        this.d.put(eVar3.a(), eVar3);
                    }
                    if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER) && this.d.get("sticker") == null) {
                        k kVar = new k(this.k, this.l, this.m, this.n);
                        this.d.put(kVar.a(), kVar);
                    }
                    if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_NIGHT) && this.d.get("night") == null) {
                        j jVar = new j(this.k, this.l, this.m, this.n);
                        this.d.put(jVar.a(), jVar);
                    }
                    if (DebugUtil.isEnableHighPictureSizeMode() && this.d.get("highPictureSize") == null) {
                        g gVar = new g(this.k, this.l, this.m, this.n);
                        this.d.put(gVar.a(), gVar);
                    }
                    if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPER_MACRO) && this.d.get("macro") == null) {
                        l lVar = new l(this.k, this.l, this.m, this.n);
                        this.d.put(lVar.a(), lVar);
                    }
                }
            } else if (this.l.g() && this.d.get("commonVideo") == null) {
                f fVar3 = new f(this.k, this.l, this.m, this.n);
                this.d.put(fVar3.a(), fVar3);
            }
        } else if (this.d.get("commonVideo") == null) {
            f fVar4 = new f(this.k, this.l, this.m, this.n);
            this.d.put(fVar4.a(), fVar4);
        }
        this.f = true;
        d.b("initBaseModeMap");
        d.a("ModeManager", "initBaseModeMap X, mBaseModeList Size: " + this.d.size());
    }

    public boolean ae() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bi();
        }
        return false;
    }

    public boolean af() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bj();
        }
        return false;
    }

    public boolean ag() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bb();
        }
        return false;
    }

    public boolean ah() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bk();
        }
        return false;
    }

    public boolean ai() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bu();
        }
        return false;
    }

    public boolean aj() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.q();
        }
        return false;
    }

    public void ak() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.bR();
        }
    }

    public void al() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.bS();
        }
    }

    public void am() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.bT();
        }
    }

    public void an() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.d(true, false);
        }
    }

    public boolean ao() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bV();
        }
        return false;
    }

    public boolean ap() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bW();
        }
        return false;
    }

    public boolean aq() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bX();
        }
        return false;
    }

    public boolean ar() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bY();
        }
        return false;
    }

    public boolean as() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bZ();
        }
        return true;
    }

    public boolean at() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ca();
        }
        return false;
    }

    public boolean au() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cb();
        }
        return false;
    }

    public boolean av() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cc();
        }
        return false;
    }

    public boolean aw() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cd();
        }
        return false;
    }

    public CameraStatisticsUtil.MakerNote ax() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cj();
        }
        return null;
    }

    public long ay() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.ck();
        }
        return 0;
    }

    public void az() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.ce();
        }
    }

    public int b() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.b();
        }
        return 0;
    }

    public Size b(h hVar) {
        return this.c.e(hVar);
    }

    public void b(int i2) {
        d.a("ModeManager", "setCameraId, cameraId: " + this.f1890a + " -> " + i2);
        this.f1890a = i2;
        a aVar = this.c;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public void b(Image image) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.b(image);
        }
    }

    public synchronized boolean b(int i2, String str) {
        if (str == null) {
            d.e("ModeManager", "getPluginEnabled ,mode-string or mPlugins is null,so return");
            return false;
        } else if (!this.d.containsKey(str)) {
            return false;
        } else {
            a aVar = this.d.get(str);
            if (com.oppo.camera.e.a.c(i2)) {
                return aVar.c();
            }
            return aVar.e();
        }
    }

    public boolean b(MotionEvent motionEvent) {
        a aVar = this.c;
        if (aVar == null) {
            return false;
        }
        return aVar.b(motionEvent);
    }

    public boolean b(String str) {
        if (!b(this.f1890a, str)) {
            d.e("ModeManager", "setCurrentMode fail, the mode: " + str + " is not enabled at cameraId: " + this.f1890a);
            str = com.oppo.camera.o.d.a(this.l.h());
            if ("common".equals(str) && this.d.get("common") == null) {
                e eVar = new e(this.k, this.l, this.m, this.n);
                this.d.put(eVar.a(), eVar);
            } else if ("commonVideo".equals(str) && this.d.get("commonVideo") == null) {
                f fVar = new f(this.k, this.l, this.m, this.n);
                this.d.put(fVar.a(), fVar);
            }
        }
        a aVar = this.c;
        if (aVar == null || !aVar.a().equals(str)) {
            a aVar2 = this.d.get(str);
            if (aVar2 == null) {
                d.e("ModeManager", "setCurrentMode, cannot find cap mode: " + str);
                return false;
            }
            if (this.c != null) {
                if (!a()) {
                    this.j = this.c.a();
                }
                this.c.T();
            }
            this.c = aVar2;
            this.c.f(this.f1890a);
            this.c.a(this.e);
            this.c.S();
            this.c.j(this.h);
            this.c.h(this.i);
            this.m.q(this.c.cu());
            d.a("ModeManager", "setCurrentMode, mCurrentMode mode: " + aVar2.a());
            return true;
        }
        d.a("ModeManager", "setCurrentMode fail, the mode not change: " + str);
        return false;
    }

    public boolean b(boolean z) {
        return this.c.d(z);
    }

    public boolean ba() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.br();
        }
        return false;
    }

    public boolean bb() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.bs();
        }
        return false;
    }

    public int bc() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.cx();
        }
        return -1;
    }

    public void bd() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.cA();
        }
    }

    public Size c(h hVar) {
        return this.c.b(hVar);
    }

    public String c() {
        return this.j;
    }

    public void c(int i2) {
        d.a("ModeManager", "cameraIdChanged, cameraId: " + this.f1890a + " -> " + i2);
        a aVar = this.c;
        if (aVar != null && this.f1890a != -1) {
            this.f1890a = i2;
            aVar.b(i2);
        }
    }

    public void c(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a_(z);
        }
    }

    public boolean c(MotionEvent motionEvent) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.c(motionEvent);
        }
        return false;
    }

    public boolean c(String str) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.b(str);
        }
        return false;
    }

    public Size d(h hVar) {
        return this.c.d(hVar);
    }

    public com.oppo.camera.ui.control.c d() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.g();
        }
        d.e("ModeManager", "getShutterButtonInfo, mCurrentMode is null..");
        return null;
    }

    public void d(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.k(i2);
        }
    }

    public void d(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.c(z);
        }
    }

    public boolean d(MotionEvent motionEvent) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.d(motionEvent);
        }
        return false;
    }

    public boolean d(String str) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.a(str);
        }
        return false;
    }

    public void e(String str) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.g(str);
        }
    }

    public void e(boolean z) {
        this.i = z;
        a aVar = this.c;
        if (aVar != null) {
            aVar.h(z);
        }
    }

    public boolean e() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.f();
        }
        return true;
    }

    public boolean e(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.r(i2);
        }
        return false;
    }

    public void f(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.s(i2);
        }
    }

    public void f(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.i(z);
        }
    }

    public boolean f() {
        return this.c.P();
    }

    public boolean f(String str) {
        return this.c.e(str);
    }

    public void g() {
        this.c.cs();
    }

    public void g(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.m(i2);
        }
    }

    public void g(boolean z) {
        this.h = z;
        a aVar = this.c;
        if (aVar != null) {
            aVar.j(z);
        }
    }

    public boolean g(String str) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.c(str);
        }
        return false;
    }

    public int h(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.p(i2);
        }
        return 16;
    }

    public String h() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    public void h(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.k(z);
        }
    }

    public boolean h(String str) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.d(str);
        }
        return false;
    }

    public Bitmap i(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.t(i2);
        }
        return null;
    }

    public Range<Integer> i() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    public void i(String str) {
        a a2 = h.a(str, this.k, this.l, this.m, this.n);
        if (a2 != null) {
            this.d.put(a2.a(), a2);
        }
    }

    public void i(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.l(z);
        }
    }

    public String j() {
        return "common";
    }

    public void j(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.u(i2);
        }
    }

    public void j(String str) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.h(str);
        }
    }

    public void j(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.m(z);
        }
    }

    public Object k() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.w();
        }
        return null;
    }

    public void k(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.v(i2);
        }
    }

    public boolean k(String str) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.k(str);
        }
        return false;
    }

    public int l(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.q(i2);
        }
        return 0;
    }

    public void l() {
        d.a("ModeManager", "onBeforePreview, capMode: " + this.c.a() + ", mCurrentMode: " + this.c);
        d.a("onBeforePreview");
        this.c.V();
        d.b("onBeforePreview");
    }

    public int m(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.w(i2);
        }
        return 0;
    }

    public void m() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.U();
        }
    }

    public void n() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.aJ();
        }
    }

    public void n(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.i(i2);
        }
    }

    public int o(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.g(i2);
        }
        return -100000;
    }

    public boolean o() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.af();
        }
        return false;
    }

    public boolean p() {
        return this.c.al();
    }

    public void q() {
        this.c.ar();
    }

    public void r() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.aj();
        }
    }

    public void s() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.ak();
        }
    }

    public void t() {
        this.c.aI();
    }

    public void u() {
        this.c.an();
        k(false);
    }

    public void v() {
        this.c.ao();
    }

    public void w() {
        this.c.ap();
        k(true);
    }

    public void x() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.I();
        }
    }

    public void y() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.aM();
        }
    }

    public void z() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.aL();
        }
    }
}
