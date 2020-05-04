package com.oppo.camera.config;

import android.hardware.camera2.CameraCharacteristics;
import android.text.TextUtils;
import android.util.Size;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.e.h;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.f;
import com.oppo.camera.ui.menu.b;
import java.util.ArrayList;
import java.util.List;

public class CameraConfig {
    private static final String TAG = "CameraConfig";
    private static ConfigDataBase sConfigDataBase;
    private static h sOppoCameraCharacteristics;

    public static boolean checkKeyInMenuList(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (sConfigDataBase.getMenuPanelList() != null) {
                for (int i = 0; i < sConfigDataBase.getMenuPanelList().size(); i++) {
                    if (f.a((Object) str, (Object) sConfigDataBase.getMenuPanelList().get(i))) {
                        return true;
                    }
                }
            }
            if (sConfigDataBase.getMenuSettingList() != null) {
                for (int i2 = 0; i2 < sConfigDataBase.getMenuSettingList().size(); i2++) {
                    if (f.a((Object) str, (Object) sConfigDataBase.getMenuSettingList().get(i2))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean getConfigBooleanValue(CameraCharacteristics.Key<?> key) {
        if (sConfigDataBase.getProjectMap() == null || !sConfigDataBase.getProjectMap().containsKey(key)) {
            return false;
        }
        try {
            return Byte.parseByte(sConfigDataBase.getProjectMap().get(key)) > 0;
        } catch (Exception e) {
            d.e(TAG, "getConfigBooleanValue, key: " + key + ", value: " + sConfigDataBase.getProjectMap().get(key));
            e.printStackTrace();
            return true;
        }
    }

    public static boolean getConfigBooleanValue(String str, int i) {
        if (sConfigDataBase.getDefaultMenuSettingConfig() == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(a.c(i) ? "_front_camera_supported" : "_back_camera_supported");
        String sb2 = sb.toString();
        if (sConfigDataBase.getDefaultMenuSettingConfig().containsKey(str)) {
            return Boolean.parseBoolean(sConfigDataBase.getDefaultMenuSettingConfig().get(str));
        }
        if (sConfigDataBase.getDefaultMenuSettingConfig().containsKey(sb2)) {
            return Boolean.parseBoolean(sConfigDataBase.getDefaultMenuSettingConfig().get(sb2));
        }
        return false;
    }

    public static Byte getConfigByteValue(CameraCharacteristics.Key<?> key) {
        if (sConfigDataBase.getProjectMap() == null || !sConfigDataBase.getProjectMap().containsKey(key)) {
            return (byte) 0;
        }
        return Byte.valueOf(Byte.parseByte(sConfigDataBase.getProjectMap().get(key)));
    }

    public static float getConfigFloatValue(CameraCharacteristics.Key<?> key) {
        if (sConfigDataBase.getProjectMap() == null || !sConfigDataBase.getProjectMap().containsKey(key)) {
            return 0.0f;
        }
        return Float.parseFloat(sConfigDataBase.getProjectMap().get(key));
    }

    public static int getConfigIntValue(CameraCharacteristics.Key<?> key) {
        if (sConfigDataBase.getProjectMap() == null || !sConfigDataBase.getProjectMap().containsKey(key)) {
            return -1;
        }
        return Integer.parseInt(sConfigDataBase.getProjectMap().get(key));
    }

    public static List<Size> getListSizeConfigValue(CameraCharacteristics.Key<?> key) {
        if (sConfigDataBase.getProjectMap() != null && sConfigDataBase.getProjectMap().containsKey(key)) {
            try {
                String[] split = sConfigDataBase.getProjectMap().get(key).split(";");
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < split.length; i++) {
                    arrayList.add(new Size(Integer.parseInt(split[i].split("x")[0]), Integer.parseInt(split[i].split("x")[1])));
                }
                if (arrayList.size() > 0) {
                    return arrayList;
                }
                return null;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static List<String> getMenuPanelOptionList() {
        return sConfigDataBase.getMenuPanelList();
    }

    public static int[] getOmojiPerformanceConfigList() {
        return sConfigDataBase.getOmojiPerformanceConfigList();
    }

    public static String getOptionKeyDefaultValue(String str, int i) {
        if (sConfigDataBase.getDefaultMenuSettingConfig() == null) {
            return null;
        }
        String str2 = str + "_default";
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(a.c(i) ? "_front_camera" : "_back_camera");
        String sb2 = sb.toString();
        if (sConfigDataBase.getDefaultMenuSettingConfig().containsKey(str2)) {
            return sConfigDataBase.getDefaultMenuSettingConfig().get(str2);
        }
        if (sConfigDataBase.getDefaultMenuSettingConfig().containsKey(sb2)) {
            return sConfigDataBase.getDefaultMenuSettingConfig().get(sb2);
        }
        return null;
    }

    public static Size getSizeConfigValue(CameraCharacteristics.Key<?> key) {
        if (sConfigDataBase.getProjectMap() == null || !sConfigDataBase.getProjectMap().containsKey(key)) {
            return null;
        }
        try {
            String str = sConfigDataBase.getProjectMap().get(key);
            if (str != null) {
                return new Size(Integer.parseInt(str.split("x")[0]), Integer.parseInt(str.split("x")[1]));
            }
            return null;
        } catch (Exception e) {
            d.e(TAG, e.getMessage());
            return null;
        }
    }

    public static boolean getSupportSettingMenuKey(String str) {
        return !TextUtils.isEmpty(str) && sConfigDataBase.getMenuSettingList() != null && sConfigDataBase.getMenuSettingList().contains(str);
    }

    public static List<String> getSupportedList(String str, int i) {
        if (sConfigDataBase.getOptionItemConfigs() == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(a.c(i) ? "_front_camera_supported" : "_back_camera_supported");
        String sb2 = sb.toString();
        for (b next : sConfigDataBase.getOptionItemConfigs()) {
            if (next != null && (next.a().equals(str) || next.a().equals(sb2))) {
                return next.b();
            }
        }
        return null;
    }

    public static void initialize(h hVar) {
        sOppoCameraCharacteristics = hVar;
        sConfigDataBase = new ConfigDataBase();
        sConfigDataBase.parseMenuPanel();
        sConfigDataBase.parseMenuSetting();
        sConfigDataBase.initPerformanceConfig();
        sConfigDataBase.parseDefaultProjectConfig();
        sConfigDataBase.parseProjectFromCharacteristics(sOppoCameraCharacteristics);
        sConfigDataBase.parseDefaultMenuSettingConfigMap();
        sConfigDataBase.parseOptionItemConfig();
    }

    public static void release() {
        d.a(TAG, "release");
    }

    public static void setConfigBooleanValue(CameraCharacteristics.Key<Byte> key, boolean z) {
        ConfigDataBase configDataBase = sConfigDataBase;
        if (configDataBase == null) {
            return;
        }
        if (z) {
            configDataBase.getProjectMap().put(key, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        } else {
            configDataBase.getProjectMap().put(key, "0");
        }
    }
}
