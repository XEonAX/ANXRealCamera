package com.oppo.camera.sticker.download.thumbnail;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.sticker.c.a;
import com.oppo.camera.sticker.d.c;
import java.io.File;
import java.util.Map;
import okhttp3.RequestBody;

/* compiled from: ThumbnailDownloadThread */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f2420a = DebugUtil.debugPropertyEnabled("debug.sticker.thumb.download", DebugUtil.DEBUG_ENABLE);
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public Context f2421b = null;
    /* access modifiers changed from: private */
    public a c = null;
    /* access modifiers changed from: private */
    public a d = null;

    /* compiled from: ThumbnailDownloadThread */
    public interface a {
        void a(Context context, boolean z, String str);

        void b(Context context, boolean z, String str);
    }

    public b(Context context, a aVar, a aVar2) {
        this.f2421b = context;
        this.c = aVar;
        this.d = aVar2;
    }

    private void a(String str, String str2, a.C0065a aVar) {
        d.b("ThumbnailDownloadThread", "download, url: " + str + ", destPath: " + str2);
        com.oppo.camera.sticker.c.a aVar2 = new com.oppo.camera.sticker.c.a(this.f2421b);
        aVar2.a(aVar2.a(a.b.POST, str, (Map<String, String>) null, (RequestBody) null), str2, aVar);
    }

    private boolean a(String str, String str2) {
        if (!new File(str).exists()) {
            d.d("ThumbnailDownloadThread", "checkMd5, file not exist!");
            return false;
        } else if (!TextUtils.isEmpty(str2)) {
            return c.a(str, str2);
        } else {
            d.d("ThumbnailDownloadThread", "checkMd5, empty md5!");
            return false;
        }
    }

    public void run() {
        final String firstDownloadUrl = this.c.getFirstDownloadUrl();
        if (!TextUtils.isEmpty(firstDownloadUrl)) {
            final String downloadFilePath = this.c.getDownloadFilePath(this.f2421b, firstDownloadUrl);
            if (!a(downloadFilePath, this.c.getFirstDownloadFileMd5())) {
                a(firstDownloadUrl, downloadFilePath, new a.C0065a() {
                    public void a() {
                        b.this.c.onFirstDownloadFinish(b.this.f2421b, true, downloadFilePath);
                        b.this.d.a(b.this.f2421b, true, downloadFilePath);
                        d.b("ThumbnailDownloadThread", "onSuccess, download success! firstDownloadUrl: " + firstDownloadUrl);
                    }

                    public void a(int i, String str) {
                        b.this.c.onFirstDownloadFinish(b.this.f2421b, false, downloadFilePath);
                        b.this.d.a(b.this.f2421b, false, downloadFilePath);
                        if (com.oppo.camera.sticker.d.b.a(new File(downloadFilePath))) {
                            d.b("ThumbnailDownloadThread", "onFail, download fail! delete exist file fail!");
                        }
                        d.d("ThumbnailDownloadThread", "download fail!, url: " + firstDownloadUrl + ", errorCode: " + i + ", errorMsg: " + str);
                    }
                });
            } else if (f2420a) {
                d.b("ThumbnailDownloadThread", "run, md5 is verified!, do not need download anymore!, firstDownloadUrl: " + firstDownloadUrl);
            }
        } else {
            d.b("ThumbnailDownloadThread", "firstDownloadUrl is empty!");
        }
        final String secondDownloadUrl = this.c.getSecondDownloadUrl();
        if (!TextUtils.isEmpty(secondDownloadUrl)) {
            final String downloadFilePath2 = this.c.getDownloadFilePath(this.f2421b, secondDownloadUrl);
            if (!a(downloadFilePath2, this.c.getSecondDownloadFileMd5())) {
                a(secondDownloadUrl, downloadFilePath2, new a.C0065a() {
                    public void a() {
                        b.this.c.onSecondDownloadFinish(b.this.f2421b, true, downloadFilePath2);
                        b.this.d.b(b.this.f2421b, true, downloadFilePath2);
                        d.b("ThumbnailDownloadThread", "onSuccess, second download success! firstDownloadUrl: " + secondDownloadUrl);
                    }

                    public void a(int i, String str) {
                        b.this.c.onSecondDownloadFinish(b.this.f2421b, false, downloadFilePath2);
                        b.this.d.b(b.this.f2421b, false, downloadFilePath2);
                        if (com.oppo.camera.sticker.d.b.a(new File(downloadFilePath2))) {
                            d.b("ThumbnailDownloadThread", "second download fail! delete exist file fail!");
                        }
                        d.d("ThumbnailDownloadThread", "onFail, second download fail!, url: " + secondDownloadUrl + ", errorCode: " + i + ", errorMsg: " + str);
                    }
                });
            } else if (f2420a) {
                d.b("ThumbnailDownloadThread", "run, md5 is verified!, do not need download anymore!, secondDownloadUrl: " + secondDownloadUrl);
            }
        } else {
            d.b("ThumbnailDownloadThread", "secondDownloadUrl is empty!");
        }
    }
}
