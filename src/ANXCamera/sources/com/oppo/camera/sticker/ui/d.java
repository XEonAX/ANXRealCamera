package com.oppo.camera.sticker.ui;

import android.graphics.drawable.Drawable;

/* compiled from: ImageTagInfo */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private b f2462a = null;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f2463b = null;
    private String c = null;
    private boolean d = false;
    private boolean e = false;
    private int f = 0;

    private void a(StringBuilder sb, String str, Object obj) {
        if (sb != null) {
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append(", ");
        }
    }

    public b a() {
        return this.f2462a;
    }

    public void a(int i) {
        this.f = i;
    }

    public void a(b bVar) {
        this.f2462a = bVar;
    }

    public void a(String str) {
        this.c = str;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public Drawable b() {
        return this.f2463b;
    }

    public void b(boolean z) {
        this.e = z;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public boolean e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb, "mDrawable", this.f2463b);
        a(sb, "mStickerUUID", this.c);
        a(sb, "mbStickerNew", Boolean.valueOf(this.d));
        a(sb, "mbHasMusic", Boolean.valueOf(this.e));
        a(sb, "mState", Integer.valueOf(this.f));
        return sb.toString();
    }
}
