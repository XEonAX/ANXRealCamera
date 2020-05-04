package co.polarr.renderer.filters.a;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.h;
import co.polarr.renderer.e;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.ai;
import co.polarr.renderer.render.b;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.Arrays;

public abstract class a {
    public static final int KEY_IN = 258;
    public static final int KEY_INDEX = 513;
    public static final int KEY_OUT = 257;
    protected static final String fragmentHeader = "precision highp float;\n";
    private static final String needReplaceHeader = "#extension GL_OES_standard_derivatives : enable";
    public static boolean v = true;
    protected static final String vertexHeader = "uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n";
    public static final float[] w = h.a();
    protected int A;
    protected int B;
    protected int C;
    protected int D;
    protected Resources E;
    protected int F = 0;
    protected float[] G = Arrays.copyOf(w, 16);

    /* renamed from: a  reason: collision with root package name */
    private int f1165a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f1166b = 0;
    protected Context u;
    protected int x;
    protected int y;
    protected int z;

    public a(Context context, Resources resources) {
        this.E = resources;
        this.u = context;
        a();
    }

    public static int a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader == 0) {
            return glCreateShader;
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        a(1, (Object) "Could not compile shader:" + i);
        a(1, (Object) "GLES20 Error:" + GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        return 0;
    }

    private static String a(String str) {
        return str.contains(needReplaceHeader) ? str.replace(fragmentHeader, "").replace(needReplaceHeader, "#extension GL_OES_standard_derivatives : enable\nprecision highp float;\n") : str;
    }

    public static void a(int i, Object obj) {
        e.a("base glError");
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0054  */
    public static int c(String str, String str2) {
        int a2 = a(35633, str);
        int i = 0;
        if (a2 == 0) {
            return 0;
        }
        int a3 = a(35632, a(str2));
        if (a3 == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, a2);
            GLES20.glAttachShader(glCreateProgram, a3);
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                a(1, (Object) "Could not link program:" + GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                if (i != 0) {
                    b.a(i);
                }
                GLES20.glDeleteShader(a2);
                GLES20.glDeleteShader(a3);
                return i;
            }
        }
        i = glCreateProgram;
        if (i != 0) {
        }
        GLES20.glDeleteShader(a2);
        GLES20.glDeleteShader(a3);
        return i;
    }

    /* access modifiers changed from: protected */
    public void C_() {
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    public final void a(int i) {
        this.f1166b = i;
    }

    /* access modifiers changed from: protected */
    public abstract void a(int i, int i2);

    /* access modifiers changed from: protected */
    public final void a(String str, String str2) {
        String str3;
        if (!this.u.isOES || ((!(this instanceof ai) && !(this instanceof co.polarr.renderer.filters.a)) || str2 == null)) {
            str3 = "";
        } else {
            str2 = str2.replace("uniform sampler2D texture;", "uniform samplerExternalOES texture;");
            str3 = "#extension GL_OES_EGL_image_external : require\n";
        }
        this.x = c(vertexHeader + str, str3 + fragmentHeader + str2);
        this.y = GLES20.glGetAttribLocation(this.x, "a_Vertex");
        this.z = GLES20.glGetAttribLocation(this.x, "a_TexCoord");
        this.A = GLES20.glGetAttribLocation(this.x, "a_Distortion");
        this.B = GLES20.glGetAttribLocation(this.x, "a_Delta");
        this.C = GLES20.glGetUniformLocation(this.x, "u_ModelViewProjectionMatrix");
        this.D = GLES20.glGetUniformLocation(this.x, "texture");
    }

    public void a(float[] fArr) {
        this.G = fArr;
    }

    /* access modifiers changed from: protected */
    public void b() {
        GLES20.glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
    }

    public final void b(int i, int i2) {
        a(i, i2);
    }

    /* access modifiers changed from: protected */
    public final void b(String str, String str2) {
        a(this.u.shaderUtil.a(this.E, str), this.u.shaderUtil.a(this.E, str2));
        e.a("create program");
    }

    /* access modifiers changed from: protected */
    public abstract void b_();

    /* access modifiers changed from: protected */
    public void d() {
        GLES20.glUniformMatrix4fv(this.C, 1, false, this.G, 0);
    }

    public void draw() {
        b();
        n();
        d();
        g();
        e();
    }

    /* access modifiers changed from: protected */
    public void e() {
        int i = this.y;
        if (i >= 0) {
            GLES20.glEnableVertexAttribArray(i);
            GLES20.glVertexAttribPointer(this.y, 3, 5126, false, 0, this.u.mesh.mVerBuffer);
        }
        int i2 = this.z;
        if (i2 >= 0) {
            GLES20.glEnableVertexAttribArray(i2);
            GLES20.glVertexAttribPointer(this.z, 2, 5126, false, 0, this.u.mesh.mTexBuffer);
        }
        int i3 = this.A;
        if (i3 >= 0) {
            GLES20.glEnableVertexAttribArray(i3);
            GLES20.glVertexAttribPointer(this.A, 2, 5126, false, 0, this.u.mesh.mDistortionBuffer);
        }
        int i4 = this.B;
        if (i4 >= 0) {
            GLES20.glEnableVertexAttribArray(i4);
            GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, this.u.mesh.mDeltaBuffer);
        }
        GLES20.glDrawElements(4, this.u.mesh.trianglesBuffer.capacity(), 5123, this.u.mesh.trianglesBuffer);
        int i5 = this.y;
        if (i5 >= 0) {
            GLES20.glDisableVertexAttribArray(i5);
        }
        int i6 = this.z;
        if (i6 >= 0) {
            GLES20.glDisableVertexAttribArray(i6);
        }
        int i7 = this.A;
        if (i7 >= 0) {
            GLES20.glDisableVertexAttribArray(i7);
        }
        int i8 = this.B;
        if (i8 >= 0) {
            GLES20.glDisableVertexAttribArray(i8);
        }
        e.a("draw program");
        C_();
    }

    /* access modifiers changed from: protected */
    public void g() {
        GLES20.glActiveTexture(this.f1165a + 33984);
        GLES20.glBindTexture((!this.u.isOES || (!(this instanceof ai) && !(this instanceof co.polarr.renderer.filters.a))) ? 3553 : 36197, l());
        GLES20.glUniform1i(this.D, this.f1165a);
    }

    public float[] getMatrix() {
        return this.G;
    }

    public final void k() {
        b_();
    }

    public final int l() {
        return this.f1166b;
    }

    public int m() {
        return -1;
    }

    /* access modifiers changed from: protected */
    public void n() {
        GLES20.glUseProgram(this.x);
    }
}
