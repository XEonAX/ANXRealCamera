package com.oppo.camera.ui.modepanel;

import android.app.Activity;
import com.oppo.camera.R;
import com.oppo.camera.ui.menu.b.d;

/* compiled from: ModeInfo */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f2842a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f2843b = 0;
    private int c;

    public a(Activity activity, int i) {
        this.f2843b = i;
        this.f2842a = a(activity, i);
    }

    public a(Activity activity, int i, int i2) {
        this.f2843b = i;
        this.f2842a = a(activity, i);
        this.c = i2;
    }

    public static String a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 6 ? i != 7 ? "common" : "macro" : "sticker" : "night" : "professional" : "slowVideo" : "fastVideo" : "panorama";
    }

    public static String a(Activity activity, int i) {
        return i != 5 ? activity.getString(d.a(a(i))) : activity.getString(R.string.camera_google_lens);
    }

    public String a() {
        return this.f2842a;
    }

    public int b() {
        return this.f2843b;
    }

    public int c() {
        return this.c;
    }
}
