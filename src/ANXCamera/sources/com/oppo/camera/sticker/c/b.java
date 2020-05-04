package com.oppo.camera.sticker.c;

import com.oppo.camera.debug.PrefUtils;
import com.oppo.camera.o.d;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import okhttp3.OkHttpClient;

/* compiled from: OkHttpClientHelper */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f2399a;

    /* renamed from: b  reason: collision with root package name */
    private OkHttpClient f2400b = null;

    public b() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.connectTimeout(15, TimeUnit.SECONDS);
        builder.readTimeout(15, TimeUnit.SECONDS);
        builder.writeTimeout(15, TimeUnit.SECONDS);
        if (PrefUtils.getIsTestEnv(d.e())) {
            builder.sslSocketFactory(c.a(), new c());
            builder.hostnameVerifier(new HostnameVerifier() {
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            });
        }
        this.f2400b = builder.build();
    }

    public static b a() {
        if (f2399a == null) {
            synchronized (b.class) {
                if (f2399a == null) {
                    f2399a = new b();
                }
            }
        }
        return f2399a;
    }

    public OkHttpClient b() {
        return this.f2400b;
    }
}
