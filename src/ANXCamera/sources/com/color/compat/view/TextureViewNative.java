package com.color.compat.view;

import android.util.Log;
import android.view.TextureView;
import com.color.inner.view.TextureViewWrapper;

public class TextureViewNative {
    private static final String TAG = "TextureViewNative";

    private TextureViewNative() {
    }

    public static void setCallBackSizeChangeWhenLayerUpdate(TextureView textureView, boolean z) {
        try {
            TextureViewWrapper.setCallBackSizeChangeWhenLayerUpdate(textureView, z);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
