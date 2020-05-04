package com.oppo.camera.sticker.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Process;
import com.oppo.camera.R;
import com.oppo.camera.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ImageDownloader */
public class c {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static ConcurrentHashMap<String, SoftReference<Drawable>> f2454a = new ConcurrentHashMap<>(10);
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static Map<String, C0067c> f2455b = new ConcurrentHashMap();
    private Context c;
    /* access modifiers changed from: private */
    public BitmapDrawable d = null;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private HashMap<String, Drawable> i;

    /* compiled from: ImageDownloader */
    private static class a extends ColorDrawable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<String> f2456a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<C0067c> f2457b;

        public a(String str, C0067c cVar) {
            super(-1);
            this.f2456a = new WeakReference<>(str);
            this.f2457b = new WeakReference<>(cVar);
        }

        public String a() {
            return (String) this.f2456a.get();
        }

        public C0067c b() {
            return (C0067c) this.f2457b.get();
        }
    }

    /* compiled from: ImageDownloader */
    private static class b extends BitmapDrawable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<String> f2458a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<C0067c> f2459b;

        public b(Resources resources, BitmapDrawable bitmapDrawable, String str, C0067c cVar) {
            super(resources, bitmapDrawable.getBitmap());
            this.f2458a = new WeakReference<>(str);
            this.f2459b = new WeakReference<>(cVar);
        }

        public String a() {
            return (String) this.f2458a.get();
        }

        public C0067c b() {
            return (C0067c) this.f2459b.get();
        }
    }

    /* renamed from: com.oppo.camera.sticker.ui.c$c  reason: collision with other inner class name */
    /* compiled from: ImageDownloader */
    class C0067c extends AsyncTask<String, Void, Drawable> {

        /* renamed from: a  reason: collision with root package name */
        public String f2460a;
        private final List<d> c = new ArrayList();
        private String d;

        C0067c() {
        }

        private void a() {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                d dVar = this.c.get(i);
                if (!(dVar == null || c.this.d == null)) {
                    c cVar = c.this;
                    cVar.a(dVar, (Drawable) cVar.d);
                }
            }
            this.c.clear();
        }

        private boolean a(d dVar, boolean z) {
            int size = this.c.size();
            int i = 0;
            while (i < size) {
                if (this.c.get(i) != dVar) {
                    i++;
                } else if (!z) {
                    return true;
                } else {
                    this.c.remove(i);
                    return true;
                }
            }
            return false;
        }

        private void c(Drawable drawable) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                d dVar = this.c.get(i);
                if (dVar != null) {
                    c.this.a(dVar, drawable);
                }
            }
            this.c.clear();
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Drawable doInBackground(String... strArr) {
            Process.setThreadPriority(10);
            this.f2460a = strArr[0];
            this.d = strArr[1];
            if (isCancelled()) {
                return null;
            }
            return c.this.a(this.f2460a, this.d);
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public void onCancelled(Drawable drawable) {
            super.onCancelled(drawable);
            if (c.f2455b != null && this.f2460a != null) {
                c.f2455b.remove(this.f2460a);
            }
        }

        public void a(d dVar) {
            if (dVar != null && !a(dVar, false)) {
                this.c.add(dVar);
            }
        }

        /* access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Drawable drawable) {
            d.a("ImageDownloader", "onPostExecute, mUrl: " + this.f2460a + ", isCancelled: " + isCancelled() + ", bitmap: " + drawable);
            c.f2455b.remove(this.f2460a);
            if (isCancelled()) {
                drawable = null;
            }
            if (drawable != null) {
                c.this.a(this.f2460a, drawable);
                c(drawable);
                return;
            }
            a();
        }

        public void b(d dVar) {
            a(dVar, true);
        }

        /* access modifiers changed from: protected */
        public void onCancelled() {
            super.onCancelled();
            if (c.f2455b != null && this.f2460a != null) {
                c.f2455b.remove(this.f2460a);
            }
        }
    }

    public c(Context context, int i2) {
        this.c = context.getApplicationContext();
        try {
            this.d = (BitmapDrawable) context.getResources().getDrawable(i2);
        } catch (OutOfMemoryError unused) {
            System.gc();
        }
        a(10);
        this.h = this.c.getResources().getDimensionPixelSize(R.dimen.sticker_gridview_image_width);
        this.f = this.c.getResources().getDimensionPixelSize(R.dimen.sticker_gridview_redpoint_margin_top);
        this.g = this.c.getResources().getDimensionPixelSize(R.dimen.sticker_gridview_redpoint_radius);
        this.e = this.c.getResources().getDimensionPixelSize(R.dimen.sticker_gridview_thumbnail_display_size);
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0037 A[SYNTHETIC, Splitter:B:25:0x0037] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x004f A[SYNTHETIC, Splitter:B:32:0x004f] */
    private Drawable a(Context context, Uri uri) {
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

    /* JADX WARNING: Removed duplicated region for block: B:27:0x003f A[SYNTHETIC, Splitter:B:27:0x003f] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0058 A[SYNTHETIC, Splitter:B:35:0x0058] */
    private Drawable a(Context context, String str) {
        FileInputStream fileInputStream;
        File file = new File(str);
        try {
            fileInputStream = file.exists() ? new FileInputStream(file) : null;
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream);
                if (decodeStream != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), decodeStream);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return bitmapDrawable;
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return this.c.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
            } catch (FileNotFoundException e4) {
                e = e4;
                try {
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return this.c.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
                } catch (Throwable th) {
                    th = th;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e6) {
            e = e6;
            fileInputStream = null;
            e.printStackTrace();
            if (fileInputStream != null) {
            }
            return this.c.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            if (fileInputStream != null) {
            }
            throw th;
        }
    }

    private Drawable a(Drawable drawable) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable});
        Drawable drawable2 = this.c.getResources().getDrawable(R.drawable.sticker_music, (Resources.Theme) null);
        if (drawable2 != null) {
            layerDrawable.addLayer(drawable2);
        }
        return layerDrawable;
    }

    private Drawable a(b bVar, Drawable drawable) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable});
        drawable.setAlpha(255);
        Drawable drawable2 = this.c.getResources().getDrawable(R.drawable.sticker_need_download, (Resources.Theme) null);
        if (drawable2 != null) {
            layerDrawable.addLayer(drawable2);
        }
        if (bVar.f2452a != null) {
            bVar.f2452a.setVisibility(8);
        }
        return layerDrawable;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0017, code lost:
        if (r5 != 16) goto L_0x002d;
     */
    /* JADX WARNING: Failed to insert additional move for type inference */
    private Drawable a(b bVar, Drawable drawable, int i2, boolean z, boolean z2) {
        Drawable drawable2;
        if (z2) {
            drawable = a(drawable);
        }
        if (i2 == 0) {
            drawable2 = a(bVar, drawable);
        } else if (i2 == 1 || i2 == 2) {
            drawable2 = c(bVar, drawable);
        } else {
            if (i2 != 4) {
                drawable2 = i2 != 8 ? drawable : b(bVar, drawable);
            }
            drawable2 = d(bVar, drawable);
        }
        int intrinsicWidth = drawable2.getIntrinsicWidth();
        LayerDrawable layerDrawable = drawable2;
        if (intrinsicWidth > this.e) {
            LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{drawable2});
            int i3 = this.e;
            layerDrawable2.setLayerSize(0, i3, i3);
            layerDrawable = layerDrawable2;
        }
        return (!z || 8 == i2) ? layerDrawable : b(layerDrawable);
    }

    /* access modifiers changed from: private */
    public Drawable a(String str, String str2) {
        Drawable a2 = "parse_url".equals(str2) ? a(this.c, Uri.parse(str)) : "parse_file".equals(str2) ? a(this.c, str) : null;
        d.a("ImageDownloader", "downloadDrawable, url: " + str + ", drawable: " + a2);
        return a2;
    }

    private String a(d dVar) {
        if (dVar == null) {
            return null;
        }
        Drawable b2 = dVar.b();
        if (b2 instanceof a) {
            return ((a) b2).a();
        }
        if (b2 instanceof b) {
            return ((b) b2).a();
        }
        return null;
    }

    private void a(int i2) {
        final int i3 = i2;
        AnonymousClass1 r0 = new LinkedHashMap<String, Drawable>(i2, 0.75f, false) {
            /* access modifiers changed from: protected */
            public boolean removeEldestEntry(Map.Entry<String, Drawable> entry) {
                if (size() <= i3) {
                    return false;
                }
                c.f2454a.put(entry.getKey(), new SoftReference(entry.getValue()));
                return true;
            }
        };
        this.i = r0;
    }

    private void a(b bVar, Drawable drawable, String str) {
        if (bVar.f2453b != null) {
            bVar.f2453b.setImageDrawable(drawable);
        }
    }

    /* access modifiers changed from: private */
    public void a(d dVar, Drawable drawable) {
        if (dVar == null || drawable == null) {
            d.a("ImageDownloader", "setImageDrawable, imageTagInfo: " + dVar + ", drawable: " + drawable);
            return;
        }
        a(dVar.a(), a(dVar.a(), drawable, dVar.f(), dVar.d(), dVar.e()), dVar.c());
    }

    /* access modifiers changed from: private */
    public void a(String str, Drawable drawable) {
        if (drawable != null) {
            HashMap<String, Drawable> hashMap = this.i;
            if (hashMap != null) {
                synchronized (hashMap) {
                    this.i.put(str, drawable);
                }
            }
            ConcurrentHashMap<String, SoftReference<Drawable>> concurrentHashMap = f2454a;
            if (concurrentHashMap != null) {
                concurrentHashMap.put(str, new SoftReference(drawable));
            }
        }
    }

    private static boolean a(String str) {
        if (str != null) {
            C0067c cVar = f2455b.get(str);
            if (cVar != null) {
                cVar.cancel(true);
            }
        }
        return true;
    }

    private Drawable b(b bVar, Drawable drawable) {
        drawable.setAlpha(255);
        if (bVar.f2452a != null) {
            bVar.f2452a.setVisibility(8);
        }
        return drawable;
    }

    private Drawable b(String str) {
        if (str == null) {
            return null;
        }
        HashMap<String, Drawable> hashMap = this.i;
        if (hashMap != null) {
            synchronized (hashMap) {
                Drawable drawable = this.i.get(str);
                if (drawable != null) {
                    this.i.remove(str);
                    this.i.put(str, drawable);
                    return drawable;
                }
            }
        }
        ConcurrentHashMap<String, SoftReference<Drawable>> concurrentHashMap = f2454a;
        if (concurrentHashMap != null) {
            SoftReference softReference = concurrentHashMap.get(str);
            if (softReference != null) {
                Drawable drawable2 = (Drawable) softReference.get();
                if (drawable2 != null) {
                    return drawable2;
                }
                f2454a.remove(str);
            }
        }
        return null;
    }

    private LayerDrawable b(Drawable drawable) {
        Drawable[] drawableArr = {drawable, this.c.getResources().getDrawable(R.drawable.sticker_red_point)};
        LayerDrawable layerDrawable = new LayerDrawable(drawableArr);
        int intrinsicWidth = drawableArr[0].getIntrinsicWidth();
        int intrinsicWidth2 = drawableArr[1].getIntrinsicWidth();
        int i2 = this.h;
        int i3 = (i2 - intrinsicWidth) / 2;
        int i4 = i3 + 0;
        int i5 = i2 - (intrinsicWidth + i3);
        int i6 = this.g;
        int i7 = i2 - ((intrinsicWidth2 / 2) + i6);
        int i8 = i6 - this.f;
        int i9 = i7 + intrinsicWidth2;
        int i10 = i7 - 0;
        int i11 = i8 + 0;
        int i12 = i2 - i9;
        int i13 = i2 - (intrinsicWidth2 + i8);
        if (i4 < 0 || i4 < 0 || i5 > 0 || i5 > 0) {
            d.e("ImageDownloader", "showRedPoint, drawable0 out of thumbnail display!");
        }
        LayerDrawable layerDrawable2 = layerDrawable;
        layerDrawable2.setLayerInset(0, i4, i4, i5, i5);
        layerDrawable2.setLayerInset(1, i10, i11, i12, i13);
        return layerDrawable;
    }

    private C0067c b(d dVar) {
        if (dVar == null) {
            return null;
        }
        Drawable b2 = dVar.b();
        if (b2 instanceof a) {
            return ((a) b2).b();
        }
        if (b2 instanceof b) {
            return ((b) b2).b();
        }
        return null;
    }

    public static void b() {
        Map<String, C0067c> map = f2455b;
        if (map != null) {
            map.clear();
        }
        ConcurrentHashMap<String, SoftReference<Drawable>> concurrentHashMap = f2454a;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
    }

    private void b(String str, String str2, d dVar) {
        boolean z;
        if (str != null) {
            String a2 = a(dVar);
            if (a2 != null && !a2.equals(str)) {
                C0067c cVar = f2455b.get(a2);
                if (cVar != null) {
                    cVar.b(dVar);
                }
            }
            C0067c cVar2 = f2455b.get(str);
            if (cVar2 == null || cVar2.isCancelled()) {
                C0067c b2 = b(dVar);
                if (b2 != null) {
                    b2.cancel(true);
                }
                cVar2 = new C0067c();
                f2455b.put(str, cVar2);
                z = true;
            } else {
                z = false;
            }
            cVar2.a(dVar);
            if (z) {
                if (this.d != null) {
                    a(dVar, (Drawable) new b(this.c.getResources(), this.d, str, cVar2));
                } else {
                    a(dVar, (Drawable) new a(str, cVar2));
                }
                cVar2.execute(new String[]{str, str2});
            }
        }
    }

    private Drawable c(b bVar, Drawable drawable) {
        drawable.setAlpha(127);
        if (bVar.f2452a != null) {
            bVar.f2452a.setVisibility(0);
        }
        return drawable;
    }

    private Drawable d(b bVar, Drawable drawable) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable});
        drawable.setAlpha(255);
        Drawable drawable2 = this.c.getResources().getDrawable(R.drawable.sticker_need_refresh, (Resources.Theme) null);
        if (drawable2 != null) {
            layerDrawable.addLayer(drawable2);
        }
        if (bVar.f2452a != null) {
            bVar.f2452a.setVisibility(8);
        }
        return layerDrawable;
    }

    public void a() {
        HashMap<String, Drawable> hashMap = this.i;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.d = null;
    }

    public void a(String str, String str2, d dVar) {
        if (str == null) {
            BitmapDrawable bitmapDrawable = this.d;
            if (bitmapDrawable != null) {
                a(dVar, (Drawable) bitmapDrawable);
                return;
            }
        }
        Drawable b2 = b(str);
        if (b2 == null) {
            b(str, str2, dVar);
            return;
        }
        a(str);
        a(dVar, b2);
    }
}
