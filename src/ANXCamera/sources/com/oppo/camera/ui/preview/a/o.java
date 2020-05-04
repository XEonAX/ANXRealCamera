package com.oppo.camera.ui.preview.a;

import android.content.Context;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;

/* compiled from: TexturePreviewFactory */
public class o {
    public static n a(Context context, int i) {
        if (i == 1) {
            return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_ARCSOFT_SINGLE_BOKEH) ? new k(context) : new b(context);
        }
        if (i == 2) {
            return new e(context);
        }
        if (i == 4) {
            return new c(context);
        }
        if (i == 8) {
            return new m(context);
        }
        if (i != 16) {
            return null;
        }
        return new a(context);
    }
}
