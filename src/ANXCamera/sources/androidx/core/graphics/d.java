package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.a.a.c;
import androidx.core.d.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: TypefaceCompatApi21Impl */
class d extends h {

    /* renamed from: a  reason: collision with root package name */
    private static Class f595a;

    /* renamed from: b  reason: collision with root package name */
    private static Constructor f596b;
    private static Method c;
    private static Method d;
    private static boolean e;

    d() {
    }

    private static Typeface a(Object obj) {
        a();
        try {
            Object newInstance = Array.newInstance(f595a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) d.invoke((Object) null, new Object[]{newInstance});
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private File a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static void a() {
        Method method;
        Class<?> cls;
        Method method2;
        if (!e) {
            e = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName("android.graphics.FontFamily");
                Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
                method = cls.getMethod("addFontWeightStyle", new Class[]{String.class, Integer.TYPE, Boolean.TYPE});
                method2 = Typeface.class.getMethod("createFromFamiliesWithDefault", new Class[]{Array.newInstance(cls, 1).getClass()});
                constructor = constructor2;
            } catch (ClassNotFoundException | NoSuchMethodException e2) {
                Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
                method2 = null;
                cls = null;
                method = null;
            }
            f596b = constructor;
            f595a = cls;
            c = method;
            d = method2;
        }
    }

    private static boolean a(Object obj, String str, int i, boolean z) {
        a();
        try {
            return ((Boolean) c.invoke(obj, new Object[]{str, Integer.valueOf(i), Boolean.valueOf(z)})).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Object b() {
        a();
        try {
            return f596b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:31:0x004d, code lost:
        r5 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x004e, code lost:
        r8 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0052, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0053, code lost:
        r3 = r8;
        r8 = r5;
        r5 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0065, code lost:
        r5 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0066, code lost:
        r7 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x006a, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x006b, code lost:
        r3 = r7;
        r7 = r5;
        r5 = r3;
     */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0065 A[ExcHandler: all (th java.lang.Throwable)] */
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0012b[] bVarArr, int i) {
        ParcelFileDescriptor openFileDescriptor;
        Throwable th;
        Throwable th2;
        FileInputStream fileInputStream;
        Throwable th3;
        Throwable th4;
        if (bVarArr.length < 1) {
            return null;
        }
        try {
            openFileDescriptor = context.getContentResolver().openFileDescriptor(a(bVarArr, i).a(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            File a2 = a(openFileDescriptor);
            if (a2 != null) {
                if (a2.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(a2);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
            }
            fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            Typeface a3 = super.a(context, (InputStream) fileInputStream);
            fileInputStream.close();
            if (openFileDescriptor != null) {
                openFileDescriptor.close();
            }
            return a3;
        } catch (IOException unused) {
            return null;
        }
        throw th4;
        if (th3 != null) {
            try {
                fileInputStream.close();
            } catch (Throwable th5) {
            }
        } else {
            fileInputStream.close();
        }
        throw th4;
        if (openFileDescriptor != null) {
            if (th != null) {
                try {
                    openFileDescriptor.close();
                } catch (Throwable th6) {
                    th.addSuppressed(th6);
                }
            } else {
                openFileDescriptor.close();
            }
        }
        throw th2;
        throw th2;
    }

    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        Object b2 = b();
        c.C0010c[] a2 = bVar.a();
        int length = a2.length;
        int i2 = 0;
        while (i2 < length) {
            c.C0010c cVar = a2[i2];
            File a3 = i.a(context);
            if (a3 == null) {
                return null;
            }
            try {
                if (!i.a(a3, resources, cVar.f())) {
                    a3.delete();
                    return null;
                } else if (!a(b2, a3.getPath(), cVar.b(), cVar.c())) {
                    return null;
                } else {
                    a3.delete();
                    i2++;
                }
            } catch (RuntimeException unused) {
                return null;
            } finally {
                a3.delete();
            }
        }
        return a(b2);
    }
}
