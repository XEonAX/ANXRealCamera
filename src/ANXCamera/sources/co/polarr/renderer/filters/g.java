package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.a;

public class g extends a {
    private static LruCache<String, g> h = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1242a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1243b;
    public float[] c;
    public float d = 0.5f;
    public float e = 0.0f;
    public float f = 0.5f;
    public boolean g;

    public g(Resources resources, Context context) {
        super(context, resources);
    }

    public static g a(Resources resources, Context context) {
        g gVar = h.get(Thread.currentThread().getName());
        if (gVar == null) {
            gVar = new g(resources, context);
            gVar.k();
            h.put(Thread.currentThread().getName(), gVar);
        }
        gVar.u = context;
        return gVar;
    }

    public static void h_() {
        h.evictAll();
    }

    /* access modifiers changed from: protected */
    public void a(int i, int i2) {
    }

    /* access modifiers changed from: protected */
    public void b_() {
        this.x = c("uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n" + this.u.shaderUtil.a(this.E, p.a("vertex")), this.u.shaderUtil.a(this.E, p.a("brush_cursor")));
        this.y = GLES20.glGetAttribLocation(this.x, "a_Vertex");
        this.z = GLES20.glGetAttribLocation(this.x, "a_TexCoord");
        this.A = GLES20.glGetAttribLocation(this.x, "a_Distortion");
        this.B = GLES20.glGetAttribLocation(this.x, "a_Delta");
        this.C = GLES20.glGetUniformLocation(this.x, "u_ModelViewProjectionMatrix");
        this.D = GLES20.glGetUniformLocation(this.x, "texture");
    }

    /* access modifiers changed from: protected */
    public void d() {
        if (this.f1242a == null) {
            this.f1242a = new float[]{0.0f, 0.0f, 0.0f};
        }
        float min = Math.min(1.0f, this.f1242a[2] * 2.0f);
        float[] fArr = this.G;
        float[] fArr2 = this.u.overlayMatrix;
        float[] fArr3 = this.c;
        Matrix.translateM(fArr, 0, fArr2, 0, fArr3[0], fArr3[1], fArr3[2]);
        float[] fArr4 = this.G;
        float[] fArr5 = this.f1243b;
        Matrix.scaleM(fArr4, 0, fArr5[0], fArr5[1], fArr5[2]);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "pressure"), min);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "hardness"), this.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "flow"), this.f);
        super.d();
    }

    public void draw() {
        n();
        d();
        e();
    }

    /* access modifiers changed from: protected */
    public void e() {
        if (this.y >= 0) {
            GLES20.glEnableVertexAttribArray(this.y);
            GLES20.glVertexAttribPointer(this.y, 3, 5126, false, 0, Context.overlayMesh.mVerBuffer);
        }
        if (this.z >= 0) {
            GLES20.glEnableVertexAttribArray(this.z);
            GLES20.glVertexAttribPointer(this.z, 2, 5126, false, 0, Context.overlayMesh.mTexBuffer);
        }
        if (this.A >= 0) {
            GLES20.glEnableVertexAttribArray(this.A);
            GLES20.glVertexAttribPointer(this.A, 2, 5126, false, 0, Context.overlayMesh.mDistortionBuffer);
        }
        if (this.B >= 0) {
            GLES20.glEnableVertexAttribArray(this.B);
            GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, Context.overlayMesh.mDeltaBuffer);
        }
        GLES20.glDrawElements(4, Context.overlayMesh.trianglesBuffer.capacity(), 5123, Context.overlayMesh.trianglesBuffer);
        if (this.y >= 0) {
            GLES20.glDisableVertexAttribArray(this.y);
        }
        if (this.z >= 0) {
            GLES20.glDisableVertexAttribArray(this.z);
        }
        if (this.A >= 0) {
            GLES20.glDisableVertexAttribArray(this.A);
        }
        if (this.B >= 0) {
            GLES20.glDisableVertexAttribArray(this.B);
        }
    }
}
