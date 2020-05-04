package co.polarr.renderer;

import android.content.res.AssetManager;
import android.content.res.Resources;
import co.polarr.a.a;
import co.polarr.renderer.b.k;
import co.polarr.renderer.b.t;
import co.polarr.renderer.entities.Adjustment;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.Cube;
import co.polarr.renderer.entities.FilterItem;
import co.polarr.renderer.entities.FilterPackage;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FilterPackageUtil {
    private static final String CUBE_BASE = "cubes/";
    private static final String CUBE_EXT = ".cube";
    public static final String FILTER_FILE = "filters_johnny_32.json";
    @a
    public static final String F_BACK_1 = "B1si_XbZz";
    @a
    public static final String F_BACK_2 = "B1nmcmWbG";
    @a
    public static final String F_BACK_3 = "ByW7g4bbf";
    @a
    public static final String F_BACK_4 = "EyxRbD2UCe";
    @a
    public static final String F_BACK_5 = "rkx5u4Zbf";
    @a
    public static final String F_COMMON_1 = "SkpZ8ebbz";
    @a
    public static final String F_COMMON_2 = "Syt2KeZZf";
    @a
    public static final String F_COMMON_3 = "r1JaFSZZG";
    @a
    public static final String F_COMMON_4 = "BycYf7WWz";
    @a
    public static final String F_COMMON_5 = "ByYo3If";
    @a
    public static final String F_COMMON_6 = "rJ5g5vPWG";
    @a
    public static final String F_CUBE_2018_0 = "f_japan_strong.cube.rgb.bin";
    @a
    public static final String F_CUBE_2018_11 = "f_contrast_gray_face_dark";
    @a
    public static final String F_CUBE_2018_6 = "f_fuji_strong.cube.rgb.bin";
    @a
    public static final String F_CUBE_2018_7 = "f_candy_water_weak.cube.rgb.bin";
    @a
    public static final String F_CUBE_2018_8 = "f_bin_hideaki";
    @a
    public static final String F_DEFAULT = "default";
    @a
    public static final String F_FRONT_1 = "BJJAwoigM";
    @a
    public static final String F_FRONT_2 = "rkMhq4ZWf";
    @a
    public static final String F_FRONT_3 = "B1aMqioxf";
    @a
    public static final String F_FRONT_4 = "BJyKIwqxz";
    @a
    public static final String F_FRONT_5 = "r1PrfoolG";
    @a
    public static final String F_MODE_1 = "Sy4uLSTgf";
    @a
    public static final String F_MODE_2 = "rJxJtmaez";
    @a
    public static final String F_MODE_3 = "B1VLf4peM";
    @a
    public static final String F_MODE_4 = "SJ3mbr6ef";
    private static final String LUT_BASE = "luts/";
    @a
    public static final String PORTRAIT4_1 = "p4_1.cube.rgb.bin";
    @a
    public static final String PORTRAIT4_2 = "p4_2.cube.rgb.bin";
    @a
    public static final String PORTRAIT4_3 = "p4_3.cube.rgb.bin";
    @a
    public static final String PORTRAIT4_4 = "p4_4.cube.rgb.bin";

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f1095a = {F_DEFAULT, F_COMMON_1, F_COMMON_2, F_COMMON_3, F_COMMON_4, F_COMMON_5, F_COMMON_6, F_FRONT_1, F_FRONT_2, F_FRONT_3, F_FRONT_4, F_FRONT_5, F_BACK_1, F_BACK_2, F_BACK_3, F_BACK_4, F_BACK_5, F_MODE_1, F_MODE_2, F_MODE_3, F_MODE_4, F_CUBE_2018_0, F_CUBE_2018_6, F_CUBE_2018_7, F_CUBE_2018_8, F_CUBE_2018_11, PORTRAIT4_1, PORTRAIT4_2, PORTRAIT4_3, PORTRAIT4_4};

    /* renamed from: b  reason: collision with root package name */
    private static String f1096b = "videofilter_lut/";
    private static String c = "videofilter_lut/";
    private static FilterPackage d;
    private static Map<String, Cube> e = new HashMap();

    @a
    public static List<FilterPackage> GetAllFilters(Resources resources) {
        a.a().b();
        return a.a().c();
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00ee, code lost:
        r1 = 0.7f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00f7, code lost:
        r1 = r0;
        r3 = 0.44f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0100, code lost:
        r3 = 0.32f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x010c, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x010d, code lost:
        r3 = 0.5f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x010e, code lost:
        r3 = r3 * 2.0f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0113, code lost:
        if (r8 >= 0.5f) goto L_0x0118;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0115, code lost:
        r3 = (r3 * r8) * 2.0f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x0118, code lost:
        r3 = r3 + ((((r1 * 2.0f) - r3) * (r8 - 0.5f)) * 2.0f);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0124, code lost:
        return a(r7.state, r3);
     */
    @a
    public static Map<String, Object> GetFilterStates(FilterItem filterItem, float f) {
        char c2;
        float f2;
        float f3;
        String str = filterItem.id;
        switch (str.hashCode()) {
            case -1773019996:
                if (str.equals(F_BACK_2)) {
                    c2 = 12;
                    break;
                }
            case -1749294812:
                if (str.equals(F_BACK_1)) {
                    c2 = 11;
                    break;
                }
            case -1635938711:
                if (str.equals(F_BACK_5)) {
                    c2 = 15;
                    break;
                }
            case -1328964886:
                if (str.equals(F_FRONT_3)) {
                    c2 = 8;
                    break;
                }
            case -1326443198:
                if (str.equals(F_BACK_3)) {
                    c2 = 13;
                    break;
                }
            case -1273000971:
                if (str.equals(F_COMMON_6)) {
                    c2 = 5;
                    break;
                }
            case -976907733:
                if (str.equals(F_FRONT_4)) {
                    c2 = 9;
                    break;
                }
            case -592986300:
                if (str.equals(F_COMMON_3)) {
                    c2 = 2;
                    break;
                }
            case 16036088:
                if (str.equals(F_FRONT_1)) {
                    c2 = 6;
                    break;
                }
            case 312500946:
                if (str.equals(F_FRONT_2)) {
                    c2 = 7;
                    break;
                }
            case 954171616:
                if (str.equals(F_FRONT_5)) {
                    c2 = 10;
                    break;
                }
            case 981542261:
                if (str.equals(F_BACK_4)) {
                    c2 = 14;
                    break;
                }
            case 1054891211:
                if (str.equals(F_COMMON_1)) {
                    c2 = 0;
                    break;
                }
            case 1706212476:
                if (str.equals(F_COMMON_4)) {
                    c2 = 3;
                    break;
                }
            case 1995379619:
                if (str.equals(F_COMMON_5)) {
                    c2 = 4;
                    break;
                }
            case 2106819752:
                if (str.equals(F_COMMON_2)) {
                    c2 = 1;
                    break;
                }
            default:
                c2 = 65535;
                break;
        }
        float f4 = 1.0f;
        float f5 = 0.51f;
        switch (c2) {
            case 0:
                f2 = 0.75f;
                break;
            case 1:
                f4 = 0.51f;
                f5 = 0.27f;
                break;
            case 2:
                f4 = 0.48f;
                break;
            case 3:
                f3 = 0.58f;
                break;
            case 5:
                f4 = 0.62f;
                break;
            case 6:
                f4 = 0.62f;
                break;
            case 7:
                f5 = 0.56f;
                break;
            case 8:
                f5 = 0.6f;
                f4 = 0.8f;
                break;
            case 9:
                f5 = 0.54f;
                break;
            case 10:
                f4 = 0.65f;
                break;
            case 12:
                f5 = 0.7f;
                break;
            case 13:
                f2 = 0.66f;
                break;
            case 14:
                f5 = 0.31f;
                f4 = 0.56f;
                break;
            case 15:
                f3 = 0.63f;
                break;
        }
    }

    @a
    public static Map<String, Object> GetRefStates(Map<String, Object> map, float f) {
        return a(map, Math.min(1.0f, Math.max(0.0f, f)) * 2.0f);
    }

    public static Cube a(AssetManager assetManager, String str) {
        if (e.containsKey(str)) {
            return e.get(str);
        }
        if (str == null) {
            return null;
        }
        try {
            return Cube.fromRaw(assetManager.open(LUT_BASE + str), str);
        } catch (FileNotFoundException unused) {
            return b(assetManager, str);
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static Map<String, Object> a(Map<String, Object> map, float f) {
        Map<String, Object> map2 = map;
        float f2 = f;
        HashMap hashMap = new HashMap();
        float f3 = 1.0f;
        if (f2 == 1.0f) {
            hashMap.putAll(map2);
            return hashMap;
        }
        Map<String, Object> map3 = c.f1152a;
        for (String next : map.keySet()) {
            Object obj = map2.get(next);
            if (!(obj instanceof Float)) {
                char c2 = 65535;
                int i = 0;
                switch (next.hashCode()) {
                    case -1917275032:
                        if (next.equals("curves_green")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case -1829931962:
                        if (next.equals("curves_all")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1829915850:
                        if (next.equals("curves_red")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -893285803:
                        if (next.equals("curves_blue")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case -366660142:
                        if (next.equals("local_adjustments")) {
                            c2 = 4;
                            break;
                        }
                        break;
                }
                if (c2 == 0 || c2 == 1 || c2 == 2 || c2 == 3) {
                    if (obj instanceof float[][]) {
                        float[][] fArr = (float[][]) obj;
                        float[][] fArr2 = new float[fArr.length][];
                        for (int i2 = 0; i2 < fArr.length; i2++) {
                            float[] fArr3 = fArr[i2];
                            float[] copyOf = Arrays.copyOf(fArr3, fArr3.length);
                            fArr2[i2] = copyOf;
                            copyOf[1] = t.a(f2, fArr3[0], fArr3[1]);
                            copyOf[1] = (float) t.a((double) copyOf[1], 0.0d, 255.0d);
                        }
                        hashMap.put(next, fArr2);
                        f3 = 1.0f;
                        map2 = map;
                    }
                } else if (c2 == 4 && (obj instanceof ArrayList)) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList != null && !arrayList.isEmpty() && (arrayList.get(0) instanceof Adjustment)) {
                        ArrayList arrayList2 = new ArrayList();
                        int i3 = 0;
                        while (i3 < arrayList.size()) {
                            Adjustment adjustment = (Adjustment) arrayList.get(i3);
                            Adjustment adjustment2 = (Adjustment) k.a(k.a(adjustment), Adjustment.class);
                            Context.LocalState localState = new Context.LocalState();
                            Field[] fields = Context.LocalState.class.getFields();
                            int length = fields.length;
                            while (i < length) {
                                Field field = fields[i];
                                int i4 = length;
                                if (field.getType() == Float.TYPE) {
                                    try {
                                        field.setFloat(adjustment2.adjustments, t.a(f2, field.getFloat(localState), field.getFloat(adjustment.adjustments)));
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                i++;
                                Map<String, Object> map4 = map;
                                length = i4;
                            }
                            arrayList2.add(adjustment2);
                            i3++;
                            i = 0;
                            Map<String, Object> map5 = map;
                        }
                        hashMap.put(next, arrayList2);
                        f3 = 1.0f;
                        map2 = map;
                    }
                }
            } else if (map3.containsKey(next)) {
                Float f4 = (Float) obj;
                float floatValue = f4.floatValue();
                if (map3.get(next) instanceof Float) {
                    floatValue = ((Float) map3.get(next)).floatValue();
                }
                obj = Float.valueOf(Math.max(Math.min(t.a(f2, floatValue, f4.floatValue()), f3), -1.0f));
            }
            hashMap.put(next, obj);
            f3 = 1.0f;
            map2 = map;
        }
        return hashMap;
    }

    public static boolean a(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f1095a;
            if (i >= strArr.length) {
                return false;
            }
            if (strArr[i].equals(str)) {
                return true;
            }
            i++;
        }
    }

    public static boolean a(String str, String str2) {
        FilterItem a2 = a.a().a(str);
        return (a2 == null || a2.state == null || !a2.state.containsKey(str2) || ((Float) a2.state.get(str2)).floatValue() == 0.0f) ? false : true;
    }

    private static Cube b(AssetManager assetManager, String str) {
        try {
            Cube fromRaw = Cube.fromRaw(assetManager.open(f1096b + str), str);
            if (fromRaw != null) {
                e.put(fromRaw.filterID, fromRaw);
            }
            return fromRaw;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @a
    public static FilterPackage getLoadedLuts() {
        FilterPackage filterPackage;
        synchronized (FilterPackageUtil.class) {
            try {
                if (d == null || d.filters == null) {
                    d = new FilterPackage();
                    d.filters = new ArrayList();
                }
                filterPackage = d;
            } catch (Throwable th) {
                Class<FilterPackageUtil> cls = FilterPackageUtil.class;
                throw th;
            }
        }
        return filterPackage;
    }

    @a
    public static String loadLutBinary(InputStream inputStream, String str) {
        String str2;
        synchronized (FilterPackageUtil.class) {
            try {
                Cube fromInputStream = Cube.fromInputStream(inputStream, str);
                FilterItem filterItem = new FilterItem();
                filterItem.id = fromInputStream.filterID;
                filterItem.name = "" + filterItem.id;
                getLoadedLuts().filters.add(filterItem);
                e.put(str, fromInputStream);
                str2 = fromInputStream.filterID;
            } catch (Exception unused) {
                Class<FilterPackageUtil> cls = FilterPackageUtil.class;
                return null;
            } catch (Throwable th) {
                Class<FilterPackageUtil> cls2 = FilterPackageUtil.class;
                throw th;
            }
        }
        return str2;
    }

    @a
    public static void setLutAssetsPath(String str) {
        f1096b = str;
    }

    @a
    public static void setStaticImageFolder(String str) {
        c = str;
    }
}
