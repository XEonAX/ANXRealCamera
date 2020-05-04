package com.oppo.statistics.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class GzipUtil {
    private static final int IO_BUF_SIZE = 1024;

    public static byte[] compress(String str) {
        GZIPOutputStream gZIPOutputStream;
        IOException e;
        if (str == null || str.length() == 0) {
            return "".getBytes();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        try {
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = byteArrayInputStream.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream.write(bArr, 0, read);
                        gZIPOutputStream.flush();
                    } else {
                        try {
                            break;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                byteArrayInputStream.close();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
            } catch (IOException e3) {
                e = e3;
                try {
                    LogUtil.e((Exception) e);
                    byteArrayInputStream.close();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                } catch (Throwable th) {
                    th = th;
                    try {
                        byteArrayInputStream.close();
                        gZIPOutputStream.close();
                        byteArrayOutputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    throw th;
                }
            }
        } catch (IOException e5) {
            IOException iOException = e5;
            gZIPOutputStream = null;
            e = iOException;
            LogUtil.e((Exception) e);
            byteArrayInputStream.close();
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            Throwable th3 = th2;
            gZIPOutputStream = null;
            th = th3;
            byteArrayInputStream.close();
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String uncompress(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        IOException e;
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            try {
                byte[] bArr2 = new byte[1024];
                while (true) {
                    int read = gZIPInputStream.read(bArr2);
                    if (read > 0) {
                        byteArrayOutputStream.write(bArr2, 0, read);
                        byteArrayOutputStream.flush();
                    } else {
                        try {
                            break;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                byteArrayInputStream.close();
                gZIPInputStream.close();
                byteArrayOutputStream.close();
            } catch (IOException e3) {
                e = e3;
                try {
                    LogUtil.e((Exception) e);
                    byteArrayInputStream.close();
                    gZIPInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toString();
                } catch (Throwable th) {
                    th = th;
                    try {
                        byteArrayInputStream.close();
                        gZIPInputStream.close();
                        byteArrayOutputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    throw th;
                }
            }
        } catch (IOException e5) {
            IOException iOException = e5;
            gZIPInputStream = null;
            e = iOException;
            LogUtil.e((Exception) e);
            byteArrayInputStream.close();
            gZIPInputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toString();
        } catch (Throwable th2) {
            Throwable th3 = th2;
            gZIPInputStream = null;
            th = th3;
            byteArrayInputStream.close();
            gZIPInputStream.close();
            byteArrayOutputStream.close();
            throw th;
        }
        return byteArrayOutputStream.toString();
    }
}
