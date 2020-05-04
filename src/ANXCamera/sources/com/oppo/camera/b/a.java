package com.oppo.camera.b;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import com.oppo.camera.e.f;

/* compiled from: ApertureControllerCallback */
public class a extends CameraCaptureSession.CaptureCallback {

    /* renamed from: a  reason: collision with root package name */
    private int f1835a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1836b = false;
    private boolean c = false;
    private boolean d = false;
    private boolean e = false;
    private long f = 0;
    private f g = null;

    public a(f fVar) {
        this.g = fVar;
    }

    public void a() {
    }

    public void a(boolean z) {
        this.c = z;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.f1836b && !this.e;
    }

    public void d() {
        this.c = false;
        this.e = false;
        this.d = false;
        this.f = 0;
        this.f1835a = 0;
    }

    public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        CaptureResult.Key<?> b2 = this.g.n().b("com.oppo.iris.aperture.switching");
        if (b2 != null) {
            long frameNumber = totalCaptureResult.getFrameNumber();
            int i = (totalCaptureResult.get(b2) == null || ((int[]) totalCaptureResult.get(b2)).length <= 0) ? 0 : ((int[]) totalCaptureResult.get(b2))[0];
            if (!this.d && i == 1) {
                this.d = true;
                this.f = frameNumber;
            }
            this.e = frameNumber - this.f > 15;
            this.f1836b = i == 1;
            if (this.f1835a == 1 && (i == 0 || this.e)) {
                this.d = false;
                a();
            }
            this.f1835a = i;
        }
        super.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
    }
}
