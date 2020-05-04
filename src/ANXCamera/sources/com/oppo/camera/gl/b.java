package com.oppo.camera.gl;

import android.os.SystemClock;

/* compiled from: AnimationTime */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile long f2152a;

    public static void a() {
        f2152a = SystemClock.uptimeMillis();
    }

    public static long b() {
        return f2152a;
    }
}
