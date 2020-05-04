package com.oppo.camera.entry;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.oppo.camera.MyApplication;
import com.oppo.camera.c;
import com.oppo.camera.d;

public class EntryProvider extends ContentProvider implements c {

    /* renamed from: a  reason: collision with root package name */
    c f2128a = null;

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public boolean onCreate() {
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (this.f2128a == null) {
            this.f2128a = new c();
            ((MyApplication) getContext().getApplicationContext()).d();
            this.f2128a.a();
            this.f2128a.b();
            this.f2128a.c();
            this.f2128a.d();
            this.f2128a.e();
        }
        String path = uri.getPath();
        d.e("EntryProvider", "query, uri path: " + path);
        if (path == null || !path.contains("static_info")) {
            return null;
        }
        return this.f2128a;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
