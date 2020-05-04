package com.oppo.camera.sticker.download;

import android.content.ContentValues;
import android.content.Context;
import com.android.providers.downloads.DownloadInfoData;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.data.StickerItemWrapper;
import com.oppo.camera.sticker.h;
import com.oppo.providers.downloads.DownloadManager;
import com.oppo.providers.downloads.DownloadStatesCallback;
import com.oppo.providers.downloads.OppoDownloads;
import java.util.List;

/* compiled from: DownloadStatesCallbackImpl */
public class b implements DownloadStatesCallback {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f2416a = DebugUtil.debugPropertyEnabled("sticker.download.debuggable", DebugUtil.DEBUG_DISABLE);

    /* renamed from: b  reason: collision with root package name */
    private Context f2417b = null;

    public b(Context context) {
        this.f2417b = context;
    }

    private int a(DownloadInfoData downloadInfoData) {
        int i = (int) downloadInfoData.mReason;
        if (i == 1011) {
            return -49;
        }
        if (i == 1012) {
            return -50;
        }
        switch (i) {
            case 1:
                return -26;
            case 2:
                return -25;
            case 3:
                return -24;
            case 4:
                break;
            case 5:
                return -21;
            case 6:
                return -23;
            case 7:
                return -22;
            default:
                switch (i) {
                    case 1000:
                        return -40;
                    case 1001:
                        return -41;
                    case 1002:
                        return -42;
                    default:
                        switch (i) {
                            case 1004:
                                return -43;
                            case DownloadManager.ERROR_TOO_MANY_REDIRECTS /*1005*/:
                                return -44;
                            case 1006:
                                return -45;
                            case 1007:
                                return -46;
                            case 1008:
                                return -47;
                            case 1009:
                                return -48;
                            default:
                                d.d("DownloadStateCallbackImpl", "getDownloadErrorCode, unknown error! info: " + downloadInfoData);
                                if (downloadInfoData.mStatus != 4) {
                                    return -40;
                                }
                                break;
                        }
                }
        }
        return -20;
    }

    private void a(DownloadInfoData downloadInfoData, boolean z) {
        if (downloadInfoData == null) {
            d.d("DownloadStateCallbackImpl", "handleDownloadStateChanged, downloadInfo is null!");
            return;
        }
        StickerItemWrapper a2 = com.oppo.camera.sticker.a.b.a(this.f2417b, "download_uuid", downloadInfoData.mUuid);
        if (a2 == null) {
            d.d("DownloadStateCallbackImpl", "handleDownloadStateChanged, can't find the sticker item with download uuid.  downloadInfo: " + downloadInfoData);
            return;
        }
        if (f2416a) {
            d.b("DownloadStateCallbackImpl", "handleDownloadStateChanged, downloadDeleted: " + z + ", stickerItem: " + a2 + ", downloadInfo: " + downloadInfoData);
        }
        if (z) {
            e(a2, downloadInfoData);
            return;
        }
        int i = downloadInfoData.mStatus;
        if (i == 1) {
            a(a2, downloadInfoData);
        } else if (i == 2) {
            b(a2, downloadInfoData);
        } else if (i == 4) {
            c(a2, downloadInfoData);
        } else if (i == 8) {
            d(a2, downloadInfoData);
        } else if (i != 16) {
            d.d("DownloadStateCallbackImpl", "handleDownloadStateChanged, unsupported download status!");
        } else {
            a(a2, downloadInfoData, false);
        }
    }

    private void a(StickerItemWrapper stickerItemWrapper, DownloadInfoData downloadInfoData) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_new", false);
        contentValues.put("download_state", Integer.valueOf(downloadInfoData.mStatus));
        int a2 = com.oppo.camera.sticker.a.b.a(this.f2417b, OppoDownloads.COLUMN_UUID, stickerItemWrapper.getStickerUUID(), contentValues);
        if (f2416a) {
            d.b("DownloadStateCallbackImpl", "handleDownloadPending, update count: " + a2);
        }
        stickerItemWrapper.setStickerNew(false);
        stickerItemWrapper.setDownloadState(downloadInfoData.mStatus);
    }

    private void a(StickerItemWrapper stickerItemWrapper, DownloadInfoData downloadInfoData, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("download_state", 16);
        int a2 = com.oppo.camera.sticker.a.b.a(this.f2417b, OppoDownloads.COLUMN_UUID, stickerItemWrapper.getStickerUUID(), contentValues);
        if (f2416a) {
            d.b("DownloadStateCallbackImpl", "handleDownloadFail, update count: " + a2);
        }
        d.d("DownloadStateCallbackImpl", "handleDownloadFail, isCopyFileError: " + z + ", downloadInfo: " + downloadInfoData + ", stickerItem: " + stickerItemWrapper);
        stickerItemWrapper.setDownloadState(16);
        if (z) {
            h.a(this.f2417b).a((StickerItem) stickerItemWrapper, -51);
        } else {
            h.a(this.f2417b).a((StickerItem) stickerItemWrapper, a(downloadInfoData));
        }
    }

    private void b(StickerItemWrapper stickerItemWrapper, DownloadInfoData downloadInfoData) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("download_state", Integer.valueOf(downloadInfoData.mStatus));
        int a2 = com.oppo.camera.sticker.a.b.a(this.f2417b, OppoDownloads.COLUMN_UUID, stickerItemWrapper.getStickerUUID(), contentValues);
        if (f2416a) {
            d.b("DownloadStateCallbackImpl", "handleDownloadRunning, update count: " + a2);
        }
        stickerItemWrapper.setStickerNew(false);
        stickerItemWrapper.setDownloadState(downloadInfoData.mStatus);
    }

    private void c(StickerItemWrapper stickerItemWrapper, DownloadInfoData downloadInfoData) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("download_state", Integer.valueOf(downloadInfoData.mStatus));
        int a2 = com.oppo.camera.sticker.a.b.a(this.f2417b, OppoDownloads.COLUMN_UUID, stickerItemWrapper.getStickerUUID(), contentValues);
        d.b("DownloadStateCallbackImpl", "handleDownloadPaused, count: " + a2 + ", stickerItem: " + stickerItemWrapper + ", downloadInfo: " + downloadInfoData);
        stickerItemWrapper.setDownloadState(downloadInfoData.mStatus);
        h.a(this.f2417b).b(stickerItemWrapper, a(downloadInfoData));
    }

    private void d(StickerItemWrapper stickerItemWrapper, DownloadInfoData downloadInfoData) {
        boolean a2 = c.a(this.f2417b, stickerItemWrapper, downloadInfoData.mFileName);
        d.b("DownloadStateCallbackImpl", "handleDownloadSuccess, result: " + a2 + "stickerItem: " + stickerItemWrapper + ", downloadInfo: " + downloadInfoData);
        if (a2) {
            h.a(this.f2417b).b((StickerItem) stickerItemWrapper);
            return;
        }
        d.d("DownloadStateCallbackImpl", "handleDownloadSuccess, installSticker sticker fail! stickerItem: " + stickerItemWrapper);
        a(stickerItemWrapper, downloadInfoData, true);
    }

    private void e(StickerItemWrapper stickerItemWrapper, DownloadInfoData downloadInfoData) {
        if (stickerItemWrapper.getDownloadState() == 8) {
            d.d("DownloadStateCallbackImpl", "handleDownloadDelete, sticker is download successful! stickerItem: " + stickerItemWrapper);
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("download_state", 0);
        int a2 = com.oppo.camera.sticker.a.b.a(this.f2417b, OppoDownloads.COLUMN_UUID, stickerItemWrapper.getStickerUUID(), contentValues);
        d.b("DownloadStateCallbackImpl", "handleDownloadDelete, count: " + a2 + ", stickerItem: " + stickerItemWrapper);
        stickerItemWrapper.setDownloadState(0);
    }

    public void onDownloadDeleted(List<DownloadInfoData> list) {
        if (list == null || list.isEmpty()) {
            d.d("DownloadStateCallbackImpl", "onDownloadDeleted, dataList is empty!");
            return;
        }
        for (DownloadInfoData next : list) {
            if (f2416a) {
                d.b("DownloadStateCallbackImpl", "onDownloadDeleted, data: " + next);
            }
            a(next, true);
        }
    }

    public void onDownloadInserted(List<DownloadInfoData> list) {
        if (list == null || list.isEmpty()) {
            d.d("DownloadStateCallbackImpl", "onDownloadInserted, dataList is empty!");
            return;
        }
        for (DownloadInfoData next : list) {
            if (f2416a) {
                d.b("DownloadStateCallbackImpl", "onDownloadInserted, data: " + next);
            }
            a(next, false);
        }
    }

    public void onDownloadUpdated(List<DownloadInfoData> list) {
        if (list == null || list.isEmpty()) {
            d.d("DownloadStateCallbackImpl", "onDownloadUpdated, dataList is empty!");
            return;
        }
        for (DownloadInfoData next : list) {
            if (f2416a) {
                d.b("DownloadStateCallbackImpl", "onDownloadUpdated, data: " + next);
            }
            a(next, false);
        }
    }
}
