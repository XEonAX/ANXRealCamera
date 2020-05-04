package com.oppo.camera.sticker.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.sticker.a.b;
import com.oppo.camera.sticker.a.c;
import com.oppo.providers.downloads.OppoDownloads;
import java.util.ArrayList;
import java.util.List;

public class StickerProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final UriMatcher f2436a = new UriMatcher(-1);

    /* renamed from: b  reason: collision with root package name */
    private a f2437b = null;

    private static class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "sticker.db", (SQLiteDatabase.CursorFactory) null, 2);
        }

        private void a(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL("DROP VIEW IF EXISTS sticker_view");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS sticker_item");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS sticker_category");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS multi_info");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS animoji_info");
            } catch (SQLException e) {
                d.c("StickerProvider", "deleteAllTables, couldn't delete table in downloads database. e: ", e);
            }
        }

        private void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            d.b("StickerProvider", "updateDatabase, fromVersion: " + i + ",toVersion: " + i2);
            if (i < i2) {
                if (i < 1) {
                    sQLiteDatabase.execSQL(com.oppo.camera.sticker.a.a.a());
                    sQLiteDatabase.execSQL(b.a());
                    sQLiteDatabase.execSQL(com.oppo.camera.sticker.a.d.a());
                }
                if (i < 2) {
                    sQLiteDatabase.execSQL("alter table sticker_item add material_type INTEGER DEFAULT 0");
                    sQLiteDatabase.execSQL(b.c());
                    sQLiteDatabase.execSQL(b.b());
                    sQLiteDatabase.execSQL("DROP VIEW IF EXISTS sticker_view");
                    sQLiteDatabase.execSQL(com.oppo.camera.sticker.a.d.b());
                }
            }
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            a(sQLiteDatabase, 0, 2);
        }

        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            d.d("StickerProvider", "onDowngrade, oldVersion: " + i + ", newVersion: " + i2);
            a(sQLiteDatabase);
            a(sQLiteDatabase, 0, 2);
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            a(sQLiteDatabase, i, 2);
        }
    }

    static {
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "sticker_item", 1);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "sticker_item/#", 2);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "sticker_category", 3);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "sticker_category/#", 4);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "sticker_view", 5);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "sticker_view/#", 6);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "multi_info", 7);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "multi_info/#", 8);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "animoji_info", 9);
        f2436a.addURI("com.oppo.camera.sticker.db.provider", "animoji_info/#", 10);
    }

    private Uri a(SQLiteDatabase sQLiteDatabase, Uri uri, ContentValues contentValues) {
        if (contentValues != null) {
            int match = f2436a.match(uri);
            long j = -1;
            if (match != 1) {
                if (match != 3) {
                    if (match == 5) {
                        throw new IllegalStateException("insert exception! Can not insert a row into db View!");
                    } else if (match != 7) {
                        if (match != 9) {
                            d.d("StickerProvider", "insert error! unsupported uri! uri: " + uri);
                        } else if (contentValues.containsKey(OppoDownloads.COLUMN_UUID)) {
                            j = sQLiteDatabase.insert("animoji_info", (String) null, contentValues);
                        } else {
                            throw new IllegalStateException("insert exception! Attempting to add animoji info without uuid");
                        }
                    } else if (contentValues.containsKey(OppoDownloads.COLUMN_UUID)) {
                        j = sQLiteDatabase.insert("multi_info", (String) null, contentValues);
                    } else {
                        throw new IllegalStateException("insert exception! Attempting to add multi info without uuid");
                    }
                } else if (contentValues.containsKey("readable_id")) {
                    j = sQLiteDatabase.insert("sticker_category", (String) null, contentValues);
                } else {
                    throw new IllegalStateException("insert exception! Attempting to add sticker category without id");
                }
            } else if (contentValues.containsKey(OppoDownloads.COLUMN_UUID)) {
                j = sQLiteDatabase.insert("sticker_item", (String) null, contentValues);
            } else {
                throw new IllegalStateException("insert exception! Attempting to add sticker without uuid");
            }
            if (j <= 0) {
                return null;
            }
            return ContentUris.withAppendedId(uri, j);
        }
        throw new IllegalStateException("insert exception! Attempting to insert null values");
    }

    private void a(Uri uri) {
        if (uri != null) {
            String queryParameter = uri.getQueryParameter("notify");
            if (queryParameter == null || DebugUtil.DEBUG_ENABLE.equals(queryParameter)) {
                getContext().getContentResolver().notifyChange(uri, (ContentObserver) null);
                if (!uri.equals(c.e.f2378a)) {
                    getContext().getContentResolver().notifyChange(c.e.f2378a, (ContentObserver) null);
                }
            }
        }
    }

    private String[] a(List<String> list, String[] strArr) {
        int size = list.size();
        if (size == 0) {
            return strArr;
        }
        int length = strArr != null ? strArr.length : 0;
        String[] strArr2 = new String[(size + length)];
        for (int i = 0; i < size; i++) {
            strArr2[i] = list.get(i);
        }
        for (int i2 = 0; i2 < length; i2++) {
            strArr2[size + i2] = strArr[i2];
        }
        return strArr2;
    }

    /* JADX INFO: finally extract failed */
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        SQLiteDatabase writableDatabase = this.f2437b.getWritableDatabase();
        if (writableDatabase != null) {
            writableDatabase.beginTransaction();
            int i = 0;
            int i2 = 0;
            while (i < contentValuesArr.length) {
                try {
                    ContentValues contentValues = contentValuesArr[i];
                    if (!(contentValues == null || a(writableDatabase, uri, contentValues) == null)) {
                        i2++;
                    }
                    i++;
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            a(uri);
            return i2;
        }
        throw new IllegalStateException("bulkInsert couldn't open database for uri: " + uri);
    }

    public int delete(Uri uri, String str, String[] strArr) {
        String str2;
        int match = f2436a.match(uri);
        SQLiteDatabase writableDatabase = this.f2437b.getWritableDatabase();
        String str3 = "animoji_info";
        switch (match) {
            case 1:
                str3 = "sticker_item";
                break;
            case 2:
                str2 = "_id=" + uri.getPathSegments().get(1);
                str3 = "sticker_item";
                break;
            case 3:
                str3 = "sticker_category";
                break;
            case 4:
                str2 = "_id=" + uri.getPathSegments().get(1);
                str3 = "sticker_category";
                break;
            case 7:
                str3 = "multi_info";
                break;
            case 8:
                str2 = "_id=" + uri.getPathSegments().get(1);
                str3 = "multi_info";
                break;
            case 9:
                break;
            case 10:
                str2 = "_id=" + uri.getPathSegments().get(1);
                break;
            default:
                throw new IllegalStateException("delete exception! unknown uri: " + uri.toString());
        }
        str2 = null;
        if (TextUtils.isEmpty(str)) {
            str = str2;
        } else if (!TextUtils.isEmpty(str2)) {
            str = str2 + " AND (" + str + ")";
        }
        int i = 0;
        try {
            i = writableDatabase.delete(str3, str, strArr);
            d.b("StickerProvider", "delete count: " + i);
        } catch (Exception e) {
            d.e("StickerProvider", "delete exception! e: " + e);
        }
        if (i > 0) {
            a(uri);
        }
        return i;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        SQLiteDatabase writableDatabase = this.f2437b.getWritableDatabase();
        if (writableDatabase != null) {
            Uri a2 = a(writableDatabase, uri, contentValues);
            a(a2);
            return a2;
        }
        throw new IllegalStateException("insert, couldn't open database for uri: " + uri);
    }

    public boolean onCreate() {
        this.f2437b = new a(getContext());
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Uri uri2 = uri;
        SQLiteDatabase readableDatabase = this.f2437b.getReadableDatabase();
        String queryParameter = uri.getQueryParameter("limit");
        ArrayList arrayList = new ArrayList();
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        switch (f2436a.match(uri)) {
            case 1:
                sQLiteQueryBuilder.setTables("sticker_item");
                break;
            case 2:
                sQLiteQueryBuilder.setTables("sticker_item");
                sQLiteQueryBuilder.appendWhere("_id=?");
                arrayList.add(uri.getPathSegments().get(1));
                break;
            case 3:
                sQLiteQueryBuilder.setTables("sticker_category");
                break;
            case 4:
                sQLiteQueryBuilder.setTables("sticker_category");
                sQLiteQueryBuilder.appendWhere("_id=?");
                arrayList.add(uri.getPathSegments().get(1));
                break;
            case 5:
                sQLiteQueryBuilder.setTables("sticker_view");
                break;
            case 6:
                sQLiteQueryBuilder.setTables("sticker_view");
                sQLiteQueryBuilder.appendWhere("_id=?");
                arrayList.add(uri.getPathSegments().get(1));
                break;
            case 7:
                sQLiteQueryBuilder.setTables("multi_info");
                break;
            case 8:
                sQLiteQueryBuilder.setTables("multi_info");
                sQLiteQueryBuilder.appendWhere("_id=?");
                arrayList.add(uri.getPathSegments().get(1));
                break;
            case 9:
                sQLiteQueryBuilder.setTables("animoji_info");
                break;
            case 10:
                sQLiteQueryBuilder.setTables("animoji_info");
                sQLiteQueryBuilder.appendWhere("_id=?");
                arrayList.add(uri.getPathSegments().get(1));
                break;
            default:
                throw new IllegalStateException("query error! unknown uri: " + uri.toString());
        }
        Cursor cursor = null;
        try {
            cursor = sQLiteQueryBuilder.query(readableDatabase, strArr, str, a(arrayList, strArr2), (String) null, (String) null, str2, queryParameter);
            cursor.setNotificationUri(getContext().getContentResolver(), uri);
            return cursor;
        } catch (IllegalStateException e) {
            d.e("StickerProvider", "query exception! e: " + e);
            return cursor;
        }
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2;
        int match = f2436a.match(uri);
        SQLiteDatabase writableDatabase = this.f2437b.getWritableDatabase();
        String str3 = "animoji_info";
        switch (match) {
            case 1:
                str3 = "sticker_item";
                break;
            case 2:
                str2 = "_id=" + uri.getPathSegments().get(1);
                str3 = "sticker_item";
                break;
            case 3:
                str3 = "sticker_category";
                break;
            case 4:
                str2 = "_id=" + uri.getPathSegments().get(1);
                str3 = "sticker_category";
                break;
            case 7:
                str3 = "multi_info";
                break;
            case 8:
                str2 = "_id=" + uri.getPathSegments().get(1);
                str3 = "multi_info";
                break;
            case 9:
                break;
            case 10:
                str2 = "_id=" + uri.getPathSegments().get(1);
                break;
            default:
                throw new IllegalStateException("update exception! uri: " + uri.toString());
        }
        str2 = null;
        if (TextUtils.isEmpty(str)) {
            str = str2;
        } else if (!TextUtils.isEmpty(str2)) {
            str = str2 + " AND (" + str + ")";
        }
        int i = 0;
        try {
            i = writableDatabase.update(str3, contentValues, str, strArr);
        } catch (Exception e) {
            d.e("StickerProvider", "delete exception! e: " + e);
        }
        if (i > 0) {
            a(uri);
        }
        d.b("StickerProvider", "update, count: " + i + ", uri: " + uri);
        return i;
    }
}
