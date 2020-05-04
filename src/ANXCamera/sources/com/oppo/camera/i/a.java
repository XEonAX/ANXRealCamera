package com.oppo.camera.i;

import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.jni.YuvProcessUtil;
import com.oppo.hypnus.HypnusManager;

/* compiled from: CameraHypnusManager */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f2210a;

    /* renamed from: b  reason: collision with root package name */
    private HypnusManager f2211b = null;
    private YuvProcessUtil c = new YuvProcessUtil();

    public static a a() {
        a aVar;
        synchronized (a.class) {
            if (f2210a == null) {
                f2210a = new a();
            }
            aVar = f2210a;
        }
        return aVar;
    }

    public void a(long j) {
        d.b("CameraHypnusManager", "bindBigCore, cpuBitMask: " + j);
        YuvProcessUtil yuvProcessUtil = this.c;
        YuvProcessUtil.bindCpuCores(j);
    }

    public void b() {
        boolean debugPropertyEnabled = DebugUtil.debugPropertyEnabled("oppo.camera.app.hypnus.enable", DebugUtil.DEBUG_ENABLE);
        d.e("CameraHypnusManager", "hypnusSetActionOn, action: 25, hypnusEnable: " + debugPropertyEnabled);
        if (debugPropertyEnabled) {
            if (this.f2211b == null) {
                this.f2211b = new HypnusManager();
            }
            this.f2211b.hypnusSetAction(25, 30000);
            boolean debugPropertyEnabled2 = DebugUtil.debugPropertyEnabled("oppo.bind.bigCore.enable", DebugUtil.DEBUG_DISABLE);
            if (debugPropertyEnabled2) {
                a(Long.parseLong(DebugUtil.getDebugProperty("oppo.bind.bigCore.cpuBitMask", "C0"), 16));
            }
            d.b("CameraHypnusManager", "hypnusSetActionOn, X, bindBigCore: " + debugPropertyEnabled2);
        }
    }

    public void b(long j) {
        d.b("CameraHypnusManager", "restoreCpuCores, cpuBitMask: " + j);
        YuvProcessUtil yuvProcessUtil = this.c;
        YuvProcessUtil.bindCpuCores(j);
    }

    public void c() {
        boolean debugPropertyEnabled = DebugUtil.debugPropertyEnabled("oppo.camera.app.hypnus.enable", DebugUtil.DEBUG_ENABLE);
        d.b("CameraHypnusManager", "hypnusSetActionOff, hypnusEnable: " + debugPropertyEnabled);
        if (debugPropertyEnabled) {
            if (this.f2211b == null) {
                this.f2211b = new HypnusManager();
            }
            if (DebugUtil.debugPropertyEnabled("oppo.bind.bigCore.enable", DebugUtil.DEBUG_DISABLE)) {
                b(Long.parseLong(DebugUtil.getDebugProperty("oppo.bind.bigCore.cpuBitMask", "C0"), 16));
            }
            this.f2211b.hypnusSetAction(25, 0);
        }
    }
}
