package com.oppo.camera.sticker;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import com.oppo.camera.d;
import com.oppo.camera.sticker.a.c;
import com.oppo.camera.sticker.data.StickerCategoryItem;
import com.oppo.providers.downloads.DownloadManager;

/* compiled from: StickerCategoryDBHelper */
public class e {
    public static Cursor a(Context context, long j) {
        return a(context, c.e.f2378a, a(), "attribute & " + j + " = " + j + ") GROUP BY (" + "category_id", (String[]) null, "category_position ASC");
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0033 A[Catch:{ all -> 0x0068 }] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0042 A[SYNTHETIC, Splitter:B:24:0x0042] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0051 A[Catch:{ RemoteException -> 0x004f }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x006b  */
    private static Cursor a(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        ContentProviderClient contentProviderClient;
        ContentProviderClient contentProviderClient2;
        Cursor cursor = null;
        try {
            contentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(c.C0064c.f2374a);
            if (contentProviderClient != null) {
                try {
                    cursor = contentProviderClient.query(uri, strArr, str, strArr2, str2);
                } catch (RemoteException e) {
                    e = e;
                    try {
                        d.c("StickerCategoryDBHelper", "getUnstableContentProviderCursor, RemoteException! e: ", e);
                        if (contentProviderClient != null) {
                            contentProviderClient.close();
                        }
                        try {
                            contentProviderClient2 = context.getContentResolver().acquireUnstableContentProviderClient(c.C0064c.f2374a);
                            if (contentProviderClient2 == null) {
                                try {
                                    cursor = contentProviderClient2.query(c.C0064c.f2374a, strArr, str, strArr2, str2);
                                } catch (RemoteException e2) {
                                    e = e2;
                                    try {
                                        d.c("StickerCategoryDBHelper", "getUnstableContentProviderCursor, RemoteException again! ", e);
                                        if (contentProviderClient2 != null) {
                                            contentProviderClient2.close();
                                        }
                                        return cursor;
                                    } catch (Throwable th) {
                                        contentProviderClient = contentProviderClient2;
                                        th = th;
                                        if (contentProviderClient != null) {
                                            contentProviderClient.close();
                                        }
                                        throw th;
                                    }
                                }
                            } else {
                                d.d("StickerCategoryDBHelper", "getUnstableContentProviderCursor2, client is null");
                            }
                        } catch (RemoteException e3) {
                            e = e3;
                            contentProviderClient2 = contentProviderClient;
                            d.c("StickerCategoryDBHelper", "getUnstableContentProviderCursor, RemoteException again! ", e);
                            if (contentProviderClient2 != null) {
                            }
                            return cursor;
                        }
                        if (contentProviderClient2 != null) {
                        }
                        return cursor;
                    } catch (Throwable th2) {
                        th = th2;
                        if (contentProviderClient != null) {
                        }
                        throw th;
                    }
                }
            } else {
                d.d("StickerCategoryDBHelper", "getUnstableContentProviderCursor, client is null");
            }
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
        } catch (RemoteException e4) {
            e = e4;
            contentProviderClient = null;
            d.c("StickerCategoryDBHelper", "getUnstableContentProviderCursor, RemoteException! e: ", e);
            if (contentProviderClient != null) {
            }
            contentProviderClient2 = context.getContentResolver().acquireUnstableContentProviderClient(c.C0064c.f2374a);
            if (contentProviderClient2 == null) {
            }
            if (contentProviderClient2 != null) {
            }
            return cursor;
        } catch (Throwable th3) {
            th = th3;
            contentProviderClient = null;
            if (contentProviderClient != null) {
            }
            throw th;
        }
        return cursor;
    }

    public static StickerCategoryItem a(Cursor cursor) {
        StickerCategoryItem stickerCategoryItem = new StickerCategoryItem();
        boolean z = true;
        stickerCategoryItem.setReadableId(cursor.getString(1));
        stickerCategoryItem.setCategoryName(cursor.getString(2));
        stickerCategoryItem.setPosition(cursor.getInt(3));
        stickerCategoryItem.setIconFileUri(cursor.getString(4));
        stickerCategoryItem.setIconHighlightFileUri(cursor.getString(5));
        if (cursor.getInt(6) == 0) {
            z = false;
        }
        stickerCategoryItem.setCategoryNew(z);
        stickerCategoryItem.setLastRequestTime(cursor.getLong(7));
        return stickerCategoryItem;
    }

    private static String[] a() {
        return new String[]{DownloadManager.COLUMN_ID, "category_id", "category_name", "category_position", "category_icon_file_uri", "category_highlight_icon_file_uri", "category_is_new", "category_request_time"};
    }
}
