package co.polarr.renderer.textureview;

import android.opengl.EGL14;
import android.opengl.EGLSurface;
import android.util.Log;

public class b {
    protected static final String TAG = "EglSurfaceBase";

    /* renamed from: a  reason: collision with root package name */
    protected a f1294a;

    /* renamed from: b  reason: collision with root package name */
    private EGLSurface f1295b = EGL14.EGL_NO_SURFACE;
    private int c = -1;
    private int d = -1;

    protected b(a aVar) {
        this.f1294a = aVar;
    }

    public void a() {
        this.f1294a.a(this.f1295b);
        this.f1295b = EGL14.EGL_NO_SURFACE;
        this.d = -1;
        this.c = -1;
    }

    public void a(Object obj) {
        if (this.f1295b == EGL14.EGL_NO_SURFACE) {
            this.f1295b = this.f1294a.a(obj);
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public void b() {
        this.f1294a.b(this.f1295b);
    }

    public boolean c() {
        boolean c2 = this.f1294a.c(this.f1295b);
        if (!c2) {
            Log.d(TAG, "WARNING: swapBuffers() failed");
        }
        return c2;
    }
}
