package com.oppo.camera.sticker.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.color.compat.os.SystemPropertiesNative;
import com.sensetime.stmobile.STMobileHumanActionNative;

/* compiled from: DeviceInfo */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f2404a;

    /* renamed from: b  reason: collision with root package name */
    private String f2405b = null;
    private String c = null;
    private String d = null;
    private String e = null;
    private String f = null;
    private int g = -1;

    public static a a() {
        if (f2404a == null) {
            synchronized (a.class) {
                if (f2404a == null) {
                    f2404a = new a();
                }
            }
        }
        return f2404a;
    }

    public int a(Context context) {
        if (this.g == -1) {
            PackageInfo packageInfo = null;
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
            if (packageInfo != null) {
                this.g = packageInfo.versionCode;
            }
        }
        return this.g;
    }

    public String b() {
        if (TextUtils.isEmpty(this.c)) {
            this.c = SystemPropertiesNative.get("ro.product.name");
        }
        return this.c;
    }

    public String b(Context context) {
        if (TextUtils.isEmpty(this.f)) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            if (displayMetrics.widthPixels >= 1080) {
                this.f = "1080P";
            } else {
                this.f = "720P";
            }
        }
        return this.f;
    }

    public String c() {
        if (TextUtils.isEmpty(this.d)) {
            this.d = SystemPropertiesNative.get("ro.build.version.opporom");
        }
        return this.d;
    }

    public String d() {
        if (TextUtils.isEmpty(this.e)) {
            this.e = SystemPropertiesNative.get("ro.build.version.ota");
        }
        return this.e;
    }

    public String e() {
        return Build.VERSION.RELEASE;
    }

    public String f() {
        return SystemPropertiesNative.get("persist.sys.oppo.region", "CN");
    }
}
