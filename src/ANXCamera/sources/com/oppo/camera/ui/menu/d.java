package com.oppo.camera.ui.menu;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* compiled from: OptionItemInfo */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f2747a = null;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f2748b = null;
    private String c = null;
    private String d = null;
    private Drawable e = null;

    public Drawable a() {
        return this.e;
    }

    public void a(Bitmap bitmap) {
        this.f2747a = bitmap;
    }

    public void a(Drawable drawable) {
        this.e = drawable;
    }

    public void a(String str) {
        this.c = str;
    }

    public Bitmap b() {
        return this.f2747a;
    }

    public void b(Bitmap bitmap) {
        this.f2748b = bitmap;
    }

    public void b(String str) {
        this.d = str;
    }

    public Bitmap c() {
        return this.f2748b;
    }

    public String d() {
        return this.c;
    }

    public String e() {
        return this.d;
    }

    public void f() {
        Bitmap bitmap = this.f2747a;
        if (bitmap != null) {
            bitmap.recycle();
            this.f2747a = null;
        }
        Bitmap bitmap2 = this.f2748b;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f2748b = null;
        }
        this.c = null;
        this.d = null;
    }
}
