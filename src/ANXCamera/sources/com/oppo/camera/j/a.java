package com.oppo.camera.j;

import com.oppo.camera.j;
import com.oppo.camera.o.d;
import com.oppo.camera.v;

/* compiled from: CallGalleryPreDecodeThread */
public class a extends d {

    /* renamed from: b  reason: collision with root package name */
    private static a f2215b;

    /* renamed from: a  reason: collision with root package name */
    private j f2216a = null;

    public static a a() {
        a aVar;
        synchronized (a.class) {
            if (f2215b == null) {
                f2215b = new a();
            }
            aVar = f2215b;
        }
        return aVar;
    }

    public void a(v.a aVar) {
        d();
        if (aVar != null && aVar.x) {
            c(aVar);
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.f2216a == null) {
            this.f2216a = new j();
            this.f2216a.a(d.e());
        }
    }

    /* access modifiers changed from: protected */
    public void b(v.a aVar) throws Exception {
        com.oppo.camera.d.a("CallGalleryPreDecodeThread", "handlePicture, callGallery");
        j jVar = this.f2216a;
        if (jVar != null) {
            jVar.a(d.e(), aVar.f2997b, aVar.h, aVar.l, aVar.w);
        }
    }

    public void c() {
        j jVar = this.f2216a;
        if (jVar != null) {
            jVar.b(d.e());
            this.f2216a = null;
        }
    }
}
