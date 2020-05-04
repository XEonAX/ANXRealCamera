package com.oppo.camera.j;

import android.app.Activity;
import android.app.ActivityManager;
import android.os.Debug;
import android.os.Process;
import com.oppo.camera.d;
import com.oppo.camera.v;

/* compiled from: MemoryMonitor */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Runtime f2219a;

    /* renamed from: b  reason: collision with root package name */
    private long f2220b;
    private long c;
    private long d;
    private boolean e;
    private String f;

    public c() {
        this.f2219a = Runtime.getRuntime();
        this.f2220b = 0;
        this.c = 0;
        this.d = 0;
        this.e = false;
        this.f = null;
        this.f2220b = this.f2219a.maxMemory();
        d.a("MemoryMonitor", "MemoryMonitor, mMaxMemory: " + this.f2220b);
    }

    public void a() {
        Runtime runtime = this.f2219a;
        if (runtime != null) {
            runtime.gc();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.equals(com.oppo.camera.v.q) != false) goto L_0x0029;
     */
    public void a(long j) {
        if (this.c != 0) {
            String str = this.f;
            if (str != null) {
            }
        }
        this.c = v.b(v.q) - 50000000;
        this.d = 0;
        this.e = true;
        this.f = v.q;
        this.d += j;
    }

    public boolean a(Activity activity) {
        boolean z;
        if (this.f2220b - (this.f2219a.totalMemory() - this.f2219a.freeMemory()) <= 52428800) {
            d.d("MemoryMonitor", "checkMemoryAndStorage, realfree(" + r4 + ") <= MIN_LEFT_MEMEORY(" + 52428800 + ")");
            z = false;
        } else {
            z = true;
        }
        if (z && activity != null) {
            ActivityManager activityManager = (ActivityManager) activity.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            d.b("MemoryMonitor", "checkMemoryAndStorage, availMem: " + memoryInfo.availMem);
            if (memoryInfo.availMem <= memoryInfo.threshold) {
                d.d("MemoryMonitor", "checkMemoryAndStorage, availMem(" + memoryInfo.availMem + ") <= threshold(" + memoryInfo.threshold + ")");
                z = false;
            }
            if (com.oppo.camera.o.d.T()) {
                Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()});
                if (processMemoryInfo != null && processMemoryInfo.length > 0) {
                    if (processMemoryInfo[0] != null) {
                        d.a("MemoryMonitor", "checkMemoryAndStorage, totalPss: " + r12.getTotalPss() + ", dalvikPss: " + r12.dalvikPss + ", nativePss: " + r12.nativePss + ", otherPss: " + r12.otherPss);
                    }
                }
            }
        }
        String str = this.f;
        if (str != null && !str.equals(v.q)) {
            a(0);
        }
        if (this.e && this.d >= this.c) {
            d.d("MemoryMonitor", "mLeftStorage(" + this.c + ") <= mUsedStorage(" + this.d + ")");
        }
        return z;
    }
}
