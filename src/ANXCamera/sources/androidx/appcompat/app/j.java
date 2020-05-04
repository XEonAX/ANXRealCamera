package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.a.b;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.statistics.util.TimeInfoUtil;
import java.util.Calendar;

/* compiled from: TwilightManager */
class j {

    /* renamed from: a  reason: collision with root package name */
    private static j f110a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f111b;
    private final LocationManager c;
    private final a d = new a();

    /* compiled from: TwilightManager */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f112a;

        /* renamed from: b  reason: collision with root package name */
        long f113b;
        long c;
        long d;
        long e;
        long f;

        a() {
        }
    }

    j(Context context, LocationManager locationManager) {
        this.f111b = context;
        this.c = locationManager;
    }

    private Location a(String str) {
        try {
            if (this.c.isProviderEnabled(str)) {
                return this.c.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    static j a(Context context) {
        if (f110a == null) {
            Context applicationContext = context.getApplicationContext();
            f110a = new j(applicationContext, (LocationManager) applicationContext.getSystemService(CameraStatisticsUtil.PORTRAIT_LOCATION));
        }
        return f110a;
    }

    private void a(Location location) {
        long j;
        a aVar = this.d;
        long currentTimeMillis = System.currentTimeMillis();
        i a2 = i.a();
        i iVar = a2;
        iVar.a(currentTimeMillis - TimeInfoUtil.MILLISECOND_OF_A_DAY, location.getLatitude(), location.getLongitude());
        long j2 = a2.f108a;
        iVar.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = true;
        if (a2.c != 1) {
            z = false;
        }
        boolean z2 = z;
        long j3 = a2.f109b;
        long j4 = j2;
        long j5 = a2.f108a;
        long j6 = j3;
        boolean z3 = z2;
        a2.a(TimeInfoUtil.MILLISECOND_OF_A_DAY + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j7 = a2.f109b;
        if (j6 == -1 || j5 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            j = (currentTimeMillis > j5 ? 0 + j7 : currentTimeMillis > j6 ? 0 + j5 : 0 + j6) + TimeInfoUtil.MILLISECOND_OF_A_MINUTE;
        }
        aVar.f112a = z3;
        aVar.f113b = j4;
        aVar.c = j6;
        aVar.d = j5;
        aVar.e = j7;
        aVar.f = j;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location location = null;
        Location a2 = b.a(this.f111b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        if (b.a(this.f111b, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = a("gps");
        }
        return (location == null || a2 == null) ? location != null ? location : a2 : location.getTime() > a2.getTime() ? location : a2;
    }

    private boolean c() {
        return this.d.f > System.currentTimeMillis();
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        a aVar = this.d;
        if (c()) {
            return aVar.f112a;
        }
        Location b2 = b();
        if (b2 != null) {
            a(b2);
            return aVar.f112a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
