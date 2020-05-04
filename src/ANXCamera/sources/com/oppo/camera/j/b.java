package com.oppo.camera.j;

import android.app.Activity;
import android.net.Uri;
import com.oppo.camera.d;
import com.oppo.camera.ui.control.e;
import com.oppo.camera.v;
import java.util.Locale;

/* compiled from: ImageSaverThread */
public class b extends d {
    private static b c;

    /* renamed from: a  reason: collision with root package name */
    private long f2217a = -1;

    /* renamed from: b  reason: collision with root package name */
    private c f2218b = new c();

    public static b a() {
        b bVar;
        synchronized (b.class) {
            if (c == null) {
                c = new b();
            }
            bVar = c;
        }
        return bVar;
    }

    public boolean a(boolean z, Activity activity) {
        if (z && !g()) {
            return false;
        }
        c cVar = this.f2218b;
        if (cVar != null) {
            return cVar.a(activity);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    public void b(v.a aVar) throws Exception {
        e eVar;
        v.a aVar2 = aVar;
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[6];
        objArr[0] = Integer.valueOf(aVar2.d == null ? -1 : aVar2.d.length);
        objArr[1] = Long.valueOf(aVar2.C);
        objArr[2] = Integer.valueOf(aVar2.n);
        objArr[3] = aVar2.f2997b;
        objArr[4] = aVar2.v;
        objArr[5] = Boolean.valueOf(aVar2.D);
        d.a("ImageSaverThread", String.format(locale, "handlePicture, picture.jpeg: %d, timeStamp: %d, mRecBurstNum: %d, mUri: %s, mUpdateThumbTask: %s, mbLatestPicture: %s", objArr));
        if (aVar2.m > -1) {
            this.f2218b.a();
        }
        aVar2.f2996a = com.oppo.camera.o.d.e().getContentResolver();
        Uri uri = aVar2.f2997b;
        if (aVar2.f2997b != null) {
            v.c(aVar);
        } else if (aVar2.d != null) {
            this.f2218b.a((long) aVar2.d.length);
            v.a(aVar);
        }
        d.b("ImageSaverThread", "CameraTest Picture Save End");
        if (aVar2.f2997b != null) {
            if ((aVar2.D && -1 == aVar2.n) || 1 == aVar2.n) {
                a.a().a(aVar2);
            }
            if (aVar2.v != null) {
                d.a("ImageSaverThread", "handlePicture, create thumbnail for JpegData start");
                byte[] e = com.oppo.camera.o.d.e(aVar2.h);
                int a2 = com.oppo.camera.o.d.a(aVar2.o, aVar2.p, aVar2.s, aVar2.s);
                d.a("ImageSaverThread", "handlePicture, create thumbnail for Exif start, inSampleSize: " + a2 + ", thumbnailData: " + e);
                if (e == null || e.length <= 0) {
                    eVar = aVar2.d != null ? e.a(aVar2.d, aVar2.r, a2, aVar2.f2997b, v.a(String.valueOf(-1), aVar2.i), (long) -1) : null;
                } else {
                    long j = (long) -1;
                    eVar = e.a(e, aVar2.r, 1, aVar2.f2997b, v.a(String.valueOf(-1), aVar2.i), j);
                    if (eVar == null && aVar2.d != null) {
                        eVar = e.a(aVar2.d, aVar2.r, a2, aVar2.f2997b, v.a(String.valueOf(-1), aVar2.i), j);
                    }
                }
                d.a("ImageSaverThread", "handlePicture, create thumbnail for Exif end");
                aVar2.v.a(eVar, aVar2.E);
            }
            if (aVar2.m > -1) {
                if (aVar2.n == 1) {
                    this.f2217a = v.b(aVar2.f2997b, com.oppo.camera.o.d.e().getContentResolver());
                }
            } else if (uri == null) {
                v.a(aVar2.f2997b, com.oppo.camera.o.d.e().getContentResolver());
            }
            com.oppo.camera.o.d.a(com.oppo.camera.o.d.e(), aVar2.f2997b);
        }
    }

    public void c() {
    }
}
