package com.oppo.camera.ui.control;

/* compiled from: MainShutterButtonInfo */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private int f2622a;

    /* renamed from: b  reason: collision with root package name */
    private String f2623b;
    private String c;
    private int d;

    public c() {
        this.f2622a = 0;
        this.f2623b = null;
        this.c = null;
        this.d = 0;
        this.f2622a = 1;
        this.f2623b = "button_color_inside_none";
        this.c = "button_shape_ring_none";
        this.d = 0;
    }

    public c(int i) {
        this.f2622a = 0;
        this.f2623b = null;
        this.c = null;
        this.d = 0;
        this.f2622a = i;
        this.f2623b = "button_color_inside_none";
        this.c = "button_shape_ring_none";
        this.d = 0;
    }

    public c(int i, String str) {
        this.f2622a = 0;
        this.f2623b = null;
        this.c = null;
        this.d = 0;
        this.f2622a = i;
        this.f2623b = str;
        this.c = "button_shape_ring_none";
        this.d = 0;
    }

    public c(int i, String str, String str2) {
        this.f2622a = 0;
        this.f2623b = null;
        this.c = null;
        this.d = 0;
        this.f2622a = i;
        this.f2623b = str;
        this.c = str2;
        this.d = 1;
    }

    public c(int i, String str, String str2, int i2) {
        this.f2622a = 0;
        this.f2623b = null;
        this.c = null;
        this.d = 0;
        this.f2622a = i;
        this.f2623b = str;
        this.c = str2;
        this.d = i2;
    }

    public int a() {
        return this.f2622a;
    }

    public void a(int i) {
        this.f2622a = i;
    }

    public void a(String str) {
        this.f2623b = str;
    }

    public String b() {
        return this.f2623b;
    }

    public void b(int i) {
        this.d = i;
    }

    public void b(String str) {
        this.c = str;
    }

    public String c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }
}
