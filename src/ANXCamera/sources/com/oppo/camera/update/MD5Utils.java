package com.oppo.camera.update;

import com.oppo.camera.d;
import com.oppo.camera.l.a;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final String TAG = "MD5Utils";

    public static String getMD5(String str) {
        try {
            byte[] bytes = str.getBytes();
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bytes);
            return toHexStringMd5(instance.digest());
        } catch (Exception e) {
            d.e(TAG, e.getMessage());
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002a, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002b, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x002f, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0030, code lost:
        r5 = r2;
        r2 = r1;
        r1 = r5;
     */
    public static String md5Sum(String str) {
        Throwable th;
        Throwable th2;
        try {
            InputStream e = a.e(str);
            if (e != null) {
                byte[] bArr = new byte[8192];
                MessageDigest instance = MessageDigest.getInstance("MD5");
                while (true) {
                    int read = e.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    instance.update(bArr, 0, read);
                }
                String hexStringMd5 = toHexStringMd5(instance.digest());
                if (e != null) {
                    e.close();
                }
                return hexStringMd5;
            }
            if (e != null) {
                e.close();
            }
            return null;
            if (e != null) {
                if (th != null) {
                    try {
                        e.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                } else {
                    e.close();
                }
            }
            throw th2;
            throw th2;
        } catch (IOException | NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
    }

    public static String toHexStringMd5(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[(r0 * 2)];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(b2 >>> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }
}
