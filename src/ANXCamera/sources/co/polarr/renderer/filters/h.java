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

public class h extends a {

    /* renamed from: a  reason: collision with root package name */
    public float f1244a = 0.5f;

    /* renamed from: b  reason: collision with root package name */
    public float f1245b = 0.0f;
    public float c = 0.5f;
    public float[] d = {1.0f, 0.0f, 0.0f, 0.0f};
    public boolean e;
    public boolean f;
    private FloatBuffer g;

    public h(Context context, Resources resources) {
        super(context, resources);
        k();
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    /* access modifiers changed from: protected */
    public void a(int i, int i2) {
    }

    public void a(List<Float> list, boolean z) {
        int i;
        if (list != null && !list.isEmpty()) {
            GLES20.glEnable(3042);
            GLES20.glBlendEquation(32774);
            if (z) {
                if (this.e) {
                    GLES20.glBlendFuncSeparate(0, 771, 0, 771);
                } else {
                    GLES20.glBlendFuncSeparate(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771, 1, 771);
                }
            } else if (!this.e || this.f) {
                GLES20.glBlendFunc(1, 769);
            } else {
                GLES20.glBlendFunc(0, 769);
            }
            if (z) {
                synchronized (list) {
                    int size = list.size() * 4;
                    ByteBuffer allocateDirect = ByteBuffer.allocateDirect(size);
                    allocateDirect.order(ByteOrder.nativeOrder());
                    this.g = allocateDirect.asFloatBuffer();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        } else if (list.size() <= i2) {
                            break;
                        } else {
                            Float f2 = list.get(i2);
                            if (!this.u.isSDK && i2 % 4 == 1) {
                                f2 = Float.valueOf(1.0f - f2.floatValue());
                            }
                            this.g.put(f2.floatValue());
                            i2++;
                        }
                    }
                }
                this.g.position(0);
                GLES20.glVertexAttribPointer(this.z, 4, 5126, false, 0, this.g);
                GLES20.glEnableVertexAttribArray(this.z);
                GLES20.glUseProgram(this.x);
                i_();
                i = list.size() / 4;
            } else {
                synchronized (list) {
                    int size2 = list.size() * 4;
                    ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(size2);
                    allocateDirect2.order(ByteOrder.nativeOrder());
                    this.g = allocateDirect2.asFloatBuffer();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size2) {
                            break;
                        } else if (list.size() <= i3) {
                            break;
                        } else {
                            Float f3 = list.get(i3);
                            if (!this.u.isSDK && i3 % 3 == 1) {
                                f3 = Float.valueOf(1.0f - f3.floatValue());
                            }
                            this.g.put(f3.floatValue());
                            i3++;
                        }
                    }
                }
                this.g.position(0);
                GLES20.glVertexAttribPointer(this.z, 3, 5126, false, 0, this.g);
                GLES20.glEnableVertexAttribArray(this.z);
                GLES20.glUseProgram(this.x);
                i_();
                i = list.size() / 3;
            }
            GLES20.glDrawArrays(0, 0, i);
            GLES20.glDisableVertexAttribArray(this.z);
            GLES20.glDisable(3042);
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void b_() {
        this.x = c("uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n" + this.u.shaderUtil.a(this.E, p.a("brush_vertex")), "precision highp float;\n" + this.u.shaderUtil.a(this.E, p.a("brush")));
        this.z = GLES20.glGetAttribLocation(this.x, "coordinates");
    }

    /* access modifiers changed from: protected */
    public void d() {
    }

    public void draw() {
    }

    public void i_() {
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "brushSize"), this.f1244a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "hardness"), this.f1245b);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "flow"), this.c);
        GLES20.glUniform4fv(GLES20.glGetUniformLocation(this.x, "channelMask"), 1, this.d, 0);
    }
}
