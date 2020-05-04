package com.oppo.camera.l;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.UriPermission;
import android.net.Uri;
import android.os.Environment;
import android.os.storage.StorageVolume;
import android.provider.DocumentsContract;
import com.color.compat.os.UserHandleNative;
import com.color.compat.os.storage.StorageManagerNative;
import com.color.compat.os.storage.StorageVolumeNative;
import com.oppo.camera.v;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;

/* compiled from: DocumentUtil */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f2242a = 101;

    /* renamed from: b  reason: collision with root package name */
    public static String f2243b = "text/plain";
    public static String c = "image/jpeg";
    public static String d = "image/png";
    public static String e = "application/zip";
    public static String f = "application/octet-stream";
    public static String g = "audio/mpeg";
    private static Uri h;
    private static Context i;
    private static C0061a j;

    /* renamed from: com.oppo.camera.l.a$a  reason: collision with other inner class name */
    /* compiled from: DocumentUtil */
    public interface C0061a {
        void a();

        void b();
    }

    public static OutputStream a(String str, String str2) throws FileNotFoundException {
        if (c(str, str2)) {
            return g(str) ? i.getContentResolver().openOutputStream(h(str)) : new FileOutputStream(str);
        }
        return null;
    }

    public static void a(Context context, C0061a aVar) {
        Uri uri;
        i = context.getApplicationContext();
        if (!d()) {
            StorageVolume c2 = c();
            if (c2 != null) {
                String uuid = c2.getUuid();
                Iterator<UriPermission> it = context.getContentResolver().getPersistedUriPermissions().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        uri = null;
                        break;
                    }
                    UriPermission next = it.next();
                    if (next.getUri().toString().contains(uuid)) {
                        uri = next.getUri();
                        break;
                    }
                }
                if (uri != null) {
                    h = uri;
                } else if (aVar != null && (context instanceof Activity)) {
                    j = aVar;
                    ((Activity) context).startActivityForResult(c2.createAccessIntent((String) null), f2242a);
                }
            }
        }
    }

    public static void a(Intent intent) {
        Context context = i;
        if (context != null) {
            context.getContentResolver().takePersistableUriPermission(intent.getData(), 3);
            h = intent.getData();
            j.a();
        }
    }

    public static boolean a() {
        if (v.f2995b == null) {
            return false;
        }
        return f(v.f2995b);
    }

    public static boolean a(String str) {
        return new File(str).exists();
    }

    public static boolean a(String str, String str2, byte[] bArr) {
        new File(str);
        String str3 = "temp_" + r0.getName();
        String str4 = r0.getParent() + File.separator + str3;
        if (b(str4, str2, bArr)) {
            return b(str4, str);
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0022, code lost:
        r5 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0023, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0027, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0028, code lost:
        r3 = r1;
        r1 = r5;
        r5 = r3;
     */
    public static byte[] a(String str, byte[] bArr) {
        Throwable th;
        Throwable th2;
        try {
            InputStream e2 = e(str);
            int available = e2.available();
            if (bArr == null || bArr.length < available) {
                bArr = new byte[available];
            }
            if (available == e2.read(bArr)) {
                if (e2 != null) {
                    e2.close();
                }
                return bArr;
            }
            if (e2 != null) {
                e2.close();
            }
            return null;
            if (e2 != null) {
                if (th2 != null) {
                    try {
                        e2.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                } else {
                    e2.close();
                }
            }
            throw th;
            throw th;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static void b() {
        j.b();
    }

    public static boolean b(String str) {
        return new File(str).isDirectory();
    }

    public static boolean b(String str, String str2) {
        if ((g(str) && !g(str2)) || (!g(str) && g(str2))) {
            return false;
        }
        if (a(str2) && !c(str2)) {
            return false;
        }
        if (!g(str2)) {
            return new File(str).renameTo(new File(str2));
        }
        try {
            DocumentsContract.renameDocument(i.getContentResolver(), h(str), new File(str2).getName());
            return true;
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean b(String str, String str2, byte[] bArr) {
        OutputStream a2;
        if (bArr == null) {
            return false;
        }
        try {
            a2 = a(str, str2);
            if (a2 != null) {
                a2.write(bArr);
                if (a2 != null) {
                    a2.close();
                }
                return true;
            }
            if (a2 != null) {
                a2.close();
            }
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        } catch (Throwable th) {
            r2.addSuppressed(th);
        }
        throw th;
    }

    private static StorageVolume c() {
        if (i == null) {
            return null;
        }
        StorageVolume[] volumeList = StorageManagerNative.getVolumeList(UserHandleNative.myUserId(), 0);
        if (volumeList == null) {
            return null;
        }
        for (StorageVolume storageVolume : volumeList) {
            if ("mounted".equalsIgnoreCase(storageVolume.getState()) && StorageVolumeNative.getPath(storageVolume) != null && Environment.isExternalStorageRemovable(new File(StorageVolumeNative.getPath(storageVolume)))) {
                return storageVolume;
            }
        }
        return null;
    }

    public static boolean c(String str) {
        if (!a(str)) {
            return true;
        }
        if (!g(str)) {
            return new File(str).delete();
        }
        try {
            DocumentsContract.deleteDocument(i.getContentResolver(), h(str));
            return true;
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean c(String str, String str2) {
        if (a(str)) {
            return true;
        }
        int lastIndexOf = str.lastIndexOf(File.separator);
        String substring = str.substring(0, lastIndexOf);
        if (g(str)) {
            if (i(substring)) {
                try {
                    DocumentsContract.createDocument(i.getContentResolver(), h(substring), str2, str.substring(lastIndexOf + 1));
                    return true;
                } catch (FileNotFoundException e2) {
                    e2.printStackTrace();
                }
            }
            return false;
        }
        File file = new File(substring);
        if (!file.exists() && !file.mkdirs()) {
            return false;
        }
        try {
            return new File(str).createNewFile();
        } catch (IOException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    private static boolean d() {
        return true;
    }

    public static byte[] d(String str) {
        if (i == null) {
            return null;
        }
        return a(str, (byte[]) null);
    }

    public static InputStream e(String str) throws FileNotFoundException {
        return g(str) ? i.getContentResolver().openInputStream(h(str)) : new FileInputStream(str);
    }

    public static boolean f(String str) {
        return a(str) ? b(str) : g(str) ? i(str) : new File(str).mkdirs();
    }

    private static boolean g(String str) {
        return false;
    }

    private static Uri h(String str) {
        String str2;
        if (!a() || !g(str)) {
            return null;
        }
        String substring = str.substring(str.indexOf(File.separator, 1) + 1);
        if (substring.contains(File.separator)) {
            str2 = substring.replaceFirst(File.separator, ":");
        } else {
            str2 = substring + ":";
        }
        return DocumentsContract.buildDocumentUriUsingTree(h, str2);
    }

    private static boolean i(String str) {
        if (a(str)) {
            return b(str);
        }
        int lastIndexOf = str.lastIndexOf("/");
        String substring = str.substring(0, lastIndexOf);
        if (i(substring)) {
            try {
                DocumentsContract.createDocument(i.getContentResolver(), h(substring), "vnd.android.document/directory", str.substring(lastIndexOf + 1));
                return true;
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }
}
