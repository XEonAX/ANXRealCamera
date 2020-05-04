package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.a.a;
import co.polarr.renderer.b.i;
import co.polarr.renderer.b.p;
import co.polarr.renderer.b.t;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.render.f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class q extends b {

    /* renamed from: a  reason: collision with root package name */
    public static List<String> f1258a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<Map<String, Object>, int[]> f1259b = new LruCache<>(10);
    private f c;
    private int[] d;
    private Map<String, float[][]> e = new HashMap();
    private boolean f;

    static {
        f1258a.add("curves_red");
        f1258a.add("curves_green");
        f1258a.add("curves_blue");
        f1258a.add("curves_all");
    }

    public q(Resources resources, Context context) {
        super(resources, p.a("curves"), context);
        this.e.put("curves_red", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
        this.e.put("curves_green", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
        this.e.put("curves_blue", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
        this.e.put("curves_all", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
    }

    private static int a(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 3;
        while (i5 >= 0) {
            i4 += (i5 == i2 ? i3 & 255 : (i >> (i5 * 8)) & 255) << (i5 * 8);
            i5--;
        }
        return i4;
    }

    public static int a(a aVar, int i, float f2) {
        float a2 = aVar.a(i);
        return a2 == -1.0f ? (int) f2 : (int) Math.round(t.a((double) a2, 0.0d, 255.0d));
    }

    private void a(String str, float[][] fArr, boolean z) {
        if (z || (this.e.get(str) != fArr && !Arrays.deepEquals((Object[]) this.e.get(str), fArr))) {
            this.e.put(str, fArr);
            char c2 = 65535;
            int hashCode = str.hashCode();
            int i = 2;
            if (hashCode != -1917275032) {
                if (hashCode != -1829931962) {
                    if (hashCode != -1829915850) {
                        if (hashCode == -893285803 && str.equals("curves_blue")) {
                            c2 = 2;
                        }
                    } else if (str.equals("curves_red")) {
                        c2 = 0;
                    }
                } else if (str.equals("curves_all")) {
                    c2 = 3;
                }
            } else if (str.equals("curves_green")) {
                c2 = 1;
            }
            if (c2 == 0) {
                i = 0;
            } else if (c2 == 1) {
                i = 1;
            } else if (c2 != 2) {
                if (c2 == 3) {
                    i = 3;
                } else {
                    return;
                }
            }
            try {
                float[][] a2 = a(fArr);
                a aVar = new a(a2[0], a2[1], (Float) null, (Float) null);
                int i2 = (int) a2[1][0];
                for (int i3 = 0; i3 <= 255; i3++) {
                    i2 = a(aVar, i3, (float) i2);
                    this.d[i3] = a(this.d[i3], i, i2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static float[][] a(float[][] fArr) {
        float[][] fArr2 = {new float[fArr.length], new float[fArr.length]};
        int i = 0;
        for (float[] fArr3 : fArr) {
            fArr2[0][i] = fArr3[0];
            fArr2[1][i] = fArr3[1];
            i++;
        }
        return fArr2;
    }

    public void a(String str, Object obj) {
        this.f = true;
        synchronized (this.d) {
            a(str, (float[][]) obj, false);
        }
    }

    public void a(Map<String, Object> map) {
        LruCache<Map<String, Object>, int[]> lruCache = f1259b;
        int[] iArr = this.d;
        lruCache.put(map, Arrays.copyOf(iArr, iArr.length));
    }

    public boolean b(Map<String, Object> map) {
        int[] iArr = f1259b.get(map);
        if (iArr == null || iArr.length != this.d.length) {
            return false;
        }
        this.f = true;
        this.d = iArr;
        return true;
    }

    /* access modifiers changed from: protected */
    public void b_() {
        super.b_();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        co.polarr.renderer.render.b.b(iArr[0]);
        this.d = new int[256];
        this.c = i.c(iArr[0], 6408, 256, 1);
        GLES20.glBindTexture(3553, this.c.c);
        i.a();
        GLES20.glBindTexture(3553, 0);
        this.f = true;
        for (String next : this.e.keySet()) {
            a(next, (float[][]) c.a(next, this.u.renderStates), true);
        }
    }

    public boolean c() {
        Map<String, float[][]> map = this.e;
        if (map != null) {
            for (float[][] next : map.values()) {
                if (next.length != 2) {
                    return false;
                }
                float[] fArr = next[0];
                if (fArr[0] == 0.0f && fArr[1] == 0.0f) {
                    float[] fArr2 = next[1];
                    if (fArr2[0] == 255.0f) {
                        if (fArr2[1] != 255.0f) {
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        if (this.f) {
            synchronized (this.d) {
                IntBuffer asIntBuffer = ByteBuffer.allocateDirect(this.d.length * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
                asIntBuffer.put(this.d);
                asIntBuffer.position(0);
                GLES20.glBindTexture(3553, this.c.c);
                GLES20.glPixelStorei(3317, 8);
                GLES20.glTexImage2D(3553, 0, this.c.f, this.c.d, this.c.e, 0, this.c.f, 5121, asIntBuffer);
                GLES20.glBindTexture(3553, 0);
                GLES20.glPixelStorei(3317, 4);
                this.f = false;
            }
        }
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "map");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.c.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
    }

    public void h() {
        p_();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.d = new int[256];
        this.c = i.c(iArr[0], 6408, 256, 1);
        co.polarr.renderer.render.b.b(iArr[0]);
        this.f = true;
        GLES20.glBindTexture(3553, this.c.c);
        i.a();
        GLES20.glBindTexture(3553, 0);
        for (String next : this.e.keySet()) {
            a(next, (float[][]) c.a(next, this.u.renderStates), true);
        }
    }

    public void p_() {
        f fVar = this.c;
        if (fVar != null) {
            co.polarr.renderer.render.b.a(fVar);
            co.polarr.renderer.render.b.d(this.c.c);
        }
    }
}
