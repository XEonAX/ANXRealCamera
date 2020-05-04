package com.oppo.camera.ui.beauty3d;

import android.widget.ImageView;

/* compiled from: FrameAnimation */
public class h {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public ImageView f2590a = null;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public int[] f2591b = null;
    private int c = 0;
    /* access modifiers changed from: private */
    public int d = 0;
    /* access modifiers changed from: private */
    public boolean e = true;
    /* access modifiers changed from: private */
    public boolean f = true;
    /* access modifiers changed from: private */
    public a g = new a();

    /* compiled from: FrameAnimation */
    private class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private int f2593b;

        private a() {
            this.f2593b = 0;
        }

        public void a(int i) {
            this.f2593b = i;
        }

        public void run() {
            if (h.this.e) {
                h.this.f2590a.removeCallbacks(h.this.g);
                return;
            }
            h.this.f2590a.setBackgroundResource(h.this.f2591b[this.f2593b]);
            if (this.f2593b != h.this.d) {
                h.this.a(this.f2593b + 1, false);
            } else if (h.this.f) {
                h.this.a(0, false);
            }
        }
    }

    public h(ImageView imageView, int[] iArr, int i, boolean z) {
        this.f2590a = imageView;
        this.f2591b = iArr;
        this.c = i;
        this.d = iArr.length - 1;
        this.f = z;
    }

    /* access modifiers changed from: private */
    public void a(int i, boolean z) {
        ImageView imageView = this.f2590a;
        if (imageView != null) {
            if (i == 0 && z) {
                imageView.setBackgroundResource(this.f2591b[0]);
                i++;
            }
            a aVar = this.g;
            if (aVar != null) {
                aVar.a(i);
                this.f2590a.postDelayed(this.g, (long) this.c);
            }
        }
    }

    public void a() {
        this.e = true;
        ImageView imageView = this.f2590a;
        if (imageView != null) {
            imageView.removeCallbacks(this.g);
        }
    }

    public boolean b() {
        return this.e;
    }

    public boolean c() {
        return !this.e;
    }

    public void d() {
        if (this.e) {
            this.e = false;
            a(0, true);
        }
    }
}
