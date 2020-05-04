package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.opengl.GLES20;
import co.polarr.renderer.FilterPackageUtil;
import co.polarr.renderer.a;
import co.polarr.renderer.b.c;
import co.polarr.renderer.b.i;
import co.polarr.renderer.b.p;
import co.polarr.renderer.b.t;
import co.polarr.renderer.e;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.Cube;
import co.polarr.renderer.entities.FilterItem;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.render.f;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class ak extends b {
    public static final String AUTO_ENHANCE_FILTER = "AUTO_ENHANCE_FILTER";
    private static final int AUTO_ENHANCE_LUT_SIZE = 32;
    public static float c = 0.0f;
    public static float d = 0.0f;
    public static float e = 0.0f;
    public static float f = 0.0f;
    public static float g = 0.0f;
    public static float h = 0.0f;
    public static float i = 0.08f;
    public static float j = 0.6f;
    public static float k = 0.88f;
    public static float l = 0.2f;
    public static byte[] m;
    public static byte[] n;
    private Map<String, f> I = new HashMap();
    private String J = null;
    private Map<String, Float> K = new HashMap();
    private float L = 1.0f;
    private float[] M = {0.0f, 0.0f, 0.0f};
    private float[] N = {1.0f, 1.0f, 1.0f};
    private Random O = new Random();

    /* renamed from: a  reason: collision with root package name */
    public boolean f1188a = true;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1189b = false;
    public boolean o = false;
    public float p = 0.0f;
    public float q = 0.0f;
    public float r = 0.0f;
    public float s = 0.0f;
    public float t = 0.0f;

    public ak(Resources resources, Context context) {
        super(resources, p.a("lookup_table"), context);
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x002b A[SYNTHETIC, Splitter:B:19:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0031 A[SYNTHETIC, Splitter:B:24:0x0031] */
    private Bitmap a(Resources resources, String str) {
        Throwable th;
        IOException e2;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            inputStream = resources.getAssets().open(str);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inPremultiplied = false;
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, (Rect) null, options);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return decodeStream;
            } catch (IOException e3) {
                e2 = e3;
                try {
                    e2.printStackTrace();
                    if (inputStream != null) {
                    }
                    return null;
                } catch (Throwable th2) {
                    inputStream2 = inputStream;
                    th = th2;
                    if (inputStream2 != null) {
                    }
                    throw th;
                }
            }
        } catch (IOException e4) {
            e2 = e4;
            inputStream = null;
            e2.printStackTrace();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }

    private f a(int i2, byte[] bArr, int i3, int i4) {
        int i5 = i2;
        GLES20.glBindTexture(3553, i2);
        GLES20.glTexParameterf(3553, 10241, 9987.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 10497.0f);
        GLES20.glTexParameterf(3553, 10243, 10497.0f);
        GLES20.glTexImage2D(3553, 0, 6408, i3, i4, 0, 6408, 5121, ByteBuffer.wrap(bArr));
        GLES20.glGenerateMipmap(3553);
        GLES20.glBindTexture(3553, 0);
        return i.c(i2, 6408, i3, i4);
    }

    private void j() {
        if (!this.u.overlayTextureBinded) {
            byte[] bArr = n;
            if (bArr == null || bArr.length != 4000000) {
                Bitmap a2 = a(this.E, "textures/overlay_p4_3_weak.jpg");
                n = t.a(a2);
                a2.recycle();
            }
            this.u.overlayTexture = a(this.u.overlayTexture.c, n, 1000, 1000);
            this.u.overlayTextureBinded = true;
        }
    }

    private void o() {
        if (!this.u.grainTextureBinded) {
            try {
                if (m == null || m.length != 4194304) {
                    m = t.a(this.E.getAssets().open("textures/film_grain_small.bin"));
                }
                this.u.grainTexture = a(this.u.grainTexture.c, m, 1024, 1024);
                this.u.grainTextureBinded = true;
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void C_() {
    }

    public void a(float f2) {
        this.L = f2;
    }

    public void a(Cube cube) {
        f fVar;
        Cube cube2 = cube;
        if (cube2 != null) {
            this.J = cube2.filterID;
            this.K.put(cube2.filterID, Float.valueOf((float) cube2.size));
            int i2 = cube2.size * cube2.size;
            int i3 = cube2.size;
            if (this.I.containsKey(cube2.filterID)) {
                fVar = this.I.get(cube2.filterID);
                i.a(fVar, i2, i3);
            } else {
                int[] iArr = new int[1];
                i.a(iArr.length, iArr, 0, 6408, i2, i3);
                fVar = i.c(iArr[0], 6408, i2, i3);
                i.a(33071, 33071, 9728, 9728);
                this.I.put(cube2.filterID, fVar);
            }
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(cube2.data.length);
            allocateDirect.order(ByteOrder.nativeOrder());
            allocateDirect.put(cube2.data);
            allocateDirect.position(0);
            GLES20.glBindTexture(3553, fVar.c);
            GLES20.glTexImage2D(3553, 0, fVar.f, fVar.d, fVar.e, 0, fVar.f, 5121, allocateDirect);
            GLES20.glBindTexture(3553, 0);
        }
    }

    public void a(boolean z, float f2, float f3, float f4, float f5, float f6) {
        this.o = z;
        this.p = f2;
        this.q = f3;
        this.r = f4;
        this.s = f5;
        this.t = f6;
        super.draw();
        this.o = false;
    }

    public boolean a(String str) {
        if (str == null || !this.I.containsKey(str)) {
            return false;
        }
        this.J = str;
        return true;
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.f1188a) {
            super.b();
        }
    }

    /* access modifiers changed from: protected */
    public void d() {
        float f2;
        int i2;
        super.d();
        if (!this.I.isEmpty() && this.J != null) {
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "lut_size"), this.K.get(this.J).floatValue());
            int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "lookup_texture");
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.I.get(this.J).c);
            GLES20.glUniform1i(glGetUniformLocation, 1);
            GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "grainTextureSize"), (float) this.u.grainTexture.d, (float) this.u.grainTexture.e);
            float[] a2 = c.a(this.u);
            GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "textureSize"), a2[0], a2[1]);
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "globalScreenRotation"), e.a());
            GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "grainRandomOffset"), this.O.nextFloat(), this.O.nextFloat());
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "is_apply_roundcorner"), this.o ? 1 : 0);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "roundcorner_radius"), this.p);
            GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "roundcorner_offset"), this.q, this.r);
            GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "roundcorner_size"), this.s, this.t);
        }
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "is_apply_vignette"), this.f1189b ? 1 : 0);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "crop");
        float[] fArr = (float[]) co.polarr.renderer.c.a("crop", this.u.renderStates);
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        copyOf[1] = (1.0f - copyOf[3]) - copyOf[1];
        GLES20.glUniform4fv(glGetUniformLocation2, 1, copyOf, 0);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "rotationMatrix"), 1, false, this.u.rotation90MatrixInv, 0);
        float[] a3 = c.a(this.u);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), a3[0], a3[1]);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "lookup_intensity"), this.L);
        GLES20.glUniform3fv(GLES20.glGetUniformLocation(this.x, "domain_min"), 1, this.M, 0);
        GLES20.glUniform3fv(GLES20.glGetUniformLocation(this.x, "domain_max"), 1, this.N, 0);
        if (FilterPackageUtil.a(this.J, "vignette_amount")) {
            FilterItem a4 = a.a().a(this.J);
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "is_apply_vignette"), 1);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_amount"), ((Float) a4.state.get("vignette_amount")).floatValue());
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_feather"), ((Float) a4.state.get("vignette_feather")).floatValue());
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_highlights"), ((Float) a4.state.get("vignette_highlights")).floatValue());
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_roundness"), ((Float) a4.state.get("vignette_roundness")).floatValue());
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_size"), ((Float) a4.state.get("vignette_size")).floatValue());
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_exposure"), ((Float) a4.state.get("vignette_exposure")).floatValue());
        } else if (FilterPackageUtil.a(this.J)) {
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "is_apply_vignette"), 0);
        } else {
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_amount"), c);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_feather"), d);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_highlights"), e);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_roundness"), g);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_size"), h);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_exposure"), f);
        }
        if (FilterPackageUtil.a(this.J, "grain_amount")) {
            a.a().a(this.J);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "grain_amount"), i);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "grain_size"), j);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "grain_highlights"), k);
            i2 = GLES20.glGetUniformLocation(this.x, "grain_roughness");
            f2 = l;
        } else {
            i2 = GLES20.glGetUniformLocation(this.x, "grain_amount");
            f2 = 0.0f;
        }
        GLES20.glUniform1f(i2, f2);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "is_apply_overlay"), FilterPackageUtil.a(this.J, "overlay_amount") ? 1 : 0);
    }

    public void g() {
        super.g();
        if (FilterPackageUtil.PORTRAIT4_1.equals(this.J)) {
            int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "grainTexture");
            GLES20.glActiveTexture(33986);
            o();
            GLES20.glBindTexture(3553, this.u.grainTexture.c);
            GLES20.glUniform1i(glGetUniformLocation, 2);
        }
        if (FilterPackageUtil.PORTRAIT4_3.equals(this.J)) {
            int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "overlayTexture");
            GLES20.glActiveTexture(33987);
            j();
            GLES20.glBindTexture(3553, this.u.overlayTexture.c);
            GLES20.glUniform1i(glGetUniformLocation2, 3);
        }
    }

    public void h() {
        this.J = "AUTO_ENHANCE_FILTER";
        this.K.put("AUTO_ENHANCE_FILTER", Float.valueOf(32.0f));
        if (this.I.containsKey("AUTO_ENHANCE_FILTER")) {
            i.a(this.I.get("AUTO_ENHANCE_FILTER"), 1024, 32);
            return;
        }
        int[] iArr = new int[1];
        i.a(iArr.length, iArr, 0, 6408, 1024, 32);
        f c2 = i.c(iArr[0], 6408, 1024, 32);
        i.a(33071, 33071, 9728, 9728);
        this.I.put("AUTO_ENHANCE_FILTER", c2);
    }

    public f i() {
        if (!this.I.containsKey("AUTO_ENHANCE_FILTER")) {
            h();
        }
        return this.I.get("AUTO_ENHANCE_FILTER");
    }
}
