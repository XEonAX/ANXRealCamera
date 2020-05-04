package com.oppo.camera.sticker.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.sticker.a.c;
import com.oppo.camera.sticker.data.StickerCategoryItem;
import com.oppo.camera.sticker.data.StickerCategoryItemWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: StickerCategoryTableHelper */
public class a {
    public static int a(Context context, String str, String str2, ContentValues contentValues) {
        return context.getContentResolver().update(c.C0064c.f2374a, contentValues, str + " = \"" + str2 + "\"", (String[]) null);
    }

    /* JADX WARNING: type inference failed for: r8v2 */
    /* JADX WARNING: type inference failed for: r8v5 */
    /* JADX WARNING: type inference failed for: r8v7, types: [com.oppo.camera.sticker.data.StickerCategoryItem] */
    /* JADX WARNING: type inference failed for: r8v8, types: [java.lang.Throwable] */
    /* JADX WARNING: type inference failed for: r8v13 */
    /* JADX WARNING: type inference failed for: r8v14 */
    /* JADX WARNING: type inference failed for: r8v15 */
    /* JADX WARNING: type inference failed for: r8v16 */
    /* JADX WARNING: Multi-variable type inference failed */
    public static StickerCategoryItem a(Context context, String str, String str2) {
        StickerCategoryItemWrapper stickerCategoryItemWrapper;
        Exception e;
        Throwable th;
        ContentResolver contentResolver = context.getContentResolver();
        ? r8 = 0;
        try {
            Cursor query = contentResolver.query(c.C0064c.f2374a, (String[]) null, str + " = \"" + str2 + "\"", (String[]) null, (String) null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        stickerCategoryItemWrapper = a(query);
                        try {
                            d.b("StickerCategoryTableHelper", "getStickerCategory, item: " + stickerCategoryItemWrapper);
                            r8 = stickerCategoryItemWrapper;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                th = th3;
                                r8 = th;
                            }
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    stickerCategoryItemWrapper = null;
                    if (query != null) {
                        if (r8 != 0) {
                            try {
                                query.close();
                            } catch (Throwable th5) {
                                try {
                                    r8.addSuppressed(th5);
                                } catch (Exception e2) {
                                    e = e2;
                                    d.c("StickerCategoryTableHelper", "getStickerCategory, e:", e);
                                    return stickerCategoryItemWrapper;
                                }
                            }
                        } else {
                            query.close();
                        }
                    }
                    throw th;
                }
            }
            if (query == null) {
                return r8;
            }
            r8 = r8;
            query.close();
            r8 = r8;
            return r8;
        } catch (Exception e3) {
            stickerCategoryItemWrapper = r8;
            e = e3;
        }
    }

    public static StickerCategoryItemWrapper a(Cursor cursor) {
        StickerCategoryItemWrapper stickerCategoryItemWrapper = new StickerCategoryItemWrapper();
        stickerCategoryItemWrapper.setReadableId(cursor.getString(cursor.getColumnIndexOrThrow("readable_id")));
        stickerCategoryItemWrapper.setCategoryName(cursor.getString(cursor.getColumnIndexOrThrow("category_name")));
        stickerCategoryItemWrapper.setPosition(cursor.getInt(cursor.getColumnIndexOrThrow("position")));
        stickerCategoryItemWrapper.setIconUrl(cursor.getString(cursor.getColumnIndexOrThrow("icon_url")));
        stickerCategoryItemWrapper.setIconPath(cursor.getString(cursor.getColumnIndexOrThrow("icon_path")));
        stickerCategoryItemWrapper.setIconFileUri(cursor.getString(cursor.getColumnIndexOrThrow("icon_file_uri")));
        stickerCategoryItemWrapper.setIconMd5(cursor.getString(cursor.getColumnIndexOrThrow("icon_md5")));
        stickerCategoryItemWrapper.setIconHighlightUrl(cursor.getString(cursor.getColumnIndexOrThrow("icon_highlight_url")));
        stickerCategoryItemWrapper.setIconHighlightPath(cursor.getString(cursor.getColumnIndexOrThrow("icon_highlight_path")));
        stickerCategoryItemWrapper.setIconHighlightFileUri(cursor.getString(cursor.getColumnIndexOrThrow("icon_highlight_file_uri")));
        stickerCategoryItemWrapper.setIconHighlightMd5(cursor.getString(cursor.getColumnIndexOrThrow("icon_highlight_md5")));
        stickerCategoryItemWrapper.setLastRequestTime(cursor.getLong(cursor.getColumnIndexOrThrow("request_time")));
        boolean z = false;
        stickerCategoryItemWrapper.setCategoryNew(cursor.getInt(cursor.getColumnIndexOrThrow("is_new")) != 0);
        if (cursor.getInt(cursor.getColumnIndexOrThrow("is_valid")) != 0) {
            z = true;
        }
        stickerCategoryItemWrapper.setCategoryValid(z);
        return stickerCategoryItemWrapper;
    }

    public static String a() {
        return "CREATE TABLE IF NOT EXISTS sticker_category (_id INTEGER PRIMARY KEY, readable_id TEXT UNIQUE, category_name TEXT, position INTEGER, icon_url TEXT, icon_md5 TEXT, icon_path TEXT, icon_file_uri TEXT, icon_highlight_url TEXT, icon_highlight_md5 TEXT, icon_highlight_path TEXT, icon_highlight_file_uri TEXT, is_new INTEGER DEFAULT 0, request_time INTEGER, is_valid INTEGER DEFAULT 1);";
    }

    public static List<StickerCategoryItem> a(Context context) {
        Cursor query;
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        try {
            query = contentResolver.query(c.C0064c.f2374a, (String[]) null, (String) null, (String[]) null, "position ASC");
            if (query != null) {
                if (query.moveToFirst()) {
                    do {
                        StickerCategoryItemWrapper a2 = a(query);
                        if (a2 != null && !TextUtils.isEmpty(a2.getCategoryName())) {
                            arrayList.add(a2);
                        }
                    } while (query.moveToNext());
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            d.d("StickerCategoryTableHelper", "getAllStickerCategory, e: " + e);
        } catch (Throwable th) {
            r1.addSuppressed(th);
        }
        return arrayList;
        throw th;
    }

    public static void a(Context context, long j, long j2) {
        String[] strArr = {String.valueOf(1)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_new", 0);
        int update = context.getContentResolver().update(c.C0064c.f2374a, contentValues, "is_new = ? AND request_time < " + (j - j2), strArr);
        d.b("StickerCategoryTableHelper", "autoClearStickerNewStatus, update count: " + update + ", currTime: " + j);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0115, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0117, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0118, code lost:
        r10 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0119, code lost:
        r1 = r0;
        r19 = r4;
        r2 = r10;
        r10 = r16;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0121, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0122, code lost:
        r1 = r0;
        r19 = r4;
        r10 = r16;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0121 A[ExcHandler: Throwable (r0v17 'th' java.lang.Throwable A[CUSTOM_DECLARE]), Splitter:B:11:0x005d] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x01dc A[SYNTHETIC, Splitter:B:64:0x01dc] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x01ec  */
    public static boolean a(Context context, StickerCategoryItemWrapper stickerCategoryItemWrapper) {
        String str;
        Cursor cursor;
        Throwable th;
        Throwable th2;
        Throwable th3;
        int update;
        String str2;
        StickerCategoryItemWrapper stickerCategoryItemWrapper2 = stickerCategoryItemWrapper;
        if (context == null || stickerCategoryItemWrapper2 == null) {
            d.d("StickerCategoryTableHelper", "updateOrAddToCategoryTable, context or category is null!");
            return false;
        }
        ContentResolver contentResolver = context.getContentResolver();
        String str3 = "readable_id = \"" + stickerCategoryItemWrapper.getReadableId() + "\"";
        Uri uri = c.C0064c.f2374a;
        ContentValues contentValues = new ContentValues();
        try {
            Cursor query = contentResolver.query(uri, (String[]) null, str3, (String[]) null, (String) null);
            String str4 = "StickerCategoryTableHelper";
            String str5 = str3;
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        try {
                            query.moveToFirst();
                            contentValues.put("readable_id", stickerCategoryItemWrapper.getReadableId());
                            contentValues.put("category_name", stickerCategoryItemWrapper.getCategoryName());
                            contentValues.put("icon_url", stickerCategoryItemWrapper.getIconUrl());
                            contentValues.put("icon_path", stickerCategoryItemWrapper.getIconPath());
                            contentValues.put("icon_file_uri", stickerCategoryItemWrapper.getIconFileUri());
                            contentValues.put("icon_md5", stickerCategoryItemWrapper.getIconMd5());
                            contentValues.put("icon_highlight_url", stickerCategoryItemWrapper.getIconHighlightUrl());
                            contentValues.put("icon_highlight_path", stickerCategoryItemWrapper.getIconHighlightPath());
                            contentValues.put("icon_highlight_file_uri", stickerCategoryItemWrapper.getIconHighlightFileUri());
                            contentValues.put("icon_highlight_md5", stickerCategoryItemWrapper.getIconHighlightMd5());
                            contentValues.put("position", Integer.valueOf(stickerCategoryItemWrapper.getPosition()));
                            if (!stickerCategoryItemWrapper.isCategoryNew()) {
                                contentValues.put("is_new", Integer.valueOf(stickerCategoryItemWrapper.isCategoryNew() ? 1 : 0));
                            }
                            contentValues.put("is_valid", Integer.valueOf(stickerCategoryItemWrapper.isCategoryValid() ? 1 : 0));
                            Throwable th4 = null;
                            update = contentResolver.update(uri, contentValues, str5, (String[]) null);
                            str2 = str4;
                        } catch (Throwable th5) {
                            th2 = th5;
                            cursor = query;
                            str = str4;
                            th = null;
                            if (cursor != null) {
                            }
                            throw th2;
                        }
                        try {
                            d.b(str2, "updateOrAddToCategoryTable, update single item. count: " + update);
                            str = str2;
                            cursor = query;
                            if (cursor != null) {
                                try {
                                    cursor.close();
                                } catch (Exception e) {
                                    e = e;
                                    d.d(str, "updateOrAddToCategoryTable, cause a exception, exception: " + e + ", category: " + stickerCategoryItemWrapper);
                                    return false;
                                }
                            }
                            return true;
                        } catch (Throwable th6) {
                            th = th6;
                            cursor = query;
                            th = null;
                            str = str2;
                            th2 = th;
                            if (cursor != null) {
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th7) {
                    str = str4;
                    th2 = th7;
                    cursor = query;
                    th = null;
                    if (cursor != null) {
                    }
                    throw th2;
                }
            }
            str = str4;
            cursor = query;
            try {
                contentValues.put("readable_id", stickerCategoryItemWrapper.getReadableId());
                contentValues.put("category_name", stickerCategoryItemWrapper.getCategoryName());
                contentValues.put("icon_url", stickerCategoryItemWrapper.getIconUrl());
                contentValues.put("icon_path", stickerCategoryItemWrapper.getIconPath());
                contentValues.put("icon_file_uri", stickerCategoryItemWrapper.getIconFileUri());
                contentValues.put("icon_md5", stickerCategoryItemWrapper.getIconMd5());
                contentValues.put("icon_highlight_url", stickerCategoryItemWrapper.getIconHighlightUrl());
                contentValues.put("icon_highlight_path", stickerCategoryItemWrapper.getIconHighlightPath());
                contentValues.put("icon_highlight_file_uri", stickerCategoryItemWrapper.getIconHighlightFileUri());
                contentValues.put("icon_highlight_md5", stickerCategoryItemWrapper.getIconHighlightMd5());
                contentValues.put("request_time", Long.valueOf(stickerCategoryItemWrapper.getLastRequestTime()));
                contentValues.put("position", Integer.valueOf(stickerCategoryItemWrapper.getPosition()));
                contentValues.put("is_new", Integer.valueOf(stickerCategoryItemWrapper.isCategoryNew() ? 1 : 0));
                contentValues.put("is_valid", Integer.valueOf(stickerCategoryItemWrapper.isCategoryValid() ? 1 : 0));
                Uri insert = contentResolver.insert(uri, contentValues);
                d.b(str, "updateOrAddToCategoryTable, insert single item. insertUri: " + insert);
                if (cursor != null) {
                }
                return true;
            } catch (Throwable th8) {
                th2 = th8;
                th = null;
                if (cursor != null) {
                    if (th != null) {
                        try {
                            cursor.close();
                        } catch (Throwable th9) {
                            th.addSuppressed(th9);
                        }
                    } else {
                        cursor.close();
                    }
                }
                throw th2;
            }
        } catch (Exception e2) {
            e = e2;
            str = "StickerCategoryTableHelper";
            d.d(str, "updateOrAddToCategoryTable, cause a exception, exception: " + e + ", category: " + stickerCategoryItemWrapper);
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        StickerCategoryItem a2 = a(context, "readable_id", str);
        d.b("StickerCategoryTableHelper", "hasStickerCategory, item: " + a2);
        return a2 != null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:81:0x023a, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x023b, code lost:
        r3 = r18;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0245, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0246, code lost:
        r3 = r18;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x022e A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x022b A[SYNTHETIC, Splitter:B:77:0x022b] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0245 A[ExcHandler: Throwable (th java.lang.Throwable), Splitter:B:60:0x0184] */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x024e  */
    public static boolean a(Context context, List<StickerCategoryItemWrapper> list) {
        String str;
        Cursor cursor;
        Throwable th;
        Throwable th2;
        String str2;
        Throwable th3;
        String str3 = "StickerCategoryTableHelper";
        if (list == null || list.size() == 0) {
            d.d(str3, "updateOrAddToCategoryTable, categoryList is empty!");
            return false;
        }
        SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(context.getDatabasePath("sticker.db").getPath(), (SQLiteDatabase.CursorFactory) null, 0);
        try {
            openDatabase.beginTransaction();
            ContentValues contentValues = new ContentValues();
            Iterator<StickerCategoryItemWrapper> it = list.iterator();
            while (it.hasNext()) {
                StickerCategoryItemWrapper next = it.next();
                contentValues.clear();
                String str4 = "readable_id = \"" + next.getReadableId() + "\"";
                String str5 = str4;
                StickerCategoryItemWrapper stickerCategoryItemWrapper = next;
                Cursor query = openDatabase.query("sticker_category", (String[]) null, str4, (String[]) null, (String) null, (String) null, (String) null);
                Iterator<StickerCategoryItemWrapper> it2 = it;
                String str6 = str3;
                if (query != null) {
                    try {
                        if (query.getCount() > 0) {
                            query.moveToFirst();
                            cursor = query;
                            try {
                                contentValues.put("readable_id", stickerCategoryItemWrapper.getReadableId());
                                contentValues.put("category_name", stickerCategoryItemWrapper.getCategoryName());
                                contentValues.put("icon_url", stickerCategoryItemWrapper.getIconUrl());
                                contentValues.put("icon_md5", stickerCategoryItemWrapper.getIconMd5());
                                if (!TextUtils.isEmpty(stickerCategoryItemWrapper.getIconPath())) {
                                    contentValues.put("icon_path", stickerCategoryItemWrapper.getIconPath());
                                }
                                if (!TextUtils.isEmpty(stickerCategoryItemWrapper.getIconFileUri())) {
                                    contentValues.put("icon_file_uri", stickerCategoryItemWrapper.getIconFileUri());
                                }
                                contentValues.put("icon_highlight_url", stickerCategoryItemWrapper.getIconHighlightUrl());
                                contentValues.put("icon_highlight_md5", stickerCategoryItemWrapper.getIconHighlightMd5());
                                if (!TextUtils.isEmpty(stickerCategoryItemWrapper.getIconHighlightPath())) {
                                    contentValues.put("icon_highlight_path", stickerCategoryItemWrapper.getIconHighlightPath());
                                }
                                if (!TextUtils.isEmpty(stickerCategoryItemWrapper.getIconHighlightFileUri())) {
                                    contentValues.put("icon_highlight_file_uri", stickerCategoryItemWrapper.getIconHighlightFileUri());
                                }
                                contentValues.put("position", Integer.valueOf(stickerCategoryItemWrapper.getPosition()));
                                if (!stickerCategoryItemWrapper.isCategoryNew()) {
                                    contentValues.put("is_new", Integer.valueOf(stickerCategoryItemWrapper.isCategoryNew() ? 1 : 0));
                                }
                                contentValues.put("is_valid", Integer.valueOf(stickerCategoryItemWrapper.isCategoryValid() ? 1 : 0));
                                int update = openDatabase.update("sticker_category", contentValues, str5, (String[]) null);
                                String str7 = str6;
                                try {
                                    d.b(str7, "updateOrAddToCategoryTable, update count: " + update + ", category: " + stickerCategoryItemWrapper);
                                    str2 = str7;
                                    th3 = null;
                                    if (cursor == null) {
                                        try {
                                            cursor.close();
                                        } catch (Exception e) {
                                            e = e;
                                        }
                                    }
                                    it = it2;
                                    String str8 = str;
                                    Throwable th4 = th3;
                                    str3 = str8;
                                } catch (Throwable th5) {
                                    th2 = th5;
                                    str = str7;
                                    th = null;
                                    if (cursor != null) {
                                    }
                                    throw th2;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                th2 = th;
                                str = str6;
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
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        cursor = query;
                        th2 = th;
                        str = str6;
                        th = null;
                        if (cursor != null) {
                        }
                        throw th2;
                    }
                }
                cursor = query;
                StickerCategoryItemWrapper stickerCategoryItemWrapper2 = stickerCategoryItemWrapper;
                String str9 = str6;
                try {
                    contentValues.put("readable_id", stickerCategoryItemWrapper2.getReadableId());
                    contentValues.put("category_name", stickerCategoryItemWrapper2.getCategoryName());
                    contentValues.put("icon_url", stickerCategoryItemWrapper2.getIconUrl());
                    contentValues.put("icon_path", stickerCategoryItemWrapper2.getIconPath());
                    contentValues.put("icon_md5", stickerCategoryItemWrapper2.getIconMd5());
                    contentValues.put("icon_file_uri", stickerCategoryItemWrapper2.getIconFileUri());
                    contentValues.put("icon_highlight_url", stickerCategoryItemWrapper2.getIconHighlightUrl());
                    contentValues.put("icon_highlight_path", stickerCategoryItemWrapper2.getIconHighlightPath());
                    contentValues.put("icon_highlight_md5", stickerCategoryItemWrapper2.getIconHighlightMd5());
                    contentValues.put("icon_highlight_file_uri", stickerCategoryItemWrapper2.getIconHighlightFileUri());
                    contentValues.put("request_time", Long.valueOf(stickerCategoryItemWrapper2.getLastRequestTime()));
                    contentValues.put("position", Integer.valueOf(stickerCategoryItemWrapper2.getPosition()));
                    contentValues.put("is_new", Integer.valueOf(stickerCategoryItemWrapper2.isCategoryNew() ? 1 : 0));
                    contentValues.put("is_valid", Integer.valueOf(stickerCategoryItemWrapper2.isCategoryValid() ? 1 : 0));
                    th3 = null;
                    long insert = openDatabase.insert("sticker_category", (String) null, contentValues);
                    str2 = str9;
                    try {
                        d.b(str2, "updateOrAddToCategoryTable, insert rowId: " + insert + ", category: " + stickerCategoryItemWrapper2);
                        if (cursor == null) {
                        }
                        it = it2;
                        String str82 = str;
                        Throwable th42 = th3;
                        str3 = str82;
                    } catch (Throwable th9) {
                        th = th9;
                        th3 = th;
                        throw th3;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    str2 = str9;
                    th3 = null;
                    th = th3;
                    th2 = th;
                    if (cursor != null) {
                    }
                    throw th2;
                }
            }
            String str10 = str3;
            openDatabase.setTransactionSuccessful();
            if (openDatabase == null) {
                return true;
            }
            openDatabase.endTransaction();
            openDatabase.close();
            return true;
        } catch (Exception e2) {
            e = e2;
            str = str3;
            try {
                d.d(str, "updateOrAddToCategoryTable, update list, e: " + e);
            } finally {
                if (openDatabase != null) {
                    openDatabase.endTransaction();
                    openDatabase.close();
                }
            }
        }
    }
}
