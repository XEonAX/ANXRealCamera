package com.oppo.camera.Ipa.a;

import android.content.Context;

/* compiled from: BaseProcessor */
public abstract class b {
    public static boolean a(long j) {
        return (j & 16) != 0;
    }

    public static int b() {
        return 16;
    }

    public static boolean b(long j) {
        return (j & 1) != 0;
    }

    public static int c() {
        return 4;
    }

    public static boolean c(long j) {
        return (j & 4) != 0;
    }

    public static int d() {
        return 1;
    }

    public static boolean d(long j) {
        return (j & 32) != 0;
    }

    public static int e() {
        return 32;
    }

    public static boolean e(long j) {
        return (j & 64) != 0;
    }

    public static int f() {
        return 512;
    }

    public static boolean f(long j) {
        return (j & 128) != 0;
    }

    public static boolean g(long j) {
        return (j & 512) != 0;
    }

    public abstract void a();

    public abstract void a(Context context, com.oppo.camera.Ipa.b bVar);

    public abstract void a(com.oppo.camera.Ipa.b bVar);
}
