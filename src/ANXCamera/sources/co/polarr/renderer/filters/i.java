package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.a;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.List;

public class i extends a {

    /* renamed from: a  reason: collision with root package name */
    public float f1246a = 0.5f;

    /* renamed from: b  reason: collision with root package name */
    public float f1247b = 0.5f;
    public int c;
    private FloatBuffer d;

    public i(Context context, Resources resources) {
        super(context, resources);
        k();
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    /* access modifiers changed from: protected */
    public void a(int i, int i2) {
    }

    public void a(List<Float> list) {
        if (list != null) {
            synchronized (list) {
                int size = list.size() * 4;
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(size);
                allocateDirect.order(ByteOrder.nativeOrder());
                this.d = allocateDirect.asFloatBuffer();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    } else if (list.size() <= i) {
                        break;
                    } else {
                        Float f = list.get(i);
                        if (!this.u.isSDK && i % 4 == 1) {
                            f = Float.valueOf(1.0f - f.floatValue());
                        }
                        this.d.put(f.floatValue());
                        i++;
                    }
                }
            }
            this.d.position(0);
            GLES20.glEnable(3042);
            GLES20.glBlendEquation(32774);
            GLES20.glBlendFuncSeparate(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771, 1, 771);
            GLES20.glVertexAttribPointer(this.z, 4, 5126, false, 0, this.d);
            GLES20.glEnableVertexAttribArray(this.z);
            GLES20.glUseProgram(this.x);
            j_();
            GLES20.glDrawArrays(0, 0, list.size() / 4);
            GLES20.glDisableVertexAttribArray(this.z);
            GLES20.glDisable(3042);
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void b_() {
        this.x = c("uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n" + this.u.shaderUtil.a(this.E, p.a("paint_vertex")), "precision highp float;\n" + this.u.shaderUtil.a(this.E, p.a("paint")));
        this.z = GLES20.glGetAttribLocation(this.x, "coordinates");
    }

    /* access modifiers changed from: protected */
    public void d() {
    }

    public void draw() {
    }

    public void j_() {
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "brushMap");
        GLES20.glActiveTexture(33988);
        GLES20.glBindTexture(3553, this.c);
        GLES20.glUniform1i(glGetUniformLocation, 4);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "image");
        GLES20.glActiveTexture(33989);
        GLES20.glBindTexture(3553, this.u.denoiseTexture.c);
        GLES20.glUniform1i(glGetUniformLocation2, 5);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "brushSize"), this.f1246a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "flow"), this.f1247b);
    }
}
