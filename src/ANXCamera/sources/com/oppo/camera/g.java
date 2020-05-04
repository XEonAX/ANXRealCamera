package com.oppo.camera;

import android.content.Context;
import android.os.MotorManager;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.o.d;

/* compiled from: CameraMotorManager */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static g f2132a = new g();

    /* renamed from: b  reason: collision with root package name */
    private MotorManager f2133b = null;
    private boolean c = false;

    public static g a() {
        return f2132a;
    }

    private void d(Context context) {
        if (context != null && this.f2133b == null && d.b("oppo.hardware.motor.support")) {
            d.a("CameraMotorManager", "initMotorManager, support hardware motor.");
            this.f2133b = (MotorManager) context.getSystemService(MotorManager.class);
        }
    }

    public synchronized void a(Context context) {
        if (this.c) {
            d(context);
            if (this.f2133b != null) {
                int configIntValue = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_MOTOR_DOWN_DELAY);
                if (configIntValue < 0) {
                    configIntValue = 1000;
                }
                d.a("CameraMotorManager", "downMotorByPrivacyApp, motorDelay: " + configIntValue);
                this.f2133b.downMotorByPrivacyApp("motor_force_by_camera", configIntValue);
                this.c = false;
            }
        }
    }

    public synchronized void b(Context context) {
        if (this.c) {
            d(context);
            if (this.f2133b != null) {
                d.a("CameraMotorManager", "downMotorBySystemApp");
                this.f2133b.downMotorBySystemApp("motor_force_by_camera");
                this.c = false;
            }
        }
    }

    public synchronized void c(Context context) {
        if (!this.c) {
            d(context);
            if (this.f2133b != null) {
                int motorStateBySystemApp = this.f2133b.getMotorStateBySystemApp();
                d.a("CameraMotorManager", "upMotorBySystemApp, motorState: " + motorStateBySystemApp);
                if (10 == motorStateBySystemApp) {
                    this.f2133b.upMotorBySystemApp("motor_force_by_camera");
                    this.c = true;
                }
            }
        }
    }
}
