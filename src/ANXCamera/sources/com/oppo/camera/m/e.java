package com.oppo.camera.m;

import android.app.Activity;
import com.oppo.camera.d;
import com.oppo.camera.ui.c;

/* compiled from: SLVModeFactory */
public class e {
    public static a a(String str, Activity activity, c cVar) {
        d.a("SLVModeFactory", "getSLVFpsMode fpsMode: " + str);
        if ("120FPS".equals(str)) {
            return new b(activity, cVar);
        }
        if ("240FPS".equals(str)) {
            return new c(activity, cVar);
        }
        if ("960FPS".equals(str)) {
            return new d(activity, cVar);
        }
        throw new Error("Invalid fpsMode " + str);
    }

    public static String a(String str) {
        String str2 = "video_size_720p";
        if ("120FPS".equals(str) || (!"240FPS".equals(str) && !"960FPS".equals(str))) {
            str2 = "video_size_1080p";
        }
        d.a("SLVModeFactory", "getVideoSizeConfig fpsMode: " + str + " videoSize: " + str2);
        return str2;
    }
}
