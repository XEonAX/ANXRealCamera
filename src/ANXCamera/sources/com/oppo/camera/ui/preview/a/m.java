package com.oppo.camera.ui.preview.a;

import android.content.Context;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.util.Size;
import com.oppo.camera.R;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.a;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.i;
import com.oppo.camera.gl.s;
import com.oppo.camera.sticker.b;
import com.oppo.camera.sticker.c;
import com.oppo.camera.sticker.d;
import com.oppo.camera.sticker.data.MultiStickerExtendedInfo;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.g;
import com.oppo.camera.ui.preview.a.n;
import com.sensetime.stmobile.STMobileHumanActionNative;
import com.sensetime.stmobile.STSoundPlayManager;
import com.sensetime.stmobile.model.STHumanAction;
import com.sensetime.stmobile.model.STStickerInputParams;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: StickerTexturePreview */
public class m extends n {
    private static CopyOnWriteArrayList<b> H = new CopyOnWriteArrayList<>();
    private static STMobileHumanActionNative I = null;
    private boolean A = true;
    private boolean B = false;
    private float C = 1.0f;
    private final Object D = new Object();
    /* access modifiers changed from: private */
    public final Object E = new Object();
    private d F = null;
    private ConcurrentHashMap<b, List<MultiStickerExtendedInfo>> G = null;

    /* renamed from: a  reason: collision with root package name */
    private int f2928a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2929b = 0;
    private int c = 0;
    private int g = 0;
    private int h = 0;
    private Context i = null;
    private ByteBuffer j = null;
    private boolean k = false;
    private int l = 0;
    private int m = 0;
    private ArrayList<s> n = new ArrayList<>();
    private s o = null;
    private s p = null;
    private s q = null;
    private boolean r = false;
    private boolean s = false;
    private p t = null;
    private s u = null;
    private STSoundPlayManager v = null;
    private ArrayList<Long> w = null;
    private ArrayList<Long> x = null;
    private Map<Long, Integer> y = null;
    private Map<Long, Integer> z = null;

    public m(Context context) {
        super(context);
        this.i = context;
    }

    private int a(int i2, s sVar) {
        int i3 = i2;
        for (b next : this.G.keySet()) {
            List list = this.G.get(next);
            if (list != null && list.size() > 0 && ((MultiStickerExtendedInfo) list.get(0)).getPositionType() == 0) {
                i.i();
                i3 = next.a().processTexture(next.e().d(), next.b(this.C), this.m, next.e().e(), next.e().f(), 0, 0, false, (STStickerInputParams) null, sVar.d());
                i.i();
                if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_PREVIEW, DebugUtil.DEBUG_DISABLE)) {
                    com.oppo.camera.o.d.a(sVar, "FORE");
                }
            }
            s sVar2 = sVar;
        }
        return i3;
    }

    private int a(s sVar) {
        com.oppo.camera.d.a("processNoFrontTexture");
        int i2 = -1;
        for (b next : this.G.keySet()) {
            List list = this.G.get(next);
            if (list == null || list.size() == 0 || ((MultiStickerExtendedInfo) list.get(0)).getPositionType() != 0) {
                i.i();
                i2 = next.a().processTexture(sVar.d(), next.b(this.C), this.m, next.e().e(), next.e().f(), 0, 0, false, (STStickerInputParams) null, next.e().d());
                i.i();
                if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_PREVIEW, DebugUtil.DEBUG_DISABLE)) {
                    com.oppo.camera.o.d.a(next.e(), "NONFORE");
                }
            }
        }
        com.oppo.camera.d.b("processNoFrontTexture");
        return i2;
    }

    private HashMap<String, List<MultiStickerExtendedInfo>> a(String str) {
        StickerItem c2 = this.t.c();
        if (c2 == null) {
            com.oppo.camera.d.e("StickerTexturePreview", "getExtendedInfoMap, item is null");
            return null;
        }
        List<MultiStickerExtendedInfo> a2 = g.a(this.i, c2);
        HashMap<String, List<MultiStickerExtendedInfo>> hashMap = new HashMap<>();
        if (a2 == null || a2.size() <= 0) {
            hashMap.put(str, new ArrayList());
        } else {
            for (MultiStickerExtendedInfo next : a2) {
                if (next != null) {
                    if (hashMap.containsKey(next.getStickerName())) {
                        hashMap.get(next.getStickerName()).add(next);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(next);
                        hashMap.put(next.getStickerName(), arrayList);
                    }
                }
            }
        }
        return hashMap;
    }

    private HashMap<String, b> a(HashMap<String, List<MultiStickerExtendedInfo>> hashMap) {
        String str;
        s sVar;
        StickerItem c2 = this.t.c();
        if (c2 == null || hashMap == null) {
            com.oppo.camera.d.e("StickerTexturePreview", "getMaterialInfoMap, item: " + c2 + ", extendedInfoMap: " + hashMap);
            return null;
        }
        String fileContentUri = c2.getFileContentUri();
        HashMap<String, b> hashMap2 = new HashMap<>();
        synchronized (this.E) {
            String str2 = fileContentUri;
            int i2 = 0;
            int i3 = 0;
            for (String next : hashMap.keySet()) {
                List list = hashMap.get(next);
                if (i2 >= H.size()) {
                    com.oppo.camera.d.e("StickerTexturePreview", "getMaterialInfoMap, Just support " + H.size() + " materials.");
                } else {
                    int i4 = i2 + 1;
                    b bVar = H.get(i2);
                    if (list == null || list.size() <= 0) {
                        str = str2;
                        sVar = this.p;
                    } else {
                        if (((MultiStickerExtendedInfo) list.get(0)).getPositionType() == 0) {
                            sVar = this.o;
                        } else if (((MultiStickerExtendedInfo) list.get(0)).getPositionType() == 2) {
                            sVar = this.p;
                        } else {
                            sVar = this.n.get(i3);
                            i3++;
                        }
                        str = c.a((MultiStickerExtendedInfo) list.get(0), com.oppo.camera.o.d.b(this.f2929b, this.f2928a));
                    }
                    bVar.a((float) (this.f2928a / sVar.e()));
                    bVar.a(sVar);
                    a(bVar, str);
                    hashMap2.put(next, bVar);
                    str2 = str;
                    i2 = i4;
                }
            }
        }
        return hashMap2;
    }

    private void a(int i2, int i3, int i4, int i5, int i6, ByteBuffer byteBuffer) {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        int i7 = i2;
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
        GLES20.glReadPixels(i3, i4, i5, i6, 6408, 5121, byteBuffer);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
    }

    private void a(h hVar, s sVar) {
        if (b(sVar)) {
            a(hVar, sVar, -16777216);
        }
        for (b next : this.G.keySet()) {
            List<MultiStickerExtendedInfo> list = this.G.get(next);
            if (list != null && list.size() > 0) {
                for (MultiStickerExtendedInfo multiStickerExtendedInfo : list) {
                    if (!next.e().equals(sVar)) {
                        RectF a2 = c.a(multiStickerExtendedInfo, sVar.e(), sVar.f());
                        h hVar2 = hVar;
                        a(hVar2, next.e(), sVar, c.a(next.e().e(), next.e().f(), a2), a2);
                        if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_PREVIEW, DebugUtil.DEBUG_DISABLE)) {
                            com.oppo.camera.o.d.a(sVar, "OUTPUT");
                        }
                    }
                }
            }
        }
    }

    private void a(h hVar, s sVar, int i2) {
        hVar.a(sVar);
        hVar.a(0.0f, 0.0f, (float) sVar.g(), (float) sVar.h(), i2);
        hVar.h();
    }

    private void a(h hVar, s sVar, s sVar2) {
        STHumanAction humanActionDetect;
        com.oppo.camera.d.a("doHumanActionDetect");
        this.j.rewind();
        b(hVar, sVar, sVar2);
        a(sVar2.d(), 0, 0, sVar2.g(), sVar2.h(), this.j);
        synchronized (this.E) {
            humanActionDetect = I.humanActionDetect(this.j.array(), 6, c.a((Map<b, List<MultiStickerExtendedInfo>>) this.G), this.m, this.g, this.h);
        }
        a(humanActionDetect);
        com.oppo.camera.d.b("doHumanActionDetect");
    }

    private void a(h hVar, s sVar, s sVar2, RectF rectF, RectF rectF2) {
        hVar.a(sVar2);
        hVar.a((com.oppo.camera.gl.c) sVar, rectF, rectF2);
        hVar.h();
    }

    private void a(b bVar, String str) {
        com.oppo.camera.d.a("StickerTexturePreview", "changeStickerNative, sticker: " + str);
        byte[] a2 = h.a(this.i, str);
        if (a2 != null) {
            bVar.a().changeStickerFromBuffer(a2, a2.length);
        } else {
            com.oppo.camera.d.e("StickerTexturePreview", "changeStickerNative failed, bytes: " + a2);
        }
        o();
        b(bVar.a().getTriggerAction());
        a(bVar, str, bVar.a().getTriggerAction());
    }

    private void a(b bVar, String str, long j2) {
        if (str == null) {
            j2 = 0;
        }
        bVar.a(j2);
    }

    private void a(STHumanAction sTHumanAction) {
        for (b next : this.G.keySet()) {
            next.b(sTHumanAction);
            next.a(sTHumanAction);
            b(next.b(this.C));
        }
    }

    private void b(long j2) {
        if (this.w == null) {
            this.w = new ArrayList<>();
        }
        this.w.clear();
        if (this.x == null) {
            this.x = new ArrayList<>();
        }
        this.x.clear();
        s();
        Set<Long> keySet = this.z.keySet();
        Set<Long> keySet2 = this.y.keySet();
        if (keySet != null) {
            for (Long longValue : keySet) {
                long longValue2 = longValue.longValue();
                if (j2 >= 0 && (j2 & longValue2) > 0) {
                    this.w.add(Long.valueOf(longValue2));
                }
            }
        }
        if (keySet2 != null) {
            for (Long longValue3 : keySet2) {
                long longValue4 = longValue3.longValue();
                if (j2 >= 0 && (j2 & longValue4) > 0) {
                    this.x.add(Long.valueOf(longValue4));
                }
            }
        }
        for (int i2 = 0; i2 < this.w.size(); i2++) {
            if (this.f != null) {
                this.A = false;
                this.f.a(this.i.getResources().getString(this.z.get(this.w.get(i2)).intValue()));
                return;
            }
        }
        for (int i3 = 0; i3 < this.x.size(); i3++) {
            if (this.f != null) {
                this.A = false;
                this.f.a(this.i.getResources().getString(this.y.get(this.x.get(i3)).intValue()));
                return;
            }
        }
    }

    private void b(h hVar, s sVar, s sVar2) {
        hVar.a(sVar2);
        hVar.a((com.oppo.camera.gl.c) sVar, 0, 0, sVar2.e(), sVar2.f());
        hVar.h();
    }

    private void b(STHumanAction sTHumanAction) {
        if (sTHumanAction != null && !this.A) {
            if (sTHumanAction.faceCount > 0) {
                ArrayList<Long> arrayList = this.w;
                if (arrayList != null && arrayList.size() > 0) {
                    for (int i2 = 0; i2 < sTHumanAction.faceCount; i2++) {
                        long j2 = sTHumanAction.faces[i2].faceAction;
                        for (int i3 = 0; i3 < this.w.size(); i3++) {
                            if ((this.w.get(i3).longValue() & j2) > 0) {
                                this.A = true;
                                o();
                                return;
                            }
                        }
                    }
                }
            }
            if (sTHumanAction.handCount > 0) {
                ArrayList<Long> arrayList2 = this.x;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    for (int i4 = 0; i4 < sTHumanAction.handCount; i4++) {
                        long j3 = sTHumanAction.hands[i4].handAction;
                        for (int i5 = 0; i5 < this.x.size(); i5++) {
                            if ((this.x.get(i5).longValue() & j3) > 0) {
                                this.A = true;
                                o();
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    private boolean b(s sVar) {
        boolean z2 = false;
        boolean z3 = false;
        for (b next : this.G.keySet()) {
            List<MultiStickerExtendedInfo> list = this.G.get(next);
            if (list != null && list.size() > 0) {
                for (MultiStickerExtendedInfo multiStickerExtendedInfo : list) {
                    if (!next.e().equals(sVar)) {
                        z3 = true;
                    }
                }
                if (((MultiStickerExtendedInfo) list.get(0)).getPositionType() == 2) {
                    z2 = true;
                }
            }
        }
        return !z2 && z3;
    }

    private void s() {
        if (this.z == null) {
            this.z = new HashMap();
            this.z.put(2L, Integer.valueOf(R.string.sticker_hint_blink));
            this.z.put(4L, Integer.valueOf(R.string.sticker_hint_open_month));
            this.z.put(8L, Integer.valueOf(R.string.sticker_hint_shake_head));
            this.z.put(16L, Integer.valueOf(R.string.sticker_hint_node_head));
            this.z.put(32L, Integer.valueOf(R.string.sticker_hint_pick_eyebrow));
        }
        if (this.y == null) {
            this.y = new HashMap();
            this.y.put(4096L, Integer.valueOf(R.string.sticker_hint_show_palm));
            this.y.put(16384L, Integer.valueOf(R.string.sticker_hint_heart_shape_two_hand));
            this.y.put(32768L, Integer.valueOf(R.string.sticker_hint_hold_up_hand));
            this.y.put(131072L, Integer.valueOf(R.string.sticker_hint_congratulate));
            this.y.put(262144L, Integer.valueOf(R.string.sticker_hint_heart_shape_one_hand));
            this.y.put(2048L, Integer.valueOf(R.string.sticker_hint_thumb_up));
            this.y.put(512L, Integer.valueOf(R.string.sticker_hint_ok));
            this.y.put(1024L, Integer.valueOf(R.string.sticker_hint_yeah));
            this.y.put(8192L, Integer.valueOf(R.string.sticker_hint_pistol));
            this.y.put(1048576L, Integer.valueOf(R.string.sticker_hint_index_finger));
        }
    }

    private void t() {
        synchronized (this.E) {
            if (!this.s) {
                if (this.r) {
                    com.oppo.camera.d.a("initGLRes");
                    com.oppo.camera.d.a("StickerTexturePreview", "initGLRes");
                    synchronized (this.E) {
                        x();
                    }
                    this.j = ByteBuffer.allocate(this.g * this.h * 4);
                    this.v = new STSoundPlayManager(this.i);
                    synchronized (this.E) {
                        this.s = true;
                    }
                    com.oppo.camera.d.b("initGLRes");
                }
            }
        }
    }

    private void u() {
        STSoundPlayManager sTSoundPlayManager = this.v;
        if (sTSoundPlayManager != null) {
            sTSoundPlayManager.release();
            this.v = null;
        }
    }

    private void v() {
        StickerItem c2 = this.t.c();
        if (c2 != null) {
            h b2 = h.b(this.i);
            STSoundPlayManager sTSoundPlayManager = this.v;
            if (sTSoundPlayManager != null) {
                sTSoundPlayManager.setPauseState(b2.a(c2.getStickerUUID()));
                return;
            }
            return;
        }
        com.oppo.camera.d.e("StickerTexturePreview", "checkStickerMusicPauseState, non selected sticker!");
    }

    private void w() {
        CopyOnWriteArrayList<b> copyOnWriteArrayList = H;
        if (copyOnWriteArrayList != null) {
            Iterator<b> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                b next = it.next();
                if (next != null) {
                    com.oppo.camera.d.e("StickerTexturePreview", "destroyStInstance");
                    next.a().destroyInstance();
                }
            }
            H.clear();
        }
    }

    private void x() {
        CopyOnWriteArrayList<b> copyOnWriteArrayList = H;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() == 0) {
            for (int i2 = 0; i2 < 5; i2++) {
                b bVar = new b();
                bVar.a().createInstance(com.oppo.camera.o.d.e());
                com.oppo.camera.d.e("StickerTexturePreview", "createStInstance");
                H.add(bVar);
            }
        }
    }

    private s y() {
        for (b next : this.G.keySet()) {
            List list = this.G.get(next);
            if (list != null && list.size() > 0 && ((MultiStickerExtendedInfo) list.get(0)).getPositionType() == 0) {
                return next.e();
            }
        }
        return null;
    }

    public Object a() {
        return this.F;
    }

    public void a(int i2, int i3) {
        com.oppo.camera.d.a("StickerTexturePreview", "setSize, height: " + i2 + ", width: " + i3 + ", mCameraId: " + this.d);
        if (i3 > 0 && i2 > 0) {
            this.f2928a = i2;
            this.f2929b = i3;
            this.c = a.c(this.d) ? 320 : 480;
            int i4 = this.f2928a;
            int i5 = this.f2929b;
            if (i4 >= i5) {
                int i6 = this.c;
                this.C = ((float) i4) / ((float) i6);
                this.g = i6;
                this.h = (i5 * i6) / i4;
                return;
            }
            int i7 = this.c;
            this.C = ((float) i5) / ((float) i7);
            this.h = i7;
            this.g = (i4 * i7) / i5;
        }
    }

    public void a(long j2) {
    }

    public void a(Size size, boolean z2) {
    }

    public void a(h hVar) {
        t();
        com.oppo.camera.d.a("Sticker.prepareTextures");
        ArrayList<s> arrayList = this.n;
        if (arrayList != null) {
            Iterator<s> it = arrayList.iterator();
            while (it.hasNext()) {
                s next = it.next();
                if (next != null && !next.k()) {
                    next.c(hVar);
                    com.oppo.camera.d.a("StickerTexturePreview", "prepareTextures, texture id: " + next.d());
                }
            }
        }
        s sVar = this.o;
        if (sVar != null && !sVar.k()) {
            this.o.c(hVar);
            com.oppo.camera.d.a("StickerTexturePreview", "prepareTextures, texture id: " + this.o.d());
        }
        s sVar2 = this.p;
        if (sVar2 != null && !sVar2.k()) {
            this.p.c(hVar);
            com.oppo.camera.d.a("StickerTexturePreview", "prepareTextures, texture id: " + this.p.d());
        }
        s sVar3 = this.q;
        if (sVar3 != null && !sVar3.k()) {
            this.q.c(hVar);
            com.oppo.camera.d.a("StickerTexturePreview", "prepareTextures, texture id: " + this.q.d());
        }
        s sVar4 = this.u;
        if (sVar4 != null && !sVar4.k()) {
            this.u.c(hVar);
            com.oppo.camera.d.a("StickerTexturePreview", "prepareTextures, texture id: " + this.u.d());
        }
        com.oppo.camera.d.b("Sticker.prepareTextures");
    }

    public void a(p pVar) {
        this.t = pVar;
    }

    public boolean a(int i2) {
        return this.t != null && c(i2) && this.r && this.t.d() && this.t.e() && !h.d(this.t.c().getCategoryId());
    }

    public boolean a(n.a aVar) {
        if (aVar == null) {
            com.oppo.camera.d.e("StickerTexturePreview", "process, frameInfo: " + aVar);
            return false;
        }
        int i2 = -1;
        if (this.t != null && aVar.c != null && this.u != null) {
            if (!this.k) {
                if (i()) {
                    this.k = true;
                } else {
                    com.oppo.camera.d.e("StickerTexturePreview", "process, non selected sticker!");
                    return false;
                }
            }
            int i3 = this.l;
            if (i3 == 0) {
                this.m = 0;
            } else if (i3 == 90) {
                this.m = 1;
            } else if (i3 == 180) {
                this.m = 2;
            } else if (i3 == 270) {
                this.m = 3;
            }
            a(aVar.f2931a, aVar.c, this.u);
            synchronized (this.D) {
                i2 = a(aVar.c);
                s y2 = y();
                if (y2 != null) {
                    a(aVar.f2931a, y2);
                    i2 = a(i2, this.p);
                } else {
                    a(aVar.f2931a, this.p);
                }
            }
            com.oppo.camera.sticker.b.b.a();
        } else if (this.t == null) {
            com.oppo.camera.d.a("StickerTexturePreview", "process, mRequest is null");
        }
        if (i2 != 0) {
            com.oppo.camera.d.e("StickerTexturePreview", "process, result: " + i2);
        }
        return i2 == 0;
    }

    public void b(int i2) {
        this.l = i2;
    }

    public boolean b() {
        return false;
    }

    public void c() {
        w();
    }

    public void d() {
        com.oppo.camera.o.d.a((Runnable) new Runnable() {
            public void run() {
                com.oppo.camera.d.a("Sticker.initHumanAction");
                synchronized (m.this.E) {
                    m.this.q();
                }
                com.oppo.camera.d.b("Sticker.initHumanAction");
            }
        });
    }

    public int e() {
        return 8;
    }

    public void f() {
        com.oppo.camera.d.a("StickerTexturePreview", "destroyEngine");
        synchronized (this.E) {
            if (this.G != null) {
                this.G.clear();
                this.G = null;
            }
            p();
        }
    }

    public s g() {
        return this.q;
    }

    public s h() {
        return this.p;
    }

    public boolean i() {
        StickerItem c2 = this.t.c();
        if (!this.r || c2 == null) {
            com.oppo.camera.d.e("StickerTexturePreview", "updateMaterialInfos, mbTextureInited: " + this.r + ", item: " + c2);
            return false;
        }
        com.oppo.camera.d.a("Sticker.onPreviewEffectChanged");
        v();
        this.B = true;
        HashMap<String, List<MultiStickerExtendedInfo>> a2 = a(c2.getStickerName());
        HashMap<String, b> a3 = a(a2);
        ConcurrentHashMap<b, List<MultiStickerExtendedInfo>> concurrentHashMap = this.G;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        } else {
            this.G = new ConcurrentHashMap<>();
        }
        if (a3 != null) {
            for (String next : a3.keySet()) {
                this.G.put(a3.get(next), a2.get(next));
            }
        }
        com.oppo.camera.d.b("Sticker.onPreviewEffectChanged");
        return true;
    }

    public void j() {
        com.oppo.camera.d.a("StickerTexturePreview", "newTextures");
        com.oppo.camera.d.a("Sticker.newTextures");
        for (int i2 = 0; i2 < 4; i2++) {
            this.n.add(new s(this.f2928a / 2, this.f2929b / 2, true));
        }
        this.o = new s(this.f2928a, this.f2929b, true);
        this.p = new s(this.f2928a, this.f2929b, true);
        this.q = new s(this.f2928a, this.f2929b, true);
        this.u = new s(this.g, this.h, true);
        this.r = true;
        com.oppo.camera.d.b("Sticker.newTextures");
    }

    public void k() {
        com.oppo.camera.d.a("StickerTexturePreview", "recycleTextures, mbGLInit: " + this.s + ", mbTextureInited: " + this.r);
        if (this.s) {
            com.oppo.camera.d.a("Sticker.eglInit");
            synchronized (this.E) {
                if (I != null) {
                    I.reset();
                }
            }
            this.k = false;
            this.j = null;
            u();
            Map<Long, Integer> map = this.y;
            if (map != null) {
                map.clear();
                this.y = null;
            }
            Map<Long, Integer> map2 = this.z;
            if (map2 != null) {
                map2.clear();
                this.z = null;
            }
            o();
            this.s = false;
            com.oppo.camera.d.b("Sticker.eglInit");
        }
        if (this.r) {
            com.oppo.camera.d.a("Sticker.recycleTextures");
            ArrayList<s> arrayList = this.n;
            if (arrayList != null) {
                Iterator<s> it = arrayList.iterator();
                while (it.hasNext()) {
                    s next = it.next();
                    if (next != null) {
                        com.oppo.camera.d.a("StickerTexturePreview", "recycleTextures, texture id: " + next.d());
                        next.l();
                    }
                }
                this.n.clear();
            }
            if (this.o != null) {
                com.oppo.camera.d.a("StickerTexturePreview", "recycleTextures, texture id: " + this.o.d());
                this.o.l();
                this.o = null;
            }
            if (this.p != null) {
                com.oppo.camera.d.a("StickerTexturePreview", "recycleTextures, texture id: " + this.p.d());
                this.p.l();
                this.p = null;
            }
            if (this.q != null) {
                com.oppo.camera.d.a("StickerTexturePreview", "recycleTextures, texture id: " + this.q.d());
                this.q.l();
                this.q = null;
            }
            if (this.u != null) {
                com.oppo.camera.d.a("StickerTexturePreview", "recycleTextures, texture id: " + this.u.d());
                this.u.l();
                this.u = null;
            }
            this.r = false;
            com.oppo.camera.d.b("Sticker.recycleTextures");
        }
    }

    public void m() {
        STSoundPlayManager sTSoundPlayManager = this.v;
        if (sTSoundPlayManager != null) {
            sTSoundPlayManager.pauseSound();
        }
    }

    public void n() {
        STSoundPlayManager sTSoundPlayManager = this.v;
        if (sTSoundPlayManager != null) {
            sTSoundPlayManager.resumeSound();
        }
    }

    public void o() {
        if (this.f != null) {
            this.f.a();
        }
    }

    public void p() {
        com.oppo.camera.d.a("StickerTexturePreview", "destroyHumanAction");
        STMobileHumanActionNative sTMobileHumanActionNative = I;
        if (sTMobileHumanActionNative != null) {
            sTMobileHumanActionNative.reset();
            I.destroyInstance();
            I.destroyInstanceImage();
            I = null;
        }
    }

    public boolean q() {
        int i2;
        int i3;
        com.oppo.camera.d.a("StickerTexturePreview", "initNativeInstance");
        if (I == null) {
            I = new STMobileHumanActionNative();
            i3 = I.createInstanceFromAssetFile("M_SenseME_Action_5.2.12.model", c.f2392a, com.oppo.camera.o.d.e().getAssets());
            if (i3 == 0) {
                I.setParam(2, 0.3f);
                I.setParam(1, 320.0f);
                I.setParam(20, 0.2f);
                I.setParam(3, 5.0f);
            }
            i2 = I.createInstanceImage("M_SenseME_Action_5.2.12.model", c.f2393b, com.oppo.camera.o.d.e().getAssets());
            if (i2 == 0) {
                I.setParamImage(2, 0.1f);
                I.setParamImage(1, 640.0f);
            }
        } else {
            i3 = 0;
            i2 = 0;
        }
        return i2 == 0 && i3 == 0;
    }
}
