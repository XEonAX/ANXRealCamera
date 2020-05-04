package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.i;
import co.polarr.renderer.b.p;
import co.polarr.renderer.b.t;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.render.f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class ae extends b {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, String> f1177a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<Map<String, Object>, byte[]> f1178b = new LruCache<>(10);
    private f c;
    private byte[] d;
    private Map<String, Float> e = new HashMap();
    private boolean f;

    static {
        f1177a.put("hue_red", "hue");
        f1177a.put("hue_orange", "hue");
        f1177a.put("hue_yellow", "hue");
        f1177a.put("hue_green", "hue");
        f1177a.put("hue_aqua", "hue");
        f1177a.put("hue_blue", "hue");
        f1177a.put("hue_purple", "hue");
        f1177a.put("hue_magenta", "hue");
        f1177a.put("saturation_red", "saturation");
        f1177a.put("saturation_orange", "saturation");
        f1177a.put("saturation_yellow", "saturation");
        f1177a.put("saturation_green", "saturation");
        f1177a.put("saturation_aqua", "saturation");
        f1177a.put("saturation_blue", "saturation");
        f1177a.put("saturation_purple", "saturation");
        f1177a.put("saturation_magenta", "saturation");
        f1177a.put("luminance_red", "luminance");
        f1177a.put("luminance_orange", "luminance");
        f1177a.put("luminance_yellow", "luminance");
        f1177a.put("luminance_green", "luminance");
        f1177a.put("luminance_aqua", "luminance");
        f1177a.put("luminance_blue", "luminance");
        f1177a.put("luminance_purple", "luminance");
        f1177a.put("luminance_magenta", "luminance");
    }

    public ae(Resources resources, Context context) {
        super(resources, p.a("hsl"), context);
        Map<String, Float> map = this.e;
        Float valueOf = Float.valueOf(0.0f);
        map.put("hue_red", valueOf);
        this.e.put("hue_orange", valueOf);
        this.e.put("hue_yellow", valueOf);
        this.e.put("hue_green", valueOf);
        this.e.put("hue_aqua", valueOf);
        this.e.put("hue_blue", valueOf);
        this.e.put("hue_purple", valueOf);
        this.e.put("hue_magenta", valueOf);
        this.e.put("saturation_red", valueOf);
        this.e.put("saturation_orange", valueOf);
        this.e.put("saturation_yellow", valueOf);
        this.e.put("saturation_green", valueOf);
        this.e.put("saturation_aqua", valueOf);
        this.e.put("saturation_blue", valueOf);
        this.e.put("saturation_purple", valueOf);
        this.e.put("saturation_magenta", valueOf);
        this.e.put("luminance_red", valueOf);
        this.e.put("luminance_orange", valueOf);
        this.e.put("luminance_yellow", valueOf);
        this.e.put("luminance_green", valueOf);
        this.e.put("luminance_aqua", valueOf);
        this.e.put("luminance_blue", valueOf);
        this.e.put("luminance_purple", valueOf);
        this.e.put("luminance_magenta", valueOf);
    }

    private void a(String str, float f2, boolean z) {
        if (z || this.e.get(str).floatValue() != f2) {
            this.e.put(str, Float.valueOf(f2));
            String str2 = f1177a.get(str);
            char c2 = 65535;
            int hashCode = str2.hashCode();
            int i = 2;
            if (hashCode != -230491182) {
                if (hashCode != 103672) {
                    if (hashCode == 1178092792 && str2.equals("luminance")) {
                        c2 = 2;
                    }
                } else if (str2.equals("hue")) {
                    c2 = 0;
                }
            } else if (str2.equals("saturation")) {
                c2 = 1;
            }
            if (c2 == 0) {
                i = 0;
            } else if (c2 == 1) {
                i = 1;
            } else if (c2 != 2) {
                return;
            }
            float[][] a2 = a(str2, this.e);
            co.polarr.renderer.a.b bVar = new co.polarr.renderer.a.b(a2[0], a2[1]);
            for (int i2 = 0; i2 <= 359; i2++) {
                this.d[(i2 * 3) + i] = (byte) ((byte) ((int) t.a((double) bVar.a(i2), 0.0d, 255.0d)));
            }
        }
    }

    private static float[][] a(String str, Map<String, Float> map) {
        String str2 = str;
        Map<String, Float> map2 = map;
        return new float[][]{new float[]{0.0f, 30.0f, 60.0f, 90.0f, 180.0f, 240.0f, 270.0f, 300.0f, 360.0f}, new float[]{((map2.get(str2 + "_red").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_orange").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_yellow").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_green").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_aqua").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_blue").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_purple").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_magenta").floatValue() / 2.0f) + 0.5f) * 255.0f, ((map2.get(str2 + "_red").floatValue() / 2.0f) + 0.5f) * 255.0f}};
    }

    public void a(String str, Object obj) {
        this.f = true;
        synchronized (this.d) {
            if (obj instanceof Integer) {
                a(str, (float) ((Integer) obj).intValue(), false);
            } else {
                a(str, ((Float) obj).floatValue(), false);
            }
        }
    }

    public void a(Map<String, Object> map) {
        LruCache<Map<String, Object>, byte[]> lruCache = f1178b;
        byte[] bArr = this.d;
        lruCache.put(map, Arrays.copyOf(bArr, bArr.length));
    }

    public boolean b(Map<String, Object> map) {
        byte[] bArr = f1178b.get(map);
        if (bArr == null || bArr.length != this.d.length) {
            return false;
        }
        this.f = true;
        this.d = bArr;
        return true;
    }

    /* access modifiers changed from: protected */
    public void b_() {
        super.b_();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        co.polarr.renderer.render.b.b(iArr[0]);
        this.d = new byte[1080];
        this.c = i.c(iArr[0], 6407, 360, 1);
        GLES20.glBindTexture(3553, this.c.c);
        i.a();
        GLES20.glBindTexture(3553, 0);
        this.f = true;
        for (String next : this.e.keySet()) {
            a(next, ((Float) c.a(next, this.u.renderStates)).floatValue(), true);
        }
    }

    public boolean c() {
        Map<String, Float> map = this.e;
        if (map == null) {
            return true;
        }
        for (Float floatValue : map.values()) {
            if (floatValue.floatValue() != 0.0f) {
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
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.d.length);
                allocateDirect.order(ByteOrder.nativeOrder());
                allocateDirect.put(this.d);
                allocateDirect.position(0);
                GLES20.glBindTexture(3553, this.c.c);
                GLES20.glPixelStorei(3317, 4);
                GLES20.glTexImage2D(3553, 0, this.c.f, this.c.d, this.c.e, 0, this.c.f, 5121, allocateDirect);
                GLES20.glBindTexture(3553, 0);
            }
            this.f = false;
        }
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "map");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.c.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
    }

    public void h() {
        y_();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        co.polarr.renderer.render.b.b(iArr[0]);
        this.d = new byte[1080];
        this.c = i.c(iArr[0], 6407, 360, 1);
        GLES20.glBindTexture(3553, this.c.c);
        i.a();
        GLES20.glBindTexture(3553, 0);
        this.f = true;
        for (String next : this.e.keySet()) {
            Object a2 = c.a(next, this.u.renderStates);
            if (a2 != null && (a2 instanceof Float)) {
                a(next, ((Float) a2).floatValue(), true);
            }
        }
    }

    public void y_() {
        f fVar = this.c;
        if (fVar != null) {
            co.polarr.renderer.render.b.a(fVar);
            co.polarr.renderer.render.b.d(this.c.c);
        }
    }
}
