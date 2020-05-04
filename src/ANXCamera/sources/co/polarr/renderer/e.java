package co.polarr.renderer;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import co.polarr.render.PolarrRenderJni;
import co.polarr.renderer.b.i;
import co.polarr.renderer.b.j;
import co.polarr.renderer.b.m;
import co.polarr.renderer.b.n;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Cube;
import co.polarr.renderer.entities.FilterItem;
import co.polarr.renderer.entities.MagicEraserPath;
import co.polarr.renderer.filters.ak;
import co.polarr.renderer.render.a;
import co.polarr.renderer.render.f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class e {

    /* renamed from: a  reason: collision with root package name */
    private static int f1155a;

    public static int a() {
        int i;
        synchronized (e.class) {
            try {
                i = f1155a / 90;
            } catch (Throwable th) {
                Class<e> cls = e.class;
                throw th;
            }
        }
        return i % 4;
    }

    public static List<Bitmap> a(Resources resources, Bitmap bitmap, List<String> list) {
        return a(resources, bitmap, list, 1.0f);
    }

    public static List<Bitmap> a(Resources resources, Bitmap bitmap, List<String> list, float f) {
        if (bitmap == null || bitmap.isRecycled() || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0 || list == null || list.isEmpty()) {
            return null;
        }
        n.a("renderBitmaps::idList=%s::filterIntensity=%f", list.toString(), Float.valueOf(f));
        a aVar = new a();
        aVar.a(100, 100);
        f fVar = new f();
        fVar.a(resources, bitmap.getWidth(), bitmap.getHeight(), true, 0);
        fVar.b();
        ArrayList arrayList = new ArrayList();
        for (String a2 : list) {
            arrayList.add(fVar.a(bitmap, a2, f));
        }
        fVar.n();
        aVar.b();
        return arrayList;
    }

    public static void a(float f, float f2, float f3, float f4, float f5, float f6) {
        n.a("setupVignetteParams::vignette_amount=%f::vignette_feather=%f::vignette_highlights=%f::vignette_exposure=%f::vignette_roundness=%f::vignette_size=%f", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5), Float.valueOf(f6));
        ak.c = f;
        ak.d = f2;
        ak.e = f3;
        ak.f = f4;
        ak.g = f5;
        ak.h = f6;
    }

    public static void a(int i, int i2, int i3) {
        n.a("clearTextureHelper::textureId=%d::width=%d::height=%d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
        ByteBuffer allocate = ByteBuffer.allocate(i2 * i3 * 4);
        GLES20.glBindTexture(3553, i);
        GLES20.glTexImage2D(3553, 0, 6408, i2, i3, 0, 6408, 5121, allocate);
        GLES20.glBindTexture(3553, 0);
    }

    static void a(Resources resources, int i, int i2, int i3, MagicEraserPath magicEraserPath, int i4) {
        if (i > 0) {
            a("start magicEraserOneTime");
            if (magicEraserPath != null) {
                n.a("doMagicEraserOneTime::applyTextureId=%d::width=%d::height=%d::path=%s::compatibleLevel=%d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), magicEraserPath, Integer.valueOf(i4));
                boolean glIsEnabled = GLES20.glIsEnabled(3089);
                if (glIsEnabled) {
                    GLES20.glDisable(3089);
                }
                int[] iArr = new int[4];
                GLES20.glGetIntegerv(2978, iArr, 0);
                m mVar = new m(resources, p.a(resources));
                mVar.a(i, i2, i3, i4);
                mVar.a(i, magicEraserPath);
                mVar.a();
                mVar.b();
                GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
                if (glIsEnabled) {
                    GLES20.glEnable(3089);
                }
                a("end magicEraserOneTime");
            }
        }
    }

    public static void a(f fVar) {
        if (fVar != null) {
            i.a(fVar.c);
        }
    }

    public static void a(String str) {
    }

    public static byte[] a(Context context, byte[] bArr, int i, int i2, String str, float f, boolean z) {
        n.a("renderNV21::width=%d::height=%d::filterId=%s::filterIntensity=%f::isUseVignette=%b", Integer.valueOf(i), Integer.valueOf(i2), str, Float.valueOf(f), Boolean.valueOf(z));
        boolean a2 = FilterPackageUtil.a(str, "vignette_amount");
        boolean a3 = FilterPackageUtil.a(str, "overlay_amount");
        if (z || a2 || a3) {
            return a(context, bArr, i, i2, str, false);
        }
        Cube a4 = FilterPackageUtil.a(context.getAssets(), str);
        return PolarrRenderJni.setYUVDataWithFilter(i, i2, i, i2, false, -1, a4.data, bArr, false, a4.size);
    }

    private static byte[] a(Context context, byte[] bArr, int i, int i2, String str, boolean z) {
        String str2 = str;
        n.a("renderNV12::getGlobalScreenOrientation=%d", Integer.valueOf(a()));
        Cube a2 = FilterPackageUtil.a(context.getAssets(), str2);
        boolean a3 = FilterPackageUtil.a(str2, "vignette_amount");
        boolean a4 = FilterPackageUtil.a(str2, "overlay_amount");
        if (a3) {
            FilterItem a5 = a.a().a(str2);
            return PolarrRenderJni.setYUVDataWithVignetteAndGrainParams(i, i2, i, i2, false, -1, a2.data, bArr, z, a2.size, ((Float) a5.state.get("vignette_amount")).floatValue(), ((Float) a5.state.get("vignette_feather")).floatValue(), ((Float) a5.state.get("vignette_highlights")).floatValue(), ((Float) a5.state.get("vignette_exposure")).floatValue(), ((Float) a5.state.get("vignette_roundness")).floatValue(), ((Float) a5.state.get("vignette_size")).floatValue(), true, ak.m, a(), ak.i, ak.j, ak.k, ak.l);
        } else if (a4) {
            return PolarrRenderJni.setYUVDataWithVignetteParams(i, i2, i, i2, false, -2, a2.data, bArr, z, a2.size, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, true, ak.n, a());
        } else {
            return PolarrRenderJni.setYUVDataWithVignetteParams(i, i2, i, i2, false, 0, a2.data, bArr, z, a2.size, ak.c, ak.d, ak.e, ak.f, ak.g, ak.h, false, new byte[0], a());
        }
    }

    public static Map<String, Object> b(String str) {
        Map<String, Object> a2 = j.a(str);
        for (String next : a2.keySet()) {
            a2.put(next, p.a(next, a2.get(next)));
        }
        return a2;
    }

    @co.polarr.a.a
    public static void enableLogger(boolean z) {
        n.a(z);
        n.a("enableLogger::enableLogger=%b", Boolean.valueOf(z));
    }

    @co.polarr.a.a
    public static byte[] renderNV12(Context context, byte[] bArr, int i, int i2, String str, float f, boolean z) {
        n.a("renderNV12::width=%d::height=%d::filterId=%s::filterIntensity=%f::isUseVignette=%b", Integer.valueOf(i), Integer.valueOf(i2), str, Float.valueOf(f), Boolean.valueOf(z));
        boolean a2 = FilterPackageUtil.a(str, "vignette_amount");
        boolean a3 = FilterPackageUtil.a(str, "overlay_amount");
        if (z || a2 || a3) {
            return a(context, bArr, i, i2, str, true);
        }
        Cube a4 = FilterPackageUtil.a(context.getAssets(), str);
        return PolarrRenderJni.setYUVDataWithFilter(i, i2, i, i2, false, -1, a4.data, bArr, true, a4.size);
    }

    @co.polarr.a.a
    public static void updateGlobalScreenOrientation(int i) {
        synchronized (e.class) {
            try {
                n.a("PolarrRenderImpl::updateGlobalScreenOrientation = %d", Integer.valueOf(i));
                f1155a = i;
            } catch (Throwable th) {
                Class<e> cls = e.class;
                throw th;
            }
        }
    }
}
