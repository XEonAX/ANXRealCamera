package com.oppo.camera.ui.menu.setting.a;

import android.app.Activity;

/* compiled from: TitleDelegate */
public class c {
    public static void a(Activity activity) {
        String[] split = activity.getTitle().toString().split("\\/");
        activity.setTitle(split[split.length - 1]);
    }
}
