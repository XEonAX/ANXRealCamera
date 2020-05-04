package com.oppo.camera.sticker;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.database.MergeCursor;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.sticker.a.c;
import com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo;
import com.oppo.camera.sticker.data.MultiStickerExtendedInfo;
import com.oppo.camera.sticker.data.StickerCategoryItem;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.providers.downloads.DownloadManager;
import com.oppo.providers.downloads.OppoDownloads;
import java.util.ArrayList;
import java.util.List;

/* compiled from: StickerItemDBHelper */
public class g {
    public static Cursor a(Context context) {
        return a(context, c.d.f2376a, (String[]) null, "uuid = '68714002-1206-472f-a3c8-74eea52f7808'", (String[]) null, "");
    }

    public static Cursor a(Context context, long j) {
        return a(context, c.d.f2376a, (String[]) null, "download_time > 0 AND download_state = 8 AND attribute & " + j + " = " + j, (String[]) null, "download_time DESC");
    }

    public static Cursor a(Context context, long j, String str) {
        if (TextUtils.isEmpty(str)) {
            d.d("StickerItemDBHelper", "getStickerItemsCursor, empty categoryId!");
            return null;
        } else if (StickerCategoryItem.isMyCategory(str)) {
            Cursor a2 = a(context, j);
            if (a2 != null) {
                Cursor a3 = a(context);
                if (a3 != null) {
                    return new MergeCursor(new Cursor[]{a3, a2});
                }
                d.d("StickerItemDBHelper", "getStickerItemsCursor, recycleBinStickerCursor is null!");
                return a2;
            }
            d.d("StickerItemDBHelper", "getStickerItemsCursor, myStickerCursor is null!");
            return null;
        } else {
            return a(context, c.d.f2376a, (String[]) null, "category_id = \"" + str + "\"" + " AND " + "attribute" + " & " + j + " = " + j, (String[]) null, "is_build_in ASC, is_valid DESC, position ASC");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0031 A[Catch:{ all -> 0x0063 }] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x004c A[Catch:{ RemoteException -> 0x004a }] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0066  */
    private static Cursor a(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        ContentProviderClient contentProviderClient;
        ContentProviderClient contentProviderClient2;
        Cursor cursor = null;
        try {
            contentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
            if (contentProviderClient != null) {
                try {
                    cursor = contentProviderClient.query(uri, strArr, str, strArr2, str2);
                } catch (RemoteException e) {
                    e = e;
                    try {
                        d.c("StickerItemDBHelper", "getUnstableContentProviderCursor, RemoteException! e: ", e);
                        if (contentProviderClient != null) {
                        }
                        try {
                            contentProviderClient2 = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                            if (contentProviderClient2 == null) {
                            }
                        } catch (RemoteException e2) {
                            e = e2;
                            contentProviderClient2 = contentProviderClient;
                            try {
                                d.c("StickerItemDBHelper", "getUnstableContentProviderCursor, RemoteException again! ", e);
                                if (contentProviderClient2 != null) {
                                    contentProviderClient2.close();
                                }
                                return cursor;
                            } catch (Throwable th) {
                                contentProviderClient = contentProviderClient2;
                                th = th;
                                if (contentProviderClient != null) {
                                }
                                throw th;
                            }
                        }
                        if (contentProviderClient2 != null) {
                        }
                        return cursor;
                    } catch (Throwable th2) {
                        th = th2;
                        if (contentProviderClient != null) {
                            contentProviderClient.close();
                        }
                        throw th;
                    }
                }
            } else {
                d.d("StickerItemDBHelper", "getUnstableContentProviderCursor, client is null!");
            }
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
        } catch (RemoteException e3) {
            e = e3;
            contentProviderClient = null;
            d.c("StickerItemDBHelper", "getUnstableContentProviderCursor, RemoteException! e: ", e);
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
            contentProviderClient2 = context.getContentResolver().acquireUnstableContentProviderClient(uri);
            if (contentProviderClient2 == null) {
                try {
                    cursor = contentProviderClient2.query(uri, strArr, str, strArr2, str2);
                } catch (RemoteException e4) {
                    e = e4;
                    d.c("StickerItemDBHelper", "getUnstableContentProviderCursor, RemoteException again! ", e);
                    if (contentProviderClient2 != null) {
                    }
                    return cursor;
                }
            } else {
                d.d("StickerItemDBHelper", "getUnstableContentProviderCursor2, client is null!");
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

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0033, code lost:
        r10 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0034, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0038, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0039, code lost:
        r7 = r0;
        r0 = r10;
        r10 = r7;
     */
    public static StickerItem a(Context context, String str, String str2) {
        Cursor a2;
        Throwable th;
        Throwable th2;
        try {
            a2 = a(context, c.d.f2376a, (String[]) null, str + " = ?", new String[]{str2}, (String) null);
            if (a2 != null) {
                if (a2.moveToFirst()) {
                    StickerItem a3 = a(a2);
                    if (a2 != null) {
                        a2.close();
                    }
                    return a3;
                }
            }
            if (a2 != null) {
                a2.close();
            }
        } catch (Exception e) {
            d.d("StickerItemDBHelper", "getStickerItem, exception: " + e);
        }
        return null;
        if (a2 != null) {
            if (th2 != null) {
                try {
                    a2.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            } else {
                a2.close();
            }
        }
        throw th;
        throw th;
    }

    public static StickerItem a(Cursor cursor) {
        StickerItem stickerItem = new StickerItem();
        stickerItem.setStickerId(cursor.getLong(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_ID)));
        stickerItem.setStickerUUID(cursor.getString(cursor.getColumnIndexOrThrow(OppoDownloads.COLUMN_UUID)));
        stickerItem.setStickerName(cursor.getString(cursor.getColumnIndexOrThrow("name")));
        stickerItem.setFileDownloadUrl(cursor.getString(cursor.getColumnIndexOrThrow("file_url")));
        stickerItem.setFileMd5(cursor.getString(cursor.getColumnIndexOrThrow("file_md5")));
        stickerItem.setFileContentUri(cursor.getString(cursor.getColumnIndexOrThrow("file_content_uri")));
        stickerItem.setThumbnailUrl(cursor.getString(cursor.getColumnIndexOrThrow("thumbnail_url")));
        stickerItem.setThumbnailFileUri(cursor.getString(cursor.getColumnIndexOrThrow("thumbnail_file_uri")));
        stickerItem.setThumbnailMd5(cursor.getString(cursor.getColumnIndexOrThrow("thumbnail_md5")));
        stickerItem.setLogoUrl(cursor.getString(cursor.getColumnIndexOrThrow("logo_url")));
        stickerItem.setLogoFileUri(cursor.getString(cursor.getColumnIndexOrThrow("logo_file_uri")));
        stickerItem.setLogoMd5(cursor.getString(cursor.getColumnIndexOrThrow("logo_md5")));
        stickerItem.setDownloadUid(cursor.getString(cursor.getColumnIndexOrThrow("download_uuid")));
        stickerItem.setVersion(cursor.getLong(cursor.getColumnIndexOrThrow(CameraStatisticsUtil.RUS_FILE_VERSION)));
        stickerItem.setProtocolVersion(cursor.getLong(cursor.getColumnIndexOrThrow("protocol_version")));
        stickerItem.setDownloadTime(cursor.getLong(cursor.getColumnIndexOrThrow("download_time")));
        stickerItem.setLastRequestTime(cursor.getLong(cursor.getColumnIndexOrThrow("request_time")));
        stickerItem.setCategoryId(cursor.getString(cursor.getColumnIndexOrThrow("category_id")));
        stickerItem.setCategoryPosition(cursor.getInt(cursor.getColumnIndexOrThrow("category_position")));
        stickerItem.setPosition(cursor.getInt(cursor.getColumnIndexOrThrow("position")));
        stickerItem.setDownloadState(cursor.getInt(cursor.getColumnIndexOrThrow("download_state")));
        stickerItem.setAttribute((long) cursor.getInt(cursor.getColumnIndexOrThrow("attribute")));
        boolean z = false;
        stickerItem.setHasMusic(cursor.getInt(cursor.getColumnIndexOrThrow("has_music")) != 0);
        stickerItem.setNeedUpdate(cursor.getInt(cursor.getColumnIndexOrThrow("need_update")) != 0);
        stickerItem.setIsBuildIn(cursor.getInt(cursor.getColumnIndexOrThrow("is_build_in")) != 0);
        stickerItem.setStickerNew(cursor.getInt(cursor.getColumnIndexOrThrow("is_new")) != 0);
        if (cursor.getInt(cursor.getColumnIndexOrThrow("is_valid")) != 0) {
            z = true;
        }
        stickerItem.setValid(z);
        stickerItem.setMaterialType(cursor.getInt(cursor.getColumnIndexOrThrow("material_type")));
        return stickerItem;
    }

    public static List<MultiStickerExtendedInfo> a(Context context, StickerItem stickerItem) {
        Cursor a2;
        if (context == null || stickerItem == null) {
            return null;
        }
        if (stickerItem.getMaterialType() != 1) {
            d.d("StickerItemDBHelper", "getMultiStickerInfo, not a multi type! item: " + stickerItem);
            return null;
        } else if (TextUtils.isEmpty(stickerItem.getStickerUUID())) {
            d.d("StickerItemDBHelper", "getMultiStickerInfo, sticker uuid is empty! item: " + stickerItem);
            return null;
        } else {
            String[] strArr = {stickerItem.getStickerUUID()};
            ArrayList arrayList = new ArrayList();
            try {
                a2 = a(context, c.b.f2372a, (String[]) null, "uuid = ?", strArr, (String) null);
                while (a2 != null) {
                    if (!a2.moveToNext()) {
                        break;
                    }
                    arrayList.add(b(a2));
                }
                if (a2 != null) {
                    a2.close();
                }
            } catch (Exception e) {
                d.d("StickerItemDBHelper", "getMultiStickerInfo, e = " + e);
            } catch (Throwable th) {
                r0.addSuppressed(th);
            }
            return arrayList;
        }
        throw th;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0069, code lost:
        r12 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x006a, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x006e, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006f, code lost:
        r10 = r1;
        r1 = r12;
        r12 = r10;
     */
    public static AnimojiStickerExtendedInfo b(Context context, StickerItem stickerItem) {
        Cursor a2;
        Throwable th;
        Throwable th2;
        AnimojiStickerExtendedInfo animojiStickerExtendedInfo = null;
        if (!(context == null || stickerItem == null)) {
            if (stickerItem.getMaterialType() != 2) {
                d.d("StickerItemDBHelper", "getAnimojiStickerInfo, not a animoji type! item: " + stickerItem);
                return null;
            } else if (TextUtils.isEmpty(stickerItem.getStickerUUID())) {
                d.d("StickerItemDBHelper", "getAnimojiStickerInfo, sticker uuid is empty! item: " + stickerItem);
                return null;
            } else {
                try {
                    a2 = a(context, c.a.f2370a, (String[]) null, "uuid = ?", new String[]{stickerItem.getStickerUUID()}, (String) null);
                    if (a2 != null) {
                        if (a2.getCount() > 0) {
                            a2.moveToFirst();
                            animojiStickerExtendedInfo = c(a2);
                        }
                    }
                    if (a2 != null) {
                        a2.close();
                    }
                } catch (Exception e) {
                    d.d("StickerItemDBHelper", "getAnimojiStickerInfo, e: " + e);
                }
            }
        }
        return animojiStickerExtendedInfo;
        if (a2 != null) {
            if (th2 != null) {
                try {
                    a2.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            } else {
                a2.close();
            }
        }
        throw th;
        throw th;
    }

    private static MultiStickerExtendedInfo b(Cursor cursor) {
        MultiStickerExtendedInfo multiStickerExtendedInfo = new MultiStickerExtendedInfo();
        boolean z = true;
        if (cursor.getInt(cursor.getColumnIndexOrThrow("sticker_fit_to_size")) != 1) {
            z = false;
        }
        multiStickerExtendedInfo.setIsFitToSize(z);
        multiStickerExtendedInfo.setStickerName(cursor.getString(cursor.getColumnIndexOrThrow(CameraStatisticsUtil.STICKER_NAME)));
        multiStickerExtendedInfo.setPositionType(cursor.getInt(cursor.getColumnIndexOrThrow("position_type")));
        multiStickerExtendedInfo.setZPosition(cursor.getInt(cursor.getColumnIndexOrThrow("z_position")));
        multiStickerExtendedInfo.setBaseSize16x9(cursor.getString(cursor.getColumnIndexOrThrow("base_size_16_9")));
        multiStickerExtendedInfo.setDisplayRect16x9(cursor.getString(cursor.getColumnIndexOrThrow("display_rect_16_9")));
        multiStickerExtendedInfo.setFileContentUri16x9(cursor.getString(cursor.getColumnIndexOrThrow("file_content_uri_16_9")));
        multiStickerExtendedInfo.setBaseSize4x3(cursor.getString(cursor.getColumnIndexOrThrow("base_size_4_3")));
        multiStickerExtendedInfo.setDisplayRect4x3(cursor.getString(cursor.getColumnIndexOrThrow("display_rect_4_3")));
        multiStickerExtendedInfo.setFileContentUri4x3(cursor.getString(cursor.getColumnIndexOrThrow("file_content_uri_4_3")));
        multiStickerExtendedInfo.setBaseSize1x1(cursor.getString(cursor.getColumnIndexOrThrow("base_size_1_1")));
        multiStickerExtendedInfo.setDisplayRect1x1(cursor.getString(cursor.getColumnIndexOrThrow("display_rect_1_1")));
        multiStickerExtendedInfo.setFileContentUri1x1(cursor.getString(cursor.getColumnIndexOrThrow("file_content_uri_1_1")));
        return multiStickerExtendedInfo;
    }

    private static AnimojiStickerExtendedInfo c(Cursor cursor) {
        AnimojiStickerExtendedInfo animojiStickerExtendedInfo = new AnimojiStickerExtendedInfo();
        animojiStickerExtendedInfo.setBackgroundColor(cursor.getString(cursor.getColumnIndexOrThrow("background_color")));
        return animojiStickerExtendedInfo;
    }
}
