package com.oppo.camera.sticker.download.thumbnail;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.sticker.a.a;
import com.oppo.camera.sticker.d.c;
import com.oppo.camera.sticker.data.StickerCategoryItem;
import com.oppo.camera.sticker.data.StickerCategoryItemWrapper;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.data.StickerItemWrapper;
import com.oppo.camera.sticker.download.thumbnail.b;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ThumbDownloadService extends IntentService implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private ThreadPoolExecutor f2418a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f2419b = 0;

    public ThumbDownloadService() {
        super("ThumbDownloadService");
    }

    private ThreadPoolExecutor a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(10, 10, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    private void a(Context context) {
        List<StickerCategoryItem> a2 = a.a(context);
        ArrayList<StickerCategoryItemWrapper> arrayList = new ArrayList<>();
        for (StickerCategoryItem next : a2) {
            if (next instanceof StickerCategoryItemWrapper) {
                StickerCategoryItemWrapper stickerCategoryItemWrapper = (StickerCategoryItemWrapper) next;
                if (TextUtils.isEmpty(stickerCategoryItemWrapper.getIconUrl()) && TextUtils.isEmpty(stickerCategoryItemWrapper.getIconHighlightUrl())) {
                    d.d("ThumbDownloadService", "no download url, categoryItemWrapper: " + stickerCategoryItemWrapper.getReadableId());
                } else if (TextUtils.isEmpty(next.getIconFileUri()) || TextUtils.isEmpty(next.getIconHighlightFileUri())) {
                    arrayList.add(stickerCategoryItemWrapper);
                } else if (!a(stickerCategoryItemWrapper.getIconPath(), stickerCategoryItemWrapper.getIconMd5())) {
                    arrayList.add(stickerCategoryItemWrapper);
                } else if (!a(stickerCategoryItemWrapper.getIconHighlightPath(), stickerCategoryItemWrapper.getIconHighlightMd5())) {
                    arrayList.add(stickerCategoryItemWrapper);
                }
            }
        }
        synchronized (this) {
            this.f2419b += arrayList.size();
        }
        for (StickerCategoryItemWrapper bVar : arrayList) {
            this.f2418a.submit(new b(this, bVar, this));
        }
    }

    private boolean a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return c.a(str, str2);
        }
        d.d("ThumbDownloadService", "checkMd5, empty value! filePath: " + str + ", fileMd5: " + str2);
        return false;
    }

    private void b(Context context) {
        List<StickerItem> a2 = com.oppo.camera.sticker.a.b.a(context, false);
        ArrayList<StickerItemWrapper> arrayList = new ArrayList<>();
        for (StickerItem next : a2) {
            if (next instanceof StickerItemWrapper) {
                StickerItemWrapper stickerItemWrapper = (StickerItemWrapper) next;
                if (TextUtils.isEmpty(stickerItemWrapper.getThumbnailUrl()) && TextUtils.isEmpty(stickerItemWrapper.getLogoUrl())) {
                    d.d("ThumbDownloadService", "downloadStickerThumbnail, no download url, sticker uuid: " + stickerItemWrapper.getStickerUUID() + ", name: " + stickerItemWrapper.getStickerName());
                } else if (TextUtils.isEmpty(stickerItemWrapper.getThumbnailFileUri())) {
                    arrayList.add(stickerItemWrapper);
                } else if (!TextUtils.isEmpty(stickerItemWrapper.getLogoUrl()) && TextUtils.isEmpty(stickerItemWrapper.getLogoFileUri())) {
                    arrayList.add(stickerItemWrapper);
                } else if (!a(stickerItemWrapper.getThumbnailPath(), stickerItemWrapper.getThumbnailMd5())) {
                    arrayList.add(stickerItemWrapper);
                } else if (!TextUtils.isEmpty(stickerItemWrapper.getLogoPath()) && !a(stickerItemWrapper.getLogoPath(), stickerItemWrapper.getLogoMd5())) {
                    arrayList.add(stickerItemWrapper);
                }
            }
        }
        synchronized (this) {
            this.f2419b += arrayList.size();
        }
        for (StickerItemWrapper bVar : arrayList) {
            this.f2418a.submit(new b(this, bVar, this));
        }
    }

    public void a(Context context, boolean z, String str) {
        synchronized (this) {
            this.f2419b--;
            d.b("ThumbDownloadService", "onFirstDownloadFinish, mThumbnailDownloadCount: " + this.f2419b);
            if (this.f2419b == 0) {
                androidx.e.a.a.a(getApplicationContext()).a(new Intent("com.sticker.thumbnail.service"));
            }
        }
    }

    public void b(Context context, boolean z, String str) {
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        d.b("ThumbDownloadService", "onCreate");
        this.f2418a = a();
    }

    public void onDestroy() {
        super.onDestroy();
        d.b("ThumbDownloadService", "onDestroy");
    }

    /* access modifiers changed from: protected */
    public void onHandleIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            d.b("ThumbDownloadService", "onHandleIntent, action: " + action);
            if ("com.coloros.providers.sticker.download.category.thumbnail".equals(action)) {
                a(this);
            } else if ("com.coloros.providers.sticker.download.sticker.thumbnail".equals(action)) {
                b(this);
            }
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            return super.onStartCommand(intent, i, i2);
        }
        d.d("ThumbDownloadService", "onStartCommand, intent is null");
        return 1;
    }
}
