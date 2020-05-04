package com.cdv.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.media.ThumbnailUtils;
import android.provider.MediaStore;
import android.util.Log;
import com.android.providers.downloads.Downloads;
import com.oppo.providers.downloads.DownloadManager;
import java.io.File;
import java.io.IOException;

public class NvAndroidThumbnail {
    private static final String TAG = "NvAndroidThumbnail";

    /* JADX WARNING: Removed duplicated region for block: B:45:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00eb  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0107  */
    public static Bitmap createThumbnail(Context context, String str, boolean z, int i, int i2) {
        Bitmap thumbnail;
        if (context == null || str == null || str.isEmpty()) {
            return null;
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        int i3 = 0;
        Cursor query = z ? contentResolver.query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{DownloadManager.COLUMN_ID}, "_data=?", new String[]{str}, (String) null) : contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{DownloadManager.COLUMN_ID}, "_data=?", new String[]{str}, (String) null);
        if (query == null) {
            int i4 = i;
            int i5 = i2;
        } else if (query.getCount() == 0 || !query.moveToFirst()) {
            int i6 = i;
            int i7 = i2;
            query.close();
        } else {
            int columnIndex = query.getColumnIndex(DownloadManager.COLUMN_ID);
            if (columnIndex >= 0) {
                long j = query.getLong(columnIndex);
                query.close();
                Cursor query2 = z ? contentResolver.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{Downloads.Impl._DATA}, "video_id=?", new String[]{String.valueOf(j)}, (String) null) : contentResolver.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{Downloads.Impl._DATA}, "image_id=?", new String[]{String.valueOf(j)}, (String) null);
                if (query2 != null) {
                    if (query2.getCount() == 0 || !query2.moveToFirst()) {
                        int i8 = i;
                        int i9 = i2;
                        query2.close();
                        thumbnail = z ? MediaStore.Video.Thumbnails.getThumbnail(contentResolver, j, 1, (BitmapFactory.Options) null) : MediaStore.Images.Thumbnails.getThumbnail(contentResolver, j, 1, (BitmapFactory.Options) null);
                        if (thumbnail == null) {
                            Log.e(TAG, String.format("Fail to get thumbnail file for media '%d'!", new Object[]{Long.valueOf(j)}));
                            return createThumbnailFromFile(str, z, i, i2);
                        }
                        if (!z) {
                            i3 = detectImageFileRotation(str);
                        }
                        return rotateBitmap(thumbnail, i3);
                    }
                    int columnIndex2 = z ? query2.getColumnIndex(Downloads.Impl._DATA) : query2.getColumnIndex(Downloads.Impl._DATA);
                    if (columnIndex2 >= 0) {
                        String string = query2.getString(columnIndex2);
                        query2.close();
                        if (!string.isEmpty() && new File(string).exists()) {
                            if (!z) {
                                i3 = detectImageFileRotation(str);
                            }
                            return createThumbnailFromThumbnailImageFile(string, i, i2, i3);
                        }
                    } else {
                        int i10 = i;
                        int i11 = i2;
                        query2.close();
                        if (z) {
                        }
                        if (thumbnail == null) {
                        }
                    }
                }
                int i12 = i;
                int i13 = i2;
                if (z) {
                }
                if (thumbnail == null) {
                }
            } else {
                int i14 = i;
                int i15 = i2;
                query.close();
            }
        }
        Log.e(TAG, String.format("Failed to query media store id for '%s'!", new Object[]{str}));
        return createThumbnailFromFile(str, z, i, i2);
    }

    private static Bitmap createThumbnailFromFile(String str, boolean z, int i, int i2) {
        if (!z) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = 1;
            if (options.outWidth > i && options.outHeight > i2) {
                options.inSampleSize = Math.max(Math.round((((float) options.outWidth) * 1.0f) / ((float) i)), Math.round((((float) options.outHeight) * 1.0f) / ((float) i2)));
            }
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        }
        Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(str, 1);
        if (createVideoThumbnail == null) {
            Log.e(TAG, String.format("Failed to create video thumbnail bitmap for '%s'!", new Object[]{str}));
        }
        return createVideoThumbnail;
    }

    private static Bitmap createThumbnailFromThumbnailImageFile(String str, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = 1;
        if (options.outWidth > i && options.outHeight > i2) {
            options.inSampleSize = Math.max(Math.round((((float) options.outWidth) * 1.0f) / ((float) i)), Math.round((((float) options.outHeight) * 1.0f) / ((float) i2)));
        }
        options.inJustDecodeBounds = false;
        return rotateBitmap(BitmapFactory.decodeFile(str, options), i3);
    }

    private static int detectImageFileRotation(String str) {
        int i;
        try {
            i = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (IOException e) {
            e.printStackTrace();
            i = 1;
        }
        switch (i) {
            case 3:
            case 4:
                return 2;
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
                return 3;
            default:
                return 0;
        }
    }

    private static Bitmap rotateBitmap(Bitmap bitmap, int i) {
        if (i == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        if (i == 1) {
            matrix.postRotate(90.0f);
        } else if (i == 2) {
            matrix.postRotate(180.0f);
        } else if (i == 3) {
            matrix.postRotate(270.0f);
        }
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }
}
