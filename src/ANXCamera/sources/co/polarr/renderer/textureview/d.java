package co.polarr.renderer.textureview;

import android.graphics.SurfaceTexture;
import android.view.Surface;

public class d extends b {

    /* renamed from: b  reason: collision with root package name */
    private Surface f1303b;
    private boolean c;

    public d(a aVar, SurfaceTexture surfaceTexture) {
        super(aVar);
        a(surfaceTexture);
    }

    public void d() {
        a();
        Surface surface = this.f1303b;
        if (surface != null) {
            if (this.c) {
                surface.release();
            }
            this.f1303b = null;
        }
    }
}
