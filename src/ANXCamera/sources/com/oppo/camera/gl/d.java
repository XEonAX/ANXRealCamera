package com.oppo.camera.gl;

import a.a.a;
import android.graphics.Bitmap;

/* compiled from: BitmapTexture */
public class d extends v {
    protected Bitmap h;
    private final Object j;
    private int k;

    public d(Bitmap bitmap) {
        this(bitmap, false);
    }

    public d(Bitmap bitmap, boolean z) {
        super(z);
        this.j = new Object();
        boolean z2 = false;
        this.k = 0;
        synchronized (this.j) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled()) {
                        z2 = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            a.a(z2);
            this.h = bitmap;
        }
    }

    /* access modifiers changed from: protected */
    public Bitmap G_() {
        Bitmap bitmap;
        synchronized (this.j) {
            bitmap = this.h;
        }
        return bitmap;
    }

    /* access modifiers changed from: protected */
    public void a(Bitmap bitmap) {
    }
}
