package com.oppo.camera.ui.menu.levelcontrol;

import com.oppo.camera.R;
import com.oppo.camera.o.d;

/* compiled from: MathUtil */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static float f2795a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private static float f2796b = 0.0f;
    private static float c = 0.0f;
    private static float d = 140.33f;
    private static float e = d.f((int) R.dimen.menu_effect_elements_height);
    private static float f = d.f((int) R.dimen.menu_effect_elements_highlight_height);
    private static float g = d.f((int) R.dimen.menu_effect_elements_gap);
    private static float h = d.f((int) R.dimen.menu_effect_unit);
    private static float i = d.f((int) R.dimen.menu_effect_arc_chord);
    private static float j = d.f((int) R.dimen.menu_effect_model_height);

    static {
        float f2 = e;
        float f3 = h;
        f2795a = f2 / f3;
        f2796b = g / f3;
        c = j / f3;
    }

    public static double a() {
        return (double) d;
    }

    public static double a(float f2, double d2) {
        return ((double) (f2 / 2.0f)) / Math.sin(d2 / 2.0d);
    }

    public static float a(float f2) {
        return f2 / h;
    }

    public static float a(int i2) {
        return ((360.0f - h()) + (g() * ((float) i2))) % 360.0f;
    }

    public static double b(float f2, double d2) {
        return Math.asin(((double) f2) / (d2 * 2.0d)) * 2.0d;
    }

    public static float b() {
        return (float) a(a(i), Math.toRadians((double) d));
    }

    public static void b(float f2) {
        f2795a = a(f2);
    }

    public static double c(float f2, double d2) {
        return ((double) f2) / d2;
    }

    public static float c() {
        return f2795a;
    }

    public static void c(float f2) {
        f2796b = a(f2);
    }

    public static float d() {
        return ((float) b(c(), (double) b())) * b();
    }

    public static void d(float f2) {
        c = a(f2);
    }

    public static float e() {
        return (float) Math.toDegrees(c(d(), (double) b()));
    }

    public static void e(float f2) {
        d = f2;
    }

    public static float f() {
        return (float) Math.toDegrees(c(f2796b, (double) b()));
    }

    public static float f(float f2) {
        float a2 = a(f2);
        return (float) Math.toDegrees((((double) ((int) (a2 / (b() * 2.0f)))) * 3.141592653589793d) + b(a2 % (b() * 2.0f), (double) b()));
    }

    public static float g() {
        return e() + f();
    }

    public static float h() {
        return e() / 2.0f;
    }

    public static float i() {
        return c;
    }

    public static int j() {
        return 3600;
    }

    public static float k() {
        return (-o()) / 2.0f;
    }

    public static float l() {
        return o() / 2.0f;
    }

    public static float m() {
        return (-p()) / 2.0f;
    }

    public static float n() {
        return p() / 2.0f;
    }

    public static float o() {
        return a(i);
    }

    public static float p() {
        return c;
    }
}
