package com.oppo.camera.o;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.appcompat.app.c;
import com.oppo.camera.d;

/* compiled from: NavigateUtils */
public class a {
    private static String a(Context context, Intent intent) {
        Context context2;
        if (!(context == null || intent == null)) {
            int intExtra = intent.getIntExtra("navigate_title_id", 0);
            d.b("NavigateUtils", "getContentDescriptionById(), id: " + intExtra);
            if (intExtra != 0) {
                String stringExtra = intent.getStringExtra("navigate_parent_package");
                if (TextUtils.isEmpty(stringExtra) || stringExtra.equals(context.getPackageName())) {
                    return context.getResources().getString(intExtra);
                }
                try {
                    context2 = context.createPackageContext(stringExtra, 3);
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    context2 = null;
                }
                if (context2 != null) {
                    return context2.getResources().getString(intExtra);
                }
            }
        }
        return null;
    }

    public static void a(c cVar, Intent intent, String str) {
        if (intent == null || cVar == null) {
            d.c("NavigateUtils", "setNavigateTitle, intent or action bar is null");
            return;
        }
        String stringExtra = intent.getStringExtra("navigate_title_text");
        if (TextUtils.isEmpty(stringExtra)) {
            stringExtra = a(cVar, intent);
        }
        d.c("NavigateUtils", "setNavigateTitle, contentDescription: " + stringExtra);
        if (!TextUtils.isEmpty(stringExtra)) {
            cVar.setTitle(stringExtra);
        } else {
            cVar.setTitle(str);
        }
    }
}
