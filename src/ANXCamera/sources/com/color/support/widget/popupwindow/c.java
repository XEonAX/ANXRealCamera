package com.color.support.widget.popupwindow;

import android.graphics.drawable.Drawable;

/* compiled from: PopupListItem */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private int f1741a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f1742b;
    private String c;
    private boolean d;

    public c(Drawable drawable, String str, boolean z) {
        this.f1742b = drawable;
        this.c = str;
        this.d = z;
    }

    public c(String str, boolean z) {
        this((Drawable) null, str, z);
    }

    public int a() {
        return this.f1741a;
    }

    public Drawable b() {
        return this.f1742b;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }
}
