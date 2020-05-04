package co.polarr.renderer.textureview;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.TextureView;
import co.polarr.renderer.render.b;
import java.util.Iterator;
import java.util.Queue;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class c extends Thread implements TextureView.SurfaceTextureListener {
    private static final String TAG = "RenderThread";

    /* renamed from: a  reason: collision with root package name */
    private Object f1296a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private SurfaceTexture f1297b;
    private a c;
    private boolean d;
    private boolean e = true;
    /* access modifiers changed from: private */
    public b f;
    private Queue<Runnable> g = new LinkedBlockingQueue();

    public c() {
        super("PPE TextureViewGL Renderer");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001b, code lost:
        if (r6.f.d() != false) goto L_0x0020;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
        r7.c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0020, code lost:
        b();
        r4 = ((long) (1000 / co.polarr.renderer.render.b.f1274a)) - (java.lang.System.currentTimeMillis() - r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0033, code lost:
        if (r4 <= 0) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        java.lang.Thread.sleep(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0039, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003a, code lost:
        r0.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0011, code lost:
        r0 = java.lang.System.currentTimeMillis();
     */
    private void a(d dVar) {
        while (true) {
            synchronized (this.f1296a) {
                if (this.f1297b == null) {
                    Log.d(TAG, "doAnimation exiting");
                    return;
                }
            }
        }
        while (true) {
        }
    }

    private void b() {
        Vector vector = new Vector();
        while (true) {
            Runnable poll = this.g.poll();
            if (poll == null) {
                break;
            }
            vector.add(poll);
        }
        Iterator it = vector.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public void a() {
        synchronized (this.f1296a) {
            this.d = true;
            this.f1296a.notify();
        }
    }

    public void a(b bVar) {
        this.f = bVar;
    }

    public void a(Runnable runnable) {
        this.g.add(runnable);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, final int i, final int i2) {
        Log.d(TAG, "onSurfaceTextureAvailable(" + i + "x" + i2 + ")");
        synchronized (this.f1296a) {
            this.f1297b = surfaceTexture;
            this.f1296a.notify();
        }
        a((Runnable) new Runnable() {
            public void run() {
                c.this.f.onSurfaceCreated((GL10) null, (EGLConfig) null);
                c.this.f.onSurfaceChanged((GL10) null, i, i2);
            }
        });
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Log.d(TAG, "onSurfaceTextureDestroyed");
        synchronized (this.f1296a) {
            this.f1297b = null;
        }
        a((Runnable) new Runnable() {
            public void run() {
                c.this.f.i();
            }
        });
        if (this.e) {
            Log.i(TAG, "Allowing TextureView to release SurfaceTexture");
        }
        return this.e;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        Log.d(TAG, "onSurfaceTextureSizeChanged(" + i + "x" + i2 + ")");
        a((Runnable) new Runnable() {
            public void run() {
                c.this.f.onSurfaceChanged((GL10) null, i, i2);
            }
        });
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0028, code lost:
        android.util.Log.d(TAG, "Got surfaceTexture=" + r2);
        r4.c = new co.polarr.renderer.textureview.a((android.opengl.EGLContext) null, 2);
        r0 = new co.polarr.renderer.textureview.d(r4.c, r4.f1297b);
        r0.b();
        a(r0);
        r0.d();
        r4.c.a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005f, code lost:
        if (r4.e != false) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0061, code lost:
        android.util.Log.i(TAG, "Releasing SurfaceTexture in renderer thread");
        r2.release();
     */
    public void run() {
        while (true) {
            synchronized (this.f1296a) {
                SurfaceTexture surfaceTexture = null;
                while (!this.d) {
                    surfaceTexture = this.f1297b;
                    if (surfaceTexture != null) {
                        break;
                    }
                    try {
                        this.f1296a.wait();
                    } catch (InterruptedException e2) {
                        throw new RuntimeException(e2);
                    }
                }
                if (this.d) {
                    Log.d(TAG, "Renderer thread exiting");
                    return;
                }
            }
        }
    }

    public void start() {
        synchronized (this) {
            super.start();
        }
    }
}
