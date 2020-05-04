package co.polarr.renderer.render;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.f;
import java.io.File;
import java.util.Map;

public abstract class d {
    private static final String WATERMARK_PATH = "/watermark.png";

    /* renamed from: a  reason: collision with root package name */
    protected int f1288a;

    /* renamed from: b  reason: collision with root package name */
    protected int f1289b;
    private final f c;
    private b d;
    private Bitmap e;

    protected d(b bVar) {
        this.d = bVar;
        e().currentRender = bVar;
        e().context = b();
        e().assetManager = b().getAssets();
        e().resources = b().getResources();
        e().glRenderView = this;
        try {
            this.e = f();
            if (this.e == null) {
                this.e = BitmapFactory.decodeStream(b().getAssets().open("editor/img/sample_images/logo-large.png"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.c = new f();
    }

    private Context e() {
        return p.c;
    }

    private Bitmap f() {
        try {
            File file = new File(b().getFilesDir().getPath() + WATERMARK_PATH);
            if (file.exists()) {
                return BitmapFactory.decodeFile(file.getPath());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public void a() {
        this.c.a(b().getResources(), 512, 512, (Map<String, Object>) null);
        this.c.b(false);
    }

    public void a(int i) {
        GLES20.glGetError();
        if (this.c.e() != i) {
            this.c.a(i);
            this.c.a(this.f1288a, this.f1289b);
            this.c.i();
        }
    }

    public void a(int[] iArr) {
        GLES20.glGetError();
        if (!this.c.a(iArr)) {
            this.c.a(this.f1288a, this.f1289b);
            this.c.i();
        }
    }

    /* access modifiers changed from: protected */
    public abstract android.content.Context b();

    public void c() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.j();
        }
    }

    public Resources d() {
        return b().getResources();
    }
}
