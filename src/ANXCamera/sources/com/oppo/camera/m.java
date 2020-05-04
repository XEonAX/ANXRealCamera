package com.oppo.camera;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.provider.Settings;
import com.oppo.camera.i;
import com.oppo.camera.n;
import com.oppo.camera.statistics.CameraStatisticsUtil;

/* compiled from: LocationManager */
public class m implements n.a {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public long f2244a = 0;

    /* renamed from: b  reason: collision with root package name */
    private Activity f2245b = null;
    /* access modifiers changed from: private */
    public LocationManager c = null;
    private String d = "on";
    private boolean e = false;
    /* access modifiers changed from: private */
    public boolean f = false;
    private String g = null;
    private i h = null;
    private ContentResolver i = null;
    private a j = null;
    /* access modifiers changed from: private */
    public Handler k = null;
    private Runnable l = null;
    /* access modifiers changed from: private */
    public Runnable m = null;
    private int n = 1;
    /* access modifiers changed from: private */
    public e o = null;
    private HandlerThread p;
    /* access modifiers changed from: private */
    public d[] q = {new d("gps"), new d("network")};

    /* compiled from: LocationManager */
    private class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }
    }

    /* compiled from: LocationManager */
    public class b implements Runnable {
        public b() {
        }

        public void run() {
            if (m.this.q != null && m.this.c() == null && !m.this.f) {
                m.this.i();
            }
        }
    }

    /* compiled from: LocationManager */
    public class c implements Runnable {
        public c() {
        }

        public void run() {
            m.this.k();
        }
    }

    /* compiled from: LocationManager */
    private class d implements LocationListener {

        /* renamed from: b  reason: collision with root package name */
        private Location f2254b;
        private boolean c = false;
        private String d;

        public d(String str) {
            this.d = str;
            this.f2254b = new Location(this.d);
        }

        public Location a() {
            if (this.c) {
                return this.f2254b;
            }
            return null;
        }

        public void a(boolean z) {
            this.c = z;
        }

        public void onLocationChanged(Location location) {
            if (location.getLatitude() != 0.0d || location.getLongitude() != 0.0d) {
                if (m.this.f) {
                    d.a("LocationManager", "onLocationChanged after pause, so return");
                    return;
                }
                d.b("LocationManager", "LocationListener, onLocationChanged, mProvider: " + this.d + ", mbValid: " + this.c);
                long unused = m.this.f2244a = System.currentTimeMillis();
                this.f2254b.set(location);
                this.c = true;
                if (m.this.o != null) {
                    m.this.o.a(location);
                }
                m.this.k();
            }
        }

        public void onProviderDisabled(String str) {
            d.a("LocationManager", "onProviderDisabled, mbValid: " + this.c);
            this.c = false;
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
            d.a("LocationManager", "onStatusChanged, status: " + i + ", mbValid: " + this.c);
            if (i == 0) {
                this.c = false;
            }
        }
    }

    /* compiled from: LocationManager */
    public interface e {
        void a(Location location);

        boolean a();
    }

    public m(Activity activity, i iVar) {
        this.f2245b = activity;
        this.h = iVar;
        this.i = this.f2245b.getContentResolver();
        this.j = new a(new Handler());
        this.p = new HandlerThread("LocationManagerHandlerThread");
        this.p.start();
        this.k = new Handler(this.p.getLooper()) {
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.l = new b();
        this.m = new c();
    }

    private void h() {
        if (this.c == null) {
            this.c = (LocationManager) this.f2245b.getSystemService(CameraStatisticsUtil.PORTRAIT_LOCATION);
        }
        LocationManager locationManager = this.c;
        if (locationManager != null) {
            boolean isProviderEnabled = locationManager.isProviderEnabled("network");
            d.a("LocationManager", "startReceivingLocationUpdates, ntpEnable: " + isProviderEnabled);
            if (isProviderEnabled) {
                try {
                    this.c.requestLocationUpdates("network", 1000, 0.0f, this.q[1]);
                } catch (SecurityException e2) {
                    d.b("LocationManager", "startReceivingLocationUpdates, fail to request location update", e2);
                } catch (IllegalArgumentException e3) {
                    d.b("LocationManager", "startReceivingLocationUpdates, provider does not exist" + e3.getMessage());
                }
                this.k.postDelayed(this.l, 3000);
                return;
            }
            i();
        }
    }

    /* access modifiers changed from: private */
    public void i() {
        d.a("LocationManager", "startGpsReceivingLocationUpdates, mActivity: " + this.f2245b + ", mbPaused: " + this.f);
        Activity activity = this.f2245b;
        if (activity != null && !this.f) {
            if (this.c == null) {
                this.c = (LocationManager) activity.getSystemService(CameraStatisticsUtil.PORTRAIT_LOCATION);
            }
            this.k.post(new Runnable() {
                public void run() {
                    try {
                        d.b("LocationManager", "startGpsReceivingLocationUpdates, requestLocationUpdates post to handler thread");
                        m.this.c.requestLocationUpdates("gps", 1000, 0.0f, m.this.q[0]);
                    } catch (SecurityException e) {
                        d.d("LocationManager", "startGpsReceivingLocationUpdates, fail to request location update", e);
                    } catch (IllegalArgumentException e2) {
                        d.e("LocationManager", "startGpsReceivingLocationUpdates, provider does not exist" + e2.getMessage());
                    }
                    m.this.k.postDelayed(m.this.m, 45000);
                    d.a("LocationManager", "startGpsReceivingLocationUpdates, post GPS timeout runnable");
                }
            });
        }
    }

    private void j() {
        if (this.c != null) {
            int i2 = 0;
            while (true) {
                d[] dVarArr = this.q;
                if (i2 < dVarArr.length) {
                    try {
                        this.c.removeUpdates(dVarArr[i2]);
                    } catch (Exception e2) {
                        d.a("LocationManager", "stopReceivingLocationUpdates, fail to remove location listners", (Throwable) e2);
                    }
                    i2++;
                } else {
                    d.a("LocationManager", "stopReceivingLocationUpdates");
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void k() {
        l();
        LocationManager locationManager = this.c;
        if (locationManager != null) {
            d[] dVarArr = this.q;
            if (dVarArr[0] != null) {
                try {
                    locationManager.removeUpdates(dVarArr[0]);
                } catch (Exception e2) {
                    d.a("LocationManager", "stopGpsReceivingLocationUpdates, fail to remove location listeners", (Throwable) e2);
                }
                d.a("LocationManager", "stopGpsReceivingLocationUpdates X");
            }
        }
    }

    private void l() {
        Handler handler = this.k;
        if (handler != null) {
            handler.removeCallbacks(this.l);
            this.k.removeCallbacks(this.m);
        }
    }

    public void a() {
        i.a a2 = this.h.edit();
        a2.putString("pref_camera_recordlocation_key", "on");
        a2.apply();
        if (this.e) {
            this.e = false;
            this.d = "on";
            g();
            ContentResolver contentResolver = this.i;
            if (contentResolver != null && this.j != null) {
                contentResolver.registerContentObserver(Settings.System.getUriFor("location_providers_allowed"), false, this.j);
                return;
            }
            return;
        }
        this.d = this.g;
        g();
    }

    public void a(int i2) {
        this.n = i2;
    }

    public void a(e eVar) {
        this.o = eVar;
    }

    public void b() {
        i.a a2 = this.h.edit();
        a2.putString("pref_camera_recordlocation_key", c.a_);
        a2.apply();
        if (this.e) {
            this.e = false;
            ContentResolver contentResolver = this.i;
            if (!(contentResolver == null || this.j == null)) {
                contentResolver.registerContentObserver(Settings.System.getUriFor("location_providers_allowed"), false, this.j);
            }
            this.d = this.h.getString("pref_camera_recordlocation_key", this.f2245b.getString(R.string.camera_location_default_value));
            g();
        }
    }

    public Location c() {
        if (c.a_.equals(this.d)) {
            return null;
        }
        int i2 = 0;
        while (true) {
            d[] dVarArr = this.q;
            if (i2 < dVarArr.length) {
                Location a2 = dVarArr[i2].a();
                if (a2 != null) {
                    return a2;
                }
                i2++;
            } else {
                d.a("LocationManager", "getCurrentLocation, No location received yet.");
                return null;
            }
        }
    }

    public void d() {
        this.f = false;
        if (this.n != 3) {
            int i2 = this.h.getInt("pref_net_location_checkbox_key", 0);
            this.d = this.h.getString("pref_camera_recordlocation_key", this.f2245b.getString(R.string.camera_location_default_value));
            this.e = true;
            d.a("LocationManager", "onResume, mRecordLocationState: " + this.d + ", value: " + i2);
            if ("on".equals(this.d) && i2 == 1) {
                d.a("LocationManager", "onResume, location is invalid");
                if (System.currentTimeMillis() - this.f2244a >= 600000) {
                    d[] dVarArr = this.q;
                    if (dVarArr[0] != null) {
                        dVarArr[0].a(false);
                    }
                    d[] dVarArr2 = this.q;
                    if (dVarArr2[1] != null) {
                        dVarArr2[1].a(false);
                    }
                }
                g();
                return;
            }
            return;
        }
        this.d = c.a_;
    }

    public void e() {
        this.f = true;
        l();
        j();
        ContentResolver contentResolver = this.i;
        if (contentResolver != null) {
            a aVar = this.j;
            if (aVar != null) {
                contentResolver.unregisterContentObserver(aVar);
            }
        }
    }

    public void f() {
        this.f = true;
        this.h = null;
        this.q = null;
        this.c = null;
        this.f2245b = null;
        this.j = null;
        this.i = null;
        this.k = null;
        this.l = null;
        this.m = null;
        HandlerThread handlerThread = this.p;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.p = null;
        }
    }

    public void g() {
        if (com.oppo.camera.o.d.y()) {
            e eVar = this.o;
            if (eVar == null || !eVar.a()) {
                return;
            }
        }
        if ("on".equals(this.d)) {
            h();
            return;
        }
        j();
        l();
    }
}
