package com.oppo.camera.entry;

import android.database.AbstractCursor;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import java.util.HashMap;
import java.util.Map;

/* compiled from: CameraInfoCursor */
public class c extends AbstractCursor implements a {
    private int[] g = new int[f2130b.length];
    private Map<String, Integer> h = new HashMap();

    public c() {
        for (int i = 0; i < f2130b.length; i++) {
            this.h.put(f2130b[i], Integer.valueOf(i));
        }
    }

    public void a() {
        this.g[getColumnIndex("support")] = 15;
    }

    public void b() {
        int i = 0;
        int i2 = 0;
        for (String str : f2129a) {
            i |= (CameraStatisticsUtil.EVENT_CAPTURE.equals(str) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_PORTRAIT) : "night".equals(str) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_NIGHT) : "sticker".equals(str) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER) : true ? 1 : 0) << i2;
            i2++;
        }
        this.g[getColumnIndex("mode")] = i;
    }

    public void c() {
        int i = 0;
        int i2 = 0;
        for (String str : f2129a) {
            i |= 1 << i2;
            i2++;
        }
        this.g[getColumnIndex("rear")] = this.g[getColumnIndex("mode")] & i;
    }

    public void d() {
        int i = 0;
        int i2 = 0;
        for (String a2 : f2129a) {
            if (b.a(a2)) {
                i |= 1 << i2;
            }
            i2++;
        }
        this.g[getColumnIndex("front")] = this.g[getColumnIndex("mode")] & i;
    }

    public void e() {
        int i = 0;
        int i2 = 0;
        for (String b2 : f2129a) {
            if (b.b(b2)) {
                i |= 1 << i2;
            }
            i2++;
        }
        this.g[getColumnIndex("beauty")] = this.g[getColumnIndex("mode")] & i;
    }

    public int getColumnIndex(String str) {
        return this.h.get(str).intValue();
    }

    public String[] getColumnNames() {
        return f2130b;
    }

    public int getCount() {
        return 1;
    }

    public double getDouble(int i) {
        return 0.0d;
    }

    public float getFloat(int i) {
        return 0.0f;
    }

    public int getInt(int i) {
        return this.g[i];
    }

    public long getLong(int i) {
        return (long) this.g[i];
    }

    public short getShort(int i) {
        return 0;
    }

    public String getString(int i) {
        return null;
    }

    public int getType(int i) {
        return 1;
    }

    public boolean isNull(int i) {
        return false;
    }
}
