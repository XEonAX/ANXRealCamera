package com.oppo.camera.ui.preview.a;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Button;
import color.support.v7.app.b;
import com.color.util.ColorNetworkUtil;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.sticker.data.StickerCategoryItem;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.e;
import com.oppo.camera.sticker.g;
import com.oppo.camera.sticker.ui.h;
import com.oppo.providers.downloads.OppoDownloads;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ImageStickerTools */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static h f2898a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static Object f2899b = new Object();
    /* access modifiers changed from: private */
    public Context c = null;
    /* access modifiers changed from: private */
    public c d = new c();
    private SharedPreferences e;
    private HandlerThread f = null;
    private Handler g = null;
    /* access modifiers changed from: private */
    public l h = null;
    private long i = 1;
    private com.oppo.camera.sticker.h j = null;
    /* access modifiers changed from: private */
    public boolean k = false;
    /* access modifiers changed from: private */
    public HashMap<String, b> l = null;
    private boolean m = false;
    private com.oppo.camera.sticker.a n = new com.oppo.camera.sticker.a() {
        public void a() {
            d.b("ImageStickerTools", "onStickerImportFinish");
            synchronized (h.f2899b) {
                h.this.b();
                if (h.this.h != null) {
                    h.this.h.a();
                }
            }
        }

        public void a(int i) {
            synchronized (h.f2899b) {
                if (i == 1) {
                    h.this.b();
                    if (h.this.h != null) {
                        h.this.h.a();
                    }
                }
            }
        }

        public void a(StickerItem stickerItem) {
            d.b("ImageStickerTools", "onStickerDelete, item: " + stickerItem);
            if (stickerItem != null && stickerItem.matchAppAttribute(1) && h.this.h != null) {
                h.this.h.c(stickerItem);
            }
        }

        public void a(StickerItem stickerItem, int i) {
            d.b("ImageStickerTools", "onStickerDownloadFail, errorCode: " + i + ", item: " + stickerItem);
            if (stickerItem == null) {
                d.e("ImageStickerTools", "onStickerDownloadFail return! Since item: " + stickerItem);
                return;
            }
            synchronized (h.f2899b) {
                h.this.b();
                if (h.this.h != null) {
                    h.this.h.a(stickerItem, i);
                }
            }
            if (h.this.l != null) {
                h.this.a((b) h.this.l.get(stickerItem.getStickerUUID()), false);
            }
        }

        public void b(StickerItem stickerItem) {
            if (stickerItem == null) {
                d.e("ImageStickerTools", "onStickerDownloadSuccess return");
                return;
            }
            d.b("ImageStickerTools", "onStickerDownloadSuccess, item: " + stickerItem);
            stickerItem.setDownloadState(8);
            synchronized (h.f2899b) {
                h.this.b();
                if (h.this.h != null) {
                    h.this.h.b(stickerItem);
                }
            }
            if (h.this.l != null) {
                h.this.a((b) h.this.l.get(stickerItem.getStickerUUID()), true);
            }
        }

        public void b(StickerItem stickerItem, int i) {
            d.b("ImageStickerTools", "onStickerDownloadPause, errorCode: " + i + ", item: " + stickerItem);
            if (stickerItem == null) {
                d.e("ImageStickerTools", "onStickerDownloadPause return! Since item: " + stickerItem);
                return;
            }
            synchronized (h.f2899b) {
                h.this.b();
                if (h.this.h != null) {
                    h.this.h.a(stickerItem, i);
                }
            }
            if (h.this.l != null) {
                h.this.a((b) h.this.l.get(stickerItem.getStickerUUID()), false);
            }
        }

        public void c(StickerItem stickerItem) {
            d.b("ImageStickerTools", "onUpdateStickerDownloadTime, item: " + stickerItem);
            synchronized (h.f2899b) {
                h.this.b();
                if (h.this.h != null) {
                    h.this.h.d(stickerItem);
                }
            }
        }
    };

    /* compiled from: ImageStickerTools */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private CopyOnWriteArrayList<StickerItem> f2908a = null;

        /* renamed from: b  reason: collision with root package name */
        private String f2909b = null;

        public CopyOnWriteArrayList<StickerItem> a() {
            return this.f2908a;
        }

        public void a(String str) {
            this.f2909b = str;
        }

        public void a(CopyOnWriteArrayList<StickerItem> copyOnWriteArrayList) {
            this.f2908a = copyOnWriteArrayList;
        }

        public String b() {
            return this.f2909b;
        }
    }

    /* compiled from: ImageStickerTools */
    private class b {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public String f2911b;
        /* access modifiers changed from: private */
        public long c;
        /* access modifiers changed from: private */
        public int d;
        /* access modifiers changed from: private */
        public String e;
        /* access modifiers changed from: private */
        public String f;

        private b() {
            this.f2911b = "";
            this.c = 0;
            this.d = -1;
            this.e = "";
            this.f = "";
        }
    }

    /* compiled from: ImageStickerTools */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public CopyOnWriteArrayList<a> f2912a = new CopyOnWriteArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        public Map<String, Integer> f2913b = new HashMap();
        public Map<String, Integer> c = new HashMap();
        public ArrayList<h.a> d = new ArrayList<>();
        private String e = null;

        public int a(CopyOnWriteArrayList<a> copyOnWriteArrayList, String str) {
            if (!(copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty() || str == null)) {
                Iterator<a> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    if (str.equals(next.b())) {
                        return copyOnWriteArrayList.indexOf(next);
                    }
                }
            }
            return -1;
        }

        public CopyOnWriteArrayList<StickerItem> a(String str) {
            int a2 = a(this.f2912a, str);
            if (a2 >= 0) {
                return this.f2912a.get(a2).a();
            }
            return null;
        }

        public void a() {
            d.a("ImageStickerTools", "recycle");
            this.f2912a.clear();
            this.f2913b.clear();
            this.c.clear();
            this.d.clear();
        }

        public void a(String str, int i) {
            this.f2913b.put(str, Integer.valueOf(i));
        }

        public void a(String str, CopyOnWriteArrayList<StickerItem> copyOnWriteArrayList) {
            a aVar = new a();
            aVar.a(str);
            aVar.a(copyOnWriteArrayList);
            this.f2912a.add(aVar);
        }

        public void a(ArrayList<h.a> arrayList) {
            this.d = arrayList;
        }

        public CopyOnWriteArrayList<a> b() {
            return this.f2912a;
        }

        public void b(String str) {
            this.e = str;
        }

        public void b(String str, int i) {
            this.c.put(str, Integer.valueOf(i));
        }

        public int c(String str) {
            return this.f2913b.get(str).intValue();
        }

        public ArrayList<h.a> c() {
            return this.d;
        }

        public int d() {
            ArrayList<h.a> arrayList = this.d;
            if (arrayList != null) {
                Iterator<h.a> it = arrayList.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (it.next().c.equals(this.e)) {
                        return i;
                    }
                    i++;
                }
            }
            return 0;
        }

        public boolean d(String str) {
            return this.f2913b.get(str) != null;
        }

        public int e(String str) {
            int intValue;
            synchronized (h.f2899b) {
                Integer num = this.c.get(str);
                intValue = num != null ? num.intValue() : -1;
            }
            return intValue;
        }
    }

    private h(Context context) {
        this.c = context;
        this.e = this.c.getSharedPreferences("sticker_info", 0);
        g();
    }

    private void a(Context context, final StickerItem stickerItem) {
        if (context == null || !(context instanceof Activity)) {
            d.b("ImageStickerTools", "showNetworkWarningDialog, not a activity context! context: " + context);
            return;
        }
        color.support.v7.app.b c2 = new b.a(context, 2131755476).a(false).a((DialogInterface.OnKeyListener) new DialogInterface.OnKeyListener() {
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (4 != i) {
                    return false;
                }
                dialogInterface.dismiss();
                return false;
            }
        }).a((int) R.string.sticker_continue_download, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                stickerItem.setDownloadState(2);
                if (h.this.h != null) {
                    h.this.h.a(stickerItem);
                }
                com.oppo.camera.sticker.h.a(h.this.c).a(stickerItem, true);
                h.this.e(stickerItem);
                boolean unused = h.this.k = true;
            }
        }).b((int) R.string.sticker_cancel_download, (DialogInterface.OnClickListener) null).a((int) R.string.sticker_consumption_networks_dialog).b();
        if (c2 != null) {
            c2.show();
            Button a2 = c2.a(-1);
            if (a2 != null) {
                a2.setTextColor(context.getColor(R.color.color_bottom_alert_dialog_button_warning_color));
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(b bVar, boolean z) {
        if (bVar != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_UUID, bVar.f2911b));
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_TYPE, bVar.f));
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_NAME, bVar.e));
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_DOWNLOAD_RESULT, String.valueOf(z)));
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_NETWORK, String.valueOf(bVar.d)));
            long currentTimeMillis = System.currentTimeMillis() - bVar.c;
            if (currentTimeMillis > 0) {
                sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_DOWNLOAD_COST_TIME, String.valueOf(currentTimeMillis)));
            }
            CameraStatisticsUtil.onCommon(this.c, CameraStatisticsUtil.EVENT_STICKER_DOWNLOAD, sb.toString(), false);
            HashMap<String, b> hashMap = this.l;
            if (hashMap != null) {
                hashMap.remove(bVar.f2911b);
            }
        }
    }

    public static boolean a(int i2) {
        return com.oppo.camera.e.a.f() && com.oppo.camera.e.a.c(i2);
    }

    public static boolean a(StickerItem stickerItem, int i2) {
        return stickerItem != null && a(i2) && c(stickerItem);
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [byte[], java.io.InputStream] */
    public static byte[] a(Context context, String str) {
        ? r2 = 0;
        if (TextUtils.isEmpty(str)) {
            d.b("ImageStickerTools", "readStickerStream, stickerUri is null");
            return r2;
        }
        byte[] bArr = new byte[1024];
        ContentResolver contentResolver = context.getContentResolver();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            InputStream openInputStream = contentResolver.openInputStream(Uri.parse(str));
            while (openInputStream != null) {
                int read = openInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (openInputStream != null) {
                try {
                    openInputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            return byteArray;
        } catch (Exception e4) {
            d.e("ImageStickerTools", "readStickerStream, ex: " + e4);
            if (r2 != 0) {
                try {
                    r2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            return bArr;
        } catch (Throwable th) {
            if (r2 != 0) {
                try {
                    r2.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            throw th;
        }
    }

    public static h b(Context context) {
        h hVar;
        synchronized (f2899b) {
            if (f2898a == null) {
                f2898a = new h(context);
            }
            hVar = f2898a;
        }
        return hVar;
    }

    private ArrayList<h.a> b(ArrayList<StickerCategoryItem> arrayList) {
        Drawable drawable;
        ArrayList<h.a> arrayList2 = new ArrayList<>();
        this.d.a();
        if (arrayList != null) {
            int i2 = 0;
            Iterator<StickerCategoryItem> it = arrayList.iterator();
            while (it.hasNext()) {
                StickerCategoryItem next = it.next();
                if (next != null) {
                    String iconHighlightFileUri = next.getIconHighlightFileUri();
                    String iconFileUri = next.getIconFileUri();
                    boolean isCategoryNew = next.isCategoryNew();
                    Drawable drawable2 = null;
                    if (!TextUtils.isEmpty(iconFileUri)) {
                        drawable = a(this.c, Uri.parse(iconFileUri));
                    } else {
                        drawable = null;
                    }
                    if (drawable == null) {
                        drawable = this.c.getDrawable(R.drawable.unselect_preset);
                    }
                    if (!TextUtils.isEmpty(iconHighlightFileUri)) {
                        drawable2 = a(this.c, Uri.parse(iconHighlightFileUri));
                    }
                    if (drawable2 == null) {
                        drawable2 = this.c.getDrawable(R.drawable.select_preset);
                    }
                    arrayList2.add(new h.a(drawable2, drawable, next.getReadableId(), isCategoryNew));
                    this.d.b(next.getReadableId(), i2);
                    i2++;
                }
            }
        }
        return arrayList2;
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        b();
        l lVar = this.h;
        if (lVar != null) {
            lVar.a(i2);
        }
    }

    public static boolean c(StickerItem stickerItem) {
        if (stickerItem != null) {
            return d(stickerItem.getCategoryId());
        }
        return false;
    }

    public static boolean c(String str) {
        return !"ANIMOJI".equals(str);
    }

    public static boolean d(StickerItem stickerItem) {
        return stickerItem != null && stickerItem.getMaterialType() == 1;
    }

    public static boolean d(String str) {
        return "ANIMOJI".equals(str);
    }

    /* access modifiers changed from: private */
    public void e(StickerItem stickerItem) {
        d.b("ImageStickerTools", "startDownloadStickerNearme uuid: " + stickerItem.getStickerUUID());
        if (this.l == null) {
            this.l = new HashMap<>();
        }
        b bVar = new b();
        long unused = bVar.c = System.currentTimeMillis();
        int unused2 = bVar.d = i();
        String unused3 = bVar.f2911b = stickerItem.getStickerUUID();
        String unused4 = bVar.e = stickerItem.getStickerName();
        String unused5 = bVar.f = stickerItem.getCategoryId();
        this.l.put(stickerItem.getStickerUUID(), bVar);
    }

    private void g() {
        if (this.f == null) {
            this.f = new HandlerThread("StickerHandlerThread");
            this.f.start();
        }
        if (this.g == null) {
            this.g = new Handler(this.f.getLooper());
        }
    }

    private void h() {
        Handler handler = this.g;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.g = null;
        }
        HandlerThread handlerThread = this.f;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.f = null;
        }
    }

    private int i() {
        if (ColorNetworkUtil.isWifiConnected(this.c)) {
            return 1;
        }
        return ColorNetworkUtil.isMobileDataConnected(this.c) ? 0 : -1;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0037 A[SYNTHETIC, Splitter:B:25:0x0037] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x004f A[SYNTHETIC, Splitter:B:32:0x004f] */
    public Drawable a(Context context, Uri uri) {
        InputStream inputStream;
        try {
            inputStream = context.getContentResolver().openInputStream(uri);
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                if (decodeStream != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), decodeStream);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return bitmapDrawable;
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return this.c.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
            } catch (FileNotFoundException e4) {
                e = e4;
                try {
                    e.printStackTrace();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return this.c.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e6) {
            e = e6;
            inputStream = null;
            e.printStackTrace();
            if (inputStream != null) {
            }
            return this.c.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            if (inputStream != null) {
            }
            throw th;
        }
    }

    public StickerItem a(SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            d.e("ImageStickerTools", "getSelectedStickerItem, preferences: " + sharedPreferences);
            return null;
        }
        d.a("getSelectedStickerItem");
        String string = sharedPreferences.getString("pref_current_sticker_uuid", "unselected_uuid");
        if ("unselected_uuid".equals(string)) {
            return null;
        }
        StickerItem a2 = g.a(this.c, OppoDownloads.COLUMN_UUID, string);
        if (a2 == null || !a2.isDownloaded()) {
            return null;
        }
        d.b("getSelectedStickerItem");
        return a2;
    }

    public c a() {
        return this.d;
    }

    public List<StickerItem> a(ArrayList<h.a> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        try {
            Iterator<h.a> it = arrayList.iterator();
            while (it.hasNext()) {
                h.a next = it.next();
                Cursor a2 = g.a(this.c, this.i, next.c);
                if (a2 != null) {
                    while (a2.moveToNext()) {
                        StickerItem a3 = g.a(a2);
                        String categoryId = a3.getCategoryId();
                        if (StickerCategoryItem.isMyCategory(next.c)) {
                            a3.setCategoryId(next.c);
                        }
                        if (!StickerCategoryItem.isMyCategory(next.c) || !"ANIMOJI".equals(categoryId)) {
                            arrayList2.add(a3);
                        }
                    }
                    a2.close();
                }
            }
        } catch (Exception e2) {
            d.e("ImageStickerTools", "querySingleStickerInfo, e: " + e2);
        }
        return arrayList2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0023, code lost:
        return;
     */
    public void a(final int i2, boolean z) {
        synchronized (f2899b) {
            if (!this.m || i2 != 0) {
                this.m = true;
                if (!z) {
                    b(i2);
                } else if (this.g != null) {
                    this.g.post(new Runnable() {
                        public void run() {
                            synchronized (h.f2899b) {
                                h.this.b(i2);
                            }
                        }
                    });
                }
            }
        }
    }

    public void a(Context context) {
        d.b("ImageStickerTools", "initStickerMediator");
        if (this.j == null) {
            this.j = com.oppo.camera.sticker.h.a(context);
            this.j.a();
            this.j.a(this.n);
        }
    }

    public void a(final g gVar, final StickerItem stickerItem, final boolean z) {
        synchronized (f2899b) {
            if (stickerItem != null) {
                this.d.b(stickerItem.getCategoryId());
            }
            CopyOnWriteArrayList<a> b2 = this.d.b();
            ArrayList<h.a> c2 = this.d.c();
            int d2 = this.d.d();
            if (b2 != null && b2.size() > 0 && c2 != null && c2.size() > 0) {
                d.a("ImageStickerTools", "setImageResource, stickerList.size: " + b2.size());
                gVar.a(c2, d2, stickerItem, z);
            } else if (this.g != null) {
                this.g.postDelayed(new Runnable() {
                    public void run() {
                        synchronized (h.f2899b) {
                            h.this.a(0, false);
                            if (stickerItem != null) {
                                h.this.d.b(stickerItem.getCategoryId());
                            }
                            gVar.a(h.this.d.c(), h.this.d.d(), stickerItem, z);
                        }
                    }
                }, 200);
            }
        }
    }

    public void a(l lVar) {
        this.h = lVar;
    }

    public void a(String str, boolean z) {
        SharedPreferences sharedPreferences = this.e;
        if (sharedPreferences != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putBoolean(str, z);
            edit.apply();
        }
    }

    public boolean a(StickerItem stickerItem) {
        StringBuilder sb = new StringBuilder();
        sb.append("onEffectClick, isDownloaded: ");
        Boolean bool = null;
        sb.append(stickerItem != null ? Boolean.valueOf(stickerItem.isDownloaded()) : null);
        sb.append(", item.needUpdate: ");
        if (stickerItem != null) {
            bool = Boolean.valueOf(stickerItem.needUpdate());
        }
        sb.append(bool);
        d.a("ImageStickerTools", sb.toString());
        if (stickerItem == null) {
            d.d("ImageStickerTools", "onEffectClick, item is null!");
            return true;
        } else if (!stickerItem.needUpdate() && stickerItem.isDownloaded()) {
            return false;
        } else {
            Context context = this.c;
            if (context != null) {
                if (this.k) {
                    stickerItem.setDownloadState(2);
                    l lVar = this.h;
                    if (lVar != null) {
                        lVar.a(stickerItem);
                    }
                    com.oppo.camera.sticker.h hVar = this.j;
                    if (hVar != null) {
                        hVar.a(stickerItem, true);
                        e(stickerItem);
                    }
                } else if (ColorNetworkUtil.isWifiConnected(context)) {
                    stickerItem.setDownloadState(2);
                    l lVar2 = this.h;
                    if (lVar2 != null) {
                        lVar2.a(stickerItem);
                    }
                    com.oppo.camera.sticker.h hVar2 = this.j;
                    if (hVar2 != null) {
                        hVar2.a(stickerItem, false);
                        e(stickerItem);
                    }
                } else if (ColorNetworkUtil.isMobileDataConnected(this.c)) {
                    a(this.c, stickerItem);
                } else {
                    com.oppo.camera.o.c.a(this.c, R.string.sticker_toast_disconnect);
                    stickerItem.setDownloadState(16);
                    l lVar3 = this.h;
                    if (lVar3 != null) {
                        lVar3.a(stickerItem);
                    }
                }
            }
            return true;
        }
    }

    public boolean a(String str) {
        SharedPreferences sharedPreferences = this.e;
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str, false);
        }
        return true;
    }

    public void b() {
        d.a("ImageStickerTools", "refreshStickerInfoByCameraId");
        if (this.c == null) {
            d.e("ImageStickerTools", "refreshStickerInfoByCameraId, mContext is null");
            return;
        }
        d.a("refreshStickerInfoByCameraId");
        this.d.a(b(c()));
        List<StickerItem> a2 = a(this.d.c());
        if (a2 != null) {
            for (StickerItem b2 : a2) {
                b(b2);
            }
        } else {
            d.e("ImageStickerTools", "initStickerInfoToMap, databaseList is null");
        }
        d.b("refreshStickerInfoByCameraId");
    }

    public void b(StickerItem stickerItem) {
        if (stickerItem != null) {
            CopyOnWriteArrayList<StickerItem> a2 = this.d.a(stickerItem.getCategoryId());
            if (a2 == null) {
                a2 = new CopyOnWriteArrayList<>();
                this.d.a(stickerItem.getCategoryId(), a2);
            }
            a2.add(stickerItem);
            this.d.a(stickerItem.getStickerUUID(), a2.indexOf(stickerItem));
            return;
        }
        d.e("ImageStickerTools", "refreshSticker, item is null");
    }

    public void b(String str) {
        synchronized (f2899b) {
            this.d.b(str);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0024, code lost:
        if (r1 == null) goto L_0x002c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0027, code lost:
        if (r1 != null) goto L_0x0029;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002c, code lost:
        return r0;
     */
    public ArrayList<StickerCategoryItem> c() {
        ArrayList<StickerCategoryItem> arrayList = new ArrayList<>();
        Cursor a2 = e.a(this.c, this.i);
        if (a2 != null) {
            while (a2.moveToNext()) {
                try {
                    arrayList.add(e.a(a2));
                } catch (Exception unused) {
                } catch (Throwable th) {
                    if (a2 != null) {
                        a2.close();
                    }
                    throw th;
                }
            }
        }
    }

    public void d() {
        d.a("ImageStickerTools", "releaseResource");
        com.oppo.camera.sticker.h hVar = this.j;
        if (hVar != null) {
            hVar.b(this.n);
            this.j.b();
            this.j = null;
        }
        synchronized (f2899b) {
            this.d.a();
            h();
            this.m = false;
            f2898a = null;
        }
    }

    public void e() {
        if (this.j != null) {
            d.b("ImageStickerTools", "requestSticker");
            this.j.c();
        }
    }
}
