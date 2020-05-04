package com.oppo.camera;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.oppo.camera.Ipa.ImageProcessService;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.e.a;
import com.oppo.camera.o.d;
import java.util.Stack;

public class MyApplication extends Application {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1810a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static Stack<Activity> f1811b = new Stack<>();
    private static h d = new h();
    /* access modifiers changed from: private */
    public ConditionVariable c = new ConditionVariable();

    public static h a() {
        return d;
    }

    public static boolean b() {
        return f1810a;
    }

    public static void c() {
        d.a("MyApplication", "finishActivities E");
        while (!f1811b.isEmpty()) {
            Activity pop = f1811b.pop();
            d.a("MyApplication", "finishActivities: activity: " + pop);
            if (!pop.isFinishing()) {
                pop.finish();
            }
        }
        d.a("MyApplication", "finishActivities X");
    }

    private void f() {
        registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
            public void onActivityCreated(Activity activity, Bundle bundle) {
                d.a("MyApplication", "onActivityCreated, activity: " + activity);
                MyApplication.f1811b.push(activity);
            }

            public void onActivityDestroyed(Activity activity) {
                d.a("MyApplication", "onActivityDestroyed, activity: " + activity);
                if (MyApplication.f1811b.contains(activity)) {
                    MyApplication.f1811b.remove(activity);
                }
            }

            public void onActivityPaused(Activity activity) {
            }

            public void onActivityResumed(Activity activity) {
            }

            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            public void onActivityStarted(Activity activity) {
            }

            public void onActivityStopped(Activity activity) {
            }
        });
    }

    private void g() {
        try {
            startForegroundService(new Intent(this, ImageProcessService.class));
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(d.g(context));
    }

    public void d() {
        this.c.block();
        d.a("MyApplication", "checkPreInitStatus X");
    }

    public void onCreate() {
        super.onCreate();
        d.c(getApplicationContext());
        d.g(getApplicationContext());
        d.a(new Runnable() {
            public void run() {
                d.a(MyApplication.this.getApplicationContext());
                a.a(MyApplication.this.getApplicationContext());
                CameraConfig.initialize(a.a(0));
                MyApplication.this.c.open();
                d.b(MyApplication.this.getApplicationContext());
            }
        }, "Camera Initialize");
        g();
        f();
    }

    public void onTerminate() {
        d.d();
        d.a();
        super.onTerminate();
    }
}
