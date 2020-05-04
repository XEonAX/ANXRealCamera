package co.polarr.renderer;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PointF;
import co.polarr.a.a;
import co.polarr.renderer.entities.BrushItem;
import co.polarr.renderer.entities.DrawingItem;
import co.polarr.renderer.entities.FaceItem;
import co.polarr.renderer.entities.MagicEraserPath;
import co.polarr.renderer.filters.ak;
import java.util.List;
import java.util.Map;

@a
public class PolarrRender {
    @a
    public static final int EXTERNAL_OES = 1;
    @a
    public static final int TEXTURE_2D = 0;
    private f instance = new f();

    @a
    public static String Version() {
        return "1.4.1_oppo_camera_capture";
    }

    @a
    public static void clearTextureHelper(int i, int i2, int i3) {
        e.a(i, i2, i3);
    }

    @a
    public static void enableLogger(boolean z) {
        e.enableLogger(z);
    }

    @a
    public static Map<String, Object> getRenderStatesFromJson(String str) {
        return e.b(str);
    }

    @a
    public static void magicEraserOneTime(Resources resources, int i, int i2, int i3, MagicEraserPath magicEraserPath) {
        e.a(resources, i, i2, i3, magicEraserPath, 0);
    }

    @a
    public static void magicEraserOneTimeCompatible(Resources resources, int i, int i2, int i3, MagicEraserPath magicEraserPath, int i4) {
        e.a(resources, i, i2, i3, magicEraserPath, i4);
    }

    @a
    public static List<Bitmap> renderBitmaps(Resources resources, Bitmap bitmap, List<String> list) {
        return e.a(resources, bitmap, list);
    }

    @a
    public static List<Bitmap> renderBitmaps(Resources resources, Bitmap bitmap, List<String> list, float f) {
        return e.a(resources, bitmap, list, f);
    }

    @a
    public static byte[] renderNV12(Context context, byte[] bArr, int i, int i2, String str, float f, boolean z) {
        return e.renderNV12(context, bArr, i, i2, str, f, z);
    }

    @a
    public static byte[] renderNV21(Context context, byte[] bArr, int i, int i2, String str, float f, boolean z) {
        return e.a(context, bArr, i, i2, str, f, z);
    }

    @a
    public static void setupVignetteParams(float f, float f2, float f3, float f4, float f5, float f6) {
        e.a(f, f2, f3, f4, f5, f6);
    }

    @a
    public static void updateGlobalScreenOrientation(int i) {
        synchronized (PolarrRender.class) {
            try {
                e.updateGlobalScreenOrientation(i);
            } catch (Throwable th) {
                Class<PolarrRender> cls = PolarrRender.class;
                throw th;
            }
        }
    }

    @a
    public void addBrushPathPoint(BrushItem brushItem, PointF pointF) {
        this.instance.a(brushItem, pointF);
    }

    @a
    public void autoEnhanceFace(Map<String, Object> map, int i, float f, boolean z) {
        this.instance.a(map, i, f, z);
    }

    @a
    public Map<String, Object> autoEnhanceGlobal(float f) {
        return this.instance.b(f);
    }

    @a
    public Map<String, Object> autoEnhanceGlobalForFace(float f) {
        return this.instance.c(f);
    }

    @a
    public int brushPaintAdd(List<PointF> list) {
        return this.instance.a(list);
    }

    @a
    public void brushPaintFinish() {
        this.instance.j();
    }

    @a
    public void brushStart(BrushItem brushItem) {
        this.instance.a(brushItem);
    }

    @a
    public void clearTexture(int i, int i2, int i3) {
        this.instance.a(i, i2, i3);
    }

    @a
    public void combine(int i, int i2) {
        this.instance.c(i, i2);
    }

    @a
    public void createInputTexture() {
        this.instance.b();
    }

    @a
    public void drawFiltersFrame(List<DrawingItem> list, int i) {
        this.instance.a(list, i);
    }

    @a
    public void drawFiltersFrame(List<DrawingItem> list, int i, boolean z, float f, float f2, float f3) {
        this.instance.a(list, i, z, f, f2, f3);
    }

    @a
    public void drawFrame() {
        this.instance.h();
    }

    @a
    public void drawFrameWithVignette() {
        this.instance.g();
    }

    @a
    public void enableRealTimeAutoEnhancement(boolean z) {
        this.instance.c(z);
    }

    @a
    public void fastAutoEnhancement(boolean z) {
        this.instance.f(z);
    }

    @a
    public Bitmap fastRenderBitmap(Bitmap bitmap, String str) {
        return this.instance.a(bitmap, str);
    }

    @a
    public Bitmap fastRenderBitmap(Bitmap bitmap, String str, float f) {
        return this.instance.a(bitmap, str, f);
    }

    @a
    public void fastUpdateFilter(String str) {
        this.instance.b(str);
    }

    @a
    public void fastUpdateFilter(String str, float f) {
        this.instance.a(str, f);
    }

    @a
    public int getBrushLastPaint() {
        return this.instance.k();
    }

    public ak getLookup2DFilter() {
        return this.instance.o();
    }

    @a
    public int getOutputId() {
        return this.instance.f();
    }

    @a
    public int getTextureId() {
        return this.instance.e();
    }

    @a
    public void initAllFilters() {
        this.instance.a();
    }

    @a
    public void initRender(Resources resources, int i, int i2, boolean z) {
        this.instance.a(resources, i, i2, z);
    }

    @a
    public void initRender(Resources resources, int i, int i2, boolean z, int i3) {
        this.instance.a(resources, i, i2, z, i3);
    }

    @a
    public boolean isUseVignette() {
        return this.instance.d();
    }

    @a
    public void magicEraserPathOverLay(MagicEraserPath magicEraserPath, int i, int i2, int i3) {
        this.instance.a(magicEraserPath, i, i2, i3);
    }

    @a
    public void release() {
        this.instance.n();
    }

    @a
    public void releaseGLRes() {
        this.instance.l();
    }

    @a
    public void releaseNonGLRes() {
        this.instance.m();
    }

    @a
    public Bitmap renderBitmap(Bitmap bitmap, Map<String, Object> map) {
        return this.instance.a(bitmap, map);
    }

    @a
    public void setBrushLastPaintingTex(int i) {
        this.instance.c(i);
    }

    @a
    public void setFilterIntensity(float f) {
        this.instance.a(f);
    }

    @a
    public void setInputTexture(int i) {
        this.instance.a(i);
    }

    @a
    public void setNeedDrawScreen(boolean z) {
        this.instance.a(z);
    }

    @a
    public void setOutputTexture(int i) {
        this.instance.b(i);
    }

    @a
    public void setUseVignette(boolean z) {
        this.instance.d(z);
    }

    @a
    public void updateBrushPoints(BrushItem brushItem) {
        this.instance.b(brushItem);
    }

    @a
    public void updateFaces(List<FaceItem> list, float f) {
        this.instance.a(list, f);
    }

    @a
    public void updateInputTexture() {
        this.instance.i();
    }

    @a
    public void updateSize(int i, int i2) {
        this.instance.a(i, i2);
    }

    @a
    public void updateStates(String str) {
        this.instance.a(str);
    }

    @a
    public void updateStates(Map<String, Object> map) {
        this.instance.a(map);
    }
}
