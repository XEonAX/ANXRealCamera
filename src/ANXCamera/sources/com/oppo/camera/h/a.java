package com.oppo.camera.h;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import com.oppo.camera.d;
import com.oppo.camera.e.c;
import com.oppo.camera.e.f;
import java.util.HashSet;

/* compiled from: FlashControllerCallback */
public class a extends CameraCaptureSession.CaptureCallback {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<Integer> f2200a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    protected boolean f2201b = false;
    private volatile int c = 0;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private long h = 0;
    private int i = -1;
    private b j;
    private f k = null;

    public a(f fVar) {
        this.k = fVar;
        f2200a.add(0);
        f2200a.add(4);
        f2200a.add(2);
        this.j = new b(1, f2200a);
    }

    public void a() {
    }

    public void a(int i2) {
        d.b("FlashControllerCallback", "setCurrenState: " + this.i + " -> " + i2);
        this.i = i2;
    }

    public void a(boolean z) {
        this.f2201b = z;
    }

    public void b() {
    }

    public void c() {
    }

    public void d() {
    }

    public boolean e() {
        return this.e;
    }

    public boolean f() {
        return this.f;
    }

    public boolean g() {
        return this.g;
    }

    public boolean h() {
        d.b("FlashControllerCallback", "isAeTriggerStart, mAeTriggerState: " + this.c + ", mCurrentState: " + this.i);
        return 1 == this.c || this.i == 0;
    }

    public void i() {
        this.f2201b = false;
        this.e = false;
        this.f = false;
        this.g = false;
        this.i = -1;
        this.d = false;
        this.c = 0;
        this.j.a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b2  */
    public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        int i2;
        boolean z;
        super.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
        if (this.f2201b) {
            if (totalCaptureResult == null) {
                d.d("FlashControllerCallback", "onCaptureCompleted, result is null!");
                return;
            }
            f fVar = this.k;
            int i3 = -1;
            if (fVar == null || !fVar.a()) {
                i2 = -1;
            } else {
                c n = this.k.n();
                CaptureResult.Key<?> b2 = n.b("com.oppo.ae.aecsettled");
                CaptureResult.Key<?> b3 = n.b("com.oppo.ae.preflashstate");
                i2 = b2 != null ? ((int[]) totalCaptureResult.get(b2))[0] : -1;
                if (b3 != null) {
                    i3 = ((int[]) totalCaptureResult.get(b3))[0];
                }
            }
            Integer num = (Integer) totalCaptureResult.getRequest().get(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER);
            if (num != null && 1 == num.intValue()) {
                this.c = num.intValue();
            }
            if (1 == this.c) {
                Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
                long frameNumber = totalCaptureResult.getFrameNumber();
                if (!this.j.a(totalCaptureResult.getFrameNumber(), (Integer) totalCaptureResult.getRequest().get(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER), num2)) {
                    f fVar2 = this.k;
                    if (fVar2 == null || !fVar2.a() || i2 != 1 || !this.g) {
                        z = false;
                        boolean z2 = num2 == null && num2.intValue() == 1;
                        if (!this.d) {
                            this.d = true;
                            this.h = frameNumber;
                        }
                        if (((z2 && frameNumber - this.h > 60) || z) && !this.e) {
                            d.b("FlashControllerCallback", "onCaptureCompleted, aeConverged and aeDone : " + z);
                            this.e = true;
                            this.d = false;
                            this.h = 0;
                            this.i = 1;
                            c();
                        }
                    }
                }
                z = true;
                if (num2 == null) {
                }
                if (!this.d) {
                }
                d.b("FlashControllerCallback", "onCaptureCompleted, aeConverged and aeDone : " + z);
                this.e = true;
                this.d = false;
                this.h = 0;
                this.i = 1;
                c();
            }
            Integer num3 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
            if (2 != this.i && this.e && num3 != null && num3.intValue() == 3) {
                this.f = true;
                d();
                this.i = 2;
            }
            f fVar3 = this.k;
            if (fVar3 != null && fVar3.a()) {
                if (i3 == 255 && com.oppo.camera.o.d.w()) {
                    b();
                } else if (i3 == 1 && !this.g) {
                    this.g = true;
                    a();
                }
            }
        }
    }
}
