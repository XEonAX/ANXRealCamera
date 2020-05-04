package b.a;

import com.oppo.camera.statistics.model.MenuClickMsgData;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: DiskLruCache */
public final class a implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f1085a = Charset.forName("UTF-8");
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final File f1086b;
    private final File c;
    private final File d;
    private final int e;
    private final long f;
    /* access modifiers changed from: private */
    public final int g;
    private long h = 0;
    /* access modifiers changed from: private */
    public Writer i;
    private final LinkedHashMap<String, b> j = new LinkedHashMap<>(0, 0.75f, true);
    /* access modifiers changed from: private */
    public int k;
    private long l = 0;
    private final ExecutorService m;
    private final Callable<Void> n;

    /* renamed from: b.a.a$a  reason: collision with other inner class name */
    /* compiled from: DiskLruCache */
    public final class C0033a {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final b f1089b;
        /* access modifiers changed from: private */
        public boolean c;

        /* renamed from: b.a.a$a$a  reason: collision with other inner class name */
        /* compiled from: DiskLruCache */
        private class C0034a extends FilterOutputStream {
            private C0034a(OutputStream outputStream) {
                super(outputStream);
            }

            public void close() {
                try {
                    this.out.close();
                } catch (IOException unused) {
                    boolean unused2 = C0033a.this.c = true;
                }
            }

            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException unused) {
                    boolean unused2 = C0033a.this.c = true;
                }
            }

            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException unused) {
                    boolean unused2 = C0033a.this.c = true;
                }
            }

            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException unused) {
                    boolean unused2 = C0033a.this.c = true;
                }
            }
        }

        private C0033a(b bVar) {
            this.f1089b = bVar;
        }

        public OutputStream a(int i) throws IOException {
            C0034a aVar;
            synchronized (a.this) {
                if (this.f1089b.e == this) {
                    aVar = new C0034a(new FileOutputStream(this.f1089b.b(i)));
                } else {
                    throw new IllegalStateException();
                }
            }
            return aVar;
        }

        public void a() throws IOException {
            if (this.c) {
                a.this.a(this, false);
                a.this.c(this.f1089b.f1092b);
                return;
            }
            a.this.a(this, true);
        }

        public void b() throws IOException {
            a.this.a(this, false);
        }
    }

    /* compiled from: DiskLruCache */
    private final class b {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final String f1092b;
        /* access modifiers changed from: private */
        public final long[] c;
        /* access modifiers changed from: private */
        public boolean d;
        /* access modifiers changed from: private */
        public C0033a e;
        /* access modifiers changed from: private */
        public long f;

        private b(String str) {
            this.f1092b = str;
            this.c = new long[a.this.g];
        }

        /* access modifiers changed from: private */
        public void a(String[] strArr) throws IOException {
            if (strArr.length == a.this.g) {
                int i = 0;
                while (i < strArr.length) {
                    try {
                        this.c[i] = Long.parseLong(strArr[i]);
                        i++;
                    } catch (NumberFormatException unused) {
                        throw b(strArr);
                    }
                }
                return;
            }
            throw b(strArr);
        }

        private IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File a(int i) {
            File f2 = a.this.f1086b;
            return new File(f2, this.f1092b + "." + i);
        }

        public String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long append : this.c) {
                sb.append(' ');
                sb.append(append);
            }
            return sb.toString();
        }

        public File b(int i) {
            File f2 = a.this.f1086b;
            return new File(f2, this.f1092b + "." + i + ".tmp");
        }
    }

    /* compiled from: DiskLruCache */
    public final class c implements Closeable {

        /* renamed from: b  reason: collision with root package name */
        private final String f1094b;
        private final long c;
        private final InputStream[] d;

        private c(String str, long j, InputStream[] inputStreamArr) {
            this.f1094b = str;
            this.c = j;
            this.d = inputStreamArr;
        }

        public InputStream a(int i) {
            return this.d[i];
        }

        public void close() {
            for (InputStream a2 : this.d) {
                a.a((Closeable) a2);
            }
        }
    }

    private a(File file, int i2, int i3, long j2) {
        File file2 = file;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.m = threadPoolExecutor;
        this.n = new Callable<Void>() {
            /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
                return null;
             */
            /* renamed from: a */
            public Void call() throws Exception {
                synchronized (a.this) {
                    if (a.this.i == null) {
                        return null;
                    }
                    a.this.i();
                    if (a.this.g()) {
                        a.this.f();
                        int unused = a.this.k = 0;
                    }
                }
            }
        };
        this.f1086b = file2;
        this.e = i2;
        this.c = new File(file2, "journal");
        this.d = new File(file2, "journal.tmp");
        this.g = i3;
        this.f = j2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0021, code lost:
        return null;
     */
    private synchronized C0033a a(String str, long j2) throws IOException {
        h();
        e(str);
        b bVar = this.j.get(str);
        if (j2 == -1 || (bVar != null && bVar.f == j2)) {
            if (bVar == null) {
                bVar = new b(str);
                this.j.put(str, bVar);
            } else if (bVar.e != null) {
                return null;
            }
            C0033a aVar = new C0033a(bVar);
            C0033a unused = bVar.e = aVar;
            Writer writer = this.i;
            writer.write("DIRTY " + str + 10);
            this.i.flush();
            return aVar;
        }
    }

    public static a a(File file, int i2, int i3, long j2) throws IOException {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i3 > 0) {
            a aVar = new a(file, i2, i3, j2);
            if (aVar.c.exists()) {
                try {
                    aVar.d();
                    aVar.e();
                    aVar.i = new BufferedWriter(new FileWriter(aVar.c, true), 8192);
                    return aVar;
                } catch (IOException unused) {
                    aVar.c();
                }
            }
            file.mkdirs();
            a aVar2 = new a(file, i2, i3, j2);
            aVar2.f();
            return aVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    public static String a(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder(80);
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                throw new EOFException();
            } else if (read == 10) {
                int length = sb.length();
                if (length > 0) {
                    int i2 = length - 1;
                    if (sb.charAt(i2) == 13) {
                        sb.setLength(i2);
                    }
                }
                return sb.toString();
            } else {
                sb.append((char) read);
            }
        }
    }

    /* access modifiers changed from: private */
    public synchronized void a(C0033a aVar, boolean z) throws IOException {
        b a2 = aVar.f1089b;
        if (a2.e == aVar) {
            if (z && !a2.d) {
                int i2 = 0;
                while (i2 < this.g) {
                    if (a2.b(i2).exists()) {
                        i2++;
                    } else {
                        aVar.b();
                        throw new IllegalStateException("edit didn't create file " + i2);
                    }
                }
            }
            for (int i3 = 0; i3 < this.g; i3++) {
                File b2 = a2.b(i3);
                if (!z) {
                    b(b2);
                } else if (b2.exists()) {
                    File a3 = a2.a(i3);
                    b2.renameTo(a3);
                    long j2 = a2.c[i3];
                    long length = a3.length();
                    a2.c[i3] = length;
                    this.h = (this.h - j2) + length;
                }
            }
            this.k++;
            C0033a unused = a2.e = null;
            if (a2.d || z) {
                boolean unused2 = a2.d = true;
                this.i.write("CLEAN " + a2.f1092b + a2.a() + 10);
                if (z) {
                    long j3 = this.l;
                    this.l = 1 + j3;
                    long unused3 = a2.f = j3;
                }
            } else {
                this.j.remove(a2.f1092b);
                this.i.write("REMOVE " + a2.f1092b + 10);
            }
            if (this.h > this.f || g()) {
                this.m.submit(this.n);
            }
        } else {
            throw new IllegalStateException();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static void a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            int i2 = 0;
            while (i2 < length) {
                File file2 = listFiles[i2];
                if (file2.isDirectory()) {
                    a(file2);
                }
                if (file2.delete()) {
                    i2++;
                } else {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IllegalArgumentException("not a directory: " + file);
    }

    private static <T> T[] a(T[] tArr, int i2, int i3) {
        int length = tArr.length;
        if (i2 > i3) {
            throw new IllegalArgumentException();
        } else if (i2 < 0 || i2 > length) {
            throw new ArrayIndexOutOfBoundsException();
        } else {
            int i4 = i3 - i2;
            int min = Math.min(i4, length - i2);
            T[] tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), i4);
            System.arraycopy(tArr, i2, tArr2, 0, min);
            return tArr2;
        }
    }

    private static void b(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private void d() throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.c), 8192);
        try {
            String a2 = a((InputStream) bufferedInputStream);
            String a3 = a((InputStream) bufferedInputStream);
            String a4 = a((InputStream) bufferedInputStream);
            String a5 = a((InputStream) bufferedInputStream);
            String a6 = a((InputStream) bufferedInputStream);
            if (!"libcore.io.DiskLruCache".equals(a2) || !MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST.equals(a3) || !Integer.toString(this.e).equals(a4) || !Integer.toString(this.g).equals(a5) || !"".equals(a6)) {
                throw new IOException("unexpected journal header: [" + a2 + ", " + a3 + ", " + a5 + ", " + a6 + "]");
            }
            while (true) {
                try {
                    d(a((InputStream) bufferedInputStream));
                } catch (EOFException unused) {
                    return;
                }
            }
        } finally {
            a((Closeable) bufferedInputStream);
        }
    }

    private void d(String str) throws IOException {
        String[] split = str.split(" ");
        if (split.length >= 2) {
            String str2 = split[1];
            if (!split[0].equals("REMOVE") || split.length != 2) {
                b bVar = this.j.get(str2);
                if (bVar == null) {
                    bVar = new b(str2);
                    this.j.put(str2, bVar);
                }
                if (split[0].equals("CLEAN") && split.length == this.g + 2) {
                    boolean unused = bVar.d = true;
                    C0033a unused2 = bVar.e = null;
                    bVar.a((String[]) a((T[]) split, 2, split.length));
                } else if (split[0].equals("DIRTY") && split.length == 2) {
                    C0033a unused3 = bVar.e = new C0033a(bVar);
                } else if (!split[0].equals("READ") || split.length != 2) {
                    throw new IOException("unexpected journal line: " + str);
                }
            } else {
                this.j.remove(str2);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    private synchronized void e() throws IOException {
        b(this.d);
        Iterator<b> it = this.j.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            int i2 = 0;
            if (next.e == null) {
                while (i2 < this.g) {
                    this.h += next.c[i2];
                    i2++;
                }
            } else {
                C0033a unused = next.e = null;
                while (i2 < this.g) {
                    b(next.a(i2));
                    b(next.b(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    private void e(String str) {
        if (str.contains(" ") || str.contains("\n") || str.contains("\r")) {
            throw new IllegalArgumentException("keys must not contain spaces or newlines: \"" + str + "\"");
        }
    }

    /* access modifiers changed from: private */
    public synchronized void f() throws IOException {
        BufferedWriter bufferedWriter;
        if (this.i != null) {
            this.i.close();
        }
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(this.d), 8192);
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write(MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (b next : this.j.values()) {
                if (next.e != null) {
                    bufferedWriter.write("DIRTY " + next.f1092b + 10);
                } else {
                    bufferedWriter.write("CLEAN " + next.f1092b + next.a() + 10);
                }
            }
            bufferedWriter.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            r2.addSuppressed(th);
        }
        this.d.renameTo(this.c);
        this.i = new BufferedWriter(new FileWriter(this.c, true), 8192);
        return;
        throw th;
    }

    /* access modifiers changed from: private */
    public boolean g() {
        int i2 = this.k;
        return i2 >= 2000 && i2 >= this.j.size();
    }

    private void h() {
        if (this.i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* access modifiers changed from: private */
    public void i() throws IOException {
        while (this.h > this.f) {
            c((String) this.j.entrySet().iterator().next().getKey());
        }
    }

    public synchronized c a(String str) throws IOException {
        h();
        e(str);
        b bVar = this.j.get(str);
        if (bVar == null) {
            return null;
        }
        if (!bVar.d) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.g];
        int i2 = 0;
        while (i2 < this.g) {
            try {
                inputStreamArr[i2] = new FileInputStream(bVar.a(i2));
                i2++;
            } catch (FileNotFoundException unused) {
                return null;
            }
        }
        this.k++;
        this.i.append("READ " + str + 10);
        if (g()) {
            this.m.submit(this.n);
        }
        c cVar = new c(str, bVar.f, inputStreamArr);
        return cVar;
    }

    public boolean a() {
        return this.i == null;
    }

    public C0033a b(String str) throws IOException {
        return a(str, -1);
    }

    public synchronized void b() throws IOException {
        h();
        i();
        this.i.flush();
    }

    public void c() throws IOException {
        close();
        a(this.f1086b);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0088, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x008a, code lost:
        return false;
     */
    public synchronized boolean c(String str) throws IOException {
        h();
        e(str);
        b bVar = this.j.get(str);
        int i2 = 0;
        if (bVar != null) {
            if (bVar.e == null) {
                while (i2 < this.g) {
                    if (bVar.a(i2).delete()) {
                        this.h -= bVar.c[i2];
                        bVar.c[i2] = 0;
                        i2++;
                    } else {
                        throw new IOException("failed to delete " + r2);
                    }
                }
                this.k++;
                this.i.append("REMOVE " + str + 10);
                this.j.remove(str);
                if (g()) {
                    this.m.submit(this.n);
                }
            }
        }
    }

    public synchronized void close() throws IOException {
        if (this.i != null) {
            Iterator it = new ArrayList(this.j.values()).iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (bVar.e != null) {
                    bVar.e.b();
                }
            }
            i();
            this.i.close();
            this.i = null;
        }
    }
}
