package com.oppo.camera.Ipa.a;

import android.content.Context;
import co.polarr.renderer.PolarrRender;
import com.oppo.camera.Ipa.b;

/* compiled from: FilterProcessor */
public class d extends b {

    /* renamed from: a  reason: collision with root package name */
    private Context f1782a = null;

    public void a() {
    }

    public void a(Context context, b bVar) {
        this.f1782a = context;
    }

    public void a(b bVar) {
        b bVar2 = bVar;
        long currentTimeMillis = System.currentTimeMillis();
        b.a aVar = bVar2.f1797a;
        String str = bVar2.f1798b.O;
        boolean z = bVar2.f1798b.P;
        com.oppo.camera.d.a("FilterProcessor", "process, filterType: " + str);
        if (z) {
            PolarrRender.setupVignetteParams(-0.7f, 0.44f, 0.83f, 0.25f, -0.74f, 0.98f);
        }
        if (aVar.i == 274) {
            PolarrRender.renderNV12(this.f1782a, aVar.f1799a, aVar.g, aVar.h, str, 1.0f, z);
        } else if (aVar.i == 17) {
            PolarrRender.renderNV21(this.f1782a, aVar.f1799a, aVar.g, aVar.h, str, 1.0f, z);
        }
        com.oppo.camera.d.e("FilterProcessor", "process, filter cost time: " + (System.currentTimeMillis() - currentTimeMillis));
    }
}
