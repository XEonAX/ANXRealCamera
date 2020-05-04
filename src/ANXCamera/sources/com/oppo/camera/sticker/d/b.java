package com.oppo.camera.sticker.d;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.color.compat.os.FileUtilsNative;
import com.oppo.camera.d;
import com.oppo.camera.sticker.provider.FileProvider;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: FileUtils */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2406a = (File.separator + "sticker");

    /* renamed from: b  reason: collision with root package name */
    public static final String f2407b = (File.separator + "category");
    public static final String c = (File.separator + "material");
    public static final String d = (File.separator + "multi");
    public static final String e = (File.separator + "animoji");
    public static final String f = (File.separator + "icon");
    public static final String g = (f2406a + f2407b);
    public static final String h = (f2406a + c);
    public static final String i = (h + d);
    public static final String j = (h + e);
    public static final String k = (f2406a + File.separator + "tmp");
    public static final String l;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(f2406a);
        sb.append(f);
        l = sb.toString();
    }

    public static synchronized String a(Context context, String str, String str2) {
        String str3;
        synchronized (b.class) {
            str3 = context.getFilesDir() + str + File.separator + str2;
            File parentFile = new File(str3).getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                d.d("FileUtils", "getFileSavePath, mkdirs fail! filePath: " + str3);
            }
        }
        return str3;
    }

    public static String a(String str) {
        String[] split = str.split("/");
        return (split == null || split.length <= 0) ? str : split[split.length - 1];
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [java.lang.String, java.io.InputStream] */
    public static String a(ZipFile zipFile, ZipEntry zipEntry) throws Exception {
        InputStream inputStream = 0;
        if (zipFile == null || zipEntry == null) {
            d.d("FileUtils", "getFileContentFromZipEntry null parameter! zipFile: " + zipFile);
            return inputStream;
        }
        try {
            inputStream = zipFile.getInputStream(zipEntry);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            String str = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            return str;
        } finally {
            if (inputStream != 0) {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static boolean a(Context context, String str) {
        try {
            Uri parse = Uri.parse(str);
            if (parse == null) {
                return false;
            }
            return a(FileProvider.a(context, parse));
        } catch (Exception e2) {
            d.d("FileUtils", "deleteFile, exception: " + e2);
            return false;
        }
    }

    public static synchronized boolean a(File file) {
        boolean z;
        synchronized (b.class) {
            if (file != null) {
                z = !file.exists() || file.delete();
            } else {
                throw new IllegalArgumentException("deleteExistFile, file is null!");
            }
        }
        return z;
    }

    public static boolean a(File file, File file2) {
        if (file == null || file2 == null) {
            d.d("FileUtils", "copyFile, srcFile or dest file is null! srcFile: " + file);
            return false;
        }
        FileUtilsNative.copyFileOrThrow(file, file2);
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:104:0x00ff A[SYNTHETIC, Splitter:B:104:0x00ff] */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x0116 A[SYNTHETIC, Splitter:B:116:0x0116] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x00e9 A[SYNTHETIC, Splitter:B:92:0x00e9] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:89:0x00e4=Splitter:B:89:0x00e4, B:101:0x00fa=Splitter:B:101:0x00fa} */
    public static boolean a(InputStream inputStream, String str, boolean z, boolean z2) throws IOException {
        if (inputStream != null) {
            FileOutputStream fileOutputStream = null;
            try {
                if (!TextUtils.isEmpty(str)) {
                    File file = new File(str);
                    if (!file.exists()) {
                        File parentFile = file.getParentFile();
                        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                            d.d("FileUtils", "saveInputStream, mkdirs fail!, replace: " + z);
                            if (z2 && inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                            return false;
                        } else if (!file.createNewFile()) {
                            d.d("FileUtils", "saveInputStream, createNewFile fail!, replace: " + z);
                        }
                    } else if (!z) {
                        d.b("FileUtils", "saveInputStream, file is exist!");
                        if (z2 && inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        return false;
                    } else if (!file.delete()) {
                        d.d("FileUtils", "saveInputStream, delete exist file fail!");
                        if (z2 && inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        return false;
                    } else if (!file.createNewFile()) {
                        d.d("FileUtils", "saveInputStream, createNewFile fail!");
                        if (z2 && inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        return false;
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = inputStream.read(bArr, 0, bArr.length);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                        if (z2 && inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        return true;
                    } catch (FileNotFoundException e8) {
                        fileOutputStream = fileOutputStream2;
                        e = e8;
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                            }
                        }
                        if (z2 && inputStream != null) {
                            inputStream.close();
                        }
                        return false;
                    } catch (IOException e10) {
                        fileOutputStream = fileOutputStream2;
                        e = e10;
                        try {
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                }
                            }
                            if (z2 && inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                            }
                            if (z2 && inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e14) {
                                    e14.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        fileOutputStream = fileOutputStream2;
                        th = th2;
                        if (fileOutputStream != null) {
                        }
                        inputStream.close();
                        throw th;
                    }
                }
            } catch (FileNotFoundException e15) {
                e = e15;
                e.printStackTrace();
                if (fileOutputStream != null) {
                }
                inputStream.close();
                return false;
            } catch (IOException e16) {
                e = e16;
                e.printStackTrace();
                if (fileOutputStream != null) {
                }
                inputStream.close();
                return false;
            }
        }
        if (z2 && inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e17) {
                e17.printStackTrace();
            }
        }
        return false;
    }

    public static boolean a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return b(new File(str), new File(str2));
        }
        d.d("FileUtils", "cutFile, srcFilePath or desFilePath is empty! srcFilePath: " + str);
        return false;
    }

    public static boolean b(File file, File file2) {
        if (!a(file, file2)) {
            return false;
        }
        if (file.delete()) {
            return true;
        }
        d.d("FileUtils", "cutFile, delete srcFile fail! srcFile: " + file);
        return true;
    }

    public static synchronized boolean b(String str) {
        synchronized (b.class) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            boolean a2 = a(new File(str));
            return a2;
        }
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            d.d("FileUtils", "deleteAllFilesFromPath, empty path");
            return false;
        }
        File file = new File(str);
        if (file.isFile()) {
            d.d("FileUtils", "deleteAllFilesFromPath, is a file, not path");
            return false;
        }
        File[] listFiles = file.listFiles();
        if (!(listFiles == null || listFiles.length == 0)) {
            for (File file2 : listFiles) {
                if (!file2.isDirectory()) {
                    d.b("FileUtils", "deleteAllFilesFromPath, file: " + file2.getAbsolutePath());
                    if (!file2.delete()) {
                        d.d("FileUtils", "deleteAllFilesFromPath, delete file fail! path: " + file2.getAbsolutePath());
                        return false;
                    }
                } else if (!file2.delete()) {
                    c(file2.getAbsolutePath());
                }
            }
        }
        return true;
    }
}
