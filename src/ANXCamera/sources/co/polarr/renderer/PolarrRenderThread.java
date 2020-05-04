package co.polarr.renderer;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import co.polarr.renderer.render.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class PolarrRenderThread extends HandlerThread {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f1097a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public f f1098b = null;
    private a c;
    /* access modifiers changed from: private */
    public Handler d;
    private boolean e = false;

    @co.polarr.a.a
    public PolarrRenderThread(Resources resources) {
        super("PolarrRenderThread");
        this.f1097a = resources;
    }

    /* access modifiers changed from: private */
    public void a() {
        this.c = new a();
        this.c.a(100, 100);
        this.f1098b = new f();
        this.f1098b.a(this.f1097a, 1, 1, !this.e, 0);
        this.f1098b.b();
    }

    /* access modifiers changed from: private */
    public void b() {
        this.f1098b.n();
        this.c.b();
    }

    public void interrupt() {
        this.d.post(new Runnable() {
            public void run() {
                PolarrRenderThread.this.b();
                PolarrRenderThread.super.interrupt();
                PolarrRenderThread.this.d.getLooper().quit();
                Handler unused = PolarrRenderThread.this.d = null;
            }
        });
    }

    @co.polarr.a.a
    public void renderBitmap(final Bitmap bitmap, final List<String> list, final RenderCallback renderCallback) {
        if (renderCallback != null && bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && list != null && !list.isEmpty()) {
            this.d.post(new Runnable() {
                public void run() {
                    ArrayList arrayList = new ArrayList();
                    PolarrRenderThread.this.f1098b.a(bitmap.getWidth(), bitmap.getHeight());
                    for (String a2 : list) {
                        arrayList.add(PolarrRenderThread.this.f1098b.a(bitmap, a2));
                    }
                    renderCallback.onRenderBitmap(arrayList);
                }
            });
        }
    }

    @co.polarr.a.a
    public void renderBitmapByStates(final Bitmap bitmap, final List<Map<String, Object>> list, final RenderCallback renderCallback) {
        if (bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && list != null && !list.isEmpty()) {
            this.d.post(new Runnable() {
                public void run() {
                    if (renderCallback != null) {
                        ArrayList arrayList = new ArrayList();
                        PolarrRenderThread.this.f1098b.a(bitmap.getWidth(), bitmap.getHeight());
                        for (Map a2 : list) {
                            arrayList.add(PolarrRenderThread.this.f1098b.a(bitmap, (Map<String, Object>) a2));
                        }
                        renderCallback.onRenderBitmap(arrayList);
                    }
                }
            });
        }
    }

    public void start() {
        synchronized (this) {
            super.start();
            this.d = new Handler(getLooper());
            this.d.post(new Runnable() {
                public void run() {
                    PolarrRenderThread.this.a();
                }
            });
        }
    }
}
