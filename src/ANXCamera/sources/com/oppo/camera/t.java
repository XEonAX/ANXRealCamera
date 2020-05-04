package com.oppo.camera;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.color.compat.os.SystemPropertiesNative;
import com.oppo.camera.statistics.model.MenuClickMsgData;

/* compiled from: SensorManagerClient */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private Context f2508a = null;

    /* renamed from: b  reason: collision with root package name */
    private SensorManager f2509b = null;
    private Sensor c = null;
    private b d = null;
    private SensorEventListener e = null;
    /* access modifiers changed from: private */
    public c f = null;

    /* compiled from: SensorManagerClient */
    private class a implements SensorEventListener {

        /* renamed from: a  reason: collision with root package name */
        int f2510a;

        /* renamed from: b  reason: collision with root package name */
        float f2511b;

        private a() {
            this.f2510a = 0;
            this.f2511b = 0.0f;
        }

        public void a() {
            if (t.this.f != null) {
                t.this.f.a();
            }
        }

        public void b() {
            if (t.this.f != null) {
                t.this.f.b();
            }
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public void onSensorChanged(SensorEvent sensorEvent) {
            float abs = Math.abs(sensorEvent.values[0]) + Math.abs(sensorEvent.values[1]) + Math.abs(sensorEvent.values[2]);
            int i = this.f2510a;
            if (i % 5 == 0) {
                this.f2511b = abs;
                this.f2510a = 1;
            } else {
                this.f2511b += abs;
                this.f2510a = i + 1;
            }
            float f = this.f2511b;
            if (1.6f <= f) {
                a();
            } else if (0.8f <= f) {
                b();
            }
        }
    }

    /* compiled from: SensorManagerClient */
    private class b implements SensorEventListener {

        /* renamed from: b  reason: collision with root package name */
        private boolean f2513b;
        private int c;

        private b() {
            this.f2513b = false;
            this.c = 0;
        }

        public int a() {
            return this.c;
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public void onSensorChanged(SensorEvent sensorEvent) {
            this.c = (int) sensorEvent.values[0];
            if (!this.f2513b) {
                this.f2513b = true;
                SystemPropertiesNative.set("oppo.camera.lightIntensity", Integer.toString(this.c | 536870912));
            }
        }
    }

    /* compiled from: SensorManagerClient */
    public interface c {
        void a();

        void b();
    }

    public t(Context context) {
        this.f2508a = context;
    }

    private boolean c(int i) {
        return (i & 2) != 0 && SystemPropertiesNative.get("persist.camera.light_ae.enable", "0").equalsIgnoreCase(MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
    }

    private void d() {
        d.a("SensorManagerClient", "registerGyroSensor");
        if (this.e == null) {
            try {
                if (this.f2509b == null) {
                    this.f2509b = (SensorManager) this.f2508a.getSystemService("sensor");
                }
                if (this.c == null) {
                    this.c = this.f2509b.getDefaultSensor(4);
                }
                this.e = new a();
                this.f2509b.registerListener(this.e, this.c, 3);
            } catch (Exception e2) {
                d.a("SensorManagerClient", "registerGproSensor, Exception: " + e2.toString());
            }
        }
    }

    private void e() {
        d.a("SensorManagerClient", "unregisterGyroSensor");
        SensorEventListener sensorEventListener = this.e;
        if (sensorEventListener != null) {
            SensorManager sensorManager = this.f2509b;
            if (sensorManager != null) {
                sensorManager.unregisterListener(sensorEventListener);
                this.e = null;
            }
        }
        this.c = null;
    }

    private void f() {
        if (this.d == null) {
            try {
                d.a("SensorManagerClient", "registerLightSensor");
                if (this.f2509b == null) {
                    this.f2509b = (SensorManager) this.f2508a.getSystemService("sensor");
                }
                this.d = new b();
                this.f2509b.registerListener(this.d, this.f2509b.getDefaultSensor(5), 0);
                d.a("SensorManagerClient", "registerLightSensor X");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void g() {
        d.a("SensorManagerClient", "unregisterLightSensor, mLightSensorListener: " + this.d);
        b bVar = this.d;
        if (bVar != null) {
            SensorManager sensorManager = this.f2509b;
            if (sensorManager != null) {
                sensorManager.unregisterListener(bVar);
                SystemPropertiesNative.set("oppo.camera.lightIntensity", Integer.toString(this.d.a() | 1073741824));
                this.d = null;
            }
        }
    }

    public void a(int i) {
        if ((i & 1) != 0) {
            d();
        }
        if (c(i)) {
            f();
        }
    }

    public void a(c cVar) {
        this.f = cVar;
    }

    public boolean a() {
        return this.c != null;
    }

    public void b() {
        b bVar = this.d;
        if (bVar != null) {
            SystemPropertiesNative.set("oppo.camera.lightIntensity", Integer.toString(bVar.a() | 536870912));
        }
    }

    public void b(int i) {
        if ((i & 1) != 0) {
            e();
        }
        if (c(i)) {
            g();
        }
    }

    public void c() {
        this.f2509b = null;
    }
}
