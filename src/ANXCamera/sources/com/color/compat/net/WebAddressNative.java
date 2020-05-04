package com.color.compat.net;

import com.color.inner.net.WebAddressWrapper;

public class WebAddressNative {
    private WebAddressWrapper mWebAddressWrapper;

    private WebAddressNative() {
    }

    public WebAddressNative(String str) {
        this.mWebAddressWrapper = new WebAddressWrapper(str);
    }

    public String getHost() {
        return this.mWebAddressWrapper.getHost();
    }

    public String getPath() {
        return this.mWebAddressWrapper.getPath();
    }

    public String getScheme() {
        return this.mWebAddressWrapper.getScheme();
    }

    public void setPath(String str) {
        this.mWebAddressWrapper.setPath(str);
    }

    public String toString() {
        return this.mWebAddressWrapper.toString();
    }
}
