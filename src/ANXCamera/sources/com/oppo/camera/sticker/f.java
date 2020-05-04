package com.oppo.camera.sticker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.debug.PrefUtils;
import com.oppo.camera.sticker.a.b;
import com.oppo.camera.sticker.c.a;
import com.oppo.camera.sticker.data.StickerCategoryItemWrapper;
import com.oppo.camera.sticker.data.StickerItemWrapper;
import com.oppo.camera.sticker.download.thumbnail.ThumbDownloadService;
import com.oppo.camera.sticker.protocol.Sticker;
import com.oppo.camera.sticker.protocol.StickerCategory;
import com.oppo.camera.sticker.protocol.StickerRequest;
import com.oppo.camera.sticker.protocol.StickerResponse;
import com.oppo.statistics.util.TimeInfoUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;

/* compiled from: StickerDataRequest */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private Context f2426a = null;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public a f2427b = null;
    private BroadcastReceiver c = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            d.b("StickerDataRequest", "onReceive intent: " + intent.toString());
            if ("com.sticker.thumbnail.service".equals(intent.getAction()) && f.this.f2427b != null) {
                f.this.f2427b.a(1);
            }
        }
    };

    /* compiled from: StickerDataRequest */
    public interface a {
        void a(int i);
    }

    public f(Context context) {
        this.f2426a = context;
    }

    private StickerCategoryItemWrapper a(StickerCategory stickerCategory, String str, long j) {
        StickerCategoryItemWrapper stickerCategoryItemWrapper = new StickerCategoryItemWrapper();
        stickerCategoryItemWrapper.setCategoryName(stickerCategory.name);
        if (!TextUtils.isEmpty(stickerCategory.iconPath)) {
            stickerCategoryItemWrapper.setIconUrl(str + stickerCategory.iconPath);
        }
        stickerCategoryItemWrapper.setIconMd5(stickerCategory.iconMd5);
        if (!TextUtils.isEmpty(stickerCategory.highlightIconPath)) {
            stickerCategoryItemWrapper.setIconHighlightUrl(str + stickerCategory.highlightIconPath);
        }
        stickerCategoryItemWrapper.setIconHighlightMd5(stickerCategory.highlightIconMd5);
        stickerCategoryItemWrapper.setLastRequestTime(j);
        stickerCategoryItemWrapper.setReadableId(stickerCategory.readableId);
        stickerCategoryItemWrapper.setPosition(stickerCategory.position.intValue());
        if (stickerCategory.isNew != null) {
            stickerCategoryItemWrapper.setCategoryNew(stickerCategory.isNew.booleanValue());
        }
        return stickerCategoryItemWrapper;
    }

    private StickerItemWrapper a(Sticker sticker, StickerCategoryItemWrapper stickerCategoryItemWrapper, String str, long j) {
        StickerItemWrapper stickerItemWrapper = new StickerItemWrapper();
        stickerItemWrapper.setStickerId(sticker.id.longValue());
        stickerItemWrapper.setStickerUUID(sticker.uuid);
        stickerItemWrapper.setStickerName(sticker.name);
        if (!TextUtils.isEmpty(sticker.filePath)) {
            stickerItemWrapper.setFileDownloadUrl(str + sticker.filePath);
        }
        stickerItemWrapper.setFileMd5(sticker.fileMd5);
        if (!TextUtils.isEmpty(sticker.thumbnailPath)) {
            stickerItemWrapper.setThumbnailUrl(str + sticker.thumbnailPath);
        }
        stickerItemWrapper.setThumbnailMd5(sticker.thumbnailMd5);
        if (!TextUtils.isEmpty(sticker.logoPath)) {
            stickerItemWrapper.setLogoUrl(str + sticker.logoPath);
        }
        stickerItemWrapper.setLogoMd5(sticker.logoMd5);
        stickerItemWrapper.setVersion(sticker.version.longValue());
        stickerItemWrapper.setLastRequestTime(j);
        stickerItemWrapper.setCategoryId(stickerCategoryItemWrapper.getReadableId());
        stickerItemWrapper.setCategoryPosition(stickerCategoryItemWrapper.getPosition());
        stickerItemWrapper.setPosition(sticker.position.intValue());
        stickerItemWrapper.setAttribute(sticker.compatibleApp.longValue());
        stickerItemWrapper.setHasMusic(sticker.hasMusic.booleanValue());
        stickerItemWrapper.setIsBuildIn(false);
        stickerItemWrapper.setMaterialType(sticker.materialType.intValue());
        if (sticker.isNew != null) {
            stickerItemWrapper.setStickerNew(sticker.isNew.booleanValue());
        }
        return stickerItemWrapper;
    }

    private Map<String, String> a(Context context, int i) {
        return new HashMap();
    }

    private void a(Context context) {
        Intent intent = new Intent(context, ThumbDownloadService.class);
        intent.setAction("com.coloros.providers.sticker.download.category.thumbnail");
        try {
            context.startService(intent);
        } catch (IllegalStateException e) {
            d.d("StickerDataRequest", "startDownloadCategoryThumbnail, e: " + e);
        }
    }

    /* access modifiers changed from: private */
    public void a(StickerResponse stickerResponse, long j) {
        StickerResponse stickerResponse2 = stickerResponse;
        long j2 = j;
        if (stickerResponse2 == null) {
            d.d("StickerDataRequest", "dealStickerResponseData, response is null!");
        } else if (stickerResponse2.resultCode.intValue() == 8000) {
            long localDataVersion = PrefUtils.getLocalDataVersion(this.f2426a);
            long longValue = stickerResponse2.dataVersion.longValue();
            d.b("StickerDataRequest", "dealStickerResponseData, localDataVersion: " + localDataVersion + ", responseVersion: " + longValue);
            if (longValue > localDataVersion) {
                b.b(this.f2426a);
                PrefUtils.updateCheckInterval(this.f2426a, ((long) stickerResponse2.checkInterval.intValue()) * TimeInfoUtil.MILLISECOND_OF_A_MINUTE);
                String str = stickerResponse2.fileServerHost;
                if (TextUtils.isEmpty(str)) {
                    d.d("StickerDataRequest", "dealStickerResponseData, hort url is empty!");
                    return;
                }
                List<StickerCategory> list = stickerResponse2.category;
                if (list == null) {
                    d.d("StickerDataRequest", "dealStickerResponseData, responseStickerCategoryList is null!");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (StickerCategory next : list) {
                    StickerCategoryItemWrapper a2 = a(next, str, j2);
                    arrayList.add(a2);
                    List<Sticker> list2 = next.sticker;
                    if (list2 == null) {
                        d.d("StickerDataRequest", "dealStickerResponseData, stickerList is null!");
                    } else {
                        for (Sticker a3 : list2) {
                            arrayList2.add(a(a3, a2, str, j));
                            a2 = a2;
                        }
                    }
                }
                boolean a4 = com.oppo.camera.sticker.a.a.a(this.f2426a, (List<StickerCategoryItemWrapper>) arrayList);
                boolean a5 = b.a(this.f2426a, (List<StickerItemWrapper>) arrayList2);
                if (!a4 || !a5) {
                    d.d("StickerDataRequest", "dealStickerResponseData db fail! updateCategoryResult: " + a4 + ", updateItemResult: " + a5);
                } else {
                    PrefUtils.updateLocalDataVersion(this.f2426a, longValue);
                    PrefUtils.updateRequestTime(this.f2426a, j2);
                }
                b.c(this.f2426a);
            } else {
                d.b("StickerDataRequest", "dealStickerResponseData, data version already new. do not update!");
            }
            a(this.f2426a);
            b(this.f2426a);
        } else {
            d.d("StickerDataRequest", "dealStickerResponseData error! resultCode: " + stickerResponse2.resultCode + ", resultDesc: " + stickerResponse2.resultDesc);
        }
    }

    private byte[] a(int i) {
        StickerRequest.Builder builder = new StickerRequest.Builder();
        builder.model(com.oppo.camera.sticker.d.a.a().b());
        builder.resResolution(com.oppo.camera.sticker.d.a.a().b(this.f2426a));
        builder.protocolVersion("100");
        builder.clientVersion(String.valueOf(com.oppo.camera.sticker.d.a.a().a(this.f2426a)));
        builder.colorosVersion(com.oppo.camera.sticker.d.a.a().c());
        builder.androidVersion(com.oppo.camera.sticker.d.a.a().e());
        builder.otaVersion(com.oppo.camera.sticker.d.a.a().d());
        builder.locale(com.oppo.camera.sticker.d.a.a().f());
        builder.localDataVersion(Long.valueOf(PrefUtils.getLocalDataVersion(this.f2426a)));
        builder.compatibleApp(1L);
        return StickerRequest.ADAPTER.encode(builder.build());
    }

    private void b(Context context) {
        Intent intent = new Intent(context, ThumbDownloadService.class);
        intent.setAction("com.coloros.providers.sticker.download.sticker.thumbnail");
        try {
            context.startService(intent);
        } catch (IllegalStateException e) {
            d.d("StickerDataRequest", "startDownloadStickerThumbnail, e: " + e);
        }
    }

    private void d() {
        int auditingMode = PrefUtils.getAuditingMode(this.f2426a);
        d.b("StickerDataRequest", "requestData, mode: " + auditingMode);
        com.oppo.camera.sticker.c.a aVar = new com.oppo.camera.sticker.c.a(this.f2426a);
        aVar.a(aVar.a(a.b.POST, aVar.a(this.f2426a, auditingMode), a(this.f2426a, auditingMode), aVar.a(a(auditingMode))), (a.c) new a.c() {
            public void a(int i, String str) {
                d.b("StickerDataRequest", "onFail errorCode: " + i + ", errorMsg: " + str);
            }

            public void a(ResponseBody responseBody) {
                try {
                    long currentTimeMillis = System.currentTimeMillis();
                    f.this.a(StickerResponse.ADAPTER.decode(responseBody.bytes()), currentTimeMillis);
                } catch (Exception e) {
                    d.d("StickerDataRequest", "requestData exception: " + e);
                }
            }
        });
    }

    public void a() {
        d.b("StickerDataRequest", "register this: " + this);
        androidx.e.a.a.a(this.f2426a.getApplicationContext()).a(this.c, new IntentFilter("com.sticker.thumbnail.service"));
    }

    public void a(a aVar) {
        this.f2427b = aVar;
    }

    public void b() {
        d.b("StickerDataRequest", "unregister this: " + this);
        androidx.e.a.a.a(this.f2426a.getApplicationContext()).a(this.c);
    }

    public void c() {
        if (System.currentTimeMillis() - PrefUtils.getLastRequestTime(this.f2426a) <= PrefUtils.getCheckInterval(this.f2426a)) {
            d.b("StickerDataRequest", "checkUpdateData, do not need update data!");
            a(this.f2426a);
            b(this.f2426a);
            return;
        }
        d();
    }
}
