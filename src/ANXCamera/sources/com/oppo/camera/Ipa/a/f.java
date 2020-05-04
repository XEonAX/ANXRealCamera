package com.oppo.camera.Ipa.a;

import android.content.Context;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.d;
import com.oppo.camera.jni.OppoRectify;
import java.util.Arrays;

/* compiled from: RectifyProcessor */
public class f extends b {

    /* renamed from: a  reason: collision with root package name */
    private OppoRectify f1784a = null;

    public void a() {
        d.b("RectifyProcessor", "process, unInit, mOppoRectify: " + this.f1784a);
        OppoRectify oppoRectify = this.f1784a;
        if (oppoRectify != null) {
            oppoRectify.unInit();
            this.f1784a = null;
        }
    }

    public void a(Context context, b bVar) {
        d.b("RectifyProcessor", "init");
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f1784a == null) {
            this.f1784a = new OppoRectify();
        }
        this.f1784a.init();
        d.b("RectifyProcessor", "init, costTime: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    public void a(b bVar) {
        d.b("RectifyProcessor", "process, start");
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f1784a != null) {
            b.a aVar = bVar.f1797a;
            b.C0052b bVar2 = bVar.f1798b;
            int i = aVar.g;
            int i2 = aVar.h;
            int i3 = aVar.e;
            int i4 = aVar.f;
            int i5 = aVar.i;
            int[] iArr = bVar2.al;
            d.b("RectifyProcessor", "process, cropRect: " + Arrays.toString(iArr));
            aVar.f1799a = this.f1784a.process(aVar.d, i, i2, i3, i4, i5, iArr);
        }
        d.e("RectifyProcessor", "process, end, costTime: " + (System.currentTimeMillis() - currentTimeMillis));
    }
}
