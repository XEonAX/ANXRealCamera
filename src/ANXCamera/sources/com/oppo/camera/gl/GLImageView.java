package com.oppo.camera.gl;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Handler;
import android.view.SurfaceHolder;
import android.view.animation.PathInterpolator;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class GLImageView extends GLSurfaceView {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static float f2134a = 2.5f;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final MyGLRenderer f2135b;
    /* access modifiers changed from: private */
    public final PathInterpolator c;
    /* access modifiers changed from: private */
    public final PathInterpolator d;
    /* access modifiers changed from: private */
    public float e = f2134a;
    /* access modifiers changed from: private */
    public float f = 0.5f;
    /* access modifiers changed from: private */
    public float g;
    /* access modifiers changed from: private */
    public float h = 15.0f;
    /* access modifiers changed from: private */
    public float i = 0.0f;
    /* access modifiers changed from: private */
    public float j = 0.0f;
    /* access modifiers changed from: private */
    public int k = 1080;
    /* access modifiers changed from: private */
    public int l = 2280;
    /* access modifiers changed from: private */
    public int m = 0;
    /* access modifiers changed from: private */
    public int n = 0;
    /* access modifiers changed from: private */
    public int o = 0;
    /* access modifiers changed from: private */
    public boolean p = false;
    /* access modifiers changed from: private */
    public Context q = null;
    /* access modifiers changed from: private */
    public Bitmap r = null;
    private AnimatorState s = AnimatorState.BLUR_FADE_END;
    /* access modifiers changed from: private */
    public Handler t = new Handler();
    private BlurAnimationEndListener u;

    enum AnimatorState {
        BLUR_FADE_IN,
        BLUR_FADE_OUT,
        BLUR_FADE_END
    }

    public interface BlurAnimationEndListener {
        void onBlurAnimationEnd();
    }

    public class MyGLRenderer implements GLSurfaceView.Renderer {

        /* renamed from: b  reason: collision with root package name */
        private final float[] f2140b = new float[16];
        private final float[] c = new float[16];
        private final float[] d = new float[16];
        private Rectangle e;
        private int f = 0;
        private int g = 0;
        private int h = 0;
        private int i = 0;
        private int j = 0;
        private int k = 0;
        private int l = 0;
        private int m = 0;
        private int n = 0;
        private int o = 0;
        private int p = 0;
        private String q = "uniform mat4 uMVPMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTextureCoord;\nattribute vec3 aNormal;\nvarying vec2  TexCoord;\nvarying vec4 vPosition;\nvoid main(void){ vec4 tpos = vec4(aPosition,1.0);\n vec4 ecPosition = uMVPMatrix * tpos;\n TexCoord        = aTextureCoord;\n gl_Position     = ecPosition;\n vPosition\t\t = ecPosition;\n}\n";
        private String r = " precision mediump float;\n varying vec2  TexCoord;\n varying vec4 vPosition;\n uniform float uAlpha;\n uniform float uModeTop;\n uniform float uModeBottom;\n uniform float uRed;\n uniform float uGreen;\n uniform float uBlue;\n uniform int uRenderType;\n uniform sampler2D sTexture;\n uniform vec4 vColor;\n void main(void){ \n vec4 color = texture2D(sTexture, TexCoord);\n if (uRenderType == 0) { \n if (vPosition.y > uModeTop || vPosition.y < uModeBottom) {\n gl_FragColor.r = uRed;\n gl_FragColor.g = uGreen;\n gl_FragColor.b = uBlue;\n gl_FragColor.a = uAlpha;\n } else {\n gl_FragColor = color * 0.0;}\n } else {\n if (vPosition.y > uModeTop || vPosition.y < uModeBottom) {\n gl_FragColor.r = uRed;\n gl_FragColor.g = uGreen;\n gl_FragColor.b = uBlue;\n gl_FragColor.a = uAlpha;\n } else {\n gl_FragColor = color * uAlpha;}\n }\n }\n";
        private int s;

        public MyGLRenderer() {
        }

        private int a(int i2, String str) {
            int glCreateShader = GLES20.glCreateShader(i2);
            i.i();
            GLES20.glShaderSource(glCreateShader, str);
            i.i();
            GLES20.glCompileShader(glCreateShader);
            i.i();
            return glCreateShader;
        }

        private void a() {
            int a2 = a(35633, this.q);
            i.i();
            int a3 = a(35632, this.r);
            i.i();
            this.f = GLES20.glCreateProgram();
            i.i();
            GLES20.glAttachShader(this.f, a2);
            i.i();
            GLES20.glAttachShader(this.f, a3);
            i.i();
            GLES20.glLinkProgram(this.f);
            i.i();
            this.g = GLES20.glGetAttribLocation(this.f, "aPosition");
            i.i();
            this.h = GLES20.glGetAttribLocation(this.f, "aTextureCoord");
            i.i();
            this.j = GLES20.glGetUniformLocation(this.f, "uAlpha");
            i.i();
            this.k = GLES20.glGetUniformLocation(this.f, "uModeTop");
            i.i();
            this.l = GLES20.glGetUniformLocation(this.f, "uModeBottom");
            i.i();
            this.m = GLES20.glGetUniformLocation(this.f, "uRenderType");
            i.i();
            this.i = GLES20.glGetUniformLocation(this.f, "uMVPMatrix");
            i.i();
            this.n = GLES20.glGetUniformLocation(this.f, "uRed");
            i.i();
            this.o = GLES20.glGetUniformLocation(this.f, "uGreen");
            i.i();
            this.p = GLES20.glGetUniformLocation(this.f, "uBlue");
            i.i();
        }

        private void a(int i2) {
            d.a("MyGLRenderer", "init2DTexture()");
            GLES20.glBindTexture(3553, i2);
            i.i();
            GLES20.glTexParameteri(3553, 10242, 33071);
            i.i();
            GLES20.glTexParameteri(3553, 10243, 33071);
            i.i();
            GLES20.glTexParameteri(3553, 10240, 9729);
            i.i();
            GLES20.glTexParameteri(3553, 10241, 9729);
            i.i();
        }

        public void onDrawFrame(GL10 gl10) {
            d.a("MyGLRenderer", "onDrawFrame, mBitmap: " + GLImageView.this.r + ", mRadius: " + GLImageView.this.f + ", mbTextureUpdated: " + GLImageView.this.p + ", mScaleFrameIndex: " + GLImageView.this.n + ", mTopGain: " + GLImageView.this.i);
            if (GLImageView.this.f <= GLImageView.this.h && GLImageView.this.f > 0.0f && GLImageView.this.r != null) {
                if ((GLImageView.this.r != null && GLImageView.this.r.isRecycled()) || GLImageView.this.a(AnimatorState.BLUR_FADE_END)) {
                    return;
                }
                if (GLImageView.this.p || GLImageView.this.n != 0) {
                    d.a("GLImageView.onDrawFrame");
                    boolean unused = GLImageView.this.p = false;
                    GLES20.glUseProgram(this.f);
                    i.i();
                    GLES20.glDisable(3024);
                    i.i();
                    GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                    i.i();
                    GLES20.glClear(16640);
                    i.i();
                    GLES20.glEnable(3042);
                    i.i();
                    GLES20.glBlendFunc(1, 1);
                    i.i();
                    GLES20.glActiveTexture(33984);
                    i.i();
                    GLES20.glBindTexture(3553, this.s);
                    i.i();
                    Matrix.setLookAtM(this.d, 0, 0.0f, 0.0f, -3.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                    Matrix.multiplyMM(this.f2140b, 0, this.c, 0, this.d, 0);
                    GLES20.glUniform1f(this.j, GLImageView.this.e > 0.0f ? 1.0f : GLImageView.this.d.getInterpolation(GLImageView.this.f / GLImageView.this.h));
                    i.i();
                    GLES20.glUniform1f(this.n, 0.0f);
                    i.i();
                    GLES20.glUniform1f(this.o, 0.0f);
                    i.i();
                    GLES20.glUniform1f(this.p, 0.0f);
                    i.i();
                    this.e.draw(this.f2140b, this.g, this.h, this.i, this.k, this.l, this.m);
                    GLImageView gLImageView = GLImageView.this;
                    float unused2 = gLImageView.f = gLImageView.f + GLImageView.this.e;
                    if (GLImageView.this.f <= 0.0f) {
                        if (GLImageView.this.a(AnimatorState.BLUR_FADE_OUT)) {
                            GLImageView.this.t.post(new Runnable() {
                                public void run() {
                                    GLImageView.this.setVisibility(4);
                                }
                            });
                            GLImageView.this.setAnimatorState(AnimatorState.BLUR_FADE_END);
                            int unused3 = GLImageView.this.n = 0;
                            float unused4 = GLImageView.this.i = 0.0f;
                            float unused5 = GLImageView.this.j = 0.0f;
                            float unused6 = GLImageView.this.e = GLImageView.f2134a;
                            float unused7 = GLImageView.this.f = GLImageView.f2134a;
                        }
                    } else if (GLImageView.this.f >= GLImageView.this.h + GLImageView.f2134a) {
                        GLImageView gLImageView2 = GLImageView.this;
                        float unused8 = gLImageView2.f = gLImageView2.h;
                        if (GLImageView.this.n > 0 && GLImageView.this.n < 25) {
                            GLImageView.this.requestRender();
                        }
                    } else {
                        if (GLImageView.this.f >= GLImageView.this.h && GLImageView.this.f < GLImageView.this.h + GLImageView.f2134a) {
                            GLImageView gLImageView3 = GLImageView.this;
                            float unused9 = gLImageView3.f = gLImageView3.h;
                        }
                        updateTexture();
                        d.b("GLImageView.onDrawFrame");
                    }
                }
            }
        }

        public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
            d.a("MyGLRenderer", "onSurfaceChanged, width: " + i2 + ", height: " + i3);
            if (i2 == 0 || i3 == 0) {
                d.e("MyGLRenderer", "error! onSurfaceChanged, W =" + i2 + ", H =" + i3);
                return;
            }
            int unused = GLImageView.this.k = i2;
            int unused2 = GLImageView.this.l = i3;
            GLImageView gLImageView = GLImageView.this;
            float unused3 = gLImageView.g = ((float) gLImageView.k) / ((float) GLImageView.this.l);
            if (GLImageView.this.r != null && !GLImageView.this.r.isRecycled()) {
                GLImageView.this.f2135b.updateModeParam(GLImageView.this.r.getWidth(), GLImageView.this.r.getHeight());
            }
            GLES20.glViewport(0, 0, GLImageView.this.k, GLImageView.this.l);
            Matrix.orthoM(this.c, 0, -GLImageView.this.g, GLImageView.this.g, -1.0f, 1.0f, 3.0f, 7.0f);
            if (GLImageView.this.p) {
                updateTexture();
            }
        }

        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            d.a("MyGLRenderer", "onSurfaceCreated");
            GLES20.glEnable(2929);
            i.i();
            a();
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            i.i();
            this.s = iArr[0];
            a(this.s);
            float unused = GLImageView.this.f = 0.5f;
            int unused2 = GLImageView.this.n = 0;
        }

        public void setChangeToSize(int i2) {
            if (this.e == null) {
                this.e = new Rectangle();
            }
            this.e.setChangeToSize(i2);
        }

        public void updateModeParam(int i2, int i3) {
            d.a("MyGLRenderer", "updateModeParam, width: " + i2 + ", height: " + i3);
            if (this.e == null) {
                this.e = new Rectangle();
            }
            this.e.updateSize(((float) ((int) ((((float) i2) / ((float) i3)) * 100.0f))) / 100.0f);
        }

        public void updateTexture() {
            d.a("MyGLRenderer", "updateTextureSource, bitmap: " + GLImageView.this.r + ", mRadius: " + GLImageView.this.f);
            synchronized (GLImageView.this) {
                if (GLImageView.this.r != null && !GLImageView.this.r.isRecycled() && Float.compare(GLImageView.this.f, 0.0f) > 0) {
                    Bitmap a2 = com.oppo.camera.o.d.a(GLImageView.this.r, GLImageView.this.h * GLImageView.this.d.getInterpolation(GLImageView.this.f / GLImageView.this.h));
                    if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_BLURANIM, DebugUtil.DEBUG_DISABLE)) {
                        Context n2 = GLImageView.this.q;
                        com.oppo.camera.o.d.a(n2, a2, "blur_" + a2.getWidth() + "x" + a2.getHeight() + "_bitmap", DebugUtil.DUMP_DIR_BLURANIM);
                    }
                    if (a2 != null && !a2.isRecycled()) {
                        GLUtils.texImage2D(3553, 0, a2, 0);
                        boolean unused = GLImageView.this.p = true;
                        i.i();
                        GLImageView.this.requestRender();
                    }
                }
            }
        }
    }

    public class Rectangle {

        /* renamed from: b  reason: collision with root package name */
        private final short[] f2143b = {0, 1, 2, 0, 2, 3};
        private final int c = 12;
        private final int d = 8;
        private final FloatBuffer e;
        private final ShortBuffer f;
        private FloatBuffer g;
        private FloatBuffer h;
        private float[] i = {-0.5625f, 1.0f, 0.0f, -0.5625f, -1.0f, 0.0f, 0.5625f, -1.0f, 0.0f, 0.5625f, 1.0f, 0.0f};
        private float[] j = {-0.5625f, 1.0f, 0.0f, -0.5625f, -1.0f, 0.0f, 0.5625f, -1.0f, 0.0f, 0.5625f, 1.0f, 0.0f};
        private float[] k = {1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f};

        public Rectangle() {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.j.length * 4);
            allocateDirect.order(ByteOrder.nativeOrder());
            this.g = allocateDirect.asFloatBuffer();
            this.g.put(this.j);
            this.g.position(0);
            ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(this.i.length * 4);
            allocateDirect2.order(ByteOrder.nativeOrder());
            this.h = allocateDirect2.asFloatBuffer();
            this.h.put(this.i);
            this.h.position(0);
            ByteBuffer allocateDirect3 = ByteBuffer.allocateDirect(this.k.length * 4);
            allocateDirect3.order(ByteOrder.nativeOrder());
            this.e = allocateDirect3.asFloatBuffer();
            this.e.put(this.k);
            this.e.position(0);
            ByteBuffer allocateDirect4 = ByteBuffer.allocateDirect(this.f2143b.length * 2);
            allocateDirect4.order(ByteOrder.nativeOrder());
            this.f = allocateDirect4.asShortBuffer();
            this.f.put(this.f2143b);
            this.f.position(0);
        }

        private float a(int i2) {
            return com.oppo.camera.o.d.c(i2, GLImageView.this.l, GLImageView.this.k);
        }

        @TargetApi(21)
        public void draw(float[] fArr, int i2, int i3, int i4, int i5, int i6, int i7) {
            int i8 = i5;
            int i9 = i6;
            int i10 = i7;
            d.a("GLImageView.draw");
            GLES20.glUniform1i(i10, 1);
            i.i();
            if (GLImageView.this.n >= 25 || (GLImageView.this.i <= 0.0f && GLImageView.this.j >= 0.0f)) {
                i.i();
                GLES20.glUniform1f(i8, this.g.get(1) - GLImageView.this.i);
                i.i();
                GLES20.glUniform1f(i9, this.g.get(4) - GLImageView.this.j);
            } else {
                int unused = GLImageView.this.n = GLImageView.this.n + 1;
                if (GLImageView.this.n > 25) {
                    int unused2 = GLImageView.this.n = 25;
                }
                if (GLImageView.this.m == 2) {
                    GLES20.glUniform1f(i8, this.g.get(1));
                    i.i();
                    GLES20.glUniform1f(i9, this.g.get(4));
                    i.i();
                } else {
                    GLES20.glUniform1f(i8, this.g.get(1) - (GLImageView.this.i * GLImageView.this.c.getInterpolation(((float) GLImageView.this.n) / 25.0f)));
                    i.i();
                    GLES20.glUniform1f(i9, this.g.get(4) - (GLImageView.this.j * GLImageView.this.c.getInterpolation(((float) GLImageView.this.n) / 25.0f)));
                    i.i();
                }
            }
            this.g.position(0);
            GLES20.glEnableVertexAttribArray(i2);
            i.i();
            GLES20.glVertexAttribPointer(i2, 3, 5126, false, 12, this.g);
            i.i();
            this.e.position(0);
            GLES20.glEnableVertexAttribArray(i3);
            i.i();
            GLES20.glVertexAttribPointer(i3, 2, 5126, false, 8, this.e);
            GLES20.glUniformMatrix4fv(i4, 1, false, fArr, 0);
            i.i();
            GLES20.glDrawElements(4, this.f2143b.length, 5123, this.f);
            i.i();
            GLES20.glUniform1i(i10, 0);
            i.i();
            GLES20.glUniform1f(i8, this.g.get(1) - GLImageView.this.i);
            i.i();
            GLES20.glUniform1f(i9, this.g.get(4) - GLImageView.this.j);
            i.i();
            this.h.position(0);
            GLES20.glEnableVertexAttribArray(i2);
            i.i();
            GLES20.glVertexAttribPointer(i2, 3, 5126, false, 12, this.h);
            i.i();
            GLES20.glDrawElements(4, this.f2143b.length, 5123, this.f);
            i.i();
            GLES20.glDisableVertexAttribArray(i2);
            i.i();
            GLES20.glDisableVertexAttribArray(i3);
            i.i();
            d.b("GLImageView.draw");
        }

        public void setChangeToSize(int i2) {
            d.a("GLImageView", "setChangeToSize, sizeRatioType: " + i2 + ", mScaleFrameIndex: " + GLImageView.this.n + ", mSizeRatioType: " + GLImageView.this.m);
            if (i2 != 2 || GLImageView.this.m == i2) {
                if (i2 == 0 && (GLImageView.this.m == 1 || GLImageView.this.m == 4 || GLImageView.this.m == 7 || GLImageView.this.m == 6)) {
                    if (GLImageView.this.a(AnimatorState.BLUR_FADE_END) || GLImageView.this.n <= 0 || GLImageView.this.n > 25) {
                        float a2 = a(i2);
                        int unused = GLImageView.this.n = 0;
                        float unused2 = GLImageView.this.i = this.g.get(1) - a2;
                        float unused3 = GLImageView.this.j = this.g.get(4) + (1.0f - (((float) com.oppo.camera.o.d.F()) / ((float) (com.oppo.camera.o.d.L() / 2))));
                    }
                } else if (i2 != 6 || GLImageView.this.m == 2 || GLImageView.this.m == i2) {
                    float unused4 = GLImageView.this.i = 0.0f;
                    float unused5 = GLImageView.this.j = 0.0f;
                } else if (GLImageView.this.a(AnimatorState.BLUR_FADE_END) || GLImageView.this.n <= 0 || GLImageView.this.n > 25) {
                    float a3 = a(0);
                    int unused6 = GLImageView.this.n = 0;
                    float unused7 = GLImageView.this.i = this.g.get(1) - a3;
                    float unused8 = GLImageView.this.j = 0.0f;
                }
            } else if (GLImageView.this.a(AnimatorState.BLUR_FADE_END) || GLImageView.this.n <= 0 || GLImageView.this.n >= 25) {
                float a4 = a(i2);
                float m = a4 - (GLImageView.this.g * 2.0f);
                int unused9 = GLImageView.this.n = 0;
                float unused10 = GLImageView.this.i = this.g.get(1) - a4;
                float unused11 = GLImageView.this.j = this.g.get(4) - m;
            }
        }

        public void updateSize(float f2) {
            GLImageView gLImageView = GLImageView.this;
            int unused = gLImageView.m = com.oppo.camera.o.d.b(gLImageView.r.getHeight(), GLImageView.this.r.getWidth());
            float a2 = a(GLImageView.this.m);
            this.g.put(1, a2);
            if (!com.oppo.camera.o.d.O() || com.oppo.camera.o.d.b(GLImageView.this.r.getHeight(), GLImageView.this.r.getWidth()) != 1) {
                this.g.put(4, a2 - ((GLImageView.this.g * 2.0f) / f2));
                this.g.put(7, a2 - ((GLImageView.this.g * 2.0f) / f2));
            } else {
                float f3 = -(1.0f - (((float) GLImageView.this.o) / (((float) GLImageView.this.l) / 2.0f)));
                this.g.put(4, f3);
                this.g.put(7, f3);
            }
            this.g.put(10, a2);
            this.g.put(0, -GLImageView.this.g);
            this.g.put(3, -GLImageView.this.g);
            this.g.put(6, GLImageView.this.g);
            this.g.put(9, GLImageView.this.g);
        }
    }

    @TargetApi(21)
    public GLImageView(Context context) {
        super(context);
        this.q = context;
        setEGLContextClientVersion(2);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        setBackground((Drawable) null);
        this.f2135b = new MyGLRenderer();
        setRenderer(this.f2135b);
        setZOrderMediaOverlay(true);
        getHolder().setFormat(-2);
        setRenderMode(0);
        this.c = new PathInterpolator(0.35f, 0.62f, 0.2f, 1.0f);
        this.d = new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f);
        this.l = com.oppo.camera.o.d.L();
        this.k = com.oppo.camera.o.d.N();
        this.g = ((float) com.oppo.camera.o.d.N()) / ((float) com.oppo.camera.o.d.M());
        this.o = context.getResources().getDimensionPixelSize(R.dimen.video_bottom_cover_height);
        d.a("GLImageView", "GLImageView, mMaxRadius: " + this.h);
    }

    /* access modifiers changed from: private */
    public boolean a(AnimatorState animatorState) {
        boolean z;
        synchronized (this) {
            z = this.s == animatorState;
        }
        return z;
    }

    public void a() {
        d.a("GLImageView", "hideWithNoBlurAnimator");
        setAnimatorState(AnimatorState.BLUR_FADE_END);
        this.t.post(new Runnable() {
            public void run() {
                GLImageView.this.setVisibility(4);
            }
        });
    }

    public void b() {
        d.a("GLImageView", "hideWithBlurAnimator, mStep: " + this.e + ", mRadius: " + this.f);
        if (a(AnimatorState.BLUR_FADE_IN)) {
            d.a("hideWithBlurAnimator");
            this.e = (-f2134a) - 0.5f;
            setAnimatorState(AnimatorState.BLUR_FADE_OUT);
            this.p = true;
            requestRender();
            d.b("hideWithBlurAnimator");
            return;
        }
        this.t.post(new Runnable() {
            public void run() {
                GLImageView.this.setVisibility(4);
            }
        });
        setAnimatorState(AnimatorState.BLUR_FADE_END);
    }

    public boolean c() {
        d.a("GLImageView", "startBlurAnimation");
        if (!a(AnimatorState.BLUR_FADE_OUT) && !a(AnimatorState.BLUR_FADE_END)) {
            return false;
        }
        setAnimatorState(AnimatorState.BLUR_FADE_IN);
        float f2 = f2134a;
        this.e = f2;
        if (this.f <= 0.0f) {
            this.f = f2;
        }
        surfaceRedrawNeededAsync(getHolder(), new Runnable() {
            public void run() {
                GLImageView.this.f2135b.updateTexture();
            }
        });
        this.t.removeCallbacksAndMessages((Object) null);
        return true;
    }

    public void setAnimationEndListener(BlurAnimationEndListener blurAnimationEndListener) {
        this.u = blurAnimationEndListener;
    }

    public void setAnimatorState(AnimatorState animatorState) {
        synchronized (this) {
            d.a("GLImageView", "setAnimatorState, state: " + this.s + " -> " + animatorState);
            this.s = animatorState;
        }
    }

    public void setChangeToSize(int i2) {
        this.f2135b.setChangeToSize(i2);
    }

    public void setImageBitmap(Bitmap bitmap) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("setImageBitmap, bitmap: ");
        sb.append(bitmap);
        sb.append(", isRecycle: ");
        sb.append(bitmap != null ? Boolean.valueOf(bitmap.isRecycled()) : null);
        sb.append(", size: ");
        if (bitmap != null) {
            str = bitmap.getWidth() + "x" + bitmap.getHeight();
        } else {
            str = "";
        }
        sb.append(str);
        d.a("GLImageView", sb.toString());
        if (bitmap == null) {
            return;
        }
        if ((bitmap == null || !bitmap.isRecycled()) && !a(AnimatorState.BLUR_FADE_IN)) {
            if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_BLURANIM, DebugUtil.DEBUG_DISABLE)) {
                com.oppo.camera.o.d.a(this.q, bitmap, "before_blur_" + bitmap.getWidth() + "x" + bitmap.getHeight() + "_bitmap", DebugUtil.DUMP_DIR_BLURANIM);
            }
            synchronized (this) {
                if (!(this.r == null || this.r == bitmap)) {
                    this.r.recycle();
                }
                this.r = com.oppo.camera.o.d.b(bitmap);
                if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_BLURANIM, DebugUtil.DEBUG_DISABLE)) {
                    com.oppo.camera.o.d.a(this.q, this.r, "before_blur_density" + this.r.getWidth() + "x" + this.r.getHeight() + "_bitmap", DebugUtil.DUMP_DIR_BLURANIM);
                }
            }
            this.f2135b.updateModeParam(this.r.getWidth(), this.r.getHeight());
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        StringBuilder sb = new StringBuilder();
        sb.append("surfaceDestroyed, ");
        sb.append((surfaceHolder == null || surfaceHolder.getSurface() == null) ? surfaceHolder : surfaceHolder.getSurface().toString());
        d.a("GLImageView", sb.toString());
        super.surfaceDestroyed(surfaceHolder);
        this.f = 0.5f;
        this.n = 0;
        this.e = f2134a;
        this.p = false;
        this.u.onBlurAnimationEnd();
    }
}
