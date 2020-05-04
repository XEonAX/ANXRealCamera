package com.oppo.camera.sticker;

import android.util.Size;
import com.oppo.camera.d;
import com.oppo.camera.gl.s;
import com.sensetime.stmobile.STMobileStickerNative;
import com.sensetime.stmobile.model.STHumanAction;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* compiled from: MaterailInfo */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Object f2380a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private STMobileStickerNative f2381b = new STMobileStickerNative();
    private STHumanAction c = null;
    private STHumanAction d = null;
    private LinkedHashMap<Long, STHumanAction> e = null;
    private long f = 0;
    private s g = null;
    private int h = -1;
    private Size i = null;
    private float j = 1.0f;
    private float k = 1.0f;
    private boolean l = false;

    public int a(byte[] bArr) {
        return this.f2381b.changeStickerFromBuffer(bArr, bArr.length);
    }

    public STMobileStickerNative a() {
        return this.f2381b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006b, code lost:
        return null;
     */
    public STHumanAction a(long j2, LinkedHashMap<Long, STHumanAction> linkedHashMap) {
        synchronized (this.f2380a) {
            if (linkedHashMap != null) {
                if (!linkedHashMap.isEmpty()) {
                    long j3 = -1;
                    for (Long next : linkedHashMap.keySet()) {
                        if (Math.abs(j2 - next.longValue()) < Math.abs(j2 - j3) && linkedHashMap.get(Long.valueOf(next.longValue())) != null) {
                            j3 = next.longValue();
                        }
                    }
                    d.a("MaterialInfo", "getPreviewSTHumanActionForCheck, keyTimeStamp: " + j3);
                    STHumanAction sTHumanAction = linkedHashMap.get(Long.valueOf(j3));
                    return sTHumanAction;
                }
            }
        }
    }

    public void a(float f2) {
        this.j = f2;
    }

    public void a(int i2) {
        this.h = i2;
    }

    public void a(long j2) {
        this.f = j2;
    }

    public void a(Size size) {
        this.i = size;
    }

    public void a(s sVar) {
        this.g = sVar;
    }

    public void a(STHumanAction sTHumanAction) {
        this.c = sTHumanAction;
    }

    public STHumanAction b() {
        return this.d;
    }

    public STHumanAction b(float f2) {
        return STHumanAction.humanActionResize(f2 / this.j, this.c);
    }

    public void b(STHumanAction sTHumanAction) {
        synchronized (this.f2380a) {
            if (this.e != null && !this.e.isEmpty() && this.l) {
                Iterator<Long> it = this.e.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Long next = it.next();
                    if (this.e.get(next) == null) {
                        this.e.put(next, sTHumanAction);
                        d.a("MaterialInfo", "setPreviewSTHumanActionForCheck, timeStamp: " + next);
                        break;
                    }
                }
            }
        }
    }

    public STHumanAction c() {
        return STHumanAction.humanActionResize(1.0f / this.k, this.d);
    }

    public void c(float f2) {
        this.k = f2;
    }

    public void c(STHumanAction sTHumanAction) {
        this.d = sTHumanAction;
    }

    public long d() {
        return this.f;
    }

    public s e() {
        return this.g;
    }

    public int f() {
        return this.h;
    }

    public Size g() {
        return this.i;
    }
}
