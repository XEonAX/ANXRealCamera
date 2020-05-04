package androidx.core.d;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.b.e;
import androidx.b.g;
import androidx.core.a.a.f;
import androidx.core.d.c;
import androidx.core.graphics.i;
import com.oppo.camera.jni.YuvProcessUtil;
import com.oppo.providers.downloads.DownloadManager;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* compiled from: FontsContractCompat */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static final e<String, Typeface> f506a = new e<>(16);

    /* renamed from: b  reason: collision with root package name */
    static final Object f507b = new Object();
    static final g<String, ArrayList<c.a<c>>> c = new g<>();
    private static final c d = new c("fonts", 10, YuvProcessUtil.ExifInfo.LOCATION_MULTIPLE);
    private static final Comparator<byte[]> e = new Comparator<byte[]>() {
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v2, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v2, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v5, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v4, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v5, resolved type: byte} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            int i;
            int i2;
            if (bArr.length != bArr2.length) {
                i2 = bArr.length;
                i = bArr2.length;
            } else {
                int i3 = 0;
                while (i3 < bArr.length) {
                    if (bArr[i3] != bArr2[i3]) {
                        i2 = bArr[i3];
                        i = bArr2[i3];
                    } else {
                        i3++;
                    }
                }
                return 0;
            }
            return i2 - i;
        }
    };

    /* compiled from: FontsContractCompat */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f513a;

        /* renamed from: b  reason: collision with root package name */
        private final C0012b[] f514b;

        public a(int i, C0012b[] bVarArr) {
            this.f513a = i;
            this.f514b = bVarArr;
        }

        public int a() {
            return this.f513a;
        }

        public C0012b[] b() {
            return this.f514b;
        }
    }

    /* renamed from: androidx.core.d.b$b  reason: collision with other inner class name */
    /* compiled from: FontsContractCompat */
    public static class C0012b {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f515a;

        /* renamed from: b  reason: collision with root package name */
        private final int f516b;
        private final int c;
        private final boolean d;
        private final int e;

        public C0012b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f515a = (Uri) androidx.core.f.e.a(uri);
            this.f516b = i;
            this.c = i2;
            this.d = z;
            this.e = i3;
        }

        public Uri a() {
            return this.f515a;
        }

        public int b() {
            return this.f516b;
        }

        public int c() {
            return this.c;
        }

        public boolean d() {
            return this.d;
        }

        public int e() {
            return this.e;
        }
    }

    /* compiled from: FontsContractCompat */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        final Typeface f517a;

        /* renamed from: b  reason: collision with root package name */
        final int f518b;

        c(Typeface typeface, int i) {
            this.f517a = typeface;
            this.f518b = i;
        }
    }

    public static ProviderInfo a(PackageManager packageManager, a aVar, Resources resources) throws PackageManager.NameNotFoundException {
        String a2 = aVar.a();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(a2, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + a2);
        } else if (resolveContentProvider.packageName.equals(aVar.b())) {
            List<byte[]> a3 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(a3, e);
            List<List<byte[]>> a4 = a(aVar, resources);
            for (int i = 0; i < a4.size(); i++) {
                ArrayList arrayList = new ArrayList(a4.get(i));
                Collections.sort(arrayList, e);
                if (a(a3, (List<byte[]>) arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        } else {
            throw new PackageManager.NameNotFoundException("Found content provider " + a2 + ", but package was not " + aVar.b());
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0074, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0085, code lost:
        d.a(r1, new androidx.core.d.b.AnonymousClass3());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x008f, code lost:
        return null;
     */
    public static Typeface a(final Context context, final a aVar, final f.a aVar2, final Handler handler, boolean z, int i, final int i2) {
        final String str = aVar.f() + "-" + i2;
        Typeface a2 = f506a.a(str);
        if (a2 != null) {
            if (aVar2 != null) {
                aVar2.a(a2);
            }
            return a2;
        } else if (!z || i != -1) {
            AnonymousClass1 r1 = new Callable<c>() {
                /* renamed from: a */
                public c call() throws Exception {
                    c a2 = b.a(context, aVar, i2);
                    if (a2.f517a != null) {
                        b.f506a.a(str, a2.f517a);
                    }
                    return a2;
                }
            };
            if (z) {
                try {
                    return ((c) d.a(r1, i)).f517a;
                } catch (InterruptedException unused) {
                    return null;
                }
            } else {
                AnonymousClass2 r3 = aVar2 == null ? null : new c.a<c>() {
                    public void a(c cVar) {
                        if (cVar == null) {
                            aVar2.a(1, handler);
                        } else if (cVar.f518b == 0) {
                            aVar2.a(cVar.f517a, handler);
                        } else {
                            aVar2.a(cVar.f518b, handler);
                        }
                    }
                };
                synchronized (f507b) {
                    ArrayList arrayList = c.get(str);
                    if (arrayList != null) {
                        if (r3 != null) {
                            arrayList.add(r3);
                        }
                    } else if (r3 != null) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(r3);
                        c.put(str, arrayList2);
                    }
                }
            }
        } else {
            c a3 = a(context, aVar, i2);
            if (aVar2 != null) {
                if (a3.f518b == 0) {
                    aVar2.a(a3.f517a, handler);
                } else {
                    aVar2.a(a3.f518b, handler);
                }
            }
            return a3.f517a;
        }
    }

    public static a a(Context context, CancellationSignal cancellationSignal, a aVar) throws PackageManager.NameNotFoundException {
        ProviderInfo a2 = a(context.getPackageManager(), aVar, context.getResources());
        return a2 == null ? new a(1, (C0012b[]) null) : new a(0, a(context, aVar, a2.authority, cancellationSignal));
    }

    static c a(Context context, a aVar, int i) {
        try {
            a a2 = a(context, (CancellationSignal) null, aVar);
            int i2 = -3;
            if (a2.a() == 0) {
                Typeface a3 = androidx.core.graphics.c.a(context, (CancellationSignal) null, a2.b(), i);
                if (a3 != null) {
                    i2 = 0;
                }
                return new c(a3, i2);
            }
            if (a2.a() == 1) {
                i2 = -2;
            }
            return new c((Typeface) null, i2);
        } catch (PackageManager.NameNotFoundException unused) {
            return new c((Typeface) null, -1);
        }
    }

    private static List<List<byte[]>> a(a aVar, Resources resources) {
        return aVar.d() != null ? aVar.d() : androidx.core.a.a.c.a(resources, aVar.e());
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature byteArray : signatureArr) {
            arrayList.add(byteArray.toByteArray());
        }
        return arrayList;
    }

    public static Map<Uri, ByteBuffer> a(Context context, C0012b[] bVarArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C0012b bVar : bVarArr) {
            if (bVar.e() == 0) {
                Uri a2 = bVar.a();
                if (!hashMap.containsKey(a2)) {
                    hashMap.put(a2, i.a(context, cancellationSignal, a2));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    private static boolean a(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    static C0012b[] a(Context context, a aVar, String str, CancellationSignal cancellationSignal) {
        String str2 = str;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str2).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str2).appendPath("file").build();
        Cursor cursor = null;
        try {
            cursor = Build.VERSION.SDK_INT > 16 ? context.getContentResolver().query(build, new String[]{DownloadManager.COLUMN_ID, "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.c()}, (String) null, cancellationSignal) : context.getContentResolver().query(build, new String[]{DownloadManager.COLUMN_ID, "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.c()}, (String) null);
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex("result_code");
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex(DownloadManager.COLUMN_ID);
                int columnIndex3 = cursor.getColumnIndex("file_id");
                int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursor.getColumnIndex("font_weight");
                int columnIndex6 = cursor.getColumnIndex("font_italic");
                while (cursor.moveToNext()) {
                    int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    C0012b bVar = new C0012b(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i);
                    arrayList2.add(bVar);
                }
                arrayList = arrayList2;
            }
            return (C0012b[]) arrayList.toArray(new C0012b[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }
}
