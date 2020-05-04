package com.oppo.camera.e;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MeteringRectangle;
import android.location.Location;
import android.media.Image;
import android.os.Handler;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* compiled from: OneCamera */
public interface f {

    /* compiled from: OneCamera */
    public interface a {
        void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2);

        void a(CaptureRequest captureRequest);

        void a(CaptureRequest captureRequest, CaptureResult captureResult);

        void a(TotalCaptureResult totalCaptureResult, CaptureRequest captureRequest);
    }

    /* compiled from: OneCamera */
    public interface b {
        void a();

        void a(int i);

        void a(boolean z);

        void b();
    }

    /* compiled from: OneCamera */
    public interface c {
        void a();

        void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2);

        void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult);
    }

    /* compiled from: OneCamera */
    public interface d {
        void a();

        void b();
    }

    /* compiled from: OneCamera */
    public interface e {
        InputConfiguration a();

        void a(LinkedHashMap<String, Surface> linkedHashMap);

        void b();

        void c();

        void d();

        Range<Integer> e();
    }

    /* renamed from: com.oppo.camera.e.f$f  reason: collision with other inner class name */
    /* compiled from: OneCamera */
    public interface C0058f {
        void a();

        void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j);

        void a(TotalCaptureResult totalCaptureResult, CaptureRequest captureRequest);

        void a(d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap);

        void b();

        void c();

        void d();
    }

    void a(float f);

    void a(int i);

    void a(int i, d dVar, a aVar);

    void a(int i, d dVar, a aVar, Handler handler);

    void a(int i, e eVar, boolean z, int i2);

    void a(int i, MeteringRectangle[] meteringRectangleArr, MeteringRectangle[] meteringRectangleArr2, boolean z);

    void a(long j);

    void a(Context context, int i, b bVar, boolean z, int i2);

    void a(Rect rect);

    void a(Location location);

    void a(Image image, TotalCaptureResult totalCaptureResult, Rect rect, Size size);

    void a(a aVar, d dVar);

    void a(c cVar);

    void a(d dVar);

    void a(C0058f fVar);

    void a(String str);

    void a(String str, int[] iArr);

    void a(boolean z);

    void a(boolean z, d dVar, a aVar);

    void a(boolean z, b bVar);

    void a(int[] iArr);

    void a(MeteringRectangle[] meteringRectangleArr);

    boolean a();

    boolean a(TotalCaptureResult totalCaptureResult);

    int[] a(String str, TotalCaptureResult totalCaptureResult);

    void b();

    void b(int i);

    void b(String str);

    void b(boolean z);

    void b(MeteringRectangle[] meteringRectangleArr);

    h c();

    void c(int i);

    void c(String str);

    void c(boolean z);

    void d();

    void d(int i);

    void d(boolean z);

    void e();

    void e(int i);

    void e(boolean z);

    void f();

    void f(int i);

    void f(boolean z);

    void g();

    void g(int i);

    void g(boolean z);

    void h();

    void h(int i);

    void h(boolean z);

    Handler i();

    void i(int i);

    void i(boolean z);

    void j();

    void j(int i);

    void j(boolean z);

    void k();

    void k(int i);

    void k(boolean z);

    void l();

    void l(int i);

    void l(boolean z);

    int m();

    void m(int i);

    void m(boolean z);

    c n();

    void n(int i);

    void n(boolean z);

    void o();

    void o(int i);

    void p();

    void p(int i);

    void q();

    void q(int i);

    void r();

    void r(int i);

    void s(int i);

    void t(int i);
}
