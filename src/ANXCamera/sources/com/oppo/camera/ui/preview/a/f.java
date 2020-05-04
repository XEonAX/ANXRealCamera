package com.oppo.camera.ui.preview.a;

import android.content.Context;
import java.io.File;
import java.io.IOException;

/* compiled from: ImageBeautyTools */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static File f2897a;

    public static int a(Context context) {
        if (f2897a == null) {
            f2897a = new File(context.getFilesDir() + File.separator + "register.info");
        }
        return f2897a.exists() ? 1 : 0;
    }

    public static boolean b(Context context) {
        if (f2897a == null) {
            f2897a = new File(context.getFilesDir() + File.separator + "register.info");
        }
        if (f2897a.exists()) {
            return f2897a.delete();
        }
        return true;
    }

    public static boolean c(Context context) {
        if (f2897a == null) {
            f2897a = new File(context.getFilesDir() + File.separator + "register.info");
        }
        if (f2897a.exists()) {
            return true;
        }
        try {
            return f2897a.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
