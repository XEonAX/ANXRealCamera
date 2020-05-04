package com.oppo.camera;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.oppo.camera.e;
import com.oppo.camera.o.d;

/* compiled from: LocationHelper */
public class l {
    public static String a(Context context, e.c cVar) {
        if (cVar == null) {
            d.a("LocationHelper", "getLocationInfoByAddress address is null, use empty string as default.");
            return "";
        }
        Resources resources = context.getResources();
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        if (c(context, cVar) || d(context, cVar)) {
            if (d.y()) {
                stringBuffer.append(context.getString(R.string.camera_taiwan));
                stringBuffer.append(",");
                stringBuffer.append(cVar.f2027b);
            } else {
                String[] strArr = {cVar.f2027b, cVar.c, cVar.d, cVar.e, cVar.f};
                int length = strArr.length;
                while (i < length) {
                    String str = strArr[i];
                    if (!TextUtils.isEmpty(str)) {
                        if (!stringBuffer.toString().isEmpty()) {
                            stringBuffer.append(",");
                        }
                        stringBuffer.append(str);
                    }
                    i++;
                }
            }
            return stringBuffer.toString();
        } else if (e(context, cVar)) {
            return resources.getString(R.string.camera_hongkong_shown);
        } else {
            if (b(context, cVar)) {
                return resources.getString(R.string.camera_macao_shown);
            }
            if (d.y()) {
                String[] strArr2 = {cVar.c, cVar.d, cVar.e, cVar.f};
                String[] strArr3 = {cVar.d, cVar.e, cVar.f};
                if (f(context, cVar)) {
                    strArr2 = strArr3;
                }
                for (String str2 : strArr2) {
                    if (!TextUtils.isEmpty(str2)) {
                        if (!stringBuffer.toString().isEmpty()) {
                            stringBuffer.append(",");
                        }
                        stringBuffer.append(str2);
                    }
                }
                if (TextUtils.isEmpty(stringBuffer.toString())) {
                    String[] strArr4 = {cVar.f2026a, cVar.f2027b};
                    int length2 = strArr4.length;
                    while (i < length2) {
                        String str3 = strArr4[i];
                        if (!TextUtils.isEmpty(str3)) {
                            if (!stringBuffer.toString().isEmpty()) {
                                stringBuffer.append(",");
                            }
                            stringBuffer.append(str3);
                        }
                        i++;
                    }
                }
            } else {
                for (String str4 : new String[]{cVar.f, cVar.e, cVar.d}) {
                    if (!TextUtils.isEmpty(str4)) {
                        if (!stringBuffer.toString().isEmpty()) {
                            stringBuffer.append(",");
                        }
                        stringBuffer.append(str4);
                    }
                }
                if (TextUtils.isEmpty(stringBuffer.toString())) {
                    String[] strArr5 = {cVar.f2026a, cVar.f2027b};
                    int length3 = strArr5.length;
                    while (i < length3) {
                        String str5 = strArr5[i];
                        if (!TextUtils.isEmpty(str5)) {
                            if (!stringBuffer.toString().isEmpty()) {
                                stringBuffer.append(",");
                            }
                            stringBuffer.append(str5);
                        }
                        i++;
                    }
                }
            }
            d.b("LocationHelper", "getAddressInfoByAddress, currentAddress: " + stringBuffer);
            return stringBuffer.toString();
        }
    }

    public static boolean b(Context context, e.c cVar) {
        if (cVar == null) {
            return false;
        }
        Resources resources = context.getResources();
        String string = resources.getString(R.string.camera_macao);
        if ((!TextUtils.isEmpty(cVar.f) && cVar.f.contains(string)) || (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(string))) {
            return true;
        }
        for (String str : resources.getStringArray(R.array.location_mo)) {
            if ((!TextUtils.isEmpty(cVar.f) && cVar.f.contains(str)) || (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(str))) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(Context context, e.c cVar) {
        Resources resources = context.getResources();
        for (String str : resources.getStringArray(R.array.fujian_to_match)) {
            if (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(str)) {
                for (String str2 : resources.getStringArray(R.array.kinmen_to_match)) {
                    if (!TextUtils.isEmpty(cVar.f2027b) && cVar.f2027b.contains(str2)) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    public static boolean d(Context context, e.c cVar) {
        Resources resources = context.getResources();
        for (String str : resources.getStringArray(R.array.fujian_to_match)) {
            if (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(str)) {
                for (String str2 : resources.getStringArray(R.array.lianjiang_to_match)) {
                    if (!TextUtils.isEmpty(cVar.f2027b) && cVar.f2027b.contains(str2)) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    public static boolean e(Context context, e.c cVar) {
        if (cVar == null) {
            return false;
        }
        Resources resources = context.getResources();
        String string = resources.getString(R.string.camera_hongkong);
        if ((!TextUtils.isEmpty(cVar.f) && cVar.f.contains(string)) || (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(string))) {
            return true;
        }
        for (String str : resources.getStringArray(R.array.location_hk)) {
            if ((!TextUtils.isEmpty(cVar.f) && cVar.f.contains(str)) || (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(str))) {
                return true;
            }
        }
        return false;
    }

    public static boolean f(Context context, e.c cVar) {
        if (cVar == null) {
            return false;
        }
        Resources resources = context.getResources();
        String string = resources.getString(R.string.camera_taiwan);
        if ((!TextUtils.isEmpty(cVar.f) && cVar.f.contains(string)) || (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(string))) {
            return true;
        }
        for (String str : resources.getStringArray(R.array.taiwan_to_match)) {
            if ((!TextUtils.isEmpty(cVar.f) && cVar.f.contains(str)) || (!TextUtils.isEmpty(cVar.e) && cVar.e.contains(str))) {
                return true;
            }
        }
        return false;
    }
}
