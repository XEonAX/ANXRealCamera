package com.oppo.camera.sticker.data;

import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.oppo.camera.d;
import com.oppo.camera.sticker.download.c;
import com.oppo.camera.sticker.f;
import com.oppo.camera.sticker.h;
import com.oppo.statistics.util.TimeInfoUtil;
import java.util.List;

/* compiled from: StickerDataManager */
public class b implements f.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f2409a = null;

    /* renamed from: b  reason: collision with root package name */
    private C0066b f2410b = null;
    private HandlerThread c = null;
    private f d = null;
    private a e = null;

    /* compiled from: StickerDataManager */
    public interface a {
        void a(int i);
    }

    /* renamed from: com.oppo.camera.sticker.data.b$b  reason: collision with other inner class name */
    /* compiled from: StickerDataManager */
    private class C0066b extends Handler {
        public C0066b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    return;
                case 2:
                    b.this.g();
                    return;
                case 3:
                    b.this.h();
                    return;
                case 4:
                    if (message.obj instanceof StickerCategoryItem) {
                        b.this.a((StickerCategoryItem) message.obj);
                        return;
                    }
                    return;
                case 5:
                    if (message.obj instanceof StickerItem) {
                        b.this.b((StickerItem) message.obj);
                        return;
                    }
                    return;
                case 6:
                    if (message.obj instanceof StickerItem) {
                        b bVar = b.this;
                        StickerItem stickerItem = (StickerItem) message.obj;
                        boolean z = true;
                        if (message.arg1 != 1) {
                            z = false;
                        }
                        bVar.b(stickerItem, z);
                        return;
                    }
                    return;
                case 7:
                    b.this.b((List<StickerItem>) (List) message.obj);
                    return;
                case 8:
                    b.this.i();
                    return;
                default:
                    d.e("StickerDataManager", "handleMessage, message, what: " + message.what);
                    return;
            }
        }
    }

    public b(Context context) {
        this.f2409a = context;
        this.d = new f(context);
        this.d.a((f.a) this);
        this.c = new HandlerThread("StickerDataManager");
        this.c.start();
        this.f2410b = new C0066b(this.c.getLooper());
        c();
        d.b("StickerDataManager", "StickerDataManager this: " + this);
    }

    /* access modifiers changed from: private */
    public void a(StickerCategoryItem stickerCategoryItem) {
        d.b("StickerDataManager", "clickStickerCategoryByThread, item: " + stickerCategoryItem);
        if (stickerCategoryItem.isCategoryNew()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_new", 0);
            int a2 = com.oppo.camera.sticker.a.a.a(this.f2409a, "readable_id", stickerCategoryItem.getReadableId(), contentValues);
            d.b("StickerDataManager", "clickStickerCategoryByThread, count: " + a2);
        }
    }

    /* access modifiers changed from: private */
    public void b(StickerItem stickerItem) {
        d.b("StickerDataManager", "updateStickerDownloadTimeByThread, item: " + stickerItem);
        if (stickerItem.isBuildIn() && stickerItem.getDownloadTime() <= 0) {
            int a2 = com.oppo.camera.sticker.a.b.a(this.f2409a, stickerItem);
            d.b("StickerDataManager", "updateStickerDownloadTimeByThread, rowUpdate: " + a2);
            if (a2 > 0) {
                h.a(this.f2409a).c(stickerItem);
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(StickerItem stickerItem, boolean z) {
        d.b("StickerDataManager", "downloadStickerItemByThread, item: " + stickerItem + ", allowAllNetwork: " + z);
        if (stickerItem == null || TextUtils.isEmpty(stickerItem.getStickerUUID())) {
            d.e("StickerDataManager", "downloadStickerItemByThread, item is null or empty. item: " + stickerItem);
        } else if (!stickerItem.isDownloaded() || stickerItem.needUpdate()) {
            com.oppo.camera.sticker.download.a.a().c(this.f2409a, stickerItem, z);
        } else if (stickerItem.isBuildIn() && stickerItem.getDownloadTime() <= 0) {
            com.oppo.camera.sticker.a.b.a(this.f2409a, stickerItem);
        }
    }

    /* access modifiers changed from: private */
    public synchronized void b(List<StickerItem> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                c.a(this.f2409a, list, true);
                return;
            }
        }
        d.d("StickerDataManager", "deleteStickerItemsByThread, list is null or empty.");
    }

    /* access modifiers changed from: private */
    public void g() {
        d.b("StickerDataManager", "checkBuildInDataByThread");
        d.a("checkBuildInDataByThread");
        a.a(this.f2409a);
        c();
        d.b("checkBuildInDataByThread");
    }

    /* access modifiers changed from: private */
    public void h() {
        d.b("StickerDataManager", "requestStickerByThread");
        d.a("requestStickerByThread");
        this.d.c();
        d.b("requestStickerByThread");
    }

    /* access modifiers changed from: private */
    public void i() {
        long currentTimeMillis = System.currentTimeMillis();
        com.oppo.camera.sticker.a.b.a(this.f2409a, currentTimeMillis, (long) TimeInfoUtil.MILLISECOND_OF_A_WEEK);
        com.oppo.camera.sticker.a.a.a(this.f2409a, currentTimeMillis, (long) TimeInfoUtil.MILLISECOND_OF_A_WEEK);
    }

    public void a() {
        d.b("StickerDataManager", "register this: " + this);
        com.oppo.camera.sticker.download.a.a().a(this.f2409a);
        f fVar = this.d;
        if (fVar != null) {
            fVar.a();
        }
    }

    public void a(int i) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    public void a(StickerItem stickerItem) {
        if (!this.f2410b.hasMessages(5)) {
            d.b("StickerDataManager", "updateStickerDownloadTime, item: " + stickerItem);
            Message obtainMessage = this.f2410b.obtainMessage(5);
            obtainMessage.obj = stickerItem;
            this.f2410b.sendMessage(obtainMessage);
        }
    }

    public void a(StickerItem stickerItem, boolean z) {
        if (!this.f2410b.hasMessages(6)) {
            d.b("StickerDataManager", "startDownloadSticker, item: " + stickerItem);
            Message obtainMessage = this.f2410b.obtainMessage(6);
            obtainMessage.arg1 = z ? 1 : 0;
            obtainMessage.obj = stickerItem;
            this.f2410b.sendMessage(obtainMessage);
        }
    }

    public void a(a aVar) {
        this.e = aVar;
    }

    public void a(List<StickerItem> list) {
        if (!this.f2410b.hasMessages(7, list)) {
            d.b("StickerDataManager", "delete, list: " + list);
            Message obtainMessage = this.f2410b.obtainMessage(7);
            obtainMessage.obj = list;
            this.f2410b.sendMessage(obtainMessage);
        }
    }

    public void b() {
        d.b("StickerDataManager", "unregister this: " + this);
        com.oppo.camera.sticker.download.a.a().b(this.f2409a);
        f fVar = this.d;
        if (fVar != null) {
            fVar.b();
        }
    }

    public void c() {
        if (!this.f2410b.hasMessages(1)) {
            this.f2410b.sendEmptyMessage(1);
        }
    }

    public void d() {
        if (!this.f2410b.hasMessages(2)) {
            d.b("StickerDataManager", "checkBuildInData");
            this.f2410b.sendEmptyMessage(2);
        }
    }

    public void e() {
        if (!this.f2410b.hasMessages(3)) {
            d.b("StickerDataManager", "requestSticker");
            this.f2410b.sendEmptyMessage(3);
        }
    }

    public void f() {
        if (!this.f2410b.hasMessages(8)) {
            d.b("StickerDataManager", "autoClearClickNewStatus");
            this.f2410b.sendEmptyMessage(8);
        }
    }
}
