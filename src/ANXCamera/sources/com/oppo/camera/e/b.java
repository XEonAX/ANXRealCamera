package com.oppo.camera.e;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: CameraHandlerExecutor */
public class b implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private Handler f2025a = null;

    public b(Handler handler) {
        if (handler != null) {
            this.f2025a = handler;
            return;
        }
        throw new NullPointerException();
    }

    public void execute(Runnable runnable) {
        if (!this.f2025a.post(runnable)) {
            throw new RejectedExecutionException(this.f2025a + " is shutting down");
        }
    }
}
