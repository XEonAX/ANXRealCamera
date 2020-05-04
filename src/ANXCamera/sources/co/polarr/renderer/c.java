package co.polarr.renderer;

import co.polarr.renderer.filters.a.a;
import co.polarr.renderer.filters.ae;
import co.polarr.renderer.filters.q;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, Object> f1152a = new HashMap();

    static {
        a(f1152a);
    }

    public static a a(List<? extends a> list, Class cls) {
        for (a aVar : list) {
            if (aVar.getClass() == cls) {
                return aVar;
            }
        }
        return null;
    }

    private static Object a(String str, Object obj, Map<String, Object> map) {
        if (obj != null && !map.containsKey(str)) {
            map.put(str, obj);
        }
        return map.get(str);
    }

    public static Object a(String str, Map<String, Object> map) {
        return a(str, (Object) null, map);
    }

    /* JADX WARNING: type inference failed for: r5v5, types: [co.polarr.renderer.filters.a.a] */
    /* JADX WARNING: Multi-variable type inference failed */
    public static Object a(List<? extends a> list, String str, Object obj) {
        if (!(!ae.f1177a.containsKey(str) || obj == null || list == null)) {
            ae aeVar = (ae) a(list, ae.class);
            if (aeVar != null) {
                aeVar.a(str, obj);
            }
        }
        if (q.f1258a.contains(str) && obj != null) {
            q qVar = null;
            if (list != null) {
                qVar = a(list, q.class);
            }
            if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                float[][] fArr = new float[objArr.length][];
                int length = objArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    fArr[i2] = (float[]) objArr[i];
                    i++;
                    i2++;
                }
                if (qVar == null) {
                    return fArr;
                }
                qVar.a(str, fArr);
                return fArr;
            } else if (qVar != null) {
                qVar.a(str, obj);
            }
        }
        return obj;
    }

    public static void a(Map<String, Object> map) {
        map.clear();
        map.put("local_adjustments", new ArrayList());
        Float valueOf = Float.valueOf(0.0f);
        map.put("rotation", valueOf);
        map.put("rotate90", valueOf);
        map.put("flip_y", false);
        map.put("flip_x", false);
        map.put("crop", new float[]{0.0f, 0.0f, 1.0f, 1.0f});
        map.put("distortion_mesh", (Object) null);
        map.put("distortion_amount", valueOf);
        map.put("fringing", valueOf);
        map.put("distortion_horizontal", valueOf);
        map.put("distortion_vertical", valueOf);
        Float valueOf2 = Float.valueOf(1.0f);
        map.put("blur_opacity", valueOf2);
        map.put("color_denoise", valueOf);
        map.put("luminance_denoise", valueOf);
        map.put("dehaze", valueOf);
        map.put("grid_size", new float[]{0.0f, 0.0f});
        map.put(CameraStatisticsUtil.PORTRAIT_BLUR, valueOf);
        map.put("diffuse", valueOf);
        map.put("temperature", valueOf);
        map.put("tint", valueOf);
        map.put("exposure", valueOf);
        map.put("gamma", valueOf);
        map.put("contrast", valueOf);
        map.put("highlights", valueOf);
        map.put("shadows", valueOf);
        map.put("whites", valueOf);
        map.put("blacks", valueOf);
        map.put("clarity", valueOf);
        map.put("saturation", valueOf);
        map.put("vibrance", valueOf);
        map.put("curves_red", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
        map.put("curves_green", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
        map.put("curves_blue", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
        map.put("curves_all", new float[][]{new float[]{0.0f, 0.0f}, new float[]{255.0f, 255.0f}});
        map.put("hue_red", valueOf);
        map.put("hue_orange", valueOf);
        map.put("hue_yellow", valueOf);
        map.put("hue_green", valueOf);
        map.put("hue_aqua", valueOf);
        map.put("hue_blue", valueOf);
        map.put("hue_purple", valueOf);
        map.put("hue_magenta", valueOf);
        map.put("saturation_red", valueOf);
        map.put("saturation_orange", valueOf);
        map.put("saturation_yellow", valueOf);
        map.put("saturation_green", valueOf);
        map.put("saturation_aqua", valueOf);
        map.put("saturation_blue", valueOf);
        map.put("saturation_purple", valueOf);
        map.put("saturation_magenta", valueOf);
        map.put("luminance_red", valueOf);
        map.put("luminance_orange", valueOf);
        map.put("luminance_yellow", valueOf);
        map.put("luminance_green", valueOf);
        map.put("luminance_aqua", valueOf);
        map.put("luminance_blue", valueOf);
        map.put("luminance_purple", valueOf);
        map.put("luminance_magenta", valueOf);
        map.put("highlights_hue", valueOf);
        map.put("highlights_saturation", valueOf);
        map.put("shadows_hue", valueOf);
        map.put("shadows_saturation", valueOf);
        map.put("balance", valueOf);
        map.put("sharpen", valueOf);
        map.put("grain_amount", valueOf);
        map.put("grain_size", Float.valueOf(0.25f));
        map.put("mosaic_size", valueOf);
        map.put("vignette_amount", valueOf);
        Float valueOf3 = Float.valueOf(0.5f);
        map.put("vignette_feather", valueOf3);
        map.put("vignette_highlights", valueOf3);
        map.put("vignette_roundness", valueOf);
        map.put("vignette_size", valueOf2);
        map.put("text", new ArrayList());
        map.put("textInvertedColor", new float[]{1.0f, 1.0f, 1.0f, 1.0f});
        map.put("textInverted", false);
        map.put("faces", new ArrayList());
        map.put("face_features", new ArrayList());
        map.put("spots", new ArrayList());
    }
}
