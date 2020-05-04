package co.polarr.renderer;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Log;
import co.polarr.renderer.render.b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class d {
    private static final int FLOAT_SIZE_BYTES = 4;
    private static final String FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    private static final String TAG = "TextureRender";
    private static final int TRIANGLE_VERTICES_DATA_POS_OFFSET = 0;
    private static final int TRIANGLE_VERTICES_DATA_STRIDE_BYTES = 20;
    private static final int TRIANGLE_VERTICES_DATA_UV_OFFSET = 3;
    private static final String VERTEX_SHADER = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";

    /* renamed from: a  reason: collision with root package name */
    private final float[] f1153a = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: b  reason: collision with root package name */
    private FloatBuffer f1154b = ByteBuffer.allocateDirect(this.f1153a.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    private float[] c = new float[16];
    private float[] d = new float[16];
    private int e;
    private int f = -12345;
    private int g;
    private int h;
    private int i;
    private int j;

    public d() {
        this.f1154b.put(this.f1153a).position(0);
        Matrix.setIdentityM(this.d, 0);
    }

    private int a(int i2, String str) {
        int glCreateShader = GLES20.glCreateShader(i2);
        a("glCreateShader type=" + i2);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        Log.e(TAG, "Could not compile shader " + i2 + ":");
        StringBuilder sb = new StringBuilder();
        sb.append(" ");
        sb.append(GLES20.glGetShaderInfoLog(glCreateShader));
        Log.e(TAG, sb.toString());
        GLES20.glDeleteShader(glCreateShader);
        return 0;
    }

    private int a(String str, String str2) {
        int a2 = a(35633, str);
        int i2 = 0;
        if (a2 == 0) {
            return 0;
        }
        int a3 = a(35632, str2);
        if (a3 == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        a("glCreateProgram");
        if (glCreateProgram == 0) {
            Log.e(TAG, "Could not create program");
        }
        GLES20.glAttachShader(glCreateProgram, a2);
        a("glAttachShader");
        GLES20.glAttachShader(glCreateProgram, a3);
        a("glAttachShader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            Log.e(TAG, "Could not link program: ");
            Log.e(TAG, GLES20.glGetProgramInfoLog(glCreateProgram));
            GLES20.glDeleteProgram(glCreateProgram);
        } else {
            i2 = glCreateProgram;
        }
        if (i2 != 0) {
            b.a(i2);
        }
        return i2;
    }

    public void a() {
        this.e = a(VERTEX_SHADER, FRAGMENT_SHADER);
        int i2 = this.e;
        if (i2 != 0) {
            this.i = GLES20.glGetAttribLocation(i2, "aPosition");
            a("glGetAttribLocation aPosition");
            if (this.i != -1) {
                this.j = GLES20.glGetAttribLocation(this.e, "aTextureCoord");
                a("glGetAttribLocation aTextureCoord");
                if (this.j != -1) {
                    this.g = GLES20.glGetUniformLocation(this.e, "uMVPMatrix");
                    a("glGetUniformLocation uMVPMatrix");
                    if (this.g != -1) {
                        this.h = GLES20.glGetUniformLocation(this.e, "uSTMatrix");
                        a("glGetUniformLocation uSTMatrix");
                        if (this.h != -1) {
                            Matrix.setIdentityM(this.c, 0);
                            Matrix.scaleM(this.c, 0, -1.0f, -1.0f, 1.0f);
                            return;
                        }
                        throw new RuntimeException("Could not get attrib location for uSTMatrix");
                    }
                    throw new RuntimeException("Could not get attrib location for uMVPMatrix");
                }
                throw new RuntimeException("Could not get attrib location for aTextureCoord");
            }
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        throw new RuntimeException("failed creating program");
    }

    public void a(int i2) {
        this.f = i2;
    }

    public void a(SurfaceTexture surfaceTexture, float[] fArr) {
        if (surfaceTexture != null) {
            surfaceTexture.getTransformMatrix(this.d);
        }
        GLES20.glUseProgram(this.e);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.f);
        this.f1154b.position(0);
        GLES20.glVertexAttribPointer(this.i, 3, 5126, false, 20, this.f1154b);
        GLES20.glEnableVertexAttribArray(this.i);
        this.f1154b.position(3);
        GLES20.glVertexAttribPointer(this.j, 2, 5126, false, 20, this.f1154b);
        GLES20.glEnableVertexAttribArray(this.j);
        if (fArr != null) {
            Matrix.setIdentityM(this.c, 0);
            Matrix.scaleM(this.c, 0, -1.0f, -1.0f, 1.0f);
            float[] fArr2 = this.c;
            Matrix.multiplyMM(fArr2, 0, fArr2, 0, fArr, 0);
        }
        GLES20.glUniformMatrix4fv(this.g, 1, false, this.c, 0);
        GLES20.glUniformMatrix4fv(this.h, 1, false, this.d, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void a(String str) {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                Log.e(TAG, str + ": glError " + glGetError);
            } else {
                return;
            }
        }
    }
}
