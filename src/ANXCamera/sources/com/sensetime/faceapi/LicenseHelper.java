package com.sensetime.faceapi;

public class LicenseHelper {
    public static int initLicense(String str) {
        return FaceLibrary.initLiscenceStr(str);
    }

    public static int initLicense(byte[] bArr) {
        return FaceLibrary.initLiscence(bArr);
    }
}
