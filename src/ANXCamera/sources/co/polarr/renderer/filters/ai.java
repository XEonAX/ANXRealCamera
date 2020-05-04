package co.polarr.renderer.filters;

import android.opengl.GLES20;
import co.polarr.renderer.b.i;
import co.polarr.renderer.entities.Cube;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.render.f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Map;

public class ai extends b {
    public static final String AUTO_ENHANCE_FILTER = "AUTO_ENHANCE_FILTER";
    private static final int AUTO_ENHANCE_LUT_SIZE = 32;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, f> f1185a;

    /* renamed from: b  reason: collision with root package name */
    private String f1186b;
    private Map<String, Float> c;
    private float d;
    private float[] e;
    private float[] f;

    public void a(Cube cube) {
        f fVar;
        Cube cube2 = cube;
        if (cube2 != null) {
            this.f1186b = cube2.filterID;
            this.c.put(cube2.filterID, Float.valueOf((float) cube2.size));
            int i = cube2.size * cube2.size;
            int i2 = cube2.size;
            if (this.f1185a.containsKey(cube2.filterID)) {
                fVar = this.f1185a.get(cube2.filterID);
                i.a(fVar, i, i2);
            } else {
                int[] iArr = new int[1];
                i.a(iArr.length, iArr, 0, 6408, i, i2);
                fVar = i.c(iArr[0], 6408, i, i2);
                i.a(33071, 33071, 9728, 9728);
                this.f1185a.put(cube2.filterID, fVar);
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

    public boolean a(String str) {
        if (str == null || !this.f1185a.containsKey(str)) {
            return false;
        }
        this.f1186b = str;
        return true;
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        if (!this.f1185a.isEmpty() && this.f1186b != null) {
            int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "lookup_texture");
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.f1185a.get(this.f1186b).c);
            GLES20.glUniform1i(glGetUniformLocation, 1);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "lut_size"), this.c.get(this.f1186b).floatValue());
        }
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "lookup_intensity"), this.d);
        GLES20.glUniform3fv(GLES20.glGetUniformLocation(this.x, "domain_min"), 1, this.e, 0);
        GLES20.glUniform3fv(GLES20.glGetUniformLocation(this.x, "domain_max"), 1, this.f, 0);
    }

    public void f() {
        this.f1186b = "AUTO_ENHANCE_FILTER";
        this.c.put("AUTO_ENHANCE_FILTER", Float.valueOf(32.0f));
        if (this.f1185a.containsKey("AUTO_ENHANCE_FILTER")) {
            i.a(this.f1185a.get("AUTO_ENHANCE_FILTER"), 1024, 32);
            return;
        }
        int[] iArr = new int[1];
        i.a(iArr.length, iArr, 0, 6408, 1024, 32);
        f c2 = i.c(iArr[0], 6408, 1024, 32);
        i.a(33071, 33071, 9728, 9728);
        this.f1185a.put("AUTO_ENHANCE_FILTER", c2);
    }

    public f h() {
        if (!this.f1185a.containsKey("AUTO_ENHANCE_FILTER")) {
            f();
        }
        return this.f1185a.get("AUTO_ENHANCE_FILTER");
    }
}
