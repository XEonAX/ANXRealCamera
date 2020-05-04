package co.polarr.renderer.b;

import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.FaceItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class a {
    private static final String Auto_Enhance_Filter = "{\"local_adjustments\":[{\"type\":\"luminance\",\"target\":0,\"range\":1,\"smoothness\":1,\"adjustments\":{\"exposure\":0.1973684210526314,\"gamma\":0,\"temperature\":0,\"tint\":0,\"saturation\":0,\"vibrance\":0.24999999999999997,\"contrast\":0.24999999999999997,\"balance\":-1},\"showOverlay\":false}]}";

    /* renamed from: a  reason: collision with root package name */
    public static Map<String, Object> f1112a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, Object> f1113b = new HashMap();

    /* renamed from: co.polarr.renderer.b.a$a  reason: collision with other inner class name */
    private static class C0035a {

        /* renamed from: a  reason: collision with root package name */
        int f1114a;

        /* renamed from: b  reason: collision with root package name */
        int f1115b;
        int[] c;

        private C0035a() {
        }
    }

    static {
        Map<String, Object> a2 = j.a(Auto_Enhance_Filter);
        if (a2 != null) {
            for (String next : a2.keySet()) {
                a2.put(next, p.a(next, a2.get(next)));
            }
        }
        f1112a = a2;
        f1113b.put("method", "rgb");
        f1113b.put("to_log", Float.valueOf(1.0f));
        f1113b.put("size", Float.valueOf(50.0f));
        f1113b.put("sample_step", Float.valueOf(5.0f));
        f1113b.put("histogram_grid", Float.valueOf(10.0f));
        f1113b.put("num_trial", Float.valueOf(50.0f));
        f1113b.put("num_gen", Float.valueOf(6.0f));
        f1113b.put("num_spec", Float.valueOf(20.0f));
        f1113b.put("tolerance", Float.valueOf(100.0f));
        f1113b.put("change_max", Float.valueOf(0.3f));
    }

    private static float a(float f, float f2, float f3) {
        return (f - f3) * f2;
    }

    private static float a(float[] fArr) {
        float f = 0.0f;
        for (float f2 : fArr) {
            f += f2;
        }
        return f / ((float) fArr.length);
    }

    private static int a(int i, int i2, int i3, int i4, String str) {
        if (str == null) {
            str = "load";
        }
        return "load".equals(str) ? ((i2 * i3) + i) * 4 : ((((i4 - 1) - i2) * i3) + i) * 4;
    }

    private static Map<String, Float> a(int i, int i2, int[] iArr) {
        C0035a aVar = new C0035a();
        aVar.f1114a = i;
        aVar.f1115b = i2;
        aVar.c = iArr;
        return a(aVar);
    }

    public static Map<String, Float> a(int i, int i2, int[] iArr, Map<String, Object> map) {
        Map<String, Float> a2 = a(i, i2, iArr);
        for (String next : a2.keySet()) {
            if (map.containsKey(next)) {
                map.put(next, a2.get(next));
            }
        }
        return a2;
    }

    public static Map<String, Float> a(C0035a aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("method", "lum_hist");
        Float valueOf = Float.valueOf(1.0f);
        hashMap.put("to_log", valueOf);
        Float valueOf2 = Float.valueOf(50.0f);
        hashMap.put("size", valueOf2);
        Float valueOf3 = Float.valueOf(5.0f);
        hashMap.put("sample_step", valueOf3);
        Float valueOf4 = Float.valueOf(20.0f);
        hashMap.put("histogram_grid", valueOf4);
        Map<String, Float> a2 = a(a(aVar, (Map<String, Object>) hashMap), 0.0f, 0.0f, 0.0f);
        hashMap.put("method", "sat_hist");
        hashMap.put("to_log", valueOf);
        hashMap.put("size", valueOf2);
        hashMap.put("sample_step", valueOf3);
        hashMap.put("histogram_grid", valueOf4);
        Map<String, Float> c = c(a(aVar, (Map<String, Object>) hashMap));
        HashMap hashMap2 = new HashMap();
        hashMap2.put("clarity", Float.valueOf(Math.min(0.3f, a2.get("highlights").floatValue())));
        HashMap hashMap3 = new HashMap();
        hashMap3.put("dehaze", Float.valueOf(Math.max(0.0f, Math.min((a2.get("highlights").floatValue() * 0.9f) + (a2.get("exposure").floatValue() * 0.4f), 1.0f))));
        Map<String, Float> a3 = a(a2, c, (Map<String, Float>) hashMap2, (Map<String, Float>) hashMap3);
        if (a3.get("exposure").floatValue() + a3.get("highlights").floatValue() >= 0.9f) {
            a3.put("gamma", Float.valueOf((-a3.get("exposure").floatValue()) * 0.35f));
        }
        return a3;
    }

    private static Map<String, Float> a(Map<String, Float> map, Map<String, Float> map2, Map<String, Float> map3, Map<String, Float> map4) {
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(map2);
        hashMap.putAll(map3);
        hashMap.putAll(map4);
        return hashMap;
    }

    private static Map<String, Float> a(float[] fArr, float f, float f2, float f3) {
        float f4;
        float f5;
        float f6;
        float f7;
        float[] fArr2 = fArr;
        float max = Math.max(f, 0.6f);
        float max2 = Math.max(f2, 0.8f);
        float max3 = Math.max(f3, 0.3f);
        float length = (float) fArr2.length;
        int i = 0;
        float f8 = 0.0f;
        for (int i2 = 0; ((float) i2) < length; i2++) {
            f8 = (float) (((double) f8) + (((((double) i2) + 0.5d) / (((double) length) - 1.0d)) * ((double) fArr2[i2])));
        }
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (true) {
            float f13 = (float) i;
            if (f13 >= length) {
                break;
            }
            float f14 = (f13 + 0.5f) / (length - 1.0f);
            double d = (double) (f14 - 1.0f);
            float exp = (float) Math.exp(d * -4.0d * d);
            f11 += fArr2[i] * exp * f14;
            f12 += exp * fArr2[i];
            double d2 = (double) f14;
            float exp2 = (float) Math.exp(-4.0d * d2 * d2);
            f9 += fArr2[i] * exp2 * f14;
            f10 += exp2 * fArr2[i];
            i++;
        }
        float f15 = f9 / f10;
        float f16 = f11 / f12;
        if (f8 > max) {
            f4 = max - f8;
            f5 = f8 - 0.0f;
        } else {
            f4 = max - f8;
            f5 = 1.0f - f8;
        }
        float f17 = f4 / f5;
        if (f16 > max2) {
            f6 = max2 - f16;
            f7 = f16 - 0.0f;
        } else {
            f6 = max2 - f16;
            f7 = 1.0f - f16;
        }
        float f18 = f6 / f7;
        float f19 = f15 > max3 ? (max3 - f15) / (f15 - 0.0f) : (max3 - f15) / (1.0f - f15);
        HashMap hashMap = new HashMap();
        hashMap.put("exposure", Float.valueOf(f17));
        hashMap.put("exposure_mean", Float.valueOf(f8));
        hashMap.put("highlights", Float.valueOf(f18));
        hashMap.put("highlights_mean", Float.valueOf(f16));
        hashMap.put("shadows", Float.valueOf(f19));
        hashMap.put("shadows_mean", Float.valueOf(f15));
        return hashMap;
    }

    public static void a(int i, int i2, int[] iArr, FaceItem faceItem, Context.FaceFeaturesState faceFeaturesState, float f, boolean z) {
        float min = Math.min(1.0f, Math.max(0.0f, f)) * 2.0f;
        Map<String, Float> a2 = a(i, i2, iArr);
        float[] fArr = {a2.get("exposure_mean").floatValue(), a2.get("highlights_mean").floatValue(), a2.get("shadows_mean").floatValue(), a2.get("saturation_mean").floatValue()};
        float a3 = a(fArr);
        faceItem.adjustments.skin_smoothness = a(fArr[2], 0.3f, a3) + 0.55f;
        faceItem.adjustments.skin_tone = a(fArr[0], 0.3f, a3) + 0.2f;
        faceItem.adjustments.skin_highlights = a(fArr[2], 0.1f, a3) + 0.3f;
        faceItem.adjustments.skin_shadows = a(fArr[2], 0.1f, a3) - 0.1f;
        faceItem.adjustments.eyes_contrast = a(fArr[2], 0.1f, a3) + 0.5f;
        faceItem.adjustments.eyes_brightness = a(fArr[2], 0.1f, a3) + 0.2f;
        faceItem.adjustments.lips_saturation = a(fArr[3], 0.3f, a3) + 0.2f;
        faceItem.adjustments.lips_brightness = a(fArr[3], 0.1f, a3) + 0.1f;
        faceItem.adjustments.skin_smoothness *= min;
        faceItem.adjustments.skin_tone *= min;
        faceItem.adjustments.skin_highlights *= min;
        faceItem.adjustments.skin_shadows *= min;
        faceItem.adjustments.eyes_contrast *= min;
        faceItem.adjustments.eyes_brightness *= min;
        faceItem.adjustments.lips_saturation *= min;
        faceItem.adjustments.lips_brightness *= min;
        if (faceFeaturesState != null) {
            faceFeaturesState.face_width = -0.15f * min;
            float f2 = min * 0.1f;
            faceFeaturesState.eye_size = new float[]{f2, f2};
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v4, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    private static float[] a(C0035a aVar, Map<String, Object> map) {
        Float[] fArr;
        String str = (String) map.get("method");
        if (str == null) {
            str = f1113b.get("method");
        }
        float floatValue = ((Float) (map.containsKey("sample_step") ? map.get("sample_step") : f1113b.get("sample_step"))).floatValue();
        if (!map.containsKey("sample_step")) {
            map = f1113b;
        }
        float floatValue2 = ((Float) map.get("sample_step")).floatValue();
        if ("sat_hist".equals(str)) {
            fArr = b(aVar, (int) floatValue);
        } else if (!"lum_hist".equals(str)) {
            return null;
        } else {
            fArr = a(aVar, (int) floatValue);
        }
        return a(fArr, 1.0f, (int) floatValue2);
    }

    private static float[] a(Float[] fArr, float f, int i) {
        float max = Math.max(f, 1.0f);
        float[] fArr2 = new float[(i + 1)];
        for (Float floatValue : fArr) {
            int floor = (int) Math.floor((double) ((floatValue.floatValue() * ((float) i)) / max));
            fArr2[floor] = fArr2[floor] + (1.0f / ((float) fArr.length));
        }
        return fArr2;
    }

    private static Float[] a(C0035a aVar, int i) {
        int i2 = aVar.f1115b;
        int i3 = aVar.f1114a;
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            int i5 = i4 + i;
            if (i5 >= i2) {
                return (Float[]) arrayList.toArray(new Float[arrayList.size()]);
            }
            int i6 = 0;
            while (true) {
                int i7 = i6 + i;
                if (i7 >= i3) {
                    break;
                }
                int a2 = a(i6, i4, i3, i2, (String) null);
                float f = ((float) aVar.c[a2]) / 255.0f;
                float f2 = ((float) aVar.c[a2 + 1]) / 255.0f;
                float f3 = ((float) aVar.c[a2 + 2]) / 255.0f;
                arrayList.add(Float.valueOf((Math.max(f, Math.max(f2, f3)) + Math.min(f, Math.min(f2, f3))) / 2.0f));
                i6 = i7;
            }
            i4 = i5;
        }
    }

    private static Map<String, Float> b(float[] fArr) {
        float f;
        float f2;
        float length = (float) fArr.length;
        float f3 = 0.0f;
        for (int i = 0; ((float) i) < length; i++) {
            f3 = (float) (((double) f3) + (((((double) i) + 0.5d) / (((double) length) - 1.0d)) * ((double) fArr[i])));
        }
        if (f3 > 0.5f) {
            f = 0.5f - f3;
            f2 = f3 - 0.0f;
        } else {
            f = 0.5f - f3;
            f2 = 1.0f - f3;
        }
        float max = Math.max(f / f2, 0.0f);
        HashMap hashMap = new HashMap();
        hashMap.put("vibrance", Float.valueOf(max));
        hashMap.put("saturation_mean", Float.valueOf(f3));
        return hashMap;
    }

    private static Float[] b(C0035a aVar, int i) {
        C0035a aVar2 = aVar;
        int i2 = aVar2.f1115b;
        int i3 = aVar2.f1114a;
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            int i5 = i4 + i;
            if (i5 >= i2) {
                return (Float[]) arrayList.toArray(new Float[arrayList.size()]);
            }
            int i6 = 0;
            while (true) {
                int i7 = i6 + i;
                if (i7 >= i3) {
                    break;
                }
                int a2 = a(i6, i4, i3, i2, (String) null);
                float f = ((float) aVar2.c[a2]) / 255.0f;
                float f2 = ((float) aVar2.c[a2 + 1]) / 255.0f;
                float f3 = ((float) aVar2.c[a2 + 2]) / 255.0f;
                float min = Math.min(f, Math.min(f2, f3));
                float max = Math.max(f, Math.max(f2, f3));
                float f4 = max - min;
                float f5 = max + min;
                float f6 = f5 / 2.0f;
                float f7 = 0.0f;
                int i8 = i4;
                if (((double) Math.abs(f4)) > 1.0E-6d) {
                    f7 = ((double) f6) < 0.5d ? f4 / (f5 + 1.0E-6f) : f4 / (((2.0f - max) - min) + 1.0E-6f);
                }
                arrayList.add(Float.valueOf(f7));
                i6 = i7;
                i4 = i8;
            }
            i4 = i5;
        }
    }

    private static Map<String, Float> c(float[] fArr) {
        float f;
        float f2;
        float length = (float) fArr.length;
        float f3 = 0.0f;
        float f4 = 0.0f;
        for (int i = 0; ((float) i) < length; i++) {
            f4 = (float) (((double) f4) + (((((double) i) + 0.5d) / (((double) length) - 1.0d)) * ((double) fArr[i])));
        }
        if (f4 > 0.5f) {
            f = 0.5f - f4;
            f2 = f4 - 0.0f;
        } else {
            f = 0.5f - f4;
            f2 = 1.0f - f4;
        }
        float f5 = f / f2;
        if (f5 > 0.25f) {
            f3 = (-f5) * 0.7f;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("vibrance", Float.valueOf(f5));
        hashMap.put("saturation_orange", Float.valueOf(f3));
        hashMap.put("vibrance_mean", Float.valueOf(f4));
        hashMap.put("saturation_mean", Float.valueOf(f4));
        return hashMap;
    }
}
