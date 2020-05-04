package com.oppo.camera.ui.control;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import b.a.a;
import com.android.providers.downloads.Downloads;
import com.oppo.camera.d;
import com.oppo.camera.jni.FormatConverter;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.v;
import com.oppo.providers.downloads.DownloadManager;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Thumbnail */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static b f2624a;

    /* renamed from: b  reason: collision with root package name */
    private static b f2625b;
    private static b c;
    private static Object d = new Object();
    private static int e;
    private static FormatConverter m = new FormatConverter();
    private Uri f;
    private String g;
    private String h;
    private long i;
    private Bitmap j;
    private boolean k;
    private long l;

    /* compiled from: Thumbnail */
    public interface a {
        void a(e eVar, boolean z);
    }

    /* compiled from: Thumbnail */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f2626a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2627b;
        public final long c;
        public final Uri d;
        public final String e;
        public final String f;
        public final String g;
        public final String h;
        public final int i;
        public final int j;

        public b(long j2, int i2, long j3, Uri uri, String str, String str2, String str3, String str4, int i3, int i4) {
            this.f2626a = j2;
            this.f2627b = i2;
            this.c = j3;
            this.d = uri;
            this.e = str;
            this.f = str2;
            this.g = str3;
            this.i = i3;
            this.j = i4;
            this.h = str4;
        }
    }

    public e(Bitmap bitmap, long j2) {
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = 0;
        this.j = null;
        this.k = false;
        this.l = 0;
        this.h = null;
        this.i = -1;
        this.f = null;
        this.l = j2;
        this.j = bitmap;
    }

    private e(Uri uri, Bitmap bitmap, int i2, String str, long j2) {
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = 0;
        this.j = null;
        this.k = false;
        this.l = 0;
        this.f = uri;
        this.h = str;
        this.i = j2;
        if (bitmap != null) {
            this.j = b(bitmap, i2);
            return;
        }
        d.a("Thumbnail", "Thumbnail, mUri: " + this.f + ", thumbnail bitmap is null...");
        this.j = bitmap;
    }

    private e(Uri uri, Bitmap bitmap, int i2, String str, long j2, String str2) {
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = 0;
        this.j = null;
        this.k = false;
        this.l = 0;
        this.f = uri;
        this.h = str;
        this.i = j2;
        this.g = str2;
        if (bitmap != null) {
            this.j = b(bitmap, i2);
            return;
        }
        d.a("Thumbnail", "Thumbnail(), mUri: " + this.f + ", thumbnail bitmap is null...");
        this.j = bitmap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x012b  */
    public static int a(ContentResolver contentResolver, e[] eVarArr) {
        Bitmap bitmap;
        b bVar;
        b bVar2;
        Bitmap bitmap2;
        b bVar3;
        f2624a = a(contentResolver);
        f2625b = d(contentResolver);
        c = e(contentResolver);
        if (f2624a == null && f2625b == null && c == null) {
            d.a("Thumbnail", "getLastThumbnailFromContentResolver, image: " + f2624a + ", video: " + f2625b);
            return 0;
        } else if (h() == -1) {
            return 0;
        } else {
            Bitmap bitmap3 = null;
            if (h() == 0) {
                try {
                    bitmap2 = a(f2624a.e);
                    if (bitmap2 == null) {
                        try {
                            bitmap2 = b(f2624a.e);
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            bVar2 = null;
                            if (bitmap2 == null) {
                            }
                            bVar3 = bVar2;
                            if (bitmap2 == null) {
                            }
                        }
                    }
                    bVar2 = f2624a;
                } catch (Exception e3) {
                    e = e3;
                    bitmap2 = null;
                    e.printStackTrace();
                    bVar2 = null;
                    if (bitmap2 == null) {
                    }
                    bVar3 = bVar2;
                    if (bitmap2 == null) {
                    }
                }
                if (bitmap2 == null || !com.oppo.camera.o.d.a(f2624a.d, f2624a.g, f2624a.i, f2624a.j)) {
                    bVar3 = bVar2;
                } else {
                    d.a("Thumbnail", "getLastThumbnailFromContentResolver, uri: " + f2624a.d + ", path: " + f2624a.g + ", width: " + f2624a.i + ", height: " + f2624a.j);
                    bitmap2 = c(f2624a.f);
                    bVar3 = f2624a;
                }
                if (bitmap2 == null) {
                    d.e("Thumbnail", "getLastThumbnailFromContentResolver, bitmap null");
                    String[] split = f2624a.g.split("\\.");
                    if (split != null && split.length > 0 && "jpg".equals(split[split.length - 1])) {
                        try {
                            contentResolver.delete(f2624a.d, (String) null, (String[]) null);
                            d.a("Thumbnail", "getLastThumbnailFromContentResolver, delete image: " + f2624a.d);
                        } catch (Exception unused) {
                            d.e("Thumbnail", "getLastThumbnailFromContentResolver, Failed to delete image: " + f2624a.d);
                        }
                    }
                    return 0;
                }
                bitmap = bitmap2;
                bVar = bVar3;
            } else {
                if (h() == 1) {
                    try {
                        bitmap3 = a(f2625b.e, (FileDescriptor) null, ThumbImageView.f2611a);
                        bVar = f2625b;
                        if (bitmap3 != null) {
                            d.a("Thumbnail", "getLastThumbnailFromContentResolver, sVideo.mId: " + f2625b.f2626a + ", bitmap width: " + bitmap3.getWidth() + ", height: " + bitmap3.getHeight() + ", lastMedia.orientation: " + bVar.f2627b);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return 0;
                    }
                } else if (h() == 2) {
                    bVar = c;
                } else {
                    bVar = null;
                    bitmap = null;
                }
                bitmap = bitmap3;
            }
            if (bVar != null) {
                d.a("Thumbnail", "getLastThumbnailFromContentResolver, thumbnail uri: " + bVar.d);
            }
            if (bVar == null || (!com.oppo.camera.o.d.a(bVar.d, contentResolver) && !com.oppo.camera.o.d.a(bVar.d, bVar.g, bVar.i, bVar.j))) {
                d.a("Thumbnail", "getLastThumbnailFromContentResolver, THUMBNAIL_DELETED");
                return 2;
            }
            eVarArr[0] = a(bVar.d, bitmap, bVar.f2627b, bVar.e, bVar.c, bVar.h);
            return 1;
        }
    }

    public static Bitmap a(Bitmap bitmap, int i2) {
        if (bitmap == null) {
            return null;
        }
        Bitmap a2 = com.oppo.camera.o.d.a(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(a2);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        float f2 = (float) i2;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return a2;
    }

    public static Bitmap a(FileDescriptor fileDescriptor, int i2) {
        return a((String) null, fileDescriptor, i2);
    }

    public static Bitmap a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] e2 = com.oppo.camera.o.d.e(str);
        if (e2 != null) {
            return BitmapFactory.decodeByteArray(e2, 0, e2.length);
        }
        return null;
    }

    public static Bitmap a(String str, int i2) {
        return a(str, (FileDescriptor) null, i2);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x001d */
    private static Bitmap a(String str, FileDescriptor fileDescriptor, int i2) {
        MediaMetadataRetriever mediaMetadataRetriever;
        Bitmap bitmap;
        mediaMetadataRetriever = new MediaMetadataRetriever();
        if (str != null) {
            try {
                mediaMetadataRetriever.setDataSource(str);
            } catch (IllegalArgumentException | RuntimeException ) {
                try {
                    mediaMetadataRetriever.release();
                } catch (RuntimeException unused) {
                }
                bitmap = null;
            } catch (Throwable th) {
                try {
                    mediaMetadataRetriever.release();
                } catch (RuntimeException unused2) {
                }
                throw th;
            }
        } else {
            mediaMetadataRetriever.setDataSource(fileDescriptor);
        }
        bitmap = mediaMetadataRetriever.getFrameAtTime(-1);
        try {
            mediaMetadataRetriever.release();
        } catch (RuntimeException unused3) {
        }
        return c(bitmap, i2);
    }

    private static b a(ContentResolver contentResolver) {
        b b2 = b(contentResolver);
        b c2 = c(contentResolver);
        if (b2 == null && c2 == null) {
            return null;
        }
        return (b2 == null || c2 == null) ? c2 == null ? b2 : c2 : c2.c > b2.c ? c2 : b2;
    }

    public static e a(Bitmap bitmap, int i2, int i3, Uri uri, String str, long j2) {
        if (bitmap != null) {
            return a(uri, bitmap, i2, str, j2);
        }
        d.a("Thumbnail", "createThumbnail(), use data cereate bitmap is null... ");
        return null;
    }

    public static e a(Uri uri, Bitmap bitmap, int i2, String str, long j2) {
        d.e("Thumbnail", "createThumbnail, uri: " + uri);
        e eVar = new e(uri, bitmap, i2, str, j2);
        return eVar;
    }

    public static e a(Uri uri, Bitmap bitmap, int i2, String str, long j2, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("createThumbnail, uri: ");
        Uri uri2 = uri;
        sb.append(uri);
        d.e("Thumbnail", sb.toString());
        e eVar = new e(uri, bitmap, i2, str, j2, str2);
        return eVar;
    }

    public static e a(byte[] bArr, int i2, int i3, Uri uri, String str, long j2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (i3 > 4) {
            i3 = 4;
        }
        options.inSampleSize = i3;
        return a(uri, c(BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options), ThumbImageView.f2611a), i2, str, j2);
    }

    private static Bitmap b(Bitmap bitmap, int i2) {
        d.a("Thumbnail", "rotateImage");
        if (i2 != 0) {
            Matrix matrix = new Matrix();
            matrix.setRotate((float) i2, ((float) bitmap.getWidth()) * 0.5f, ((float) bitmap.getHeight()) * 0.5f);
            try {
                Bitmap a2 = com.oppo.camera.o.d.a(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                if (a2 != bitmap) {
                    bitmap.recycle();
                }
                return a2;
            } catch (Throwable th) {
                d.c("Thumbnail", "Failed to rotate thumbnail", th);
            }
        }
        return bitmap;
    }

    private static Bitmap b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inJustDecodeBounds = false;
        if (options.outWidth / 4 >= ThumbImageView.f2611a && options.outHeight / 4 >= ThumbImageView.f2611a) {
            options.outHeight /= 4;
            options.outWidth /= 4;
            options.inSampleSize = 4;
        }
        return c(BitmapFactory.decodeFile(str, options), ThumbImageView.f2611a);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0103, code lost:
        if (r4 != null) goto L_0x0105;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0105, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0113, code lost:
        if (r4 != null) goto L_0x0105;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0116, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0119  */
    private static b b(ContentResolver contentResolver) {
        String str;
        Cursor cursor;
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        Uri build = uri.buildUpon().appendQueryParameter("limit", MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST).build();
        String[] strArr = {DownloadManager.COLUMN_ID, CameraStatisticsUtil.PORTRAIT_ORIENTATION, "datetaken", Downloads.Impl._DATA, "title", Downloads.Impl._DATA, CameraStatisticsUtil.IMAGE_WIDTH, CameraStatisticsUtil.IMAGE_HEIGHT, "mime_type"};
        if (v.b(true)) {
            str = "(bucket_id IN (" + v.k + "," + v.f2994a + ")" + " AND cshot_id != 1 " + ")";
        } else {
            str = "(bucket_id=" + v.k + " AND cshot_id != 1 " + ")";
        }
        try {
            cursor = contentResolver.query(build, strArr, str, (String[]) null, "datetaken DESC,_id DESC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        long j2 = cursor.getLong(0);
                        d.a("Thumbnail", "getLatestImage, id: " + j2);
                        b bVar = new b(j2, cursor.getInt(cursor.getColumnIndex(CameraStatisticsUtil.PORTRAIT_ORIENTATION)), cursor.getLong(cursor.getColumnIndex("datetaken")), ContentUris.withAppendedId(uri, j2), cursor.getString(cursor.getColumnIndex(Downloads.Impl._DATA)), cursor.getString(cursor.getColumnIndex("title")), cursor.getString(cursor.getColumnIndex(Downloads.Impl._DATA)), cursor.getString(cursor.getColumnIndex("mime_type")), cursor.getInt(cursor.getColumnIndex(CameraStatisticsUtil.IMAGE_WIDTH)), cursor.getInt(cursor.getColumnIndex(CameraStatisticsUtil.IMAGE_HEIGHT)));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return bVar;
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        d.d("Thumbnail", "getLatestImage, fail: ", e);
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
            d.d("Thumbnail", "getLatestImage, fail: ", e);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private static Bitmap c(Bitmap bitmap, int i2) {
        if (bitmap == null) {
            return null;
        }
        int i3 = Bitmap.Config.RGB_565 == bitmap.getConfig() ? 2 : 0;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height);
        if (min <= i2) {
            return bitmap;
        }
        int i4 = 4;
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        if (2 == i3) {
            config = Bitmap.Config.RGB_565;
            i4 = 2;
        }
        float f2 = ((float) i2) / ((float) min);
        int round = Math.round(((float) width) * f2);
        int round2 = Math.round(f2 * ((float) height));
        Bitmap a2 = com.oppo.camera.o.d.a(round, round2, config);
        m.scaleArea(bitmap, width * i4, width, height, a2, round * i4, round, round2, i3);
        return a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:66:0x00b9 A[SYNTHETIC, Splitter:B:66:0x00b9] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00c1 A[Catch:{ IOException -> 0x00bd }] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00c6 A[Catch:{ IOException -> 0x00bd }] */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x00d2 A[SYNTHETIC, Splitter:B:79:0x00d2] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x00da A[Catch:{ IOException -> 0x00d6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x00df A[Catch:{ IOException -> 0x00d6 }] */
    private static Bitmap c(String str) {
        b.a.a aVar;
        a.c cVar;
        InputStream inputStream;
        d.a("Thumbnail", "getThumbnailBitmapFromCache, title: " + str);
        File file = new File(v.c());
        if (!file.exists()) {
            com.oppo.camera.l.a.f(v.c());
        }
        InputStream inputStream2 = null;
        try {
            b.a.a a2 = b.a.a.a(file, 1, 1, 52428800);
            if (a2 == null) {
                try {
                    d.e("Thumbnail", "getThumbnailBitmapFromCache, diskLruCache null");
                    if (a2 != null) {
                        try {
                            a2.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return null;
                } catch (Exception e3) {
                    e = e3;
                    aVar = a2;
                    cVar = null;
                    inputStream = null;
                    try {
                        e.printStackTrace();
                        if (inputStream != null) {
                        }
                        if (cVar != null) {
                        }
                        if (aVar != null) {
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        inputStream2 = inputStream;
                        if (inputStream2 != null) {
                        }
                        if (cVar != null) {
                        }
                        if (aVar != null) {
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    aVar = a2;
                    cVar = null;
                    if (inputStream2 != null) {
                    }
                    if (cVar != null) {
                    }
                    if (aVar != null) {
                    }
                    throw th;
                }
            } else {
                a.c a3 = a2.a(str);
                if (a3 == null) {
                    try {
                        d.e("Thumbnail", "getThumbnailBitmapFromCache, snapShot null");
                        if (a3 != null) {
                            try {
                                a3.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (a2 != null) {
                            a2.close();
                        }
                        return null;
                    } catch (Exception e5) {
                        aVar = a2;
                        cVar = a3;
                        e = e5;
                        inputStream = null;
                        e.printStackTrace();
                        if (inputStream != null) {
                        }
                        if (cVar != null) {
                        }
                        if (aVar != null) {
                        }
                        return null;
                    } catch (Throwable th3) {
                        aVar = a2;
                        cVar = a3;
                        th = th3;
                        if (inputStream2 != null) {
                        }
                        if (cVar != null) {
                        }
                        if (aVar != null) {
                        }
                        throw th;
                    }
                } else {
                    inputStream = a3.a(0);
                    try {
                        Bitmap c2 = c(BitmapFactory.decodeStream(inputStream), ThumbImageView.f2611a);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                        if (a3 != null) {
                            a3.close();
                        }
                        if (a2 != null) {
                            a2.close();
                        }
                        return c2;
                    } catch (Exception e7) {
                        b.a.a aVar2 = a2;
                        cVar = a3;
                        e = e7;
                        aVar = aVar2;
                        e.printStackTrace();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e8) {
                                e8.printStackTrace();
                                return null;
                            }
                        }
                        if (cVar != null) {
                            cVar.close();
                        }
                        if (aVar != null) {
                            aVar.close();
                        }
                        return null;
                    } catch (Throwable th4) {
                        inputStream2 = inputStream;
                        b.a.a aVar3 = a2;
                        cVar = a3;
                        th = th4;
                        aVar = aVar3;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                                throw th;
                            }
                        }
                        if (cVar != null) {
                            cVar.close();
                        }
                        if (aVar != null) {
                            aVar.close();
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e10) {
            e = e10;
            cVar = null;
            inputStream = null;
            aVar = null;
            e.printStackTrace();
            if (inputStream != null) {
            }
            if (cVar != null) {
            }
            if (aVar != null) {
            }
            return null;
        } catch (Throwable th5) {
            th = th5;
            cVar = null;
            aVar = null;
            if (inputStream2 != null) {
            }
            if (cVar != null) {
            }
            if (aVar != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0123, code lost:
        if (r3 != null) goto L_0x0125;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0133, code lost:
        if (r3 != null) goto L_0x0125;
     */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0138 A[SYNTHETIC, Splitter:B:36:0x0138] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0159  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x015f  */
    private static b c(ContentResolver contentResolver) {
        Cursor cursor;
        Cursor cursor2;
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        Uri build = uri.buildUpon().appendQueryParameter("limit", MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST).build();
        String[] strArr = {DownloadManager.COLUMN_ID, CameraStatisticsUtil.PORTRAIT_ORIENTATION, "datetaken", Downloads.Impl._DATA, "title", Downloads.Impl._DATA, CameraStatisticsUtil.IMAGE_WIDTH, CameraStatisticsUtil.IMAGE_HEIGHT, "mime_type", "cshot_id"};
        try {
            cursor = contentResolver.query(build, strArr, " _id in (SELECT _id FROM images WHERE cshot_id > 1) AND (_data like '" + v.l + "%'" + " OR _data like '" + v.f2995b + "%')", (String[]) null, "datetaken DESC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String str = "( cshot_id=" + cursor.getLong(cursor.getColumnIndex("cshot_id")) + ")" + " AND (_data like '" + v.l + "%'" + " OR _data like '" + v.f2995b + "%')";
                        cursor.close();
                        try {
                            cursor2 = contentResolver.query(build, strArr, str, (String[]) null, "datetaken ASC");
                            if (cursor2 != null) {
                                try {
                                    if (cursor2.moveToFirst()) {
                                        long j2 = cursor2.getLong(0);
                                        b bVar = new b(j2, cursor2.getInt(cursor2.getColumnIndex(CameraStatisticsUtil.PORTRAIT_ORIENTATION)), cursor2.getLong(cursor2.getColumnIndex("datetaken")), ContentUris.withAppendedId(uri, j2), cursor2.getString(cursor2.getColumnIndex(Downloads.Impl._DATA)), cursor2.getString(cursor2.getColumnIndex("title")), cursor2.getString(cursor2.getColumnIndex(Downloads.Impl._DATA)), cursor2.getString(cursor2.getColumnIndex("mime_type")), cursor2.getInt(cursor2.getColumnIndex(CameraStatisticsUtil.IMAGE_WIDTH)), cursor2.getInt(cursor2.getColumnIndex(CameraStatisticsUtil.IMAGE_HEIGHT)));
                                        if (cursor2 != null) {
                                            try {
                                                cursor2.close();
                                            } catch (Exception e2) {
                                                e = e2;
                                                cursor = cursor2;
                                            } catch (Throwable th) {
                                                th = th;
                                                cursor = cursor2;
                                                if (cursor != null) {
                                                }
                                                throw th;
                                            }
                                        }
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                        return bVar;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    try {
                                        d.d("Thumbnail", "getLatestBurstImage, getBurstMin, fail: ", e);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (cursor2 != null) {
                                        }
                                        throw th;
                                    }
                                }
                            }
                        } catch (Exception e4) {
                            e = e4;
                            cursor2 = cursor;
                            d.d("Thumbnail", "getLatestBurstImage, getBurstMin, fail: ", e);
                        } catch (Throwable th3) {
                            th = th3;
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                    }
                } catch (Exception e5) {
                    e = e5;
                    try {
                        d.d("Thumbnail", "getLatestBurstImage, fail: ", e);
                        if (cursor != null) {
                        }
                        return null;
                    } catch (Throwable th4) {
                        th = th4;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
        } catch (Exception e6) {
            e = e6;
            cursor = null;
            d.d("Thumbnail", "getLatestBurstImage, fail: ", e);
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th5) {
            th = th5;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x00dc, code lost:
        if (r3 != null) goto L_0x00de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x00de, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00ec, code lost:
        if (r3 != null) goto L_0x00de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00ef, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00f2  */
    private static b d(ContentResolver contentResolver) {
        String str;
        Cursor cursor;
        Uri uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        Uri build = uri.buildUpon().appendQueryParameter("limit", MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST).build();
        String[] strArr = {DownloadManager.COLUMN_ID, Downloads.Impl._DATA, "datetaken", "mime_type"};
        if (v.b(true)) {
            str = "bucket_id IN (" + v.m + "," + v.g + ") and " + "duration" + " > 0";
        } else {
            str = "bucket_id IN (" + v.m + ") and " + "duration" + " > 0";
        }
        try {
            cursor = contentResolver.query(build, strArr, str, (String[]) null, "datetaken DESC,_id DESC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        long j2 = cursor.getLong(0);
                        d.b("Thumbnail", "getLastVideoThumbnail, path: " + cursor.getString(1) + ", id: " + j2);
                        b bVar = new b(j2, 0, cursor.getLong(cursor.getColumnIndex("datetaken")), ContentUris.withAppendedId(uri, j2), cursor.getString(cursor.getColumnIndex(Downloads.Impl._DATA)), (String) null, (String) null, cursor.getString(cursor.getColumnIndex("mime_type")), -1, -1);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return bVar;
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        d.d("Thumbnail", "getLastVideoThumbnail, fail", e);
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
            d.d("Thumbnail", "getLastVideoThumbnail, fail", e);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x00d8, code lost:
        if (r3 != null) goto L_0x00da;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x00da, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00e8, code lost:
        if (r3 != null) goto L_0x00da;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00eb, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00ee  */
    private static b e(ContentResolver contentResolver) {
        String str;
        Cursor cursor;
        Uri contentUri = MediaStore.Files.getContentUri("external");
        Uri build = contentUri.buildUpon().appendQueryParameter("limit", MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST).build();
        String[] strArr = {DownloadManager.COLUMN_ID, Downloads.Impl._DATA, "datetaken", "mime_type"};
        if (v.b(true)) {
            str = "bucket_id IN (" + v.m + "," + v.g + ")" + " AND mime_type like 'model/gltf-binary'";
        } else {
            str = "bucket_id IN (" + v.m + ")" + " AND mime_type like 'model/gltf-binary'";
        }
        try {
            cursor = contentResolver.query(build, strArr, str, (String[]) null, "datetaken DESC,_id DESC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        long j2 = cursor.getLong(0);
                        d.b("Thumbnail", "getLastVideoThumbnail, path: " + cursor.getString(1) + ", id: " + j2);
                        b bVar = new b(j2, 0, cursor.getLong(cursor.getColumnIndex("datetaken")), ContentUris.withAppendedId(contentUri, j2), cursor.getString(cursor.getColumnIndex(Downloads.Impl._DATA)), (String) null, (String) null, cursor.getString(cursor.getColumnIndex("mime_type")), -1, -1);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return bVar;
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        d.d("Thumbnail", "getLastVideoThumbnail, fail", e);
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
            d.d("Thumbnail", "getLastVideoThumbnail, fail", e);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    private static int h() {
        b bVar = f2624a;
        long j2 = bVar != null ? bVar.c : 0;
        b bVar2 = f2625b;
        long j3 = bVar2 != null ? bVar2.c : 0;
        b bVar3 = c;
        long j4 = bVar3 != null ? bVar3.c : 0;
        if (j2 > j3 && j2 > j4 && j2 > 0) {
            e = 0;
        } else if (j3 > j2 && j3 > j4 && j3 > 0) {
            e = 1;
        } else if (j4 <= j3 || j4 <= j2 || j4 <= 0) {
            e = -1;
        } else {
            e = 2;
        }
        return e;
    }

    public long a() {
        return this.l;
    }

    public void a(long j2) {
        this.l = j2;
    }

    public Uri b() {
        return this.f;
    }

    public String c() {
        return this.h;
    }

    public long d() {
        return this.i;
    }

    public Bitmap e() {
        return this.j;
    }

    public void f() {
        Bitmap bitmap = this.j;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.j.recycle();
        }
        this.j = null;
        this.f = null;
    }

    public String g() {
        return this.g;
    }
}
