package com.oppo.camera.professional;

import android.content.Context;
import java.util.ArrayList;

/* compiled from: SubModeBarData */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2356a;

    /* renamed from: b  reason: collision with root package name */
    private int f2357b = -1;
    private String c;
    private String d;
    private String e;
    private int f = 0;
    private ArrayList<String> g = new ArrayList<>();
    private ArrayList<String> h = new ArrayList<>();
    private String i;

    public h(Context context) {
        this.f2356a = context;
    }

    public h a(int i2) {
        this.e = this.f2356a.getResources().getString(i2);
        return this;
    }

    public h a(String str) {
        this.c = str;
        return this;
    }

    public String a() {
        return this.d;
    }

    public h b(int i2) {
        this.f = i2;
        return this;
    }

    public h b(String str) {
        this.d = str;
        return this;
    }

    public ArrayList<String> b() {
        return this.g;
    }

    public h c(int i2) {
        this.f2357b = i2;
        return this;
    }

    public ArrayList<String> c() {
        return this.h;
    }

    public h d(int i2) {
        this.i = this.f2356a.getResources().getString(i2);
        return this;
    }

    public String d() {
        return this.i;
    }

    public int e() {
        return this.f;
    }

    public h e(int i2) {
        String[] stringArray = this.f2356a.getResources().getStringArray(i2);
        for (String add : stringArray) {
            this.g.add(add);
        }
        return this;
    }

    public h f(int i2) {
        String[] stringArray = this.f2356a.getResources().getStringArray(i2);
        for (String add : stringArray) {
            this.h.add(add);
        }
        return this;
    }
}
