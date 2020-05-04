package com.oppo.camera.ui.preview.a;

import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.util.Size;
import com.oppo.camera.gl.GLRootView;
import com.oppo.camera.gl.g;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.s;
import com.oppo.camera.sticker.data.StickerItem;

/* compiled from: PreviewEffectProcess */
public interface i {

    /* compiled from: PreviewEffectProcess */
    public interface a {
        boolean a(String str);

        Rect[] a();

        void b();

        void b(String str);
    }

    void a();

    void a(int i);

    void a(int i, int i2);

    void a(long j);

    void a(SurfaceTexture surfaceTexture);

    void a(Size size, boolean z);

    void a(GLRootView gLRootView);

    void a(StickerItem stickerItem);

    void a(a aVar);

    void a(String str);

    void a(boolean z);

    void a(float[] fArr);

    void a(int[] iArr);

    boolean a(h hVar, int i, int i2, int i3, int i4);

    boolean a(h hVar, g gVar, int i, int i2, int i3, int i4, int i5);

    boolean a(h hVar, g gVar, s sVar);

    boolean a(byte[] bArr, int i, int i2);

    boolean a(byte[] bArr, int i, int i2, int i3);

    void b();

    void b(int i);

    void b(int i, int i2);

    void b(boolean z);

    boolean b(h hVar, int i, int i2, int i3, int i4);

    boolean b(StickerItem stickerItem);

    void c();

    void c(int i);

    void d(int i);

    boolean d();

    void e(int i);

    boolean e();

    void f();

    void f(int i);

    void g();

    void g(int i);

    n h(int i);

    void h();

    StickerItem i();

    int j();
}
