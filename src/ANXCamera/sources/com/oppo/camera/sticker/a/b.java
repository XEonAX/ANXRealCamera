package com.oppo.camera.sticker.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.sticker.a.c;
import com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo;
import com.oppo.camera.sticker.data.BuildInSticker;
import com.oppo.camera.sticker.data.MultiStickerExtendedInfo;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.data.StickerItemWrapper;
import com.oppo.providers.downloads.DownloadManager;
import com.oppo.providers.downloads.OppoDownloads;
import java.util.ArrayList;
import java.util.List;

/* compiled from: StickerItemTableHelper */
public class b {
    public static int a(Context context, StickerItem stickerItem) {
        d.d("StickerItemTableHelper", "updateStickerDownloadTime item: " + stickerItem);
        ContentValues contentValues = new ContentValues();
        contentValues.put("download_time", Long.valueOf(System.currentTimeMillis()));
        return a(context, OppoDownloads.COLUMN_UUID, stickerItem.getStickerUUID(), contentValues);
    }

    public static int a(Context context, String str, String str2, ContentValues contentValues) {
        d.d("StickerItemTableHelper", "updateStickerItem");
        return context.getContentResolver().update(c.d.f2376a, contentValues, str + " = ?", new String[]{str2});
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0036, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0037, code lost:
        r6 = r0;
        r0 = r9;
        r9 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0031, code lost:
        r9 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0032, code lost:
        r0 = null;
     */
    public static StickerItemWrapper a(Context context, String str, String str2) {
        Cursor query;
        Throwable th;
        Throwable th2;
        ContentResolver contentResolver = context.getContentResolver();
        StickerItemWrapper stickerItemWrapper = null;
        try {
            query = contentResolver.query(c.d.f2376a, (String[]) null, str + " = ?", new String[]{str2}, (String) null);
            if (query != null) {
                if (query.moveToFirst()) {
                    stickerItemWrapper = a(query);
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            d.d("StickerItemTableHelper", "getStickerItem, e: " + e);
        }
        return stickerItemWrapper;
        if (query != null) {
            if (th2 != null) {
                try {
                    query.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            } else {
                query.close();
            }
        }
        throw th;
        throw th;
    }

    public static StickerItemWrapper a(Cursor cursor) {
        StickerItemWrapper stickerItemWrapper = new StickerItemWrapper();
        stickerItemWrapper.setStickerId(cursor.getLong(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_ID)));
        stickerItemWrapper.setStickerUUID(cursor.getString(cursor.getColumnIndexOrThrow(OppoDownloads.COLUMN_UUID)));
        stickerItemWrapper.setStickerName(cursor.getString(cursor.getColumnIndexOrThrow("name")));
        stickerItemWrapper.setFileDownloadUrl(cursor.getString(cursor.getColumnIndexOrThrow("file_url")));
        stickerItemWrapper.setFileMd5(cursor.getString(cursor.getColumnIndexOrThrow("file_md5")));
        stickerItemWrapper.setFilePath(cursor.getString(cursor.getColumnIndexOrThrow("file_path")));
        stickerItemWrapper.setFileContentUri(cursor.getString(cursor.getColumnIndexOrThrow("file_content_uri")));
        stickerItemWrapper.setThumbnailUrl(cursor.getString(cursor.getColumnIndexOrThrow("thumbnail_url")));
        stickerItemWrapper.setThumbnailPath(cursor.getString(cursor.getColumnIndexOrThrow("thumbnail_path")));
        stickerItemWrapper.setThumbnailFileUri(cursor.getString(cursor.getColumnIndexOrThrow("thumbnail_file_uri")));
        stickerItemWrapper.setThumbnailMd5(cursor.getString(cursor.getColumnIndexOrThrow("thumbnail_md5")));
        stickerItemWrapper.setLogoUrl(cursor.getString(cursor.getColumnIndexOrThrow("logo_url")));
        stickerItemWrapper.setLogoPath(cursor.getString(cursor.getColumnIndexOrThrow("logo_path")));
        stickerItemWrapper.setLogoFileUri(cursor.getString(cursor.getColumnIndexOrThrow("logo_file_uri")));
        stickerItemWrapper.setLogoMd5(cursor.getString(cursor.getColumnIndexOrThrow("logo_md5")));
        stickerItemWrapper.setDownloadUid(cursor.getString(cursor.getColumnIndexOrThrow("download_uuid")));
        stickerItemWrapper.setVersion(cursor.getLong(cursor.getColumnIndexOrThrow(CameraStatisticsUtil.RUS_FILE_VERSION)));
        stickerItemWrapper.setProtocolVersion(cursor.getLong(cursor.getColumnIndexOrThrow("protocol_version")));
        stickerItemWrapper.setDownloadTime(cursor.getLong(cursor.getColumnIndexOrThrow("download_time")));
        stickerItemWrapper.setLastRequestTime(cursor.getLong(cursor.getColumnIndexOrThrow("request_time")));
        stickerItemWrapper.setCategoryId(cursor.getString(cursor.getColumnIndexOrThrow("category_id")));
        stickerItemWrapper.setCategoryPosition(cursor.getInt(cursor.getColumnIndexOrThrow("category_position")));
        stickerItemWrapper.setPosition(cursor.getInt(cursor.getColumnIndexOrThrow("position")));
        stickerItemWrapper.setDownloadState(cursor.getInt(cursor.getColumnIndexOrThrow("download_state")));
        stickerItemWrapper.setAttribute(cursor.getLong(cursor.getColumnIndexOrThrow("attribute")));
        boolean z = false;
        stickerItemWrapper.setHasMusic(cursor.getInt(cursor.getColumnIndexOrThrow("has_music")) != 0);
        stickerItemWrapper.setNeedUpdate(cursor.getInt(cursor.getColumnIndexOrThrow("need_update")) != 0);
        stickerItemWrapper.setIsBuildIn(cursor.getInt(cursor.getColumnIndexOrThrow("is_build_in")) != 0);
        stickerItemWrapper.setStickerNew(cursor.getInt(cursor.getColumnIndexOrThrow("is_new")) != 0);
        if (cursor.getInt(cursor.getColumnIndexOrThrow("is_valid")) != 0) {
            z = true;
        }
        stickerItemWrapper.setValid(z);
        stickerItemWrapper.setMaterialType(cursor.getInt(cursor.getColumnIndexOrThrow("material_type")));
        return stickerItemWrapper;
    }

    public static String a() {
        return "CREATE TABLE IF NOT EXISTS sticker_item (_id INTEGER PRIMARY KEY, uuid TEXT NOT NULL UNIQUE, name TEXT, file_url TEXT, file_md5 TEXT, file_path TEXT, file_content_uri TEXT, thumbnail_url TEXT, thumbnail_path TEXT, thumbnail_file_uri TEXT, thumbnail_md5 TEXT, version INTEGER, logo_url TEXT, logo_path TEXT, logo_file_uri TEXT, logo_md5 TEXT, has_music INTEGER DEFAULT 0, attribute INTEGER, protocol_version TEXT, position INTEGER, need_update INTEGER DEFAULT 0, is_build_in INTEGER DEFAULT 0, is_new INTEGER DEFAULT 0, category_id TEXT, category_position INTEGER, request_time INTEGER, is_valid INTEGER DEFAULT 1, download_uuid TEXT, download_state INTEGER, download_time INTEGER);";
    }

    private static String a(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(" ");
        sb.append("download_state");
        sb.append(" IN (");
        if ((i & 1) != 0) {
            sb.append(1);
            sb.append(",");
        }
        if ((i & 2) != 0) {
            sb.append(2);
            sb.append(",");
        }
        if ((i & 4) != 0) {
            sb.append(4);
            sb.append(",");
        }
        if ((i & 8) != 0) {
            sb.append(8);
            sb.append(",");
        }
        if ((i & 16) != 0) {
            sb.append(16);
            sb.append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003e, code lost:
        if (r6 == null) goto L_0x0041;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0041, code lost:
        return r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002e, code lost:
        if (r6 == null) goto L_0x0041;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0030, code lost:
        r6.close();
     */
    public static List<StickerItem> a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String a2 = a(23);
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = contentResolver.query(c.d.f2376a, (String[]) null, a2, (String[]) null, (String) null);
            if (cursor != null && cursor.moveToFirst()) {
                do {
                    arrayList.add(a(cursor));
                } while (cursor.moveToNext());
            }
        } catch (Exception e) {
            d.d("StickerItemTableHelper", "getUnDownloadedStickers, fail: ", e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static List<StickerItem> a(Context context, boolean z) {
        Cursor query;
        ContentResolver contentResolver = context.getContentResolver();
        String str = !z ? "is_build_in <> 1" : null;
        ArrayList arrayList = new ArrayList();
        try {
            query = contentResolver.query(c.d.f2376a, (String[]) null, str, (String[]) null, (String) null);
            if (query != null) {
                if (query.moveToFirst()) {
                    do {
                        StickerItemWrapper a2 = a(query);
                        if (a2 != null && !TextUtils.isEmpty(a2.getStickerUUID())) {
                            arrayList.add(a2);
                        }
                    } while (query.moveToNext());
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            d.d("StickerItemTableHelper", "getAllStickerItem, e: " + e);
        } catch (Throwable th) {
            r6.addSuppressed(th);
        }
        return arrayList;
        throw th;
    }

    public static void a(Context context, long j, long j2) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver != null) {
            String[] strArr = {String.valueOf(1)};
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_new", 0);
            int update = contentResolver.update(c.d.f2376a, contentValues, "is_new = ? AND request_time < " + (j - j2), strArr);
            d.b("StickerItemTableHelper", "autoClearStickerNewStatus, update count: " + update + ", currTime: " + j);
        }
    }

    public static boolean a(Context context, BuildInSticker buildInSticker) {
        if (buildInSticker == null || TextUtils.isEmpty(buildInSticker.getStickerUUID())) {
            throw new IllegalArgumentException("isBuildInStickerCanAddOrUpdate, invalid Sticker!");
        }
        StickerItemWrapper a2 = a(context, OppoDownloads.COLUMN_UUID, buildInSticker.getStickerUUID());
        d.b("StickerItemTableHelper", "isBuildInStickerCanAddOrUpdate, item: " + a2 + ", Sticker: " + buildInSticker);
        return a2 == null || a2.getVersion() < buildInSticker.getVersion();
    }

    /* JADX WARNING: Removed duplicated region for block: B:100:0x0409 A[SYNTHETIC, Splitter:B:100:0x0409] */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x0422  */
    /* JADX WARNING: Removed duplicated region for block: B:131:? A[RETURN, SYNTHETIC] */
    public static boolean a(Context context, StickerItemWrapper stickerItemWrapper) {
        String str;
        Cursor cursor;
        Throwable th;
        Throwable th2;
        String str2;
        Uri insert;
        StickerItemWrapper stickerItemWrapper2 = stickerItemWrapper;
        if (context == null || stickerItemWrapper2 == null) {
            d.d("StickerItemTableHelper", "updateOrAddToStickerItemTable, context or category is null!");
            return false;
        }
        d.b("StickerItemTableHelper", "updateOrAddToStickerItemTable, single mode. stickerItem: " + stickerItemWrapper2);
        if (TextUtils.isEmpty(stickerItemWrapper.getCategoryId())) {
            d.d("StickerItemTableHelper", "updateOrAddToStickerItemTable, single mode. no category id!");
            return false;
        }
        ContentResolver contentResolver = context.getContentResolver();
        String[] strArr = {stickerItemWrapper.getStickerUUID()};
        Uri uri = c.d.f2376a;
        ContentValues contentValues = new ContentValues();
        try {
            Cursor query = contentResolver.query(uri, (String[]) null, "uuid = ?", strArr, (String) null);
            ContentResolver contentResolver2 = contentResolver;
            String str3 = "uuid = ?";
            String[] strArr2 = strArr;
            Uri uri2 = uri;
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        try {
                            query.moveToFirst();
                            String str4 = "need_update";
                            int columnIndexOrThrow = query.getColumnIndexOrThrow(CameraStatisticsUtil.RUS_FILE_VERSION);
                            String str5 = "download_state";
                            String str6 = CameraStatisticsUtil.RUS_FILE_VERSION;
                            long j = query.getLong(columnIndexOrThrow);
                            contentValues.put("name", stickerItemWrapper.getStickerName());
                            contentValues.put("file_url", stickerItemWrapper.getFileDownloadUrl());
                            contentValues.put("file_md5", stickerItemWrapper.getFileMd5());
                            if (!TextUtils.isEmpty(stickerItemWrapper.getFilePath())) {
                                contentValues.put("file_path", stickerItemWrapper.getFilePath());
                            }
                            if (!TextUtils.isEmpty(stickerItemWrapper.getFileContentUri())) {
                                contentValues.put("file_content_uri", stickerItemWrapper.getFileContentUri());
                            }
                            contentValues.put("thumbnail_url", stickerItemWrapper.getThumbnailUrl());
                            if (!TextUtils.isEmpty(stickerItemWrapper.getThumbnailPath())) {
                                contentValues.put("thumbnail_path", stickerItemWrapper.getThumbnailPath());
                            }
                            if (!TextUtils.isEmpty(stickerItemWrapper.getThumbnailFileUri())) {
                                contentValues.put("thumbnail_file_uri", stickerItemWrapper.getThumbnailFileUri());
                            }
                            contentValues.put("thumbnail_md5", stickerItemWrapper.getThumbnailMd5());
                            contentValues.put("logo_url", stickerItemWrapper.getLogoUrl());
                            if (!TextUtils.isEmpty(stickerItemWrapper.getLogoPath())) {
                                contentValues.put("logo_path", stickerItemWrapper.getLogoPath());
                            }
                            if (!TextUtils.isEmpty(stickerItemWrapper.getLogoFileUri())) {
                                contentValues.put("logo_file_uri", stickerItemWrapper.getLogoFileUri());
                            }
                            contentValues.put("logo_md5", stickerItemWrapper.getLogoMd5());
                            contentValues.put("download_uuid", stickerItemWrapper.getDownloadUid());
                            String str7 = str5;
                            contentValues.put(str7, Integer.valueOf(stickerItemWrapper.getDownloadState()));
                            if (stickerItemWrapper.getDownloadTime() > 0) {
                                contentValues.put("download_time", Long.valueOf(stickerItemWrapper.getDownloadTime()));
                            }
                            contentValues.put("protocol_version", Long.valueOf(stickerItemWrapper.getProtocolVersion()));
                            if (stickerItemWrapper.getVersion() > j) {
                                d.b("StickerItemTableHelper", "version updated, newVersion: " + r5 + ", localVersion: " + j);
                                contentValues.put(str6, Long.valueOf(stickerItemWrapper.getVersion()));
                                contentValues.put("request_time", Long.valueOf(stickerItemWrapper.getLastRequestTime()));
                                if (!stickerItemWrapper.isBuildIn()) {
                                    contentValues.put(str7, 0);
                                    contentValues.put(str4, 1);
                                }
                            } else {
                                String str8 = str4;
                                if (stickerItemWrapper.isDownloaded()) {
                                    contentValues.put(str8, 0);
                                }
                            }
                            contentValues.put("category_id", stickerItemWrapper.getCategoryId());
                            contentValues.put("category_position", Integer.valueOf(stickerItemWrapper.getCategoryPosition()));
                            contentValues.put("position", Integer.valueOf(stickerItemWrapper.getPosition()));
                            contentValues.put("attribute", Long.valueOf(stickerItemWrapper.getAttribute()));
                            contentValues.put("has_music", Integer.valueOf(stickerItemWrapper.hasMusic() ? 1 : 0));
                            contentValues.put("is_build_in", Integer.valueOf(stickerItemWrapper.isBuildIn() ? 1 : 0));
                            contentValues.put("is_new", Integer.valueOf(stickerItemWrapper.isStickerNew() ? 1 : 0));
                            contentValues.put("is_valid", Integer.valueOf(stickerItemWrapper.isValid() ? 1 : 0));
                            contentValues.put("material_type", Integer.valueOf(stickerItemWrapper.getMaterialType()));
                            int update = contentResolver2.update(uri2, contentValues, str3, strArr2);
                            d.b("StickerItemTableHelper", "updateOrAddToStickerItemTable, update single item. count: " + update);
                            str2 = "StickerItemTableHelper";
                            cursor = query;
                            if (cursor != null) {
                                return true;
                            }
                            try {
                                cursor.close();
                                return true;
                            } catch (Exception e) {
                                e = e;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            str = "StickerItemTableHelper";
                            cursor = query;
                            th = null;
                            th2 = th;
                            if (cursor != null) {
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    cursor = query;
                    str = "StickerItemTableHelper";
                    th = null;
                    th2 = th;
                    if (cursor != null) {
                    }
                    throw th2;
                }
            }
            ContentResolver contentResolver3 = contentResolver2;
            cursor = query;
            Uri uri3 = uri2;
            String str9 = "need_update";
            String str10 = "download_state";
            String str11 = CameraStatisticsUtil.RUS_FILE_VERSION;
            String str12 = "StickerItemTableHelper";
            try {
                ContentResolver contentResolver4 = contentResolver3;
                contentValues.put(DownloadManager.COLUMN_ID, Long.valueOf(stickerItemWrapper.getStickerId()));
                contentValues.put(OppoDownloads.COLUMN_UUID, stickerItemWrapper.getStickerUUID());
                contentValues.put("name", stickerItemWrapper.getStickerName());
                contentValues.put("file_url", stickerItemWrapper.getFileDownloadUrl());
                contentValues.put("file_md5", stickerItemWrapper.getFileMd5());
                contentValues.put("file_path", stickerItemWrapper.getFilePath());
                contentValues.put("file_content_uri", stickerItemWrapper.getFileContentUri());
                contentValues.put("thumbnail_url", stickerItemWrapper.getThumbnailUrl());
                contentValues.put("thumbnail_path", stickerItemWrapper.getThumbnailPath());
                contentValues.put("thumbnail_file_uri", stickerItemWrapper.getThumbnailFileUri());
                contentValues.put("thumbnail_md5", stickerItemWrapper.getThumbnailMd5());
                contentValues.put("logo_url", stickerItemWrapper.getLogoUrl());
                contentValues.put("logo_path", stickerItemWrapper.getLogoPath());
                contentValues.put("logo_file_uri", stickerItemWrapper.getLogoFileUri());
                contentValues.put("logo_md5", stickerItemWrapper.getLogoMd5());
                contentValues.put("download_uuid", stickerItemWrapper.getDownloadUid());
                contentValues.put(str10, Integer.valueOf(stickerItemWrapper.getDownloadState()));
                contentValues.put("download_time", Long.valueOf(stickerItemWrapper.getDownloadTime()));
                contentValues.put(str11, Long.valueOf(stickerItemWrapper.getVersion()));
                contentValues.put("protocol_version", Long.valueOf(stickerItemWrapper.getProtocolVersion()));
                contentValues.put("request_time", Long.valueOf(stickerItemWrapper.getLastRequestTime()));
                contentValues.put("category_id", stickerItemWrapper.getCategoryId());
                contentValues.put("category_position", Integer.valueOf(stickerItemWrapper.getCategoryPosition()));
                contentValues.put("position", Integer.valueOf(stickerItemWrapper.getPosition()));
                contentValues.put("attribute", Long.valueOf(stickerItemWrapper.getAttribute()));
                contentValues.put(str9, Integer.valueOf(stickerItemWrapper.needUpdate() ? 1 : 0));
                contentValues.put("has_music", Integer.valueOf(stickerItemWrapper.hasMusic() ? 1 : 0));
                contentValues.put("is_build_in", Integer.valueOf(stickerItemWrapper.isBuildIn() ? 1 : 0));
                contentValues.put("is_new", Integer.valueOf(stickerItemWrapper.isStickerNew() ? 1 : 0));
                contentValues.put("is_valid", Integer.valueOf(stickerItemWrapper.isValid() ? 1 : 0));
                contentValues.put("material_type", Integer.valueOf(stickerItemWrapper.getMaterialType()));
                insert = contentResolver4.insert(uri3, contentValues);
                str2 = str12;
            } catch (Throwable th5) {
                th = th5;
                str2 = str12;
                th2 = th;
                th = null;
                if (cursor != null) {
                }
                throw th2;
            }
            try {
                d.b(str2, "updateOrAddToStickerItemTable, insert single item. insertUri: " + insert);
                if (cursor != null) {
                }
            } catch (Throwable th6) {
                th = th6;
                th2 = th;
                th = null;
                if (cursor != null) {
                    if (th != null) {
                        try {
                            cursor.close();
                        } catch (Throwable th7) {
                            th.addSuppressed(th7);
                        }
                    } else {
                        cursor.close();
                    }
                }
                throw th2;
            }
        } catch (Exception e2) {
            e = e2;
            str = "StickerItemTableHelper";
            d.d(str, "updateOrAddToStickerItemTable cause a exception, exception: " + e + ", stickerItem: " + stickerItemWrapper);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0095 A[SYNTHETIC, Splitter:B:22:0x0095] */
    public static boolean a(Context context, String str, AnimojiStickerExtendedInfo animojiStickerExtendedInfo) {
        Cursor query;
        Throwable th;
        if (context == null || animojiStickerExtendedInfo == null) {
            d.d("StickerItemTableHelper", "updateOrAddToAniMojiExtendTable, context or category is null!");
            return false;
        } else if (TextUtils.isEmpty(animojiStickerExtendedInfo.getBackgroundColor())) {
            d.d("StickerItemTableHelper", "updateOrAddToAniMojiExtendTable, animojiStickerExtendedInfo color is empty!");
            return false;
        } else if (TextUtils.isEmpty(str)) {
            d.d("StickerItemTableHelper", "updateOrAddToAniMojiExtendTable, uuid is empty!");
            return false;
        } else {
            ContentResolver contentResolver = context.getContentResolver();
            String[] strArr = {str};
            Uri uri = c.a.f2370a;
            ContentValues contentValues = new ContentValues();
            try {
                query = contentResolver.query(uri, (String[]) null, "uuid = ?", strArr, (String) null);
                if (query != null) {
                    if (query.getCount() > 0) {
                        query.moveToFirst();
                        contentValues.put("background_color", animojiStickerExtendedInfo.getBackgroundColor());
                        int update = contentResolver.update(uri, contentValues, "uuid = ?", strArr);
                        d.b("StickerItemTableHelper", "updateOrAddToAniMojiExtendTable, update single item. count: " + update);
                        if (query != null) {
                            query.close();
                        }
                        return true;
                    }
                }
                contentValues.put(OppoDownloads.COLUMN_UUID, str);
                contentValues.put("background_color", animojiStickerExtendedInfo.getBackgroundColor());
                Uri insert = contentResolver.insert(uri, contentValues);
                d.b("StickerItemTableHelper", "updateOrAddToAniMojiExtendTable, insert single item. insertUri: " + insert);
                if (query != null) {
                }
                return true;
            } catch (Exception e) {
                d.d("StickerItemTableHelper", "updateOrAddToAniMojiExtendTable cause a exception, exception: " + e + ", uuid: " + str);
                return false;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
        }
        throw th;
    }

    public static boolean a(Context context, String str, List<MultiStickerExtendedInfo> list) {
        if (context == null || list == null || list.isEmpty()) {
            d.d("StickerItemTableHelper", "addToMultiStickerExtendTable, context or category is null!");
            return false;
        } else if (TextUtils.isEmpty(str)) {
            d.d("StickerItemTableHelper", "addToMultiStickerExtendTable, uuid is empty!");
            return false;
        } else {
            ContentResolver contentResolver = context.getContentResolver();
            String[] strArr = {str};
            Uri uri = c.b.f2372a;
            try {
                int delete = contentResolver.delete(uri, "uuid = ?", strArr);
                d.b("StickerItemTableHelper", "addToMultiStickerExtendTable, delete exist data. count: " + delete);
                ArrayList arrayList = new ArrayList();
                for (MultiStickerExtendedInfo next : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(OppoDownloads.COLUMN_UUID, str);
                    contentValues.put("sticker_fit_to_size", Integer.valueOf(next.getIsFitToSize() ? 1 : 0));
                    contentValues.put(CameraStatisticsUtil.STICKER_NAME, next.getStickerName());
                    contentValues.put("position_type", Integer.valueOf(next.getPositionType()));
                    contentValues.put("z_position", Integer.valueOf(next.getZPosition()));
                    contentValues.put("base_size_16_9", next.getBaseSize16x9());
                    contentValues.put("display_rect_16_9", next.getDisplayRect16x9());
                    contentValues.put("base_size_4_3", next.getBaseSize4x3());
                    contentValues.put("display_rect_4_3", next.getDisplayRect4x3());
                    contentValues.put("base_size_1_1", next.getBaseSize1x1());
                    contentValues.put("display_rect_1_1", next.getDisplayRect1x1());
                    contentValues.put("file_content_uri_16_9", next.getFileContentUri16x9());
                    contentValues.put("file_content_uri_4_3", next.getFileContentUri4x3());
                    contentValues.put("file_content_uri_1_1", next.getFileContentUri1x1());
                    arrayList.add(contentValues);
                }
                int bulkInsert = contentResolver.bulkInsert(uri, (ContentValues[]) arrayList.toArray(new ContentValues[0]));
                int size = list.size();
                if (bulkInsert == size) {
                    return true;
                }
                d.d("StickerItemTableHelper", "addToMultiStickerExtendTable, insert count error! count: " + bulkInsert + ", size: " + size);
                return false;
            } catch (Exception e) {
                d.d("StickerItemTableHelper", "addToMultiStickerExtendTable cause a exception, exception: " + e + ", uuid: " + str);
                return false;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:116:0x0450 A[SYNTHETIC, Splitter:B:116:0x0450] */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x0487  */
    /* JADX WARNING: Removed duplicated region for block: B:164:0x04cd  */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x04d9  */
    /* JADX WARNING: Removed duplicated region for block: B:176:? A[RETURN, SYNTHETIC] */
    public static boolean a(Context context, List<StickerItemWrapper> list) {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        String str;
        Exception exc;
        Cursor cursor;
        Throwable th2;
        Throwable th3;
        Cursor cursor2;
        String str2;
        SQLiteDatabase sQLiteDatabase2;
        Integer num;
        String str3;
        Throwable th4;
        String str4;
        long insert;
        Integer num2;
        String str5 = "StickerItemTableHelper";
        char c = 0;
        int i = 0;
        if (list == null || list.size() == 0) {
            d.d(str5, "updateOrAddToStickerItemTable, categoryList is empty!");
            return false;
        }
        SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(context.getDatabasePath("sticker.db").getPath(), (SQLiteDatabase.CursorFactory) null, 0);
        try {
            openDatabase.beginTransaction();
            ContentValues contentValues = new ContentValues();
            String str6 = "sticker_item";
            for (StickerItemWrapper next : list) {
                if (TextUtils.isEmpty(next.getCategoryId())) {
                    try {
                        d.d(str5, "updateOrAddToStickerItemTable, stickerItem category id is empty! stickerItem: " + next);
                    } catch (Exception e) {
                        exc = e;
                        SQLiteDatabase sQLiteDatabase3 = openDatabase;
                        str = str5;
                        sQLiteDatabase = sQLiteDatabase3;
                    } catch (Throwable th5) {
                        th = th5;
                        sQLiteDatabase = openDatabase;
                        if (sQLiteDatabase != null) {
                        }
                        throw th;
                    }
                } else {
                    d.b(str5, "updateOrAddToStickerItemTable, stickerItem = " + next);
                    contentValues.clear();
                    String[] strArr = new String[1];
                    strArr[c] = String.valueOf(next.getStickerUUID());
                    String[] strArr2 = strArr;
                    String str7 = "uuid = ?";
                    StickerItemWrapper stickerItemWrapper = next;
                    int i2 = 1;
                    Cursor query = openDatabase.query(str6, (String[]) null, "uuid = ?", strArr, (String) null, (String) null, (String) null);
                    String str8 = str7;
                    SQLiteDatabase sQLiteDatabase4 = openDatabase;
                    String str9 = str6;
                    if (query != null) {
                        try {
                            if (query.getCount() > 0) {
                                try {
                                    query.moveToFirst();
                                    String str10 = "need_update";
                                    Integer num3 = i;
                                    long j = query.getLong(query.getColumnIndexOrThrow(CameraStatisticsUtil.RUS_FILE_VERSION));
                                    String str11 = CameraStatisticsUtil.RUS_FILE_VERSION;
                                    query.getInt(query.getColumnIndexOrThrow("download_state"));
                                    contentValues.put("name", stickerItemWrapper.getStickerName());
                                    contentValues.put("file_url", stickerItemWrapper.getFileDownloadUrl());
                                    contentValues.put("file_md5", stickerItemWrapper.getFileMd5());
                                    if (!TextUtils.isEmpty(stickerItemWrapper.getFilePath())) {
                                        contentValues.put("file_path", stickerItemWrapper.getFilePath());
                                    }
                                    if (!TextUtils.isEmpty(stickerItemWrapper.getFileContentUri())) {
                                        contentValues.put("file_content_uri", stickerItemWrapper.getFileContentUri());
                                    }
                                    contentValues.put("thumbnail_url", stickerItemWrapper.getThumbnailUrl());
                                    if (!TextUtils.isEmpty(stickerItemWrapper.getThumbnailPath())) {
                                        contentValues.put("thumbnail_path", stickerItemWrapper.getThumbnailPath());
                                    }
                                    if (!TextUtils.isEmpty(stickerItemWrapper.getThumbnailFileUri())) {
                                        contentValues.put("thumbnail_file_uri", stickerItemWrapper.getThumbnailFileUri());
                                    }
                                    contentValues.put("thumbnail_md5", stickerItemWrapper.getThumbnailMd5());
                                    contentValues.put("logo_url", stickerItemWrapper.getLogoUrl());
                                    if (!TextUtils.isEmpty(stickerItemWrapper.getLogoPath())) {
                                        contentValues.put("logo_path", stickerItemWrapper.getLogoPath());
                                    }
                                    if (!TextUtils.isEmpty(stickerItemWrapper.getLogoFileUri())) {
                                        contentValues.put("logo_file_uri", stickerItemWrapper.getLogoFileUri());
                                    }
                                    contentValues.put("logo_md5", stickerItemWrapper.getLogoMd5());
                                    contentValues.put("download_uuid", stickerItemWrapper.getDownloadUid());
                                    if (stickerItemWrapper.getDownloadState() != 0) {
                                        contentValues.put("download_state", Integer.valueOf(stickerItemWrapper.getDownloadState()));
                                    }
                                    if (stickerItemWrapper.getDownloadTime() > 0) {
                                        contentValues.put("download_time", Long.valueOf(stickerItemWrapper.getDownloadTime()));
                                    }
                                    contentValues.put("protocol_version", Long.valueOf(stickerItemWrapper.getProtocolVersion()));
                                    long version = stickerItemWrapper.getVersion();
                                    if (version > j) {
                                        d.b(str5, "version updated, newVersion: " + version + ", localVersion: " + j);
                                        contentValues.put(str11, Long.valueOf(version));
                                        num2 = num3;
                                        contentValues.put("download_state", num2);
                                        contentValues.put(str10, 1);
                                    } else {
                                        String str12 = str10;
                                        num2 = num3;
                                        if (stickerItemWrapper.isDownloaded()) {
                                            contentValues.put(str12, num2);
                                        }
                                    }
                                    contentValues.put("category_id", stickerItemWrapper.getCategoryId());
                                    contentValues.put("category_position", Integer.valueOf(stickerItemWrapper.getCategoryPosition()));
                                    contentValues.put("position", Integer.valueOf(stickerItemWrapper.getPosition()));
                                    contentValues.put("attribute", Long.valueOf(stickerItemWrapper.getAttribute()));
                                    contentValues.put("has_music", Integer.valueOf(stickerItemWrapper.hasMusic() ? 1 : 0));
                                    if (!stickerItemWrapper.isValid()) {
                                        i2 = 0;
                                    }
                                    contentValues.put("is_valid", Integer.valueOf(i2));
                                    contentValues.put("material_type", Integer.valueOf(stickerItemWrapper.getMaterialType()));
                                    SQLiteDatabase sQLiteDatabase5 = sQLiteDatabase4;
                                    String str13 = str9;
                                    try {
                                        int update = sQLiteDatabase5.update(str13, contentValues, str8, strArr2);
                                        d.b(str5, "updateOrAddToStickerItemTable, update count: " + update);
                                        num = num2;
                                        cursor2 = query;
                                        th4 = null;
                                        str3 = str13;
                                        str4 = str5;
                                        sQLiteDatabase2 = sQLiteDatabase5;
                                        if (cursor2 != null) {
                                            try {
                                                cursor2.close();
                                            } catch (Exception e2) {
                                                e = e2;
                                                exc = e;
                                                try {
                                                    d.d(str, "updateOrAddToStickerItemTable update list. e: " + exc);
                                                    if (sQLiteDatabase != null) {
                                                        return false;
                                                    }
                                                    sQLiteDatabase.endTransaction();
                                                    sQLiteDatabase.close();
                                                    return false;
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    th = th;
                                                    if (sQLiteDatabase != null) {
                                                        sQLiteDatabase.endTransaction();
                                                        sQLiteDatabase.close();
                                                    }
                                                    throw th;
                                                }
                                            }
                                        }
                                        Throwable th7 = th4;
                                        str6 = str3;
                                        i = num;
                                        c = 0;
                                        String str14 = str;
                                        openDatabase = sQLiteDatabase;
                                        str5 = str14;
                                    } catch (Throwable th8) {
                                        th3 = th8;
                                        str = str5;
                                        sQLiteDatabase = sQLiteDatabase5;
                                        cursor = query;
                                        th2 = null;
                                        if (cursor != null) {
                                        }
                                        throw th3;
                                    }
                                } catch (Throwable th9) {
                                    th3 = th9;
                                    str = str5;
                                    cursor = query;
                                    sQLiteDatabase = sQLiteDatabase4;
                                    th2 = null;
                                    if (cursor != null) {
                                    }
                                    throw th3;
                                }
                            }
                        } catch (Throwable th10) {
                            cursor = query;
                            th3 = th10;
                            str = str5;
                            sQLiteDatabase = sQLiteDatabase4;
                            th2 = null;
                            if (cursor != null) {
                            }
                            throw th3;
                        }
                    }
                    num = i;
                    String str15 = CameraStatisticsUtil.RUS_FILE_VERSION;
                    cursor2 = query;
                    str3 = str9;
                    String str16 = "need_update";
                    SQLiteDatabase sQLiteDatabase6 = sQLiteDatabase4;
                    String str17 = str5;
                    try {
                        SQLiteDatabase sQLiteDatabase7 = sQLiteDatabase6;
                        try {
                            contentValues.put(DownloadManager.COLUMN_ID, Long.valueOf(stickerItemWrapper.getStickerId()));
                            contentValues.put(OppoDownloads.COLUMN_UUID, stickerItemWrapper.getStickerUUID());
                            contentValues.put("name", stickerItemWrapper.getStickerName());
                            contentValues.put("file_url", stickerItemWrapper.getFileDownloadUrl());
                            contentValues.put("file_md5", stickerItemWrapper.getFileMd5());
                            contentValues.put("file_path", stickerItemWrapper.getFilePath());
                            contentValues.put("file_content_uri", stickerItemWrapper.getFileContentUri());
                            contentValues.put("thumbnail_url", stickerItemWrapper.getThumbnailUrl());
                            contentValues.put("thumbnail_path", stickerItemWrapper.getThumbnailPath());
                            contentValues.put("thumbnail_file_uri", stickerItemWrapper.getThumbnailFileUri());
                            contentValues.put("thumbnail_md5", stickerItemWrapper.getThumbnailMd5());
                            contentValues.put("logo_url", stickerItemWrapper.getLogoUrl());
                            contentValues.put("logo_path", stickerItemWrapper.getLogoPath());
                            contentValues.put("logo_file_uri", stickerItemWrapper.getLogoFileUri());
                            contentValues.put("logo_md5", stickerItemWrapper.getLogoMd5());
                            contentValues.put("download_uuid", stickerItemWrapper.getDownloadUid());
                            contentValues.put("download_state", Integer.valueOf(stickerItemWrapper.getDownloadState()));
                            contentValues.put("download_time", Long.valueOf(stickerItemWrapper.getDownloadTime()));
                            contentValues.put(str15, Long.valueOf(stickerItemWrapper.getVersion()));
                            contentValues.put("protocol_version", Long.valueOf(stickerItemWrapper.getProtocolVersion()));
                            contentValues.put("request_time", Long.valueOf(stickerItemWrapper.getLastRequestTime()));
                            contentValues.put("category_id", stickerItemWrapper.getCategoryId());
                            contentValues.put("category_position", Integer.valueOf(stickerItemWrapper.getCategoryPosition()));
                            contentValues.put("position", Integer.valueOf(stickerItemWrapper.getPosition()));
                            contentValues.put("attribute", Long.valueOf(stickerItemWrapper.getAttribute()));
                            contentValues.put(str16, Integer.valueOf(stickerItemWrapper.needUpdate() ? 1 : 0));
                            contentValues.put("has_music", Integer.valueOf(stickerItemWrapper.hasMusic() ? 1 : 0));
                            contentValues.put("is_build_in", Integer.valueOf(stickerItemWrapper.isBuildIn() ? 1 : 0));
                            contentValues.put("is_new", Integer.valueOf(stickerItemWrapper.isStickerNew() ? 1 : 0));
                            if (!stickerItemWrapper.isValid()) {
                                i2 = 0;
                            }
                            contentValues.put("is_valid", Integer.valueOf(i2));
                            contentValues.put("material_type", Integer.valueOf(stickerItemWrapper.getMaterialType()));
                            sQLiteDatabase2 = sQLiteDatabase7;
                            th4 = null;
                        } catch (Throwable th11) {
                            th = th11;
                            str4 = str17;
                            sQLiteDatabase2 = sQLiteDatabase7;
                            th4 = null;
                            th2 = th4;
                            th3 = th;
                            if (cursor != null) {
                            }
                            throw th3;
                        }
                    } catch (Throwable th12) {
                        th = th12;
                        sQLiteDatabase2 = sQLiteDatabase6;
                        str4 = str17;
                        th4 = null;
                        th2 = th4;
                        th3 = th;
                        if (cursor != null) {
                        }
                        throw th3;
                    }
                    try {
                        insert = sQLiteDatabase2.insert(str3, (String) null, contentValues);
                        str4 = str17;
                    } catch (Throwable th13) {
                        th = th13;
                        str4 = str17;
                        th2 = th4;
                        th3 = th;
                        if (cursor != null) {
                        }
                        throw th3;
                    }
                    try {
                        d.b(str4, "updateOrAddToStickerItemTable, insert rowId: " + insert);
                        if (cursor2 != null) {
                        }
                        Throwable th72 = th4;
                        str6 = str3;
                        i = num;
                        c = 0;
                        String str142 = str;
                        openDatabase = sQLiteDatabase;
                        str5 = str142;
                    } catch (Throwable th14) {
                        th = th14;
                        th2 = th4;
                        th3 = th;
                        if (cursor != null) {
                            if (th2 != null) {
                                try {
                                    cursor.close();
                                } catch (Throwable th15) {
                                    th2.addSuppressed(th15);
                                }
                            } else {
                                cursor.close();
                            }
                        }
                        throw th3;
                    }
                }
            }
            SQLiteDatabase sQLiteDatabase8 = openDatabase;
            String str18 = str5;
            SQLiteDatabase sQLiteDatabase9 = sQLiteDatabase8;
            sQLiteDatabase9.setTransactionSuccessful();
            if (sQLiteDatabase9 != null) {
                sQLiteDatabase9.endTransaction();
                sQLiteDatabase9.close();
            }
            return true;
        } catch (Exception e3) {
            e = e3;
            SQLiteDatabase sQLiteDatabase10 = openDatabase;
            str = str5;
            sQLiteDatabase = sQLiteDatabase10;
            exc = e;
            d.d(str, "updateOrAddToStickerItemTable update list. e: " + exc);
            if (sQLiteDatabase != null) {
            }
        } catch (Throwable th16) {
            th = th16;
            sQLiteDatabase = openDatabase;
            th = th;
            if (sQLiteDatabase != null) {
            }
            throw th;
        }
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

    public static String b() {
        return "CREATE TABLE IF NOT EXISTS animoji_info (uuid TEXT NOT NULL, background_color TEXT NOT NULL, FOREIGN KEY(uuid)REFERENCES sticker_item(uuid));";
    }

    public static void b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String[] strArr = {String.valueOf(0)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_valid", 0);
        int update = contentResolver.update(c.d.f2376a, contentValues, "download_state = ? AND is_build_in <> 1", strArr);
        d.b("StickerItemTableHelper", "preCheckStickerValid, update count: " + update);
    }

    public static void b(Context context, StickerItem stickerItem) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("download_state", 0);
        contentValues.put("download_uuid", "");
        a(context, OppoDownloads.COLUMN_UUID, stickerItem.getStickerUUID(), contentValues);
    }

    public static boolean b(Context context, StickerItemWrapper stickerItemWrapper) {
        if (context == null || stickerItemWrapper == null) {
            d.d("StickerItemTableHelper", "deleteAnimojiStickerInfo, parameter is null! context: " + context);
            return false;
        }
        int delete = context.getContentResolver().delete(c.a.f2370a, "uuid = ?", new String[]{stickerItemWrapper.getStickerUUID()});
        d.b("StickerItemTableHelper", "deleteAnimojiStickerInfo, count: " + delete + ", item name: " + stickerItemWrapper.getStickerName());
        return true;
    }

    public static String c() {
        return "CREATE TABLE IF NOT EXISTS multi_info (uuid TEXT NOT NULL, sticker_fit_to_size INTEGER, sticker_name TEXT, position_type INTEGER, z_position INTEGER, base_size_16_9 TEXT, display_rect_16_9 TEXT, file_content_uri_16_9 TEXT, base_size_4_3 TEXT, display_rect_4_3 TEXT, file_content_uri_4_3 TEXT, base_size_1_1 TEXT, display_rect_1_1 TEXT, file_content_uri_1_1 TEXT, FOREIGN KEY(uuid)REFERENCES sticker_item(uuid));";
    }

    public static List<MultiStickerExtendedInfo> c(Context context, StickerItem stickerItem) {
        Cursor query;
        if (context == null || stickerItem == null) {
            return null;
        }
        if (stickerItem.getMaterialType() != 1) {
            d.d("StickerItemTableHelper", "getMultiStickerInfo, not a multi type! item: " + stickerItem);
            return null;
        } else if (TextUtils.isEmpty(stickerItem.getStickerUUID())) {
            d.d("StickerItemTableHelper", "getMultiStickerInfo, sticker uuid is empty! item: " + stickerItem);
            return null;
        } else {
            ContentResolver contentResolver = context.getContentResolver();
            String[] strArr = {stickerItem.getStickerUUID()};
            ArrayList arrayList = new ArrayList();
            try {
                query = contentResolver.query(c.b.f2372a, (String[]) null, "uuid = ?", strArr, (String) null);
                while (query != null) {
                    if (!query.moveToNext()) {
                        break;
                    }
                    arrayList.add(b(query));
                }
                if (query != null) {
                    query.close();
                }
            } catch (Exception e) {
                d.d("StickerItemTableHelper", "getMultiStickerInfo, e:" + e);
            } catch (Throwable th) {
                r0.addSuppressed(th);
            }
            return arrayList;
        }
        throw th;
    }

    public static void c(Context context) {
        Throwable th;
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList<StickerItemWrapper> arrayList = new ArrayList<>();
        Cursor query = contentResolver.query(c.d.f2376a, (String[]) null, "is_valid = 0 AND is_build_in <> 1", (String[]) null, (String) null);
        while (query != null) {
            try {
                if (!query.moveToNext()) {
                    break;
                }
                arrayList.add(a(query));
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
        }
        if (query != null) {
            query.close();
        }
        for (StickerItemWrapper stickerItemWrapper : arrayList) {
            boolean b2 = com.oppo.camera.sticker.d.b.b(stickerItemWrapper.getThumbnailPath());
            boolean b3 = com.oppo.camera.sticker.d.b.b(stickerItemWrapper.getLogoPath());
            d.b("StickerItemTableHelper", "postCheckStickerValidStatus, delete item: " + stickerItemWrapper + ", deleteThumbResult: " + b2 + ", deleteLogoResult: " + b3);
        }
        int delete = contentResolver.delete(c.d.f2376a, "is_valid = 0 AND is_build_in <> 1", (String[]) null);
        d.b("StickerItemTableHelper", "postCheckStickerValidStatus, delete invalid sticker, count: " + delete);
        return;
        throw th;
    }

    public static boolean d(Context context, StickerItem stickerItem) {
        if (context == null || stickerItem == null) {
            d.d("StickerItemTableHelper", "deleteMultiStickerInfo, parameter is null! context: " + context);
            return false;
        }
        int delete = context.getContentResolver().delete(c.b.f2372a, "uuid = ?", new String[]{stickerItem.getStickerUUID()});
        d.b("StickerItemTableHelper", "deleteMultiStickerInfo, count: " + delete + ", item name: " + stickerItem.getStickerName());
        return true;
    }
}
