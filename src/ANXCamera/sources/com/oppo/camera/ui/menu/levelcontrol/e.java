package com.oppo.camera.ui.menu.levelcontrol;

import android.graphics.Bitmap;
import co.polarr.renderer.entities.DrawingItem;
import java.util.List;

/* compiled from: GLModelParam */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private String f2790a = null;

    /* renamed from: b  reason: collision with root package name */
    private List<DrawingItem> f2791b = null;
    private List<Bitmap> c = null;
    private Bitmap d = null;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private float i = 0.0f;
    private float j = 0.0f;
    private float k = 0.0f;
    private float l = 0.0f;
    private float m = 0.0f;
    private boolean n = false;
    private boolean o = false;

    public e(String str) {
        this.f2790a = str;
    }

    private void a(StringBuilder sb, String str, Object obj) {
        if (sb != null) {
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append(", ");
        }
    }

    public List<DrawingItem> a() {
        return this.f2791b;
    }

    public void a(float f2) {
        this.i = f2;
    }

    public void a(int i2) {
        this.e = i2;
    }

    public void a(Bitmap bitmap) {
        this.d = bitmap;
    }

    public void a(List<DrawingItem> list) {
        this.f2791b = list;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public boolean a(e eVar) {
        return eVar != null && this.f2791b == eVar.a() && this.e == eVar.d() && this.f == eVar.e() && this.g == eVar.f() && this.i == eVar.i() && this.j == eVar.j() && this.k == eVar.k() && this.l == eVar.l() && this.n == eVar.h() && this.o == eVar.n();
    }

    public List<Bitmap> b() {
        return this.c;
    }

    public void b(float f2) {
        this.j = f2;
    }

    public void b(int i2) {
        this.f = i2;
    }

    public void b(List<Bitmap> list) {
        this.c = list;
    }

    public void b(boolean z) {
        this.o = z;
    }

    public Bitmap c() {
        return this.d;
    }

    public void c(float f2) {
        this.k = f2;
    }

    public void c(int i2) {
        this.g = i2;
    }

    public int d() {
        return this.e;
    }

    public void d(float f2) {
        this.l = f2;
    }

    public void d(int i2) {
        this.h = i2;
    }

    public int e() {
        return this.f;
    }

    public void e(float f2) {
        this.m = f2;
    }

    public int f() {
        return this.g;
    }

    public int g() {
        return this.h;
    }

    public boolean h() {
        return this.n;
    }

    public float i() {
        return this.i;
    }

    public float j() {
        return this.j;
    }

    public float k() {
        return this.k;
    }

    public float l() {
        return this.l;
    }

    public float m() {
        return this.m;
    }

    public boolean n() {
        return this.o;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb, "mModelName", this.f2790a);
        a(sb, "mBitmaps", this.c);
        a(sb, "mHighlightBmp", this.d);
        a(sb, "mElementNum", Integer.valueOf(this.e));
        a(sb, "mTexW", Integer.valueOf(this.f));
        a(sb, "mTexH", Integer.valueOf(this.g));
        a(sb, "mCurrItemIndex", Integer.valueOf(this.h));
        a(sb, "mCenterAng", Float.valueOf(this.i));
        a(sb, "mElementH", Float.valueOf(this.j));
        a(sb, "mElementGap", Float.valueOf(this.k));
        a(sb, "mHighlightH", Float.valueOf(this.l));
        a(sb, "mbFrontCamera", Boolean.valueOf(this.n));
        a(sb, "mbFromSurfaceTexture", Boolean.valueOf(this.o));
        return sb.toString();
    }
}
