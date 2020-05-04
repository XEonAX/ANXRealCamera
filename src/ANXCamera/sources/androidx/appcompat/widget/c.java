package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: ActivityChooserModel */
class c extends DataSetObservable {

    /* renamed from: a  reason: collision with root package name */
    static final String f367a = "c";
    private static final Object e = new Object();
    private static final Map<String, c> f = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final Context f368b;
    final String c;
    boolean d;
    private final Object g;
    private final List<a> h;
    private final List<C0007c> i;
    private Intent j;
    private b k;
    private int l;
    private boolean m;
    private boolean n;
    private boolean o;
    private d p;

    /* compiled from: ActivityChooserModel */
    public static final class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final ResolveInfo f369a;

        /* renamed from: b  reason: collision with root package name */
        public float f370b;

        public a(ResolveInfo resolveInfo) {
            this.f369a = resolveInfo;
        }

        /* renamed from: a */
        public int compareTo(a aVar) {
            return Float.floatToIntBits(aVar.f370b) - Float.floatToIntBits(this.f370b);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.f370b) == Float.floatToIntBits(((a) obj).f370b);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f370b) + 31;
        }

        public String toString() {
            return "[" + "resolveInfo:" + this.f369a.toString() + "; weight:" + new BigDecimal((double) this.f370b) + "]";
        }
    }

    /* compiled from: ActivityChooserModel */
    public interface b {
        void a(Intent intent, List<a> list, List<C0007c> list2);
    }

    /* renamed from: androidx.appcompat.widget.c$c  reason: collision with other inner class name */
    /* compiled from: ActivityChooserModel */
    public static final class C0007c {

        /* renamed from: a  reason: collision with root package name */
        public final ComponentName f371a;

        /* renamed from: b  reason: collision with root package name */
        public final long f372b;
        public final float c;

        public C0007c(ComponentName componentName, long j, float f) {
            this.f371a = componentName;
            this.f372b = j;
            this.c = f;
        }

        public C0007c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0007c cVar = (C0007c) obj;
            ComponentName componentName = this.f371a;
            if (componentName == null) {
                if (cVar.f371a != null) {
                    return false;
                }
            } else if (!componentName.equals(cVar.f371a)) {
                return false;
            }
            return this.f372b == cVar.f372b && Float.floatToIntBits(this.c) == Float.floatToIntBits(cVar.c);
        }

        public int hashCode() {
            ComponentName componentName = this.f371a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f372b;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.c);
        }

        public String toString() {
            return "[" + "; activity:" + this.f371a + "; time:" + this.f372b + "; weight:" + new BigDecimal((double) this.c) + "]";
        }
    }

    /* compiled from: ActivityChooserModel */
    public interface d {
        boolean a(c cVar, Intent intent);
    }

    /* compiled from: ActivityChooserModel */
    private final class e extends AsyncTask<Object, Void, Void> {
        e() {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x006d, code lost:
            if (r15 != null) goto L_0x006f;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:12:?, code lost:
            r15.close();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0092, code lost:
            if (r15 == null) goto L_0x00d5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x00b2, code lost:
            if (r15 == null) goto L_0x00d5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x00d2, code lost:
            if (r15 == null) goto L_0x00d5;
         */
        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = objArr[0];
            try {
                FileOutputStream openFileOutput = c.this.f368b.openFileOutput(objArr[1], 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    newSerializer.setOutput(openFileOutput, (String) null);
                    newSerializer.startDocument("UTF-8", true);
                    newSerializer.startTag((String) null, "historical-records");
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        C0007c cVar = (C0007c) list.remove(0);
                        newSerializer.startTag((String) null, "historical-record");
                        newSerializer.attribute((String) null, "activity", cVar.f371a.flattenToString());
                        newSerializer.attribute((String) null, "time", String.valueOf(cVar.f372b));
                        newSerializer.attribute((String) null, "weight", String.valueOf(cVar.c));
                        newSerializer.endTag((String) null, "historical-record");
                    }
                    newSerializer.endTag((String) null, "historical-records");
                    newSerializer.endDocument();
                    c.this.d = true;
                } catch (IllegalArgumentException e) {
                    Log.e(c.f367a, "Error writing historical record file: " + c.this.c, e);
                    c.this.d = true;
                } catch (IllegalStateException e2) {
                    Log.e(c.f367a, "Error writing historical record file: " + c.this.c, e2);
                    c.this.d = true;
                } catch (IOException e3) {
                    Log.e(c.f367a, "Error writing historical record file: " + c.this.c, e3);
                    c.this.d = true;
                } catch (Throwable th) {
                    c.this.d = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th;
                }
                return null;
            } catch (FileNotFoundException e4) {
                Log.e(c.f367a, "Error writing historical record file: " + r15, e4);
                return null;
            }
        }
    }

    private boolean a(C0007c cVar) {
        boolean add = this.i.add(cVar);
        if (add) {
            this.n = true;
            h();
            c();
            e();
            notifyChanged();
        }
        return add;
    }

    private void c() {
        if (!this.m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        } else if (this.n) {
            this.n = false;
            if (!TextUtils.isEmpty(this.c)) {
                new e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[]{new ArrayList(this.i), this.c});
            }
        }
    }

    private void d() {
        boolean f2 = f() | g();
        h();
        if (f2) {
            e();
            notifyChanged();
        }
    }

    private boolean e() {
        if (this.k == null || this.j == null || this.h.isEmpty() || this.i.isEmpty()) {
            return false;
        }
        this.k.a(this.j, this.h, Collections.unmodifiableList(this.i));
        return true;
    }

    private boolean f() {
        if (!this.o || this.j == null) {
            return false;
        }
        this.o = false;
        this.h.clear();
        List<ResolveInfo> queryIntentActivities = this.f368b.getPackageManager().queryIntentActivities(this.j, 0);
        int size = queryIntentActivities.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.h.add(new a(queryIntentActivities.get(i2)));
        }
        return true;
    }

    private boolean g() {
        if (!this.d || !this.n || TextUtils.isEmpty(this.c)) {
            return false;
        }
        this.d = false;
        this.m = true;
        i();
        return true;
    }

    private void h() {
        int size = this.i.size() - this.l;
        if (size > 0) {
            this.n = true;
            for (int i2 = 0; i2 < size; i2++) {
                C0007c remove = this.i.remove(0);
            }
        }
    }

    private void i() {
        try {
            FileInputStream openFileInput = this.f368b.openFileInput(this.c);
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(openFileInput, "UTF-8");
                int i2 = 0;
                while (i2 != 1 && i2 != 2) {
                    i2 = newPullParser.next();
                }
                if ("historical-records".equals(newPullParser.getName())) {
                    List<C0007c> list = this.i;
                    list.clear();
                    while (true) {
                        int next = newPullParser.next();
                        if (next == 1) {
                            if (openFileInput == null) {
                                return;
                            }
                        } else if (!(next == 3 || next == 4)) {
                            if ("historical-record".equals(newPullParser.getName())) {
                                list.add(new C0007c(newPullParser.getAttributeValue((String) null, "activity"), Long.parseLong(newPullParser.getAttributeValue((String) null, "time")), Float.parseFloat(newPullParser.getAttributeValue((String) null, "weight"))));
                            } else {
                                throw new XmlPullParserException("Share records file not well-formed.");
                            }
                        }
                    }
                    try {
                        openFileInput.close();
                    } catch (IOException unused) {
                    }
                } else {
                    throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                }
            } catch (XmlPullParserException e2) {
                String str = f367a;
                Log.e(str, "Error reading historical recrod file: " + this.c, e2);
                if (openFileInput == null) {
                }
            } catch (IOException e3) {
                String str2 = f367a;
                Log.e(str2, "Error reading historical recrod file: " + this.c, e3);
                if (openFileInput == null) {
                }
            } catch (Throwable th) {
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused3) {
        }
    }

    public int a() {
        int size;
        synchronized (this.g) {
            d();
            size = this.h.size();
        }
        return size;
    }

    public int a(ResolveInfo resolveInfo) {
        synchronized (this.g) {
            d();
            List<a> list = this.h;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (list.get(i2).f369a == resolveInfo) {
                    return i2;
                }
            }
            return -1;
        }
    }

    public ResolveInfo a(int i2) {
        ResolveInfo resolveInfo;
        synchronized (this.g) {
            d();
            resolveInfo = this.h.get(i2).f369a;
        }
        return resolveInfo;
    }

    public Intent b(int i2) {
        synchronized (this.g) {
            if (this.j == null) {
                return null;
            }
            d();
            a aVar = this.h.get(i2);
            ComponentName componentName = new ComponentName(aVar.f369a.activityInfo.packageName, aVar.f369a.activityInfo.name);
            Intent intent = new Intent(this.j);
            intent.setComponent(componentName);
            if (this.p != null) {
                if (this.p.a(this, new Intent(intent))) {
                    return null;
                }
            }
            a(new C0007c(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public ResolveInfo b() {
        synchronized (this.g) {
            d();
            if (this.h.isEmpty()) {
                return null;
            }
            ResolveInfo resolveInfo = this.h.get(0).f369a;
            return resolveInfo;
        }
    }

    public void c(int i2) {
        synchronized (this.g) {
            d();
            a aVar = this.h.get(i2);
            a aVar2 = this.h.get(0);
            a(new C0007c(new ComponentName(aVar.f369a.activityInfo.packageName, aVar.f369a.activityInfo.name), System.currentTimeMillis(), aVar2 != null ? (aVar2.f370b - aVar.f370b) + 5.0f : 1.0f));
        }
    }
}
