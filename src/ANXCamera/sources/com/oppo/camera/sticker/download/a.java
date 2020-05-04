package com.oppo.camera.sticker.download;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.android.providers.downloads.DownloadInfoData;
import com.oppo.camera.d;
import com.oppo.camera.sticker.a.b;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.data.StickerItemWrapper;
import com.oppo.camera.sticker.h;
import com.oppo.providers.downloads.DownloadManager;
import com.oppo.providers.downloads.OppoDownloads;
import java.io.File;
import java.util.List;

/* compiled from: DownloadManagerHelper */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2412a = (Environment.getExternalStorageDirectory() + File.separator + "ColorOS" + File.separator + ".Sticker" + File.separator + ".download");

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f2413b = null;
    private b c = null;
    /* access modifiers changed from: private */
    public Object d = new Object();

    public static a a() {
        if (f2413b == null) {
            synchronized (a.class) {
                if (f2413b == null) {
                    f2413b = new a();
                }
            }
        }
        return f2413b;
    }

    private File a(String str) {
        File file = new File(f2412a, str);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && parentFile.mkdirs()) {
            d.d("DownloadManagerHelper", "getDownloadFilePath, mkdirs fail! file: " + file.getPath());
        }
        return file;
    }

    private String b() {
        return "application/x-zip-compressed";
    }

    public int a(Context context, StickerItem stickerItem, int i, boolean z) {
        if (stickerItem == null || TextUtils.isEmpty(stickerItem.getFileDownloadUrl())) {
            return -1;
        }
        d.b("DownloadManagerHelper", "startDownload, downloadType: " + i + ", allowMobileNetwork: " + z + ", stickerItem: " + stickerItem);
        File a2 = a(stickerItem.getStickerUUID());
        if (i != 1 || !a2.exists() || a2.delete()) {
            DownloadManager downloadManagerInstance = DownloadManager.getDownloadManagerInstance(context);
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(stickerItem.getFileDownloadUrl()));
            request.setDestinationUri(Uri.fromFile(a2));
            request.setTitle(stickerItem.getStickerName());
            request.setMimeType(b());
            request.setFileMD5(stickerItem.getFileMd5());
            request.setNotificationVisibility(2);
            request.setVisibleInUi(2);
            request.setAllowedOverRoaming(true);
            request.setExtra(stickerItem.getStickerUUID());
            if (z) {
                request.setAllowedNetworkTypes(7);
            } else {
                request.setAllowedNetworkTypes(6);
            }
            if (i == 2) {
                request.setIsRelpaceFile(true);
            } else {
                request.setIsRelpaceFile(false);
            }
            String enqueueWithUuid = downloadManagerInstance.enqueueWithUuid(request);
            if (TextUtils.isEmpty(enqueueWithUuid)) {
                return -3;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("download_uuid", enqueueWithUuid);
            contentValues.put("is_new", false);
            int a3 = b.a(context, OppoDownloads.COLUMN_UUID, stickerItem.getStickerUUID(), contentValues);
            stickerItem.setDownloadUid(enqueueWithUuid);
            stickerItem.setStickerNew(false);
            d.b("DownloadManagerHelper", "startDownload, update download uuid. result: " + a3 + ", downloadUuid: " + enqueueWithUuid);
            return 0;
        }
        d.d("DownloadManagerHelper", "startDownload, delete exist file fail! path: " + a2);
        return -2;
    }

    public void a(Context context) {
        if (this.c == null) {
            this.c = new b(context);
        }
        DownloadManager.getDownloadManagerInstance(context, (String) null).registerDownloadStatesCallback(this.c);
    }

    public void a(Context context, StickerItem stickerItem, boolean z) {
        if (stickerItem == null) {
            d.d("DownloadManagerHelper", "resumeDownload, sticker item is null!");
            return;
        }
        DownloadManager downloadManagerInstance = DownloadManager.getDownloadManagerInstance(context);
        if (z) {
            downloadManagerInstance.setAllowedNetworkTypesWithUuid(7, stickerItem.getDownloadUid());
        } else {
            downloadManagerInstance.setAllowedNetworkTypesWithUuid(6, stickerItem.getDownloadUid());
        }
        downloadManagerInstance.resumeDownloadWithUuid(stickerItem.getDownloadUid());
    }

    public void b(Context context) {
        DownloadManager.getDownloadManagerInstance(context, (String) null).unregisterDownloadStatesCallback();
        this.c = null;
    }

    public void b(Context context, StickerItem stickerItem, boolean z) {
        if (stickerItem == null) {
            d.d("DownloadManagerHelper", "restartDownload, sticker item is null!");
            return;
        }
        DownloadManager downloadManagerInstance = DownloadManager.getDownloadManagerInstance(context);
        if (z) {
            try {
                downloadManagerInstance.setAllowedNetworkTypesWithUuid(7, stickerItem.getDownloadUid());
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        } else {
            downloadManagerInstance.setAllowedNetworkTypesWithUuid(6, stickerItem.getDownloadUid());
        }
        downloadManagerInstance.restartDownloadWithUuid(stickerItem.getDownloadUid());
    }

    public void c(final Context context) {
        new Thread(new Runnable() {
            public void run() {
                synchronized (a.this.d) {
                    List<StickerItem> a2 = b.a(context);
                    d.b("DownloadManagerHelper", "syncDownloadData, unDownloadSticker.size(): " + a2.size());
                    for (StickerItem next : a2) {
                        if (TextUtils.isEmpty(next.getDownloadUid())) {
                            d.d("DownloadManagerHelper", "syncDownloadDataFromDownloadCenter, sticker download uuid is empty! sticker: " + next);
                            b.b(context, next);
                        } else {
                            d.b("DownloadManagerHelper", "unDownloadedSticker: " + next);
                            DownloadInfoData downloadDataWithUuid = DownloadManager.getDownloadManagerInstance(context).getDownloadDataWithUuid(next.getDownloadUid());
                            d.b("DownloadManagerHelper", "downloadInfoData: " + downloadDataWithUuid);
                            if (downloadDataWithUuid == null) {
                                d.d("DownloadManagerHelper", "syncDownloadDataFromDownloadCenter, download info is null! sticker: " + next);
                                b.b(context, next);
                            } else if (downloadDataWithUuid.mStatus != 8) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("download_state", Integer.valueOf(downloadDataWithUuid.mStatus));
                                b.a(context, OppoDownloads.COLUMN_UUID, next.getStickerUUID(), contentValues);
                            } else if (!c.a(context, (StickerItemWrapper) next, downloadDataWithUuid.mFileName)) {
                                b.b(context, next);
                            }
                        }
                    }
                }
            }
        }).start();
    }

    public void c(Context context, StickerItem stickerItem, boolean z) {
        d.b("DownloadManagerHelper", "startDownloadSticker, allowAllNetwork: " + z + ", stickerItem: " + stickerItem);
        if (stickerItem == null) {
            d.d("DownloadManagerHelper", "startDownloadSticker, stickerItem is null!");
            return;
        }
        StickerItemWrapper a2 = b.a(context, OppoDownloads.COLUMN_UUID, stickerItem.getStickerUUID());
        if (a2 == null) {
            d.d("DownloadManagerHelper", "startDownloadSticker, can not find the sticker in db! stickerItem: " + stickerItem);
            return;
        }
        boolean z2 = stickerItem.getDownloadState() != a2.getDownloadState();
        stickerItem.copy(a2);
        int downloadState = stickerItem.getDownloadState();
        if (stickerItem.needUpdate()) {
            int a3 = a(context, stickerItem, 2, z);
            if (a3 != 0) {
                h.a(context).a(stickerItem, a3);
            }
        } else if (downloadState == 0) {
            int a4 = a(context, stickerItem, 1, z);
            if (a4 != 0) {
                h.a(context).a(stickerItem, a4);
            }
        } else if (downloadState != 1 && downloadState != 2) {
            if (downloadState == 4) {
                a(context, stickerItem, z);
            } else if (downloadState != 8) {
                if (downloadState == 16) {
                    b(context, stickerItem, z);
                }
            } else if (z2) {
                d.d("DownloadManagerHelper", "startDownloadSticker, download state is different, restart it again!");
                b(context, stickerItem, z);
            }
        }
    }
}
