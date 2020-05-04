package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.LruCache;
import co.polarr.renderer.b.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.a;

public class p extends a {
    private static LruCache<String, p> e = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1256a = {0.5f, 0.5f};

    /* renamed from: b  reason: collision with root package name */
    public float f1257b = 42.0f;
    public float[] c = {0.0f, 0.0f, 0.0f};
    public boolean d;

    public p(Resources resources, Context context) {
        super(context, resources);
    }

    public static p a(Resources resources, Context context) {
        p pVar = e.get(Thread.currentThread().getName());
        if (pVar == null) {
            pVar = new p(resources, context);
            pVar.k();
            e.put(Thread.currentThread().getName(), pVar);
        }
        pVar.u = context;
        return pVar;
    }

    public static void o_() {
        e.evictAll();
    }

    /* access modifiers changed from: protected */
    public void a(int i, int i2) {
    }

    /* access modifiers changed from: protected */
    public void b_() {
        this.x = c("uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n" + this.u.shaderUtil.a(this.E, co.polarr.renderer.b.p.a("vertex")), this.u.shaderUtil.a(this.E, co.polarr.renderer.b.p.a("color_cursor")));
        this.y = GLES20.glGetAttribLocation(this.x, "a_Vertex");
        this.z = GLES20.glGetAttribLocation(this.x, "a_TexCoord");
        this.A = GLES20.glGetAttribLocation(this.x, "a_Distortion");
        this.B = GLES20.glGetAttribLocation(this.x, "a_Delta");
        this.C = GLES20.glGetUniformLocation(this.x, "u_ModelViewProjectionMatrix");
        this.D = GLES20.glGetUniformLocation(this.x, "texture");
    }

    /* access modifiers changed from: protected */
    public void d() {
        if (this.f1256a != null) {
            GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "position"), 1, this.f1256a, 0);
            float d2 = this.f1257b * c.d(this.u);
            float[] fArr = {d2 / (((float) this.u.imageTexture.d) * this.u.screen.zoom), d2 / (((float) this.u.imageTexture.e) * this.u.screen.zoom), 1.0f};
            float[] fArr2 = this.f1256a;
            float[] fArr3 = {fArr2[0] * 2.0f, (-fArr2[1]) * 2.0f, 0.0f};
            Matrix.translateM(this.G, 0, this.u.overlayMatrix, 0, fArr3[0], fArr3[1], fArr3[2]);
            Matrix.scaleM(this.G, 0, fArr[0], fArr[1], fArr[2]);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "texel"), 1.0f / d2);
            float[] fArr4 = this.c;
            if (fArr4 == null || fArr4.length != 3) {
                GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "colorMix"), 0.0f);
            } else {
                GLES20.glUniform3fv(GLES20.glGetUniformLocation(this.x, "color"), 1, this.c, 0);
                GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "colorMix"), 1.0f);
            }
        }
        a(this.u.dehazeTexture.c);
        super.d();
    }

    public void draw() {
        n();
        d();
        g();
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
