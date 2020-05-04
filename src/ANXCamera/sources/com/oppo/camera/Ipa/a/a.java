package com.oppo.camera.Ipa.a;

import android.content.Context;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.d;

/* compiled from: AnimojiProcessor */
public class a extends b {
    public void a() {
    }

    public void a(Context context, b bVar) {
    }

    public void a(ArcSoftOffscreen arcSoftOffscreen, boolean z, int i, int i2, int i3, b.a aVar) {
        byte[] data = arcSoftOffscreen.getData();
        if (data == null) {
            d.b("AnimojiProcessor", "processNVData, outputImageData is null");
            return;
        }
        d.b("AnimojiProcessor", "processNVData, imageWidth: " + i + ", imageHeight: " + i2 + ", mOutputOffscreen: " + arcSoftOffscreen + ", mOutputOffscreen.width: " + arcSoftOffscreen.getWidth() + ", mOutputOffscreen.height: " + arcSoftOffscreen.getHeight() + ", mOutputOffscreen.dataLength: " + arcSoftOffscreen.getData().length);
        if (i3 == 0) {
            data = z ? com.oppo.camera.o.d.e(com.oppo.camera.o.d.b(data, i, i2), i2, i) : com.oppo.camera.o.d.d(data, i, i2);
        } else if (i3 != 180) {
            if (i3 == 270) {
                data = com.oppo.camera.o.d.c(data, i, i2);
            }
            int i4 = i2;
            i2 = i;
            i = i4;
        } else {
            data = z ? com.oppo.camera.o.d.d(data, i, i2) : com.oppo.camera.o.d.e(com.oppo.camera.o.d.b(data, i, i2), i2, i);
        }
        aVar.e = i2;
        aVar.f = i;
        aVar.f1799a = data;
    }

    public void a(b bVar) {
        b.a aVar = bVar.f1797a;
        b.C0052b bVar2 = bVar.f1798b;
        b.c cVar = bVar.c;
        long j = (aVar.l || cVar.k == 0) ? aVar.p : cVar.k;
        if (bVar2.as == null) {
            aVar.f1799a = com.oppo.camera.o.d.a(bVar.c.f, bVar2, j);
            aVar.i = 256;
            return;
        }
        boolean z = bVar2.E && !bVar2.e;
        ArcSoftOffscreen arcSoftOffscreen = (ArcSoftOffscreen) bVar2.as;
        a(arcSoftOffscreen, z, arcSoftOffscreen.getWidth(), arcSoftOffscreen.getHeight(), bVar2.at, aVar);
        aVar.f1799a = com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(aVar.f1799a, aVar.e, aVar.f), bVar2, j);
        aVar.i = 256;
    }
}
