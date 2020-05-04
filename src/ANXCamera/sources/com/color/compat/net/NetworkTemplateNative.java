package com.color.compat.net;

import android.util.Log;
import com.color.inner.net.NetworkTemplateWrapper;

public class NetworkTemplateNative {
    private static final String TAG = "NetworkTemplateNative";
    NetworkTemplateWrapper mNetworkTemplateWrapper;

    public NetworkTemplateNative(NetworkTemplateWrapper networkTemplateWrapper) {
        this.mNetworkTemplateWrapper = networkTemplateWrapper;
    }

    public static NetworkTemplateNative buildTemplateMobileAll(String str) {
        try {
            return new NetworkTemplateNative(NetworkTemplateWrapper.buildTemplateMobileAll(str));
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
