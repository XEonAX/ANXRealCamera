package com.color.util;

public class UnSupportedApiVersionException extends Exception {
    public UnSupportedApiVersionException() {
    }

    public UnSupportedApiVersionException(String str) {
        super(str);
    }

    public UnSupportedApiVersionException(String str, Throwable th) {
        super(str, th);
    }

    public UnSupportedApiVersionException(Throwable th) {
        super(th);
    }
}
