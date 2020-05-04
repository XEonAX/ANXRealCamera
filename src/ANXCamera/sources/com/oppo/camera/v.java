package com.oppo.camera;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.location.Location;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Size;
import com.android.providers.downloads.Downloads;
import com.color.compat.os.storage.StorageVolumeNative;
import com.oppo.camera.o.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.ui.control.e;
import com.oppo.exif.OppoExifInterface;
import com.oppo.exif.OppoExifTag;
import com.oppo.os.OppoUsbEnvironment;
import com.oppo.providers.downloads.DownloadManager;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Locale;
import java.util.Random;

/* compiled from: Storage */
public class v implements c {

    /* renamed from: a  reason: collision with root package name */
    public static String f2994a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f2995b = null;
    public static String g = null;
    public static String h = null;
    public static String i = null;
    public static String j = null;
    public static String k = null;
    public static String l = null;
    public static String m = null;
    public static String n = null;
    public static String o = null;
    public static String p = null;
    public static String q = "uninitied";
    public static int r;
    public static int s;
    public static boolean t;
    public static boolean u;
    private static Context v;
    private static String w;

    /* compiled from: Storage */
    public static class a {
        public String A = null;
        public String B = null;
        public long C = 0;
        public boolean D = false;
        public boolean E = false;

        /* renamed from: a  reason: collision with root package name */
        public ContentResolver f2996a = null;

        /* renamed from: b  reason: collision with root package name */
        public Uri f2997b = null;
        public Location c = null;
        public byte[] d = null;
        public byte[] e = null;
        public Bitmap f = null;
        public String g = null;
        public String h = null;
        public String i = null;
        public String j = null;
        public String k = null;
        public long l = 0;
        public long m = -1;
        public int n = -1;
        public int o = 0;
        public int p = 0;
        public int q = 0;
        public int r = 0;
        public int s = 0;
        public boolean t = false;
        public boolean u = false;
        public e.a v = null;
        public boolean w = false;
        public boolean x = false;
        public boolean y = false;
        public String z = null;
    }

    public static int a(String str) {
        d.a("Storage", "getStorageStatus, storagePlace: " + str);
        if (str == null || "invalid".equals(str) || "uninitied".equals(str)) {
            return 2;
        }
        long b2 = b(str);
        d.a("Storage", "remaining: " + b2);
        if (-2 == b2) {
            return 3;
        }
        return 52428800 >= b2 ? 1 : 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0028 A[SYNTHETIC, Splitter:B:18:0x0028] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x006b A[SYNTHETIC, Splitter:B:34:0x006b] */
    private static int a(byte[] bArr) {
        String str;
        String substring;
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
            try {
                str = new ExifInterface(byteArrayInputStream2).getAttribute("UserComment");
                try {
                    byteArrayInputStream2.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (IOException e2) {
                e = e2;
                byteArrayInputStream = byteArrayInputStream2;
                try {
                    e.printStackTrace();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    str = "";
                    if (str != null) {
                    }
                    d.a("Storage", "readExif, exif: " + substring);
                    return Integer.parseInt(substring);
                } catch (Throwable th) {
                    th = th;
                    byteArrayInputStream2 = byteArrayInputStream;
                    if (byteArrayInputStream2 != null) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (byteArrayInputStream2 != null) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            e.printStackTrace();
            if (byteArrayInputStream != null) {
            }
            str = "";
            if (str != null) {
            }
            d.a("Storage", "readExif, exif: " + substring);
            return Integer.parseInt(substring);
        }
        substring = (str != null || 5 > str.length()) ? "0" : str.substring(5);
        d.a("Storage", "readExif, exif: " + substring);
        try {
            return Integer.parseInt(substring);
        } catch (NumberFormatException e6) {
            d.e("Storage", "readExif, exif not Integer, Error!!!!!!!!!");
            e6.printStackTrace();
            return 0;
        }
    }

    public static Uri a() {
        if ("on".equals(q)) {
            String str = i;
            if (str != null) {
                return MediaStore.Video.Media.getContentUri(str);
            }
        }
        return MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
    }

    private static StorageVolume a(StorageManager storageManager, File file) {
        try {
            Method declaredMethod = storageManager.getClass().getDeclaredMethod("getStorageVolume", new Class[]{File.class});
            declaredMethod.setAccessible(true);
            return (StorageVolume) declaredMethod.invoke(storageManager, new Object[]{file});
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Size a(ExifInterface exifInterface) {
        if (exifInterface == null) {
            return null;
        }
        Size size = new Size(exifInterface.getAttributeInt("ImageWidth", 0), exifInterface.getAttributeInt("ImageLength", 0));
        if (size.getWidth() <= 0 || size.getHeight() <= 0) {
            return null;
        }
        return size;
    }

    /* JADX WARNING: type inference failed for: r9v0, types: [com.oppo.camera.v$a, java.lang.String, android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r9v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r9v2 */
    /* JADX WARNING: type inference failed for: r9v4 */
    /* JADX WARNING: type inference failed for: r9v5 */
    /* JADX WARNING: type inference failed for: r9v6 */
    /* JADX WARNING: type inference failed for: r9v7 */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x0327, code lost:
        if (r1.n != 1) goto L_0x032a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x0329, code lost:
        r4 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x032a, code lost:
        r1.x = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x032c, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x02f6, code lost:
        if (r9 != 0) goto L_0x0312;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0310, code lost:
        if (r9 == 0) goto L_0x0315;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x0312, code lost:
        r9.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x0315, code lost:
        r1.h = r8;
        r1.w = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x031e, code lost:
        if (".jpg".equals(r11) == false) goto L_0x032a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x0323, code lost:
        if (r1.n == -1) goto L_0x0329;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    public static a a(a aVar) {
        String str;
        String str2;
        String str3;
        a aVar2 = aVar;
        StringBuilder sb = new StringBuilder();
        sb.append("addImage, width: ");
        sb.append(aVar2.o);
        sb.append(", height: ");
        sb.append(aVar2.p);
        sb.append(", jpegName: ");
        sb.append(aVar2.h);
        sb.append(", mBurstShotFlagId: ");
        sb.append(aVar2.m);
        sb.append(", mCshotPath: ");
        sb.append(aVar2.k);
        sb.append(", cameraId: ");
        sb.append(aVar2.q);
        sb.append(", format: ");
        sb.append(aVar2.i);
        sb.append(", picture.mMarkerNote: ");
        boolean z = false;
        sb.append(aVar2.A == null);
        sb.append(", picture.mRecBurstNum: ");
        sb.append(aVar2.n);
        d.b("Storage", sb.toString());
        ? r9 = 0;
        if (aVar2.n > -1 && -1 == aVar2.m) {
            return r9;
        }
        String a2 = (aVar2.n <= -1 || aVar2.g == null) ? d.a(aVar2.l) : aVar2.g;
        String str4 = c.a_.equals(q) ? l : f2995b;
        if (aVar2.i == null || aVar2.i.equalsIgnoreCase("jpeg")) {
            str = ".jpg";
        } else if (!aVar2.i.equalsIgnoreCase("raw")) {
            return r9;
        } else {
            str = ".dng";
        }
        if (aVar2.m > -1) {
            str2 = aVar2.k + '/' + a2 + str;
            if (!new File(aVar2.k).exists()) {
                com.oppo.camera.l.a.f(aVar2.k);
            }
        } else {
            str2 = str4 + '/' + a2 + str;
        }
        if ("raw".equalsIgnoreCase(aVar2.i)) {
            w = a2;
        } else if (w != null) {
            str2 = str4 + '/' + w + str;
            w = r9;
        }
        if (aVar2.y) {
            a(str2, aVar2);
        } else {
            d.b("Storage", "addImage, path: " + str2);
            com.oppo.camera.l.a.b(str2, com.oppo.camera.l.a.c, aVar2.d);
            b(str2, aVar2);
        }
        if ("raw".equalsIgnoreCase(aVar2.i)) {
            return r9;
        }
        ExifInterface d = (aVar2.y || aVar2.A != null) ? d.d(str2) : d.a(aVar2.d);
        Size a3 = a(d);
        if (a3 != null) {
            aVar2.o = a3.getWidth();
            aVar2.p = a3.getHeight();
        }
        ContentValues contentValues = new ContentValues(12);
        contentValues.put("title", a2);
        contentValues.put("_display_name", a2 + str);
        contentValues.put("datetaken", Long.valueOf(aVar2.l));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put(CameraStatisticsUtil.PORTRAIT_ORIENTATION, Integer.valueOf(aVar2.r));
        contentValues.put(Downloads.Impl._DATA, str2);
        contentValues.put(CameraStatisticsUtil.IMAGE_WIDTH, Integer.valueOf(aVar2.o));
        contentValues.put(CameraStatisticsUtil.IMAGE_HEIGHT, Integer.valueOf(aVar2.p));
        contentValues.put("_size", Integer.valueOf((int) new File(str2).length()));
        if (aVar2.y) {
            contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, Integer.valueOf(com.oppo.camera.f.a.a(aVar2.j, aVar2.q)));
        } else if (aVar2.d == null || aVar2.d.length <= 0) {
            contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, aVar2.z == null ? "0" : aVar2.z.substring(5));
        } else {
            contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, Integer.valueOf(a(aVar2.d)));
        }
        if (aVar2.m > -1) {
            contentValues.put("cshot_id", Long.valueOf(aVar2.m));
        } else {
            contentValues.put("cshot_id", 0);
        }
        Location a4 = d.a(d);
        if (a4 != null) {
            contentValues.put("latitude", Double.valueOf(a4.getLatitude()));
            contentValues.put("longitude", Double.valueOf(a4.getLongitude()));
        }
        try {
            aVar2.f2997b = aVar2.f2996a.insert(b(), contentValues);
            if (aVar2.f2997b == null) {
                Cursor query = aVar2.f2996a.query(b(), new String[]{DownloadManager.COLUMN_ID}, "_data = ?", new String[]{str2}, (String) null);
                r9 = query;
                if (query != null) {
                    boolean moveToFirst = query.moveToFirst();
                    r9 = query;
                    if (moveToFirst) {
                        aVar2.f2997b = ContentUris.withAppendedId(b(), (long) query.getInt(query.getColumnIndex(DownloadManager.COLUMN_ID)));
                        r9 = query;
                    }
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("addImage, uri: ");
            sb2.append(aVar2.f2997b);
            if (a4 != null) {
                str3 = ", lat: " + a4.getLatitude() + ", lon: " + a4.getLongitude();
            } else {
                str3 = "";
            }
            sb2.append(str3);
            sb2.append(", date: ");
            sb2.append(aVar2.l);
            d.b("Storage", sb2.toString());
            r9 = r9;
        } catch (Throwable th) {
            if (r9 != 0) {
                r9.close();
            }
            throw th;
        }
    }

    public static String a(String str, String str2) {
        String str3 = c.a_.equals(q) ? l : f2995b;
        if (!"".equals(str2)) {
            return str3 + '/' + str + "." + str2;
        }
        return str3 + '/' + "Cshot" + '/' + str;
    }

    public static void a(Context context) {
        d.b("Storage", "initializeStoragePath()");
        File externalSdDirectory = OppoUsbEnvironment.getExternalSdDirectory(context);
        boolean z = true;
        if (externalSdDirectory != null) {
            f2995b = externalSdDirectory.getAbsolutePath() + File.separator + context.getResources().getString(R.string.camera_image_bucket_name);
            h = externalSdDirectory.getAbsolutePath() + File.separator + context.getResources().getString(R.string.camera_video_bucket_name);
            i = externalSdDirectory.getAbsolutePath().substring(externalSdDirectory.getAbsolutePath().lastIndexOf(File.separator) + 1).toLowerCase();
        }
        l = OppoUsbEnvironment.getInternalSdDirectory(context).getAbsolutePath() + File.separator + context.getResources().getString(R.string.camera_image_bucket_name);
        n = OppoUsbEnvironment.getInternalSdDirectory(context).getAbsolutePath() + File.separator + context.getResources().getString(R.string.camera_video_bucket_name);
        p = OppoUsbEnvironment.getInternalSdDirectory(context).getAbsolutePath() + File.separator + context.getResources().getString(R.string.camera_post_bucket_name);
        if (!d.y()) {
            String str = f2995b;
            if (str != null) {
                f2994a = String.valueOf(str.toLowerCase().hashCode());
            }
            String str2 = h;
            if (str2 != null) {
                g = String.valueOf(str2.toLowerCase().hashCode());
            }
            k = String.valueOf(l.toLowerCase().hashCode());
            m = String.valueOf(n.toLowerCase().hashCode());
            o = String.valueOf(p.toLowerCase().hashCode());
        } else {
            String str3 = f2995b;
            if (str3 != null) {
                f2994a = String.valueOf(str3.toLowerCase(Locale.US).hashCode());
            }
            String str4 = h;
            if (str4 != null) {
                g = String.valueOf(str4.toLowerCase(Locale.US).hashCode());
            }
            k = String.valueOf(l.toLowerCase(Locale.US).hashCode());
            m = String.valueOf(n.toLowerCase(Locale.US).hashCode());
            o = String.valueOf(p.toLowerCase(Locale.US).hashCode());
        }
        v = context;
        if (g() > 8.0d) {
            z = false;
        }
        u = z;
    }

    public static void a(Uri uri) {
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && scheme.equalsIgnoreCase("file")) {
            String path = uri.getPath();
            if (path != null) {
                int lastIndexOf = path.lastIndexOf("/");
                if (lastIndexOf > 0) {
                    String substring = path.substring(0, lastIndexOf);
                    if (!TextUtils.isEmpty(substring) && !new File(substring).exists()) {
                        boolean f = com.oppo.camera.l.a.f(substring);
                        d.a("Storage", "ensurePathExist folder: " + substring + ", result: " + f);
                    }
                }
            }
        }
    }

    public static void a(Uri uri, ContentResolver contentResolver) {
        if (uri != null && contentResolver != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("media_id", Long.valueOf(ContentUris.parseId(uri)));
            if (contentResolver != null) {
                try {
                    contentResolver.insert(Uri.parse("content://com.oppo.gallery3d.albumsprovider/locked_pictures"), contentValues);
                } catch (Exception e) {
                    d.a("Storage", "addImageToGallery, err: ", (Throwable) e);
                }
            }
        }
    }

    public static void a(i iVar, String str) {
        t = d();
        u = g() <= 8.0d;
        d.a("Storage", "updateStoragePlace, before sStoragePlace: " + q + ", sStorageOverrideState: " + r + ", sbSmallEmmc: " + u + ", sbHasSDCard: " + t);
        r = 0;
        q = str;
        boolean equals = c.a_.equals(q);
        if (equals || f()) {
            s = a(q);
            int i2 = s;
            if (i2 == 1) {
                if (!equals) {
                    int a2 = a(c.a_);
                    if (1 == a2 || 2 == a2) {
                        r = 4;
                    } else if (a2 == 0) {
                        r = 3;
                    }
                } else if (t) {
                    int a3 = a("on");
                    if (1 == a3 || 2 == a3) {
                        r = 1;
                    } else if (a3 == 0) {
                        r = 2;
                    }
                } else {
                    r = 1;
                }
                q = "invalid";
            } else if (i2 == 2 || i2 == 3) {
                r = 5;
                q = "invalid";
                s = 3;
            }
            d.a("Storage", "updateStoragePlace, after sStoragePlace: " + q + ", sStorageOverrideState: " + r);
            return;
        }
        r = 5;
        q = "invalid";
        s = 3;
    }

    private static void a(String str, long j2) {
        d.a("Storage", "changeLastModified, path: " + str + ", date: " + j2);
        try {
            File file = new File(str);
            if (file.exists()) {
                file.setLastModified(j2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            d.e("Storage", "changeLastModified, exception");
        }
        d.a("Storage", "changeLastModified X");
    }

    private static void a(String str, a aVar) {
        try {
            OppoExifInterface oppoExifInterface = new OppoExifInterface();
            oppoExifInterface.readExif(aVar.d);
            oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_USER_COMMENT, OppoExifTag.EXIF_TAG_PREFIX.concat(String.valueOf(com.oppo.camera.f.a.a(aVar.j, aVar.q)))));
            oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_ORIENTATION, Integer.valueOf(aVar.r)));
            oppoExifInterface.addDateTimeStampTag(OppoExifInterface.TAG_DATE_TIME, aVar.l, Calendar.getInstance().getTimeZone());
            oppoExifInterface.addGpsDateTimeStampTag(aVar.l);
            if (aVar.c != null) {
                oppoExifInterface.addGpsTags(aVar.c.getLatitude(), aVar.c.getLongitude());
            }
            oppoExifInterface.writeExif(aVar.d, str);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static boolean a(int i2) {
        if (s != 0) {
            return false;
        }
        long b2 = b(q);
        long j2 = ((long) i2) * 3145728;
        if (52428800 < b2 - j2) {
            return true;
        }
        if (s == 0) {
            a((i) null, q);
        }
        d.a("Storage", "isEnoughStorage, remaining: " + b2 + ", queueStorage: " + j2 + ", imageQueueNum: " + i2 + ", sStorageStatus: " + s + ", sStorageOverrideState: " + r);
        return false;
    }

    public static boolean a(boolean z) {
        String internalSdState = OppoUsbEnvironment.getInternalSdState(v);
        d.a("Storage", "hasInternalStorage, requireWriteAccess: " + z + ", state: " + internalSdState);
        if (!"mounted".equals(internalSdState)) {
            return !z && "mounted_ro".equals(internalSdState);
        }
        if (z) {
            return h();
        }
        return true;
    }

    public static long b(Uri uri, ContentResolver contentResolver) {
        if (!(uri == null || contentResolver == null)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("media_id", Long.valueOf(ContentUris.parseId(uri)));
            try {
                return ContentUris.parseId(contentResolver.insert(Uri.parse("content://com.oppo.gallery3d.albumsprovider/locked_pictures"), contentValues));
            } catch (Exception e) {
                d.a("Storage", "addImageToGalleryReturnID, err: ", (Throwable) e);
            }
        }
        return -1;
    }

    public static long b(String str) {
        d.a("Storage", "getAvailableStorage, sContext: " + v + ", storagePlace: " + str);
        Context context = v;
        if (context == null) {
            return -2;
        }
        boolean z = false;
        String str2 = null;
        File internalSdDirectory = OppoUsbEnvironment.getInternalSdDirectory(context);
        if ("on".equals(str)) {
            internalSdDirectory = OppoUsbEnvironment.getExternalSdDirectory(v);
        }
        if (internalSdDirectory == null) {
            d.e("Storage", "getAvailableStorage, file is null");
            return -2;
        }
        if (c.a_.equals(str)) {
            str2 = internalSdDirectory.toString();
            z = a(true);
        } else if ("on".equals(str)) {
            str2 = internalSdDirectory.toString();
            z = b(true);
        }
        if (!z) {
            return -2;
        }
        d.a("Storage", "getAvailableStorage, dir: " + str2);
        try {
            StatFs statFs = new StatFs(str2);
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Exception e) {
            d.d("Storage", "Fail to access statfs", e);
            return -2;
        }
    }

    public static Uri b() {
        if ("on".equals(q)) {
            String str = i;
            if (str != null) {
                return MediaStore.Images.Media.getContentUri(str);
            }
        }
        return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }

    public static Uri b(a aVar) {
        String str;
        String str2;
        d.e("Storage", "newImage");
        String str3 = c.a_.equals(q) ? l : f2995b;
        Uri uri = null;
        if (str3 == null) {
            return null;
        }
        if (aVar.i == null || aVar.i.equalsIgnoreCase("jpeg")) {
            str = ".jpg";
        } else if (aVar.i.equalsIgnoreCase("raw")) {
            str = ".dng";
        } else {
            d.e("Storage", "newImage, Invalid pictureFormat: " + aVar.i);
            return null;
        }
        if (aVar.m > -1) {
            str2 = aVar.k + '/' + aVar.g + "_00_tmp" + ".jpg";
            if (!new File(aVar.k).exists()) {
                com.oppo.camera.l.a.f(aVar.k);
            }
        } else {
            str2 = str3 + '/' + aVar.g + "_tmp" + ".jpg";
        }
        if (!new File(str3).exists()) {
            com.oppo.camera.l.a.f(str3);
        }
        d.e("Storage", "newImage, createNewFile Done");
        ContentValues contentValues = new ContentValues(10);
        contentValues.put("title", aVar.g);
        contentValues.put("_display_name", aVar.g + str);
        contentValues.put("datetaken", Long.valueOf((aVar.l / 1000) * 1000));
        contentValues.put(Downloads.Impl._DATA, str2);
        contentValues.put(CameraStatisticsUtil.IMAGE_WIDTH, Integer.valueOf(aVar.o));
        contentValues.put(CameraStatisticsUtil.IMAGE_HEIGHT, Integer.valueOf(aVar.p));
        contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, aVar.z == null ? "0" : aVar.z.substring(5));
        if (aVar.m > -1) {
            contentValues.put("cshot_id", Long.valueOf(aVar.m));
        } else {
            contentValues.put("cshot_id", 0);
        }
        try {
            uri = aVar.f2996a.insert(b(), contentValues);
            d.b("Storage", "newImage, path: " + str2 + ", date: " + aVar.l + ", width: " + aVar.o + ", height: " + aVar.p + ", uri: " + uri);
        } catch (Throwable th) {
            d.e("Storage", "newImage, Failed to new image" + th);
        }
        a(uri, d.e().getContentResolver());
        return uri;
    }

    private static void b(String str, a aVar) {
        if (aVar != null && str != null && !str.isEmpty() && aVar.A != null && !aVar.A.isEmpty()) {
            try {
                OppoExifInterface oppoExifInterface = new OppoExifInterface();
                oppoExifInterface.readExif(aVar.d);
                oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_MAKER_NOTE, aVar.A));
                oppoExifInterface.writeExif(aVar.d, str);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static boolean b(boolean z) {
        String externalSdState = OppoUsbEnvironment.getExternalSdState(v);
        d.a("Storage", "hasStorage, state: " + externalSdState + ", requireWriteAccess: " + z);
        if (!"mounted".equals(externalSdState)) {
            return !z && "mounted_ro".equals(externalSdState);
        }
        if (!z) {
            return true;
        }
        boolean j2 = j();
        d.a("Storage", "hasStorage, writable: " + j2);
        if (j2 || "mounted_ro".equals(externalSdState) || i()) {
            return j2;
        }
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:0x034f, code lost:
        if (r6 != null) goto L_0x0351;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:?, code lost:
        r0 = r6.getString(r6.getColumnIndex(com.android.providers.downloads.Downloads.Impl._DATA));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:106:0x0372, code lost:
        com.oppo.camera.d.e("Storage", "updateImage, delete tmp file FAIL!");
        new java.io.File(r0).deleteOnExit();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x037e, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x0380, code lost:
        if (r6 != null) goto L_0x0382;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x0382, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0386, code lost:
        r0.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x038b, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:?, code lost:
        r0 = r6.getString(r6.getColumnIndex(com.android.providers.downloads.Downloads.Impl._DATA));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x03b0, code lost:
        com.oppo.camera.d.e("Storage", "updateImage, delete tmp file FAIL!");
        new java.io.File(r0).deleteOnExit();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x03bc, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x03bd, code lost:
        r0.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x013b, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x013c, code lost:
        r1 = r0;
        r6 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x0348, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0349, code lost:
        r6 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:?, code lost:
        com.oppo.camera.d.d("Storage", "updateImage, Failed to write image: ", r0);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x038f A[SYNTHETIC, Splitter:B:114:0x038f] */
    /* JADX WARNING: Removed duplicated region for block: B:127:0x03eb  */
    /* JADX WARNING: Removed duplicated region for block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x0348 A[ExcHandler: Exception (r0v63 'e' java.lang.Exception A[CUSTOM_DECLARE]), Splitter:B:32:0x0113] */
    public static a c(a aVar) {
        String str;
        Cursor cursor;
        String str2;
        long j2;
        Cursor cursor2;
        a aVar2 = aVar;
        d.b("Storage", "updateImage, title: " + aVar2.g + ", uri: " + aVar2.f2997b + ", mBurstShotFlagId: " + aVar2.m + ", mCshotPath: " + aVar2.k + ", mbNeedStoreImage: " + aVar2.t + ", mJpeg: " + aVar2.d);
        String str3 = c.a_.equals(q) ? l : f2995b;
        if (aVar2.i == null || aVar2.i.equalsIgnoreCase("jpeg")) {
            str = ".jpg";
        } else if (aVar2.i.equalsIgnoreCase("raw")) {
            str = ".dng";
        } else {
            d.e("Storage", "updateImage, Invalid pictureFormat: " + aVar2.i);
            return null;
        }
        try {
            cursor = aVar2.f2996a.query(aVar2.f2997b, (String[]) null, (String) null, (String[]) null, (String) null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        cursor.moveToFirst();
                        aVar2.g = cursor.getString(cursor.getColumnIndex("title"));
                    }
                } catch (Throwable th) {
                    th = th;
                    d.e("Storage", "updateImage, Failed to query uri: " + aVar2.f2997b + ", cursor: " + cursor + ", th: " + th);
                    if (cursor != null) {
                    }
                }
            }
            if (aVar2.m > -1) {
                str2 = aVar2.k + '/' + aVar2.g + str;
                if (!new File(aVar2.k).exists()) {
                    com.oppo.camera.l.a.f(aVar2.k);
                }
            } else {
                str2 = str3 + '/' + aVar2.g + str;
            }
            String str4 = str2;
            if (aVar2.y) {
                a(str4, aVar2);
            } else {
                try {
                    if (aVar2.t) {
                        d.b("Storage", "updateImage, path: " + str4);
                        com.oppo.camera.l.a.b(str4, com.oppo.camera.l.a.c, aVar2.d);
                        a(str4, aVar2.l);
                        b(str4, aVar2);
                    }
                    if (cursor != null) {
                        try {
                            String string = cursor.getString(cursor.getColumnIndex(Downloads.Impl._DATA));
                            if (new File(string).exists() && !com.oppo.camera.l.a.c(cursor.getString(cursor.getColumnIndex(Downloads.Impl._DATA)))) {
                                d.e("Storage", "updateImage, delete tmp file FAIL!");
                                new File(string).deleteOnExit();
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e2) {
                } catch (Throwable th2) {
                    th = th2;
                    Cursor cursor3 = cursor;
                    Throwable th3 = th;
                    if (cursor3 != null) {
                    }
                    throw th3;
                }
            }
            int i2 = aVar2.o;
            int i3 = aVar2.p;
            ExifInterface d = d.d(str4);
            Size a2 = a(d);
            if (a2 != null) {
                i2 = a2.getWidth();
                i3 = a2.getHeight();
            }
            ContentValues contentValues = new ContentValues(12);
            contentValues.put("title", aVar2.g);
            contentValues.put("_display_name", aVar2.g + str);
            contentValues.put("mime_type", "image/jpeg");
            contentValues.put(Downloads.Impl._DATA, str4);
            contentValues.put(CameraStatisticsUtil.PORTRAIT_ORIENTATION, Integer.valueOf(aVar2.r));
            contentValues.put(CameraStatisticsUtil.IMAGE_WIDTH, Integer.valueOf(i2));
            contentValues.put(CameraStatisticsUtil.IMAGE_HEIGHT, Integer.valueOf(i3));
            Cursor cursor4 = cursor;
            contentValues.put("_size", Integer.valueOf((int) new File(str4).length()));
            contentValues.put("date_added", Long.valueOf(System.currentTimeMillis() / 1000));
            contentValues.put("date_modified", Long.valueOf(aVar2.l / 1000));
            contentValues.put("datetaken", Long.valueOf((aVar2.l / 1000) * 1000));
            if (aVar2.m > -1) {
                contentValues.put("cshot_id", Long.valueOf(aVar2.m));
            } else {
                contentValues.put("cshot_id", 0);
            }
            if (aVar2.y) {
                contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, Integer.valueOf(com.oppo.camera.f.a.a(aVar2.j, aVar2.q)));
            } else if (aVar2.d == null || aVar2.d.length <= 0) {
                contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, aVar2.z == null ? "0" : aVar2.z.substring(5));
            } else {
                contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, Integer.valueOf(a(aVar2.d)));
            }
            if (cursor4 != null) {
                if (cursor4.moveToFirst()) {
                    cursor2 = cursor4;
                    j2 = cursor2.getLong(cursor2.getColumnIndex("datetaken"));
                } else {
                    cursor2 = cursor4;
                    j2 = -1;
                }
                cursor2.close();
            } else {
                j2 = -1;
            }
            Location a3 = aVar2.u ? aVar2.c : d.a(d);
            if (a3 != null) {
                d.b("Storage", "updateImage, lat: " + a3.getLatitude() + ", lon: " + a3.getLongitude());
                contentValues.put("latitude", Double.valueOf(a3.getLatitude()));
                contentValues.put("longitude", Double.valueOf(a3.getLongitude()));
            }
            try {
                if (!aVar2.t) {
                    aVar2.f2996a.delete(aVar2.f2997b, (String) null, (String[]) null);
                } else if (aVar2.f2996a.update(aVar2.f2997b, contentValues, (String) null, (String[]) null) <= 0) {
                    Uri insert = aVar2.f2996a.insert(b(), contentValues);
                    d.a("Storage", "updateImage, insertImage, uri: " + insert);
                }
                aVar2.h = str4;
                aVar2.l = j2;
                aVar2.w = true;
                aVar2.x = ".jpg".equals(str);
                d.e("Storage", "updateImage, X uri: " + aVar2.f2997b);
                return aVar2;
            } catch (Throwable th4) {
                d.e("Storage", "updateImage, Failed to update image: " + th4);
                aVar2.d = null;
                return null;
            }
        } catch (Throwable th5) {
            th = th5;
            cursor = null;
            d.e("Storage", "updateImage, Failed to query uri: " + aVar2.f2997b + ", cursor: " + cursor + ", th: " + th);
            if (cursor != null) {
                return null;
            }
            cursor.close();
            return null;
        }
    }

    private static File c(String str) {
        File file = new File(str + System.currentTimeMillis());
        while (file.exists()) {
            file = new File(r4 + "_" + new Random().nextInt(100000));
        }
        d.d("Storage", "getBackupFile, file: " + file.getPath());
        return file;
    }

    public static String c() {
        return p;
    }

    public static boolean d() {
        String externalSdState = OppoUsbEnvironment.getExternalSdState(v);
        d.a("Storage", "hasSdCard(), state: " + externalSdState);
        return "mounted".equals(externalSdState);
    }

    public static String e() {
        return q;
    }

    public static boolean f() {
        int colorReadOnlyType = StorageVolumeNative.getColorReadOnlyType(a((StorageManager) v.getSystemService("storage"), OppoUsbEnvironment.getExternalSdDirectory(v)));
        d.a("Storage", "checkExternalState: readOnlyTypeState: " + colorReadOnlyType);
        if (1 == colorReadOnlyType || 2 == colorReadOnlyType || -1 == colorReadOnlyType) {
            return false;
        }
        return !k();
    }

    public static double g() {
        try {
            StatFs statFs = new StatFs(OppoUsbEnvironment.getInternalSdDirectory(v).toString());
            return ((double) (statFs.getBlockSizeLong() * statFs.getBlockCountLong())) / 1.073741824E9d;
        } catch (Exception e) {
            d.d("Storage", "getInternalTotalStorage, Fail to access statfs", e);
            return -2.0d;
        }
    }

    private static boolean h() {
        String str = OppoUsbEnvironment.getInternalSdDirectory(v).toString() + "/DCIM/Camera";
        File file = new File(str);
        if (file.exists() && !file.isDirectory()) {
            boolean renameTo = file.renameTo(c(str));
            d.a("Storage", "checkInternalFsWritable, result: " + renameTo);
        }
        if (!file.exists() && !com.oppo.camera.l.a.f(file.getAbsolutePath())) {
            d.a("Storage", "checkInternalFsWritable, directory.exists(): " + file.exists());
            if (!file.exists()) {
                return false;
            }
        }
        d.a("Storage", "checkInternalFsWritable, writable: " + file.canWrite());
        return file.canWrite();
    }

    private static boolean i() {
        if ("mounted".equals(OppoUsbEnvironment.getExternalSdState(v))) {
            File externalSdDirectory = OppoUsbEnvironment.getExternalSdDirectory(v);
            if (externalSdDirectory == null) {
                return false;
            }
            try {
                return new StatFs(externalSdDirectory.toString()).getAvailableBlocks() > 0;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    private static boolean j() {
        return com.oppo.camera.l.a.a();
    }

    private static boolean k() {
        File externalSdDirectory = OppoUsbEnvironment.getExternalSdDirectory(v);
        boolean z = false;
        if (externalSdDirectory == null) {
            d.d("Storage", "checkSDReadOnlyType, file is null");
            return false;
        }
        String absolutePath = externalSdDirectory.getAbsolutePath();
        if (TextUtils.isEmpty(absolutePath)) {
            d.d("Storage", "checkSDReadOnlyType, path is empty");
            return false;
        }
        String[] split = absolutePath.split("/");
        if (split == null || split.length < 3) {
            d.d("Storage", "checkSDReadOnlyType, path : " + absolutePath);
            return false;
        }
        if (TextUtils.isEmpty(split[2])) {
            d.d("Storage", "checkSDReadOnlyType, name is empty");
            return false;
        }
        d.b("Storage", "checkSDReadOnlyType, path: " + absolutePath);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new String[]{"sh", "-c", "cat /proc/mounts | grep /mnt/media_rw/" + r3 + " | grep \"ro,\""}).getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!TextUtils.isEmpty(readLine)) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (z) {
                Intent intent = new Intent("oppo.intent.action.BAD_STORAGE_NOTICE");
                intent.putExtra("storage_type", "sdcard");
                intent.putExtra("package_name", v.getPackageName());
                v.sendBroadcast(intent);
            }
            d.b("Storage", "checkSDReadOnlyType, state: " + z);
            return z;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
