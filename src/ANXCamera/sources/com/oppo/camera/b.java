package com.oppo.camera;

import android.util.Log;
import com.oppo.camera.debug.DebugUtil;
import java.lang.reflect.Method;

/* compiled from: CameraBoostPerformance */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static int f1833a = Integer.valueOf(DebugUtil.getDebugProperty("iop.enable_uxe", "0")).intValue();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f1834b = false;
    private static Class<?> c = null;
    private static Method d = null;
    private static Method e = null;
    private static Method f = null;
    private static Method g = null;
    private static Method h = null;
    private static Method i = null;
    private static Method j = null;
    private static Method k = null;
    private Object l = null;

    public b() {
        synchronized (b.class) {
            if (!f1834b) {
                try {
                    c = Class.forName("com.qualcomm.qti.Performance");
                    d = c.getMethod("perfLockAcquire", new Class[]{Integer.TYPE, int[].class});
                    e = c.getMethod("perfHint", new Class[]{Integer.TYPE, String.class, Integer.TYPE, Integer.TYPE});
                    f = c.getMethod("perfLockRelease", new Class[0]);
                    g = c.getDeclaredMethod("perfLockReleaseHandler", new Class[]{Integer.TYPE});
                    h = c.getDeclaredMethod("perfIOPrefetchStart", new Class[]{Integer.TYPE, String.class, String.class});
                    i = c.getDeclaredMethod("perfIOPrefetchStop", new Class[0]);
                    if (f1833a == 1) {
                        j = c.getDeclaredMethod("perfUXEngine_events", new Class[]{Integer.TYPE, Integer.TYPE, String.class, Integer.TYPE});
                        k = c.getDeclaredMethod("perfUXEngine_trigger", new Class[]{Integer.TYPE});
                    }
                    f1834b = true;
                } catch (Exception e2) {
                    Log.e("CameraBoostPerformance", "CameraBoostPerformance, Exception1: " + e2);
                }
            }
            try {
                if (c != null) {
                    this.l = c.newInstance();
                }
            } catch (Exception e3) {
                Log.e("CameraBoostPerformance", "CameraBoostPerformance, Exception2: " + e3);
            }
        }
        return;
    }

    public int a() {
        try {
            return ((Integer) f.invoke(this.l, new Object[0])).intValue();
        } catch (Exception e2) {
            Log.e("CameraBoostPerformance", "perfLockRelease, Exception: " + e2);
            return -1;
        }
    }

    public int a(int i2, int... iArr) {
        try {
            return ((Integer) d.invoke(this.l, new Object[]{Integer.valueOf(i2), iArr})).intValue();
        } catch (Exception e2) {
            Log.e("CameraBoostPerformance", "perfLockAcquire, Exception: " + e2);
            return -1;
        }
    }
}
