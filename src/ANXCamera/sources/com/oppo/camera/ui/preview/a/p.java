package com.oppo.camera.ui.preview.a;

import co.polarr.renderer.FilterPackageUtil;
import com.oppo.camera.sticker.data.StickerItem;

/* compiled from: TexturePreviewRequest */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private StickerItem f2933a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f2934b = 0;
    private String c = FilterPackageUtil.F_DEFAULT;
    private int d = 0;
    private boolean e = false;
    private boolean f = true;
    private int[] g = null;
    private int[] h = null;
    private String i = null;
    private a j = null;

    /* compiled from: TexturePreviewRequest */
    public interface a {
        void a(String str);

        void b(boolean z);
    }

    public int a() {
        return this.f2934b;
    }

    public void a(int i2) {
        this.f2934b = i2;
    }

    public void a(StickerItem stickerItem) {
        this.f2933a = stickerItem;
    }

    public void a(a aVar) {
        this.j = aVar;
        a aVar2 = this.j;
        if (aVar2 != null) {
            aVar2.b(this.f);
            this.j.a(this.c);
        }
    }

    public void a(String str) {
        this.c = str;
        a aVar = this.j;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    public void a(boolean z) {
        this.e = z;
    }

    public void a(int[] iArr) {
        synchronized (this) {
            if (iArr != null) {
                this.h = (int[]) iArr.clone();
            } else {
                this.h = null;
            }
        }
    }

    public void b(int i2) {
        this.d = i2;
    }

    public boolean b() {
        return this.e;
    }

    public StickerItem c() {
        return this.f2933a;
    }

    public boolean d() {
        return this.f;
    }

    public boolean e() {
        return this.f2933a != null;
    }

    public int[] f() {
        int[] iArr;
        synchronized (this) {
            iArr = this.h;
        }
        return iArr;
    }

    public int g() {
        synchronized (this) {
            if (this.h == null) {
                return 0;
            }
            int length = this.h.length;
            return length;
        }
    }

    public int h() {
        return this.d;
    }

    public void i() {
        this.j = null;
    }
}
