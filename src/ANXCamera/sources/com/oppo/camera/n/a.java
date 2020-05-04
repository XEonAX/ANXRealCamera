package com.oppo.camera.n;

import android.os.Handler;
import android.os.Looper;

/* compiled from: CameraHandler */
public class a extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private Looper f2265a = null;

    public a(Looper looper) {
        super(looper);
        this.f2265a = looper;
    }

    public void a(Runnable runnable) {
        if (Looper.myLooper() == this.f2265a) {
            runnable.run();
        } else {
            super.post(runnable);
        }
    }
}
