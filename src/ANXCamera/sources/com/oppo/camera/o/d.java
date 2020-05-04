package com.oppo.camera.o;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.YuvImage;
import android.graphics.drawable.Drawable;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.media.ExifInterface;
import android.media.Image;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.net.Uri;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.LocaleList;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Size;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.BaseInterpolator;
import android.view.animation.Interpolator;
import b.a.a;
import color.support.v7.app.b;
import com.color.compat.content.ContextNative;
import com.color.compat.content.IntentNative;
import com.color.compat.os.SystemPropertiesNative;
import com.color.compat.view.WindowManagerNative;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.gl.s;
import com.oppo.camera.jni.FormatConverter;
import com.oppo.camera.l.a;
import com.oppo.camera.v;
import com.oppo.exif.OppoExifInterface;
import com.oppo.exif.OppoExifTag;
import com.oppo.exif.OppoRational;
import com.oppo.os.OppoUsbEnvironment;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import oppo.content.res.OppoFontUtils;

/* compiled from: Util */
public class d {
    private static Handler A = null;
    private static String B = null;
    private static String C = null;
    private static String D = null;
    private static int E = 0;
    private static int F = 0;
    private static int G = 0;
    private static int H = 0;
    private static int I = 0;
    private static int J = 0;
    private static int K = 0;
    private static int L = 0;
    private static int M = 0;
    private static int N = 0;
    private static int O = 0;
    private static int P = 20;
    private static boolean Q = false;
    private static boolean R = false;
    private static Boolean S = null;

    /* renamed from: a  reason: collision with root package name */
    public static int f2271a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static String f2272b = null;
    private static float c = 1.0f;
    private static a d = null;
    private static boolean e = false;
    private static boolean f = false;
    private static boolean g = true;
    private static boolean h;
    private static boolean i;
    private static boolean j;
    private static boolean k;
    private static String l;
    private static String m;
    private static String n;
    private static Typeface o;
    private static Typeface p;
    private static Typeface q;
    private static String r;
    /* access modifiers changed from: private */
    public static Context s;
    private static Handler t;
    /* access modifiers changed from: private */
    public static b u;
    private static Thread v;
    /* access modifiers changed from: private */
    public static RenderScript w;
    /* access modifiers changed from: private */
    public static ScriptIntrinsicBlur x;
    private static HashMap<String, Boolean> y;
    private static HandlerThread z;

    /* compiled from: Util */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f2280a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDateFormat f2281b = new SimpleDateFormat(this.f2280a, Locale.US);
        private long c;
        private int d;

        public a(String str) {
            this.f2280a = str;
        }

        public String a(long j) {
            String format = this.f2281b.format(new Date(j));
            if (j / 1000 == this.c / 1000) {
                this.d++;
                if (this.d < 10) {
                    return format + "_0" + this.d;
                }
                return format + "_" + this.d;
            }
            this.c = j;
            this.d = 0;
            return format;
        }

        public void a() {
            String str = this.f2280a;
            if (str != null) {
                this.f2281b = new SimpleDateFormat(str, Locale.US);
            }
        }
    }

    public static void A() {
        Display defaultDisplay = ((WindowManager) s.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        F = Math.max(point.x, point.y);
        E = Math.min(point.x, point.y);
    }

    public static int B() {
        int identifier = s.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return s.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int C() {
        int i2 = I;
        return (((F - E) - i2) - G) / 2;
    }

    public static int D() {
        return H;
    }

    public static int E() {
        return G;
    }

    public static int F() {
        return I;
    }

    public static int G() {
        return J;
    }

    public static int H() {
        return K;
    }

    public static int I() {
        return M;
    }

    public static int J() {
        return N;
    }

    public static int K() {
        return L;
    }

    public static int L() {
        return F;
    }

    public static int M() {
        return L() - O;
    }

    public static int N() {
        return E;
    }

    public static boolean O() {
        return i;
    }

    public static double P() {
        double d2 = ((double) F) / ((double) E);
        if (Math.abs(d2 - 2.111111111111111d) < 0.01d) {
            return 2.111111111111111d;
        }
        if (Math.abs(d2 - 2.0d) < 0.01d) {
            return 2.0d;
        }
        return Math.abs(d2 - 2.1666666666666665d) < 0.01d ? 2.1666666666666665d : 1.7777777777777777d;
    }

    public static int Q() {
        double d2 = ((double) F) / ((double) E);
        if (Math.abs(d2 - 2.111111111111111d) < 0.01d) {
            return 6;
        }
        if (Math.abs(d2 - 2.0d) < 0.01d) {
            return 4;
        }
        return Math.abs(d2 - 2.1666666666666665d) < 0.01d ? 7 : 1;
    }

    public static int R() {
        return O;
    }

    public static boolean S() {
        return 2 != Settings.Secure.getInt(s.getContentResolver(), "hide_navigationbar_enable", 0);
    }

    public static boolean T() {
        return Q;
    }

    public static boolean U() {
        return b("com.oppo.feature.screen.heteromorphism");
    }

    public static boolean V() {
        return z() || SystemPropertiesNative.get("ro.oppo.regionmark", "0").equals("JP");
    }

    public static int W() {
        double a2 = a((Context) null, CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE));
        com.oppo.camera.d.a("Util", "getHighPictureSize, highPictureSize: " + a2);
        if (Math.abs(a2 - 48.0d) < 1.0d) {
            return 48;
        }
        return Math.abs(a2 - 64.0d) < 1.0d ? 64 : -1;
    }

    public static boolean X() {
        Boolean bool = S;
        if (bool != null) {
            return bool.booleanValue();
        }
        List<String> supportedList = CameraConfig.getSupportedList("pref_video_size_key", 0);
        if (supportedList != null) {
            if (supportedList.contains("video_size_4kuhd")) {
                S = Boolean.valueOf(d(3840, 2160));
            } else if (supportedList.contains("video_size_1080p")) {
                S = Boolean.valueOf(d(1920, 1080));
            } else if (supportedList.contains("video_size_720p")) {
                S = Boolean.valueOf(d(1280, 720));
            }
        }
        if (S == null) {
            S = false;
        }
        return S.booleanValue();
    }

    public static boolean Y() {
        return k;
    }

    public static Handler Z() {
        if (t == null) {
            t = new Handler(Looper.getMainLooper());
        }
        return t;
    }

    public static double a(Context context, Size size) {
        if (size == null) {
            return 0.0d;
        }
        float f2 = 1000000.0f;
        if (context != null && h(context)) {
            f2 = 10000.0f;
        }
        return (double) (((float) (size.getWidth() * size.getHeight())) / f2);
    }

    public static float a(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    public static int a(float f2) {
        return Math.round(c * f2);
    }

    public static int a(int i2, int i3) {
        boolean z2 = true;
        if (i3 != -1) {
            int abs = Math.abs(i2 - i3);
            if (Math.min(abs, 360 - abs) < 65) {
                z2 = false;
            }
        }
        return z2 ? (((i2 + 30) / 90) * 90) % 360 : i3;
    }

    public static int a(int i2, int i3, int i4) {
        return i2 > i4 ? i4 : i2 < i3 ? i3 : i2;
    }

    public static int a(int i2, int i3, int i4, int i5) {
        double d2 = 1.0d;
        double d3 = i4 != 0 ? ((double) i2) / ((double) i4) : 1.0d;
        if (i5 != 0) {
            d2 = ((double) i3) / ((double) i5);
        }
        float f2 = 1.0f;
        while (true) {
            float f3 = 2.0f * f2;
            if (((double) f3) > Math.min(d3, d2)) {
                return (int) f2;
            }
            f2 = f3;
        }
    }

    public static int a(Activity activity) {
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        if (rotation == 0) {
            return 0;
        }
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    public static int a(BitmapFactory.Options options, int i2, int i3) {
        int b2 = b(options, i2, i3);
        if (b2 > 8) {
            return 8 * ((b2 + 7) / 8);
        }
        int i4 = 1;
        while (i4 < b2) {
            i4 <<= 1;
        }
        return i4;
    }

    public static int a(String str) {
        if ("standard".equals(str) || "standard_high".equals(str)) {
            return 0;
        }
        if ("full".equals(str)) {
            return Q();
        }
        if ("square".equals(str)) {
            return 2;
        }
        return "16_9".equals(str) ? 1 : -1;
    }

    private static int a(byte[] bArr, int i2, int i3, boolean z2) {
        int i4;
        if (z2) {
            i2 += i3 - 1;
            i4 = -1;
        } else {
            i4 = 1;
        }
        byte b2 = 0;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                return b2;
            }
            b2 = (bArr[i2] & 255) | (b2 << 8);
            i2 += i4;
            i3 = i5;
        }
    }

    public static Intent a(Intent intent) {
        if (intent != null) {
            Context context = s;
            if (context != null) {
                List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
                if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
                    com.oppo.camera.d.d("Util", "getExplicitActivityIntent, resolveInfo is empty");
                    return null;
                }
                ResolveInfo resolveInfo = queryIntentActivities.get(0);
                ComponentName componentName = new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                intent2.addFlags(268435456);
                intent2.addFlags(67108864);
                return intent2;
            }
        }
        com.oppo.camera.d.d("Util", "getExplicitActivityIntent, implicitIntent or sContext is null");
        return null;
    }

    public static Bitmap a(int i2, int i3, Bitmap.Config config) {
        return c(Bitmap.createBitmap(i2, i3, config));
    }

    public static Bitmap a(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.postScale(-1.0f, 1.0f);
        matrix.postTranslate((float) bitmap.getWidth(), 0.0f);
        try {
            Bitmap a2 = a(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (bitmap == a2) {
                return bitmap;
            }
            bitmap.recycle();
            return a2;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return bitmap;
        }
    }

    public static Bitmap a(Bitmap bitmap, float f2) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        if (w == null) {
            w = RenderScript.create(s);
        }
        if (x == null) {
            RenderScript renderScript = w;
            x = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
        }
        System.currentTimeMillis();
        x.setRadius(f2);
        Bitmap a2 = a(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Allocation createFromBitmap = Allocation.createFromBitmap(w, bitmap);
        Allocation createFromBitmap2 = Allocation.createFromBitmap(w, a2);
        x.setInput(createFromBitmap);
        x.forEach(createFromBitmap2);
        createFromBitmap2.copyTo(a2);
        createFromBitmap.destroy();
        createFromBitmap2.destroy();
        return a2;
    }

    public static Bitmap a(Bitmap bitmap, int i2) {
        return a(bitmap, i2, false);
    }

    public static Bitmap a(Bitmap bitmap, int i2, int i3, int i4, int i5) {
        return c(Bitmap.createBitmap(bitmap, i2, i3, i4, i5));
    }

    public static Bitmap a(Bitmap bitmap, int i2, int i3, int i4, int i5, Matrix matrix, boolean z2) {
        return c(Bitmap.createBitmap(bitmap, i2, i3, i4, i5, matrix, z2));
    }

    public static Bitmap a(Bitmap bitmap, int i2, boolean z2) {
        if ((i2 == 0 && !z2) || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        if (z2) {
            matrix.postScale(-1.0f, 1.0f);
            i2 = (i2 + 360) % 360;
            if (i2 == 0 || i2 == 180) {
                matrix.postTranslate((float) bitmap.getWidth(), 0.0f);
            } else if (i2 == 90 || i2 == 270) {
                matrix.postTranslate((float) bitmap.getHeight(), 0.0f);
            } else {
                throw new IllegalArgumentException("Invalid degrees: " + i2);
            }
        }
        if (i2 != 0) {
            matrix.postRotate((float) i2, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        }
        try {
            Bitmap a2 = a(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (bitmap == a2) {
                return bitmap;
            }
            bitmap.recycle();
            return a2;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return bitmap;
        }
    }

    public static Bitmap a(byte[] bArr, int i2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (!options.mCancel && options.outWidth != -1) {
                if (options.outHeight != -1) {
                    options.inSampleSize = a(options, -1, i2);
                    options.inJustDecodeBounds = false;
                    options.inDither = false;
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                    return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                }
            }
            return null;
        } catch (OutOfMemoryError e2) {
            com.oppo.camera.d.d("Util", "Got oom exception ", e2);
            return null;
        }
    }

    public static Bitmap a(byte[] bArr, int i2, int i3, int i4, int i5, boolean z2) {
        com.oppo.camera.d.a("Util", "yuvToBitmap, width: " + i2 + ", height: " + i3 + ", orientation: " + i4 + ", scale: " + i5 + ", mirror: " + z2);
        int i6 = i3 / i5;
        if (i6 % 2 != 0) {
            i6++;
        }
        byte[] a2 = a(bArr, i2, i3, i5);
        if (a2 == null) {
            return null;
        }
        int i7 = i2 / i5;
        Bitmap a3 = a(a(f(a2, i7, i6), i7, i6, Bitmap.Config.ARGB_8888), i4, z2);
        com.oppo.camera.d.a("Util", "yuvToBitmap X, bitmap width: " + a3.getWidth() + ", height: " + a3.getHeight());
        return a3;
    }

    public static Bitmap a(int[] iArr, int i2, int i3, Bitmap.Config config) {
        return c(Bitmap.createBitmap(iArr, i2, i3, config));
    }

    public static Address a(Context context, Location location) {
        com.oppo.camera.d.a("Util", "getAddressFromLocation");
        Address address = null;
        if (!(location == null || context == null)) {
            try {
                List<Address> fromLocation = new Geocoder(context).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
                if (fromLocation != null && fromLocation.size() > 0) {
                    address = fromLocation.get(0);
                }
            } catch (Exception e2) {
                com.oppo.camera.d.e("Util", "getAddressFromLocation, Error: " + e2.getMessage().toString());
            }
            if (address != null) {
                address.setLatitude(location.getLatitude());
                address.setLongitude(location.getLongitude());
            }
        }
        return address;
    }

    public static Location a(ExifInterface exifInterface) {
        if (exifInterface == null) {
            return null;
        }
        float[] fArr = new float[2];
        if (!exifInterface.getLatLong(fArr)) {
            return null;
        }
        Location location = new Location("network");
        location.setLatitude((double) fArr[0]);
        location.setLongitude((double) fArr[1]);
        return location;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0013, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0017, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0018, code lost:
        r3 = r2;
        r2 = r4;
        r4 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0012, code lost:
        r4 = th;
     */
    public static ExifInterface a(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        Throwable th2;
        if (bArr == null) {
            return null;
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            ExifInterface exifInterface = new ExifInterface(byteArrayInputStream);
            try {
                byteArrayInputStream.close();
                return exifInterface;
            } catch (IOException unused) {
                return exifInterface;
            }
        } catch (IOException unused2) {
            return null;
        }
        throw th;
        if (th2 != null) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
        } else {
            byteArrayInputStream.close();
        }
        throw th;
    }

    public static Size a(int i2, List<Size> list, double d2) {
        int i3 = Integer.MAX_VALUE;
        Size size = null;
        for (Size next : list) {
            if (Math.abs((((double) next.getWidth()) / ((double) next.getHeight())) - d2) <= 0.015d && Math.abs(next.getHeight() - i2) < i3) {
                i3 = Math.abs(next.getHeight() - i2);
                size = next;
            }
        }
        return size;
    }

    public static Size a(List<Size> list, double d2) {
        Size size = null;
        if (list == null) {
            return null;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        for (Size next : list) {
            if (Math.abs((((double) next.getWidth()) / ((double) next.getHeight())) - d2) <= 0.015d) {
                int abs = Math.abs(next.getHeight() - E);
                if (abs < i3) {
                    i3 = Math.abs(next.getHeight() - E);
                } else if (abs == i3) {
                    if (next.getHeight() <= E) {
                    }
                }
                size = next;
            }
        }
        if (size == null) {
            for (Size next2 : list) {
                if (Math.abs(next2.getHeight() - E) < i2) {
                    i2 = Math.abs(next2.getHeight() - E);
                    size = next2;
                }
            }
        }
        if (size != null) {
            com.oppo.camera.d.a("Util", "getOptimalPreviewSize, screen: " + E + "x" + F + ", targetRatio: " + d2 + ", optimalSize: " + size.getHeight() + "x" + size.getWidth());
        } else {
            com.oppo.camera.d.e("Util", "getOptimalPreviewSize, optimalSize is null");
        }
        return size;
    }

    public static Size a(List<Size> list, double d2, int i2) {
        Size size = null;
        if (!(list == null || list.size() == 0)) {
            for (Size next : list) {
                if (Math.abs((((double) next.getWidth()) / ((double) next.getHeight())) - d2) <= 0.015d && ((-1 == i2 || next.getHeight() <= i2) && (size == null || size.getHeight() < next.getHeight()))) {
                    size = next;
                }
            }
            if (size != null) {
                com.oppo.camera.d.a("Util", "getMaxSizeByRatio, size: " + size.getHeight() + "x" + size.getWidth() + ", targetRatio: " + d2);
            } else {
                com.oppo.camera.d.e("Util", "getMaxSizeByRatio, optimalSize is null");
            }
        }
        return size;
    }

    public static String a(int i2) {
        if (i2 == 17) {
            return "yuv420sp";
        }
        if (i2 == 32) {
            return "raw";
        }
        if (i2 == 256) {
            return "jpeg";
        }
        switch (i2) {
            case 35:
                return "yuv420sp";
            case 36:
            case 37:
            case 38:
                return "raw";
            default:
                return null;
        }
    }

    public static synchronized String a(long j2) {
        String a2;
        synchronized (d.class) {
            if (d == null) {
                d = new a(s.getString(R.string.camera_image_file_name_format));
            }
            a2 = d.a(j2);
        }
        return a2;
    }

    public static String a(Size size) {
        if (size == null) {
            return "full";
        }
        Size sizeConfigValue = CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE);
        return (sizeConfigValue != null && sizeConfigValue.getWidth() == size.getWidth() && sizeConfigValue.getHeight() == size.getHeight()) ? "standard_high" : Math.abs((((double) size.getWidth()) / ((double) size.getHeight())) - 1.3333333333333333d) < 0.015d ? "standard" : Math.abs((((double) size.getWidth()) / ((double) size.getHeight())) - 1.0d) < 0.015d ? "square" : Math.abs((((double) size.getWidth()) / ((double) size.getHeight())) - 1.7777777777777777d) < 0.015d ? "16_9" : "full";
    }

    public static String a(List<Size> list, int i2, int i3) {
        String str = null;
        if (list == null || list.size() == 0) {
            com.oppo.camera.d.e("Util", "getMinDiffPictureSize error!");
            return null;
        }
        long j2 = Long.MAX_VALUE;
        for (Size next : list) {
            if (b(next.getWidth(), next.getHeight()) == i3 && j2 > ((long) Math.abs(i2 - (next.getWidth() * next.getHeight())))) {
                str = next.getWidth() + "x" + next.getHeight();
                j2 = (long) Math.abs(i2 - (next.getWidth() * next.getHeight()));
            }
        }
        return str;
    }

    public static String a(boolean z2) {
        return z2 ? "commonVideo" : "common";
    }

    public static String a(byte[] bArr, String str, String str2) {
        com.oppo.camera.d.a("Util", "saveBytesToFile, bytes: " + bArr + ", customDir: " + str + ", fileName: " + str2);
        if (bArr == null || bArr.length == 0) {
            com.oppo.camera.d.e("Util", "saveBytesToJpeg, bytes is empty");
            return null;
        }
        String absolutePath = new File(v.l + File.separator + str, str2).getAbsolutePath();
        if (com.oppo.camera.l.a.b(absolutePath, com.oppo.camera.l.a.c, bArr)) {
            return absolutePath;
        }
        return null;
    }

    public static void a(int i2, int i3, int i4, String str) {
        String str2 = v.l + File.separator + str;
        if (new File(str2).exists() || com.oppo.camera.l.a.f(str2)) {
            File file = new File(str2, a(System.currentTimeMillis()) + ".png");
            com.oppo.camera.d.e("Util", "dumpAndSaveTexture, fileName: " + r0);
            a(b(i2, i3, i4), file);
            return;
        }
        com.oppo.camera.d.e("Util", "dumpAndSaveTexture, mkdirs fail");
    }

    public static void a(final Activity activity, final int i2) {
        com.oppo.camera.d.e("Util", "showErrorAndFinish, Some Error occurs, Error id: " + i2 + ", activty: " + activity);
        if (activity != null) {
            t.post(new Runnable() {
                public void run() {
                    AnonymousClass1 r0 = new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            activity.finish();
                        }
                    };
                    if (d.u != null) {
                        d.u.cancel();
                        b unused = d.u = null;
                    }
                    b unused2 = d.u = new b.a(activity).a(false).c(16843605).a(i2).c((int) R.string.camera_button_ok, (DialogInterface.OnClickListener) r0).d();
                }
            });
        }
    }

    public static void a(Context context) {
        s = context;
        e = b("oppo.version.exp");
    }

    public static void a(Context context, Bitmap bitmap, String str, String str2) {
        if (f2272b == null) {
            File internalSdDirectory = OppoUsbEnvironment.getInternalSdDirectory(context);
            if (internalSdDirectory != null) {
                f2272b = internalSdDirectory.getAbsolutePath() + File.separator + str2 + File.separator;
            }
        }
        if (new File(f2272b).exists() || com.oppo.camera.l.a.f(f2272b)) {
            File file = new File(f2272b + str + a(System.currentTimeMillis()) + ".png");
            StringBuilder sb = new StringBuilder();
            sb.append("dumpAndSaveBitmap, name: ");
            sb.append(file.getName());
            com.oppo.camera.d.a("Util", sb.toString());
            a(bitmap, file);
            return;
        }
        com.oppo.camera.d.e("Util", "dumpAndSaveBitmap, mkdirs fail");
    }

    public static void a(Context context, Uri uri) {
        com.oppo.camera.d.a("Util", "broadcastNewPicture, uri: " + uri);
        context.sendBroadcast(new Intent("android.hardware.action.NEW_PICTURE", uri));
        context.sendBroadcast(new Intent("com.android.camera.NEW_PICTURE", uri));
        Intent intent = new Intent("com.oppo.camera.NEW_PICTURE", uri);
        intent.addFlags(IntentNative.FLAG_RECEIVER_INCLUDE_BACKGROUND);
        context.sendBroadcast(intent);
    }

    public static void a(Context context, boolean z2) {
        com.oppo.camera.d.a("Util", "broadcastRearCamera, enterRearCamera: " + z2);
        Intent intent = new Intent("com.oppo.rearcamera");
        intent.putExtra("command", z2 ? "enterrear" : "exitrear");
        context.sendBroadcast(intent);
    }

    public static void a(ApplicationInfo applicationInfo) {
        if (Build.VERSION.SDK_INT >= 17 && applicationInfo != null) {
            boolean z2 = false;
            boolean z3 = (applicationInfo.flags & 4194304) == 4194304;
            boolean z4 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
            if (z3 && z4) {
                z2 = true;
            }
            k = z2;
        }
    }

    public static void a(Bitmap bitmap, File file) {
        OutputStream a2;
        Throwable th;
        try {
            a2 = com.oppo.camera.l.a.a(file.getAbsolutePath(), com.oppo.camera.l.a.d);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, a2);
            a2.flush();
            if (a2 != null) {
                a2.close();
                return;
            }
            return;
        } catch (IOException e2) {
            e2.printStackTrace();
            return;
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
        throw th;
    }

    public static void a(Image image) {
        if (!DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_CAPTURE_YUV, DebugUtil.DEBUG_DISABLE)) {
            return;
        }
        if (35 == image.getFormat()) {
            byte[] a2 = a(image, 17);
            a(a2, DebugUtil.DUMP_DIR_CAPTURE_YUV, "onImageReceived_" + image.getTimestamp() + "_" + image.getWidth() + "x" + image.getHeight() + ".yuv");
        } else if (32 == image.getFormat()) {
            byte[] bArr = new byte[image.getPlanes()[0].getBuffer().remaining()];
            image.getPlanes()[0].getBuffer().get(bArr);
            a(bArr, "capture_raw", "onImageReceived_" + image.getTimestamp() + "_" + image.getWidth() + "x" + image.getHeight() + ".raw");
        }
    }

    public static void a(View view) {
        if (view != null) {
            a(view, 0.0f, 1.0f, 400, (Animation.AnimationListener) null, (Interpolator) null);
            view.setEnabled(true);
        }
    }

    public static void a(View view, float f2, float f3, long j2, Animation.AnimationListener animationListener, Interpolator interpolator) {
        if (view != null && view.getVisibility() != 0) {
            view.setVisibility(0);
            AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
            alphaAnimation.setAnimationListener(animationListener);
            alphaAnimation.setDuration(j2);
            if (interpolator != null) {
                alphaAnimation.setInterpolator(interpolator);
            }
            view.startAnimation(alphaAnimation);
        }
    }

    public static void a(final View view, final int i2, int i3, BaseInterpolator baseInterpolator, Animator.AnimatorListener animatorListener) {
        if (view != null && i3 >= 0) {
            if (i3 == 0) {
                view.setBackgroundColor(i2);
                return;
            }
            view.animate().cancel();
            Drawable background = view.getBackground();
            final int alpha = background != null ? background.getAlpha() : 0;
            final int alpha2 = Color.alpha(i2) - alpha;
            if (alpha2 != 0) {
                view.animate().setInterpolator(baseInterpolator).setListener(animatorListener).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        Float f = (Float) valueAnimator.getAnimatedValue();
                        View view = view;
                        if (view != null) {
                            view.setBackgroundColor(Color.argb(alpha + ((int) (((float) alpha2) * f.floatValue())), Color.red(i2), Color.green(i2), Color.blue(i2)));
                        }
                    }
                }).setDuration((long) i3).start();
            }
        }
    }

    public static void a(View view, int i2, int i3, Interpolator interpolator) {
        if (view != null && view.getVisibility() == 0) {
            view.setEnabled(false);
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration((long) i2);
            alphaAnimation.setStartOffset((long) i3);
            if (interpolator != null) {
                alphaAnimation.setInterpolator(interpolator);
            }
            view.startAnimation(alphaAnimation);
            view.setVisibility(8);
        }
    }

    public static void a(View view, int i2, Animation.AnimationListener animationListener, long j2) {
        a(view, i2, animationListener, j2, 0, (Interpolator) null);
    }

    public static void a(View view, int i2, Animation.AnimationListener animationListener, long j2, long j3, Interpolator interpolator) {
        if (view != null && view.getVisibility() != i2) {
            if (8 != i2 || 4 != view.getVisibility()) {
                if (4 != i2 || 8 != view.getVisibility()) {
                    AlphaAnimation alphaAnimation = i2 == 0 ? new AlphaAnimation(0.0f, 1.0f) : new AlphaAnimation(1.0f, 0.0f);
                    if (animationListener == null) {
                        view.setVisibility(i2);
                    }
                    if (interpolator != null) {
                        alphaAnimation.setInterpolator(interpolator);
                    }
                    alphaAnimation.setAnimationListener(animationListener);
                    alphaAnimation.setDuration(j2);
                    alphaAnimation.setStartOffset(j3);
                    view.clearAnimation();
                    view.startAnimation(alphaAnimation);
                }
            }
        }
    }

    public static void a(s sVar, String str) {
        String str2 = v.l + File.separator + str;
        if (new File(str2).exists() || com.oppo.camera.l.a.f(str2)) {
            File file = new File(str2, a(System.currentTimeMillis()) + ".png");
            com.oppo.camera.d.e("Util", "dumpAndSaveTexture, fileName: " + r0);
            a(b(sVar.d(), sVar.g(), sVar.h()), file);
            return;
        }
        com.oppo.camera.d.e("Util", "dumpAndSaveTexture, mkdirs fail");
    }

    public static void a(OppoExifInterface oppoExifInterface, b.C0052b bVar, long j2) {
        if (oppoExifInterface == null) {
            com.oppo.camera.d.e("Util", "buildExif, exifInterface is null");
            return;
        }
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_FOCAL_LENGTH, new OppoRational((long) (bVar.u * 100.0f), 100)));
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_F_NUMBER, new OppoRational((long) (bVar.j * 100.0f), 100)));
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_ISO_SPEED_RATINGS, Integer.valueOf(bVar.i)));
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_FLASH, Integer.valueOf(bVar.l)));
        int i2 = 1;
        if (bVar.k == 1) {
            i2 = 0;
        }
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_WHITE_BALANCE, Integer.valueOf(i2)));
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_EXPOSURE_TIME, new OppoRational(bVar.t / 1000, 1000000)));
        Location location = bVar.m;
        if (location != null) {
            oppoExifInterface.addGpsTags(location.getLatitude(), location.getLongitude());
        }
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_USER_COMMENT, OppoExifTag.EXIF_TAG_PREFIX.concat(String.valueOf(com.oppo.camera.f.a.a("sticker", bVar.R)))));
        oppoExifInterface.setTag(oppoExifInterface.buildTag(OppoExifInterface.TAG_MODEL, p()));
        if (0 != j2) {
            oppoExifInterface.addDateTimeStampTag(OppoExifInterface.TAG_DATE_TIME, j2, Calendar.getInstance().getTimeZone());
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(Runnable runnable) {
        Handler handler = A;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    public static boolean a() {
        return j;
    }

    public static boolean a(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        } catch (Exception e2) {
            com.oppo.camera.d.d("Util", "isPackageExist, packageName: " + str + ", e: ", e2);
            applicationInfo = null;
        }
        return applicationInfo != null;
    }

    public static boolean a(Bitmap bitmap, a.C0033a aVar) {
        com.oppo.camera.d.a("Util", "saveBitmapToDiskLruCache");
        if (bitmap == null) {
            com.oppo.camera.d.e("Util", "saveBitmapToDiskLruCache, bitmap: " + bitmap);
            return false;
        }
        OutputStream outputStream = null;
        try {
            outputStream = aVar.a(0);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 75, outputStream);
            outputStream.flush();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            com.oppo.camera.d.a("Util", "saveBitmapToDiskLruCache X");
            return true;
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e4) {
                    e = e4;
                }
            }
            com.oppo.camera.d.a("Util", "saveBitmapToDiskLruCache X");
            return false;
        } catch (IOException e5) {
            e5.printStackTrace();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e6) {
                    e = e6;
                }
            }
            com.oppo.camera.d.a("Util", "saveBitmapToDiskLruCache X");
            return false;
        } catch (Throwable th) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            com.oppo.camera.d.a("Util", "saveBitmapToDiskLruCache X");
            throw th;
        }
        e.printStackTrace();
        com.oppo.camera.d.a("Util", "saveBitmapToDiskLruCache X");
        return false;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v0, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v1, resolved type: android.os.ParcelFileDescriptor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v2, resolved type: android.os.ParcelFileDescriptor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v1, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v3, resolved type: android.os.ParcelFileDescriptor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v4, resolved type: android.os.ParcelFileDescriptor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v6, resolved type: android.os.ParcelFileDescriptor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v7, resolved type: android.os.ParcelFileDescriptor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v8, resolved type: android.os.ParcelFileDescriptor} */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:23|24|25|(3:26|27|(2:29|(4:31|(2:33|34)|(2:36|37)|38)))) */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        com.oppo.camera.d.e("Util", "isUriValid, IOException: " + r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        r3 = r13.query(r12, (java.lang.String[]) null, (java.lang.String) null, (java.lang.String[]) null, (java.lang.String) null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0066, code lost:
        if (r3 != null) goto L_0x0068;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0068, code lost:
        r3.moveToFirst();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x007b, code lost:
        if (r3.getString(r3.getColumnIndex(com.android.providers.downloads.Downloads.Impl._DATA)).contains("_tmp.jpg") != false) goto L_0x007d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x007d, code lost:
        com.oppo.camera.d.e("Util", "isUriValid, but from tmp file!");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0082, code lost:
        if (r3 != null) goto L_0x0084;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0087, code lost:
        if (r4 != 0) goto L_0x0089;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x008c, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x008d, code lost:
        if (r3 != null) goto L_0x008f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0093, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
        com.oppo.camera.d.e("Util", "isUriValid, get cursor failed!");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x009a, code lost:
        if (r3 == null) goto L_0x009d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x009d, code lost:
        if (r4 == 0) goto L_0x00a2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00a3, code lost:
        if (r3 != null) goto L_0x00a5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00a8, code lost:
        throw r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00a9, code lost:
        r12 = th;
        r4 = r4;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0048 */
    /* JADX WARNING: Multi-variable type inference failed */
    public static boolean a(Uri uri, ContentResolver contentResolver) {
        ParcelFileDescriptor parcelFileDescriptor;
        com.oppo.camera.d.a("Util", "isUriValid, uri: " + uri);
        if (uri == null) {
            return false;
        }
        Cursor cursor = null;
        try {
            ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
            if (openFileDescriptor == null) {
                parcelFileDescriptor = openFileDescriptor;
                com.oppo.camera.d.e("Util", "isUriValid, Fail to open URI. URI: " + uri);
                parcelFileDescriptor = openFileDescriptor;
                if (openFileDescriptor != null) {
                    try {
                        openFileDescriptor.close();
                    } catch (Exception unused) {
                    }
                }
                return false;
            }
            if (openFileDescriptor != null) {
                try {
                    openFileDescriptor.close();
                } catch (Exception unused2) {
                }
            }
            return true;
        } catch (Exception unused3) {
            parcelFileDescriptor = cursor;
        } catch (Throwable th) {
            th = th;
            ParcelFileDescriptor parcelFileDescriptor2 = cursor;
            if (parcelFileDescriptor2 != 0) {
                try {
                    parcelFileDescriptor2.close();
                } catch (Exception unused4) {
                }
            }
            throw th;
        }
        return false;
    }

    public static boolean a(Uri uri, String str, int i2, int i3) {
        return uri != null && str != null && str.endsWith("_tmp.jpg") && i2 < 0 && i3 < 0;
    }

    public static boolean a(final View view, final int i2, int i3, boolean z2, boolean z3, final Animation.AnimationListener animationListener) {
        if (view == null) {
            return false;
        }
        int c2 = c(view);
        if (c2 == i2) {
            return false;
        }
        if ((8 == i2 && 4 == c2) || (4 == i2 && 8 == c2)) {
            return false;
        }
        if (view.getAnimation() != null && !view.getAnimation().hasEnded()) {
            if (!z2) {
                return false;
            }
            view.clearAnimation();
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(view.getContext(), i3);
        if (loadAnimation == null) {
            return false;
        }
        loadAnimation.setAnimationListener(new Animation.AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                Animation.AnimationListener animationListener = animationListener;
                if (animationListener != null) {
                    animationListener.onAnimationEnd(animation);
                    return;
                }
                int i = i2;
                if (i != 0) {
                    view.setVisibility(i);
                }
            }

            public void onAnimationRepeat(Animation animation) {
                Animation.AnimationListener animationListener = animationListener;
                if (animationListener != null) {
                    animationListener.onAnimationRepeat(animation);
                }
            }

            public void onAnimationStart(Animation animation) {
                Animation.AnimationListener animationListener = animationListener;
                if (animationListener != null) {
                    animationListener.onAnimationStart(animation);
                    return;
                }
                int i = i2;
                if (i == 0) {
                    view.setVisibility(i);
                }
            }
        });
        view.setTag(R.id.view_tag_key_animation_visibility, Integer.valueOf(i2));
        view.startAnimation(loadAnimation);
        return true;
    }

    public static boolean a(List<Size> list, Size size) {
        if (!(list == null || size == null)) {
            for (Size next : list) {
                if (next != null && size.getWidth() == next.getWidth() && size.getHeight() == next.getHeight()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static <K, V> boolean a(Map<K, V> map) {
        return map == null || map.size() <= 0;
    }

    public static byte[] a(Bitmap bitmap, b.C0052b bVar, long j2) {
        if (bitmap == null) {
            return null;
        }
        byte[] a2 = a(a(bitmap, !bVar.e, bVar.E, bVar.aa), bVar, j2);
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return a2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0030, code lost:
        r5 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0031, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0035, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0036, code lost:
        r1 = r0;
        r0 = r5;
        r5 = r1;
     */
    private static byte[] a(Bitmap bitmap, boolean z2, boolean z3, int i2) {
        Bitmap bitmap2;
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        Throwable th2;
        if (!z3) {
            bitmap2 = a(bitmap, i2, false);
        } else {
            if ((i2 == 90 || i2 == 270) && z2) {
                i2 = (i2 + 180) % 360;
            }
            bitmap2 = a(bitmap, i2, z2);
        }
        byte[] bArr = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap2.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
            bArr = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (!bitmap2.isRecycled()) {
            bitmap2.recycle();
        }
        return bArr;
        throw th;
        if (th2 != null) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
        } else {
            byteArrayOutputStream.close();
        }
        throw th;
    }

    public static byte[] a(Image image, int i2) {
        return a(image, i2, (byte[]) null);
    }

    public static byte[] a(Image image, int i2, byte[] bArr) {
        if (image == null || image.getFormat() != 35) {
            com.oppo.camera.d.e("Util", "getYuvDataWithoutPadding, only support YUV_420_888");
            return null;
        }
        int width = image.getWidth();
        int height = image.getHeight();
        int format = image.getFormat();
        Rect cropRect = image.getCropRect();
        int width2 = ((cropRect.width() * cropRect.height()) * ImageFormat.getBitsPerPixel(format)) / 8;
        if (bArr == null || (bArr != null && bArr.length < width2)) {
            bArr = new byte[width2];
        }
        Image.Plane[] planes = image.getPlanes();
        int i3 = 0;
        ByteBuffer buffer = planes[0].getBuffer();
        ByteBuffer buffer2 = planes[1].getBuffer();
        if (17 == i2) {
            buffer2 = planes[2].getBuffer();
        }
        if (image.getPlanes()[0].getRowStride() != image.getWidth()) {
            int rowStride = image.getPlanes()[0].getRowStride() - width;
            int i4 = 0;
            int i5 = 0;
            while (i4 < height) {
                try {
                    buffer.get(bArr, i5, width);
                    if (i4 != height - 1) {
                        buffer.position(buffer.position() + rowStride);
                    }
                    i4++;
                    i5 += width;
                } catch (BufferUnderflowException unused) {
                    com.oppo.camera.d.e("Util", "getYuvDataWithoutPadding yBuf.remaining(): " + buffer.remaining() + ", offset: " + i5 + ", imgWidth: " + width);
                    return null;
                }
            }
            while (true) {
                if (i3 >= height / 2) {
                    break;
                }
                if (i3 != r11 - 1) {
                    buffer2.get(bArr, i5, width);
                    buffer2.position(buffer2.position() + rowStride);
                } else {
                    buffer2.get(bArr, i5, width - 1);
                }
                i3++;
                i5 += width;
            }
        } else {
            buffer.get(bArr, 0, buffer.remaining());
            buffer2.get(bArr, buffer.position(), buffer2.remaining());
        }
        return bArr;
    }

    public static byte[] a(File file) {
        return com.oppo.camera.l.a.d(file.getAbsolutePath());
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0041 A[SYNTHETIC, Splitter:B:17:0x0041] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x004b A[SYNTHETIC, Splitter:B:22:0x004b] */
    public static byte[] a(byte[] bArr, int i2, int i3) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr2 = null;
        try {
            YuvImage yuvImage = new YuvImage(bArr, 17, i2, i3, (int[]) null);
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                yuvImage.compressToJpeg(new Rect(0, 0, yuvImage.getWidth(), yuvImage.getHeight()), 95, byteArrayOutputStream);
                bArr2 = byteArrayOutputStream.toByteArray();
            } catch (Exception e2) {
                e = e2;
                try {
                    e.printStackTrace();
                    if (byteArrayOutputStream != null) {
                    }
                    return bArr2;
                } catch (Throwable th) {
                    th = th;
                    if (byteArrayOutputStream != null) {
                    }
                    throw th;
                }
            }
            try {
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } catch (Exception e4) {
            e = e4;
            byteArrayOutputStream = null;
            e.printStackTrace();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
            }
            return bArr2;
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.flush();
                    byteArrayOutputStream.close();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
        return bArr2;
    }

    public static byte[] a(byte[] bArr, int i2, int i3, int i4) {
        if (bArr == null) {
            com.oppo.camera.d.e("Util", "cutYUV420SP, Error: data is null!");
            return null;
        }
        int i5 = i2 * i3;
        if (((float) bArr.length) < ((float) i5) * 1.5f) {
            com.oppo.camera.d.e("Util", "cutYUV420SP, Error, width: " + i2 + ", height: " + i3 + ", data.length: " + bArr.length);
            return null;
        }
        int i6 = (i2 - (i2 % i4)) / i4;
        int i7 = (i3 - (i3 % i4)) / i4;
        if (i7 % 2 != 0) {
            i7++;
        }
        byte[] bArr2 = new byte[(((i6 * i7) * 3) / 2)];
        int i8 = 0;
        int i9 = 0;
        while (i8 < i7) {
            int i10 = i9;
            for (int i11 = 0; i11 < i6; i11++) {
                bArr2[i10] = bArr[(i8 * i4 * i2) + (i11 * i4)];
                i10++;
            }
            i8++;
            i9 = i10;
        }
        int i12 = 0;
        while (i12 < i7 / 2) {
            int i13 = i9;
            for (int i14 = 0; i14 < i6 / 2; i14++) {
                int i15 = (i12 * i4 * i2) + i5;
                int i16 = i14 * 2 * i4;
                bArr2[i13] = bArr[i15 + i16];
                int i17 = i13 + 1;
                bArr2[i17] = bArr[i15 + i16 + 1];
                i13 = i17 + 1;
            }
            i12++;
            i9 = i13;
        }
        return bArr2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0052 A[SYNTHETIC, Splitter:B:17:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0072 A[SYNTHETIC, Splitter:B:26:0x0072] */
    /* JADX WARNING: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    public static byte[] a(byte[] bArr, b.C0052b bVar, long j2) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr2;
        OppoExifInterface oppoExifInterface = new OppoExifInterface();
        try {
            a(oppoExifInterface, bVar, j2);
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                oppoExifInterface.writeExif(bArr, (OutputStream) byteArrayOutputStream);
                bArr2 = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e2) {
                    com.oppo.camera.d.e("Util", "addExif, close exif stream, exception: " + e2);
                }
            } catch (Exception e3) {
                e = e3;
                try {
                    com.oppo.camera.d.d("Util", "addExif, processExif failed, exception: " + e.getMessage(), e);
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e4) {
                            com.oppo.camera.d.e("Util", "addExif, close exif stream, exception: " + e4);
                        }
                    }
                    bArr2 = null;
                    if (bArr2 == null) {
                    }
                } catch (Throwable th) {
                    th = th;
                    if (byteArrayOutputStream != null) {
                    }
                    throw th;
                }
            }
        } catch (Exception e5) {
            e = e5;
            byteArrayOutputStream = null;
            com.oppo.camera.d.d("Util", "addExif, processExif failed, exception: " + e.getMessage(), e);
            if (byteArrayOutputStream != null) {
            }
            bArr2 = null;
            if (bArr2 == null) {
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e6) {
                    com.oppo.camera.d.e("Util", "addExif, close exif stream, exception: " + e6);
                }
            }
            throw th;
        }
        return bArr2 == null ? bArr : bArr2;
    }

    public static int[] a(int[] iArr) {
        if (iArr == null || iArr.length != 8) {
            return iArr;
        }
        return new int[]{iArr[0], iArr[1], iArr[5], iArr[4], iArr[2], iArr[3], iArr[6], iArr[7]};
    }

    public static float b(byte[] bArr, int i2) {
        if (bArr == null) {
            return 0.0f;
        }
        return Float.intBitsToFloat((int) ((((long) bArr[i2 + 3]) << 24) | ((long) (((int) (((long) (((int) (((long) (bArr[i2 + 0] & 255)) | (((long) bArr[i2 + 1]) << 8))) & 65535)) | (((long) bArr[i2 + 2]) << 16))) & 16777215))));
    }

    public static int b(int i2, int i3) {
        if (i2 == 0 || i3 == 0) {
            return -2;
        }
        double d2 = ((double) i2) / ((double) i3);
        if (Math.abs(d2 - 1.3333333333333333d) < 0.015d) {
            return 0;
        }
        if (Math.abs(d2 - 1.7777777777777777d) < 0.015d) {
            return 1;
        }
        if (Math.abs(d2 - 1.0d) < 0.015d) {
            return 2;
        }
        if (Math.abs(d2 - 1.5d) < 0.015d) {
            return 3;
        }
        if (Math.abs(d2 - 2.0d) < 0.015d) {
            return 4;
        }
        if (Math.abs(d2 - 1.2222222222222223d) < 0.015d) {
            return 5;
        }
        if (Math.abs(d2 - 2.111111111111111d) < 0.015d) {
            return 6;
        }
        return Math.abs(d2 - 2.1666666666666665d) < 0.015d ? 7 : -1;
    }

    private static int b(BitmapFactory.Options options, int i2, int i3) {
        int i4;
        double d2 = (double) options.outWidth;
        double d3 = (double) options.outHeight;
        int ceil = i3 < 0 ? 1 : (int) Math.ceil(Math.sqrt((d2 * d3) / ((double) i3)));
        if (i2 < 0) {
            i4 = 128;
        } else {
            double d4 = (double) i2;
            i4 = (int) Math.min(Math.floor(d2 / d4), Math.floor(d3 / d4));
        }
        if (i4 < ceil) {
            return ceil;
        }
        if (i3 >= 0 || i2 >= 0) {
            return i2 < 0 ? ceil : i4;
        }
        return 1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0066, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0067, code lost:
        r2 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0068, code lost:
        if (r2 <= 8) goto L_0x00d4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x006a, code lost:
        r3 = a(r11, r1, 4, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0071, code lost:
        if (r3 == 1229531648) goto L_0x007e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0076, code lost:
        if (r3 == 1296891946) goto L_0x007e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0078, code lost:
        com.oppo.camera.d.e("Util", "getOrientation, Invalid byte order");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x007d, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x007e, code lost:
        if (r3 != 1229531648) goto L_0x0082;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0080, code lost:
        r3 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0082, code lost:
        r3 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0083, code lost:
        r4 = a(r11, r1 + 4, 4, r3) + 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x008c, code lost:
        if (r4 < 10) goto L_0x00ce;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x008e, code lost:
        if (r4 <= r2) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0091, code lost:
        r1 = r1 + r4;
        r2 = r2 - r4;
        r4 = a(r11, r1 - 2, 2, r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0099, code lost:
        r9 = r4 - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x009b, code lost:
        if (r4 <= 0) goto L_0x00d4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x009f, code lost:
        if (r2 < 12) goto L_0x00d4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00a7, code lost:
        if (a(r11, r1, 2, r3) != 274) goto L_0x00c8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00a9, code lost:
        r11 = a(r11, r1 + 8, 2, r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00ae, code lost:
        if (r11 == 1) goto L_0x00c7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00b1, code lost:
        if (r11 == 3) goto L_0x00c4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00b4, code lost:
        if (r11 == 6) goto L_0x00c1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00b6, code lost:
        if (r11 == 8) goto L_0x00be;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00b8, code lost:
        com.oppo.camera.d.c("Util", "getOrientation, Unsupported orientation");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x00bd, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00be, code lost:
        return 270;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00c1, code lost:
        return 90;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00c4, code lost:
        return 180;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x00c7, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x00c8, code lost:
        r1 = r1 + 12;
        r2 = r2 - 12;
        r4 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x00ce, code lost:
        com.oppo.camera.d.e("Util", "getOrientation, Invalid offset");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x00d3, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x00d4, code lost:
        com.oppo.camera.d.c("Util", "getOrientation, Orientation not found");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x00d9, code lost:
        return 0;
     */
    public static int b(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            if (i2 + 3 >= bArr.length) {
                break;
            }
            int i3 = i2 + 1;
            if ((bArr[i2] & 255) != 255) {
                break;
            }
            byte b2 = bArr[i3] & 255;
            if (b2 != 255) {
                i3++;
                if (!(b2 == 216 || b2 == 1)) {
                    if (b2 != 217 && b2 != 218) {
                        int a2 = a(bArr, i3, 2, false);
                        if (a2 < 2) {
                            break;
                        }
                        int i4 = i3 + a2;
                        if (i4 <= bArr.length) {
                            if (b2 == 225 && a2 >= 8 && a(bArr, i3 + 2, 4, false) == 1165519206 && a(bArr, i3 + 6, 2, false) == 0) {
                                i2 = i3 + 8;
                                int i5 = a2 - 8;
                                break;
                            }
                            i2 = i4;
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            i2 = i3;
        }
        com.oppo.camera.d.e("Util", "getOrientation, Invalid length");
        return 0;
    }

    public static Bitmap b(int i2, int i3, int i4) {
        int[] iArr = new int[1];
        Bitmap a2 = a(i3, i4, Bitmap.Config.ARGB_8888);
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
        new FormatConverter().glReadPixelsToBitmap(a2, i3, i4, 6408, 5121);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        return a2;
    }

    public static Bitmap b(Bitmap bitmap) {
        return c(Bitmap.createBitmap(bitmap));
    }

    public static Bitmap b(Bitmap bitmap, float f2) {
        if (f2 <= 0.0f || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        try {
            return a(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Size b(List<Size> list, double d2) {
        return a(list, d2, -1);
    }

    public static void b(int i2) {
        P = i2;
    }

    public static synchronized void b(Context context) {
        synchronized (d.class) {
            com.oppo.camera.d.a("Util", "initialize, sbInit: " + R);
            if (!R) {
                com.oppo.camera.l.a.a(context, (a.C0061a) null);
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                c = displayMetrics.density;
                s = context;
                t = new Handler(context.getMainLooper());
                c(context);
                g(s);
                g = b("oppo.hw.manufacturer.qualcomm");
                h = b("oppo.cmcc.camera");
                f();
                Q = ActivityManager.isUserAMonkey();
                R = true;
                j = SystemPropertiesNative.getBoolean(DebugUtil.PROPERTIES_DUMP_PREVIEW, false);
            }
            c();
            com.oppo.camera.d.a("Util", "initialize X");
        }
    }

    public static void b(View view) {
        a(view, 400, 0, (Interpolator) null);
    }

    public static void b(Runnable runnable) {
        Handler handler = A;
        if (handler != null) {
            handler.removeCallbacks(runnable);
        }
    }

    public static synchronized boolean b() {
        boolean z2;
        synchronized (d.class) {
            com.oppo.camera.d.a("Util", "hasInit, sbInit: " + R);
            z2 = R;
        }
        return z2;
    }

    public static boolean b(Size size) {
        return c(b(size.getWidth(), size.getHeight()));
    }

    public static boolean b(String str) {
        if (y == null) {
            y = new HashMap<>();
        }
        if (y.containsKey(str)) {
            return y.get(str).booleanValue();
        }
        Context context = s;
        if (context == null) {
            return false;
        }
        boolean hasSystemFeature = context.getPackageManager().hasSystemFeature(str);
        y.put(str, Boolean.valueOf(hasSystemFeature));
        return hasSystemFeature;
    }

    public static <K, V> boolean b(Map<K, V> map) {
        return !a(map);
    }

    public static byte[] b(byte[] bArr, int i2, int i3) {
        int i4 = i2 * i3;
        byte[] bArr2 = new byte[((int) (((float) i4) * 1.5f))];
        int i5 = 0;
        int i6 = 0;
        while (i5 < i2) {
            int i7 = i6;
            int i8 = 0;
            while (i8 < i3) {
                bArr2[i7] = bArr[(i2 * i8) + i5];
                i8++;
                i7++;
            }
            i5++;
            i6 = i7;
        }
        int i9 = 0;
        while (i9 < i2) {
            int i10 = i3 >> 1;
            int i11 = i6;
            for (int i12 = 0; i12 < i10; i12++) {
                int i13 = (i2 * i12) + i4 + i9;
                bArr2[i11] = bArr[i13];
                bArr2[i11 + 1] = bArr[i13 + 1];
                i11 += 2;
            }
            i9 += 2;
            i6 = i11;
        }
        return bArr2;
    }

    public static float c(int i2, int i3, int i4) {
        int L2;
        int i5 = G;
        int i6 = I;
        float f2 = 0.0f;
        if (i2 == 0) {
            f2 = (float) i5;
        } else {
            if (i2 == 1) {
                L2 = I();
            } else if (!(i2 == 4 || i2 == 6 || i2 == 7 || i2 != 2)) {
                L2 = (i ? (((L() - i5) - i6) - i4) / 2 : (((i3 - i5) - i6) - i4) / 2) + i5;
            }
            f2 = (float) L2;
        }
        return 1.0f - (f2 / (((float) i3) / 2.0f));
    }

    private static int c(View view) {
        Animation animation = view.getAnimation();
        if (animation == null || (animation.hasStarted() && animation.hasEnded())) {
            return view.getVisibility();
        }
        Object tag = view.getTag(R.id.view_tag_key_animation_visibility);
        return tag == null ? view.getVisibility() : ((Integer) tag).intValue();
    }

    private static Bitmap c(Bitmap bitmap) {
        bitmap.setDensity(f2271a);
        return bitmap;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v11, resolved type: java.io.InputStreamReader} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v13, resolved type: java.io.InputStreamReader} */
    /* JADX WARNING: type inference failed for: r5v1, types: [java.io.InputStreamReader] */
    /* JADX WARNING: type inference failed for: r5v10 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x006a A[SYNTHETIC, Splitter:B:45:0x006a] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0074 A[SYNTHETIC, Splitter:B:50:0x0074] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x007e A[SYNTHETIC, Splitter:B:55:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x008a A[SYNTHETIC, Splitter:B:62:0x008a] */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0094 A[SYNTHETIC, Splitter:B:67:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x009e A[SYNTHETIC, Splitter:B:72:0x009e] */
    public static String c(String str) {
        InputStream inputStream;
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader2;
        try {
            inputStream = com.oppo.camera.l.a.e(str);
            try {
                InputStreamReader inputStreamReader3 = new InputStreamReader(inputStream, "UTF-8");
                try {
                    bufferedReader = new BufferedReader(inputStreamReader3);
                    try {
                        StringBuffer stringBuffer = new StringBuffer();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            stringBuffer.append(readLine);
                            stringBuffer.append("\n");
                        }
                        String stringBuffer2 = stringBuffer.toString();
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            com.oppo.camera.d.c("Util", "readFileToString.close bufferedReader, e: ", e2);
                        }
                        try {
                            inputStreamReader3.close();
                        } catch (Exception e3) {
                            com.oppo.camera.d.c("Util", "readFileToString.close reader, e: ", e3);
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e4) {
                                com.oppo.camera.d.c("Util", "readFileToString.close inputStream, e: ", e4);
                            }
                        }
                        return stringBuffer2;
                    } catch (Exception unused) {
                        inputStreamReader2 = inputStreamReader3;
                        try {
                            com.oppo.camera.d.d("Util", "readFileToString failed.");
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader2 != 0) {
                            }
                            if (inputStream != null) {
                            }
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            inputStreamReader = inputStreamReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e5) {
                                    com.oppo.camera.d.c("Util", "readFileToString.close bufferedReader, e: ", e5);
                                }
                            }
                            if (inputStreamReader != null) {
                                try {
                                    inputStreamReader.close();
                                } catch (Exception e6) {
                                    com.oppo.camera.d.c("Util", "readFileToString.close reader, e: ", e6);
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e7) {
                                    com.oppo.camera.d.c("Util", "readFileToString.close inputStream, e: ", e7);
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Exception unused2) {
                    bufferedReader = null;
                    inputStreamReader2 = inputStreamReader3;
                    com.oppo.camera.d.d("Util", "readFileToString failed.");
                    if (bufferedReader != null) {
                    }
                    if (inputStreamReader2 != 0) {
                    }
                    if (inputStream != null) {
                    }
                    return null;
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    bufferedReader = null;
                    th = th3;
                    inputStreamReader = inputStreamReader3;
                    if (bufferedReader != null) {
                    }
                    if (inputStreamReader != null) {
                    }
                    if (inputStream != null) {
                    }
                    throw th;
                }
            } catch (Exception unused3) {
                bufferedReader2 = null;
                bufferedReader = bufferedReader2;
                inputStreamReader2 = bufferedReader2;
                com.oppo.camera.d.d("Util", "readFileToString failed.");
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e8) {
                        com.oppo.camera.d.c("Util", "readFileToString.close bufferedReader, e: ", e8);
                    }
                }
                if (inputStreamReader2 != 0) {
                    try {
                        inputStreamReader2.close();
                    } catch (Exception e9) {
                        com.oppo.camera.d.c("Util", "readFileToString.close reader, e: ", e9);
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e10) {
                        com.oppo.camera.d.c("Util", "readFileToString.close inputStream, e: ", e10);
                    }
                }
                return null;
            } catch (Throwable th4) {
                bufferedReader = null;
                th = th4;
                inputStreamReader = null;
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                if (inputStream != null) {
                }
                throw th;
            }
        } catch (Exception unused4) {
            inputStream = null;
            bufferedReader2 = null;
            bufferedReader = bufferedReader2;
            inputStreamReader2 = bufferedReader2;
            com.oppo.camera.d.d("Util", "readFileToString failed.");
            if (bufferedReader != null) {
            }
            if (inputStreamReader2 != 0) {
            }
            if (inputStream != null) {
            }
            return null;
        } catch (Throwable th5) {
            inputStreamReader = null;
            bufferedReader = null;
            th = th5;
            inputStream = null;
            if (bufferedReader != null) {
            }
            if (inputStreamReader != null) {
            }
            if (inputStream != null) {
            }
            throw th;
        }
    }

    public static void c() {
        if (z == null) {
            z = new HandlerThread("WorkerThread");
            z.start();
        }
        if (A == null) {
            A = new Handler(z.getLooper());
        }
    }

    public static synchronized void c(Context context) {
        synchronized (d.class) {
            Display display = ContextNative.getDisplay(context);
            if (display != null) {
                f = WindowManagerNative.hasNavigationBar(display.getDisplayId());
            }
            f2271a = WindowManagerNative.getInitialDisplayDensity(0);
        }
    }

    public static boolean c(int i2) {
        return (i2 == 1 && !i) || i2 == 4 || i2 == 6 || i2 == 7;
    }

    public static boolean c(int i2, int i3) {
        return U() && i2 != i3 && (i2 == 1 || i3 == 1);
    }

    public static boolean c(Size size) {
        return d(b(size.getWidth(), size.getHeight()));
    }

    public static byte[] c(byte[] bArr, int i2, int i3) {
        int i4 = i2 * i3;
        int i5 = (int) (((float) i4) * 1.5f);
        byte[] bArr2 = new byte[i5];
        int i6 = i4 - 1;
        int i7 = 0;
        while (i6 >= 0) {
            bArr2[i7] = bArr[i6];
            i6--;
            i7++;
        }
        for (int i8 = i5 - 1; i8 >= i4; i8 -= 2) {
            int i9 = i7 + 1;
            bArr2[i7] = bArr[i8 - 1];
            i7 = i9 + 1;
            bArr2[i9] = bArr[i8];
        }
        return bArr2;
    }

    public static long d(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
        } catch (Exception unused) {
        }
        com.oppo.camera.d.e("Util", "getTotalMemory, mi.totalMem" + memoryInfo.totalMem);
        return memoryInfo.totalMem;
    }

    public static ExifInterface d(String str) {
        try {
            return new ExifInterface(str);
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void d() {
        Handler handler = A;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            A = null;
        }
        HandlerThread handlerThread = z;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            z = null;
        }
    }

    public static boolean d(int i2) {
        return i2 == 1 || i2 == 4 || i2 == 6 || i2 == 7;
    }

    private static boolean d(int i2, int i3) {
        MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
        boolean z2 = false;
        if (codecInfos != null) {
            boolean z3 = false;
            for (MediaCodecInfo mediaCodecInfo : codecInfos) {
                String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                if (supportedTypes != null && mediaCodecInfo.isEncoder()) {
                    int length = supportedTypes.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            break;
                        }
                        String str = supportedTypes[i4];
                        if ("video/hevc".equals(str)) {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                            if (!(capabilitiesForType == null || capabilitiesForType.getVideoCapabilities() == null || !capabilitiesForType.getVideoCapabilities().isSizeSupported(i2, i3))) {
                                z3 = true;
                                break;
                            }
                        }
                        i4++;
                    }
                }
            }
            z2 = z3;
        }
        com.oppo.camera.d.a("Util", "isSupportH265Encoder, width: " + i2 + ", height: " + i3 + ", support: " + z2);
        return z2;
    }

    public static byte[] d(byte[] bArr, int i2, int i3) {
        int i4 = i3 >> 1;
        int i5 = i2 * i3;
        byte[] bArr2 = new byte[((i5 * 3) >> 1)];
        int i6 = i2 - 1;
        int i7 = i6;
        int i8 = 0;
        while (i7 >= 0) {
            int i9 = i8;
            int i10 = 0;
            while (i10 < i3) {
                bArr2[i9] = bArr[(i2 * i10) + i7];
                i10++;
                i9++;
            }
            i7--;
            i8 = i9;
        }
        while (i6 > 0) {
            for (int i11 = 0; i11 < i4; i11++) {
                int i12 = i8 + 1;
                bArr2[i8] = bArr[((i2 * i11) + i5 + i6) - 1];
                i8 = i12 + 1;
                bArr2[i12] = bArr[(i2 * i11) + i5 + i6];
            }
            i6 -= 2;
        }
        return bArr2;
    }

    public static long e(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
        } catch (Exception unused) {
        }
        com.oppo.camera.d.e("Util", "getAvailMemory, mi.availMem: " + memoryInfo.availMem);
        return memoryInfo.availMem;
    }

    public static Context e() {
        return s;
    }

    public static boolean e(int i2) {
        return i2 == 2;
    }

    public static byte[] e(String str) {
        com.oppo.camera.d.a("Util", "getThumbnail, filepath: " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ExifInterface exifInterface = new ExifInterface(str);
            if (exifInterface.hasThumbnail()) {
                return exifInterface.getThumbnail();
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] e(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < (i2 >> 1); i6++) {
                int i7 = ((i4 + i2) - i6) - 1;
                byte b2 = bArr[i7];
                int i8 = i4 + i6;
                bArr[i7] = bArr[i8];
                bArr[i8] = b2;
            }
            i4 += i2;
        }
        int i9 = i2 * i3;
        for (int i10 = 0; i10 < (i3 >> 1); i10++) {
            for (int i11 = 0; i11 < (i2 >> 1); i11 += 2) {
                int i12 = (i9 + i2) - i11;
                int i13 = i12 - 2;
                byte b3 = bArr[i13];
                int i14 = i9 + i11;
                bArr[i13] = bArr[i14];
                bArr[i14] = b3;
                int i15 = i12 - 1;
                byte b4 = bArr[i15];
                int i16 = i14 + 1;
                bArr[i15] = bArr[i16];
                bArr[i16] = b4;
            }
            i9 += i2;
        }
        return bArr;
    }

    public static float f(int i2) {
        return (float) s.getResources().getDimensionPixelSize(i2);
    }

    public static int f(String str) {
        try {
            return ((Integer) Class.forName("android.view.KeyEvent").getField(str).get((Object) null)).intValue();
        } catch (Exception e2) {
            com.oppo.camera.d.e("Util", "getFingerKeyCode, exception: " + e2);
            return -1;
        }
    }

    public static void f() {
        if (v != null) {
            com.oppo.camera.d.b("Util", "initRenderScript, sRSInitThread not null, so return");
            return;
        }
        v = new Thread(new Runnable() {
            public void run() {
                com.oppo.camera.d.b("Util", "intRenderScript");
                if (d.s != null) {
                    RenderScript unused = d.w = RenderScript.create(d.s);
                    ScriptIntrinsicBlur unused2 = d.x = ScriptIntrinsicBlur.create(d.w, Element.U8_4(d.w));
                    com.oppo.camera.d.b("Util", "intRenderScript X");
                }
            }
        });
        v.start();
    }

    public static void f(Context context) {
        Resources resources = context.getResources();
        A();
        double d2 = ((double) F) / ((double) E);
        if (d2 > 1.7777777777777777d) {
            i = true;
        }
        G = resources.getDimensionPixelSize(R.dimen.top_bar_layout_height);
        H = resources.getDimensionPixelSize(R.dimen.menu_panel_layout_height);
        I = resources.getDimensionPixelSize(R.dimen.control_panel_layout_height);
        if (x()) {
            O = B();
        }
        L = resources.getDimensionPixelSize(R.dimen.head_line_height);
        if (i) {
            J = resources.getDimensionPixelSize(R.dimen.control_panel_button_height);
            int i2 = H;
            K = i2;
            M = i2;
            N = O;
        } else {
            J = resources.getDimensionPixelSize(R.dimen.control_panel_button_height);
            K = resources.getDimensionPixelSize(R.dimen.menu_tool_item_size);
        }
        com.oppo.camera.d.b("Util", "initMenuControlPanelHeight, sbLongScreen: " + i + ", sSettingMenuPanelHeight: " + H + ", sControlPanelHeight: " + I + ", sControlPanelButtonHeight: " + J + ", sSettingMenuItemHeight: " + K + ", sPreviewMarginTop: " + M + ", sHeadLineHeight: " + L + ", sNavigationBarHeight: " + O + ", ratio: " + d2 + ", sTopBarHeight = " + G);
    }

    public static int[] f(byte[] bArr, int i2, int i3) {
        int i4 = i2;
        int i5 = i3;
        com.oppo.camera.d.a("Util", "decodeYUV420SP, width: " + i4 + ", height: " + i5);
        int i6 = i4 * i5;
        int[] iArr = new int[i6];
        int i7 = 0;
        int i8 = 0;
        while (i7 < i5) {
            int i9 = 0;
            int i10 = 0;
            int i11 = ((i7 >> 1) * i4) + i6;
            int i12 = i8;
            int i13 = 0;
            while (i13 < i4) {
                int i14 = (bArr[i12] & 255) - 16;
                if (i14 < 0) {
                    i14 = 0;
                }
                if ((i13 & 1) == 0) {
                    int i15 = i11 + 1;
                    int i16 = i15 + 1;
                    i9 = (bArr[i15] & 255) - 128;
                    int i17 = i16;
                    i10 = (bArr[i11] & 255) - 128;
                    i11 = i17;
                }
                int i18 = (i14 + 10) * 1192;
                int i19 = (i10 * 1634) + i18;
                int i20 = (i18 - (i10 * 833)) - (i9 * 400);
                int i21 = i18 + (i9 * 2066);
                int i22 = 262143;
                if (i19 < 0) {
                    i19 = 0;
                } else if (i19 > 262143) {
                    i19 = 262143;
                }
                if (i20 < 0) {
                    i20 = 0;
                } else if (i20 > 262143) {
                    i20 = 262143;
                }
                if (i21 < 0) {
                    i22 = 0;
                } else if (i21 <= 262143) {
                    i22 = i21;
                }
                iArr[i12] = -16777216 | ((i19 << 6) & 16711680) | ((i20 >> 2) & 65280) | ((i22 >> 10) & 255);
                i13++;
                i12++;
            }
            i7++;
            i8 = i12;
        }
        com.oppo.camera.d.a("Util", "decodeYUV420SP X");
        return iArr;
    }

    public static int g(byte[] bArr, int i2, int i3) {
        if (i2 < 0 || bArr == null) {
            com.oppo.camera.d.e("Util", "parseDataByteToInt, from index or data is error!");
            return 0;
        } else if (bArr.length < i3) {
            com.oppo.camera.d.e("Util", "parseDataByteToInt, to index is error!");
            return 0;
        } else {
            StringBuffer stringBuffer = new StringBuffer("");
            while (i2 <= i3) {
                StringBuffer stringBuffer2 = new StringBuffer(Integer.toBinaryString(bArr[i2]));
                if (stringBuffer2.length() > 8) {
                    stringBuffer2 = new StringBuffer(stringBuffer2.substring(stringBuffer2.length() - 8));
                } else if (stringBuffer2.length() < 8) {
                    while (stringBuffer2.length() < 8) {
                        StringBuffer stringBuffer3 = new StringBuffer("0");
                        stringBuffer3.append(stringBuffer2);
                        stringBuffer2 = stringBuffer3;
                    }
                }
                stringBuffer2.append(stringBuffer);
                i2++;
                stringBuffer = stringBuffer2;
            }
            return new BigInteger(stringBuffer.toString(), 2).intValue();
        }
    }

    public static Context g(Context context) {
        if (Build.VERSION.SDK_INT > 23) {
            Configuration configuration = context.getResources().getConfiguration();
            configuration.densityDpi = f2271a;
            context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
        }
        return context;
    }

    public static void g() {
        Thread thread = v;
        if (thread != null) {
            try {
                thread.join();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = x;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            x = null;
        }
        RenderScript renderScript = w;
        if (renderScript != null) {
            try {
                renderScript.destroy();
                w = null;
            } catch (Exception e3) {
                e3.printStackTrace();
                com.oppo.camera.d.e("Util", "finishRSInitThread, renderScript destroy, exception: " + e3.getMessage());
            }
        }
        com.oppo.camera.d.b("Util", "finishRSInitThread X");
    }

    public static boolean g(int i2) {
        if (i2 == 0 || i2 == 180) {
            return true;
        }
        if (i2 == 90 || i2 == 270) {
        }
        return false;
    }

    public static boolean h() {
        return SystemPropertiesNative.get("ro.oppo.regionmark", "").equals("EUEX");
    }

    public static boolean h(Context context) {
        LocaleList locales = context.getResources().getConfiguration().getLocales();
        if (locales != null && !locales.isEmpty()) {
            Locale locale = locales.get(0);
            return locale != null && "zh".equalsIgnoreCase(locale.getLanguage()) && "cn".equalsIgnoreCase(locale.getCountry());
        }
    }

    public static String i() {
        return SystemPropertiesNative.get("ro.oppo.regionmark", "");
    }

    public static boolean i(Context context) {
        boolean isLocationProviderEnabled = Settings.Secure.isLocationProviderEnabled(context.getContentResolver(), "gps");
        boolean isLocationProviderEnabled2 = Settings.Secure.isLocationProviderEnabled(context.getContentResolver(), "network");
        com.oppo.camera.d.a("Util", "getLocationAvailable, gpsAvailable: " + isLocationProviderEnabled + ", netAvailable: " + isLocationProviderEnabled2);
        return isLocationProviderEnabled || isLocationProviderEnabled2;
    }

    public static void j(Context context) {
        try {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService("shortcut");
            List<ShortcutInfo> dynamicShortcuts = shortcutManager.getDynamicShortcuts();
            if (dynamicShortcuts != null && dynamicShortcuts.size() > 0) {
                shortcutManager.removeAllDynamicShortcuts();
            }
            com.oppo.camera.d.c("Util", "removeDynamicShortcuts, successful.");
        } catch (Exception unused) {
            com.oppo.camera.d.c("Util", "removeDynamicShortcuts, failed.");
        }
    }

    public static boolean j() {
        return b("oppo.camera.fingerprint.shutter");
    }

    public static void k() {
        Handler handler = t;
        if (handler != null) {
            handler.post(new Runnable() {
                public void run() {
                    com.oppo.camera.d.a("Util", "cancleOpenCameraFailDialog(), sOpenCameraFailDialog: " + d.u);
                    if (d.u != null) {
                        d.u.cancel();
                        color.support.v7.app.b unused = d.u = null;
                    }
                }
            });
        }
    }

    public static void k(Context context) {
        Intent intent = new Intent("com.coloros.bootreg.activity.statementpage");
        intent.putExtra("statement_intent_flag", 2);
        Intent a2 = a(intent);
        if (a2 != null) {
            try {
                context.startActivity(a2);
            } catch (Exception e2) {
                com.oppo.camera.d.e("Util", e2.getMessage());
            }
        }
    }

    public static void l() {
        a aVar = d;
        if (aVar != null) {
            aVar.a();
        }
    }

    public static void m() {
        HashMap<String, Boolean> hashMap = y;
        if (hashMap != null) {
            hashMap.clear();
            y = null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    public static String n() {
        String str;
        String str2 = null;
        try {
            str = SystemPropertiesNative.get("ro.product.name", "");
            if (str == null || "".equals(str)) {
                str2 = Build.MODEL.toUpperCase();
                com.oppo.camera.d.a("Util", "readPrjVersion(), getMobileName: " + str2);
            } else {
                com.oppo.camera.d.a("Util", "readPrjVersion(), prj_name: " + str);
                if (str.indexOf("_") == -1) {
                    return TextUtils.isEmpty(str) ? str.toLowerCase().replaceAll(" ", "") : str;
                }
                String[] split = str.split("_");
                if (split.length >= 2) {
                    str2 = split[1];
                    com.oppo.camera.d.a("Util", "readPrjVersion(), s: " + str2);
                }
            }
            str = str2;
        } catch (Exception e2) {
            str = null;
            com.oppo.camera.d.a("Util", "readPrjVersion(), Exception: " + e2.getMessage().toString());
        }
        if (TextUtils.isEmpty(str)) {
        }
    }

    public static String o() {
        String str = null;
        try {
            str = SystemPropertiesNative.get("ro.separate.soft", "");
            com.oppo.camera.d.a("Util", "readPrjName, prjName: " + str);
        } catch (Exception e2) {
            com.oppo.camera.d.a("Util", "readPrjName, Exception: " + e2.getMessage().toString());
        }
        return !TextUtils.isEmpty(str) ? str.toLowerCase().replaceAll(" ", "") : str;
    }

    public static String p() {
        String str = m;
        if (str != null) {
            return str;
        }
        m = SystemPropertiesNative.get("ro.oppo.market.enname", "");
        if (TextUtils.equals(m, "") || m.contains("OPPO")) {
            m = SystemPropertiesNative.get("ro.oppo.market.name", "");
            if (TextUtils.equals(m, "") || m.contains("OPPO")) {
                m = Build.MODEL;
            }
        }
        return m;
    }

    public static String q() {
        String n2 = n();
        return n2 == null ? "" : n2.length() > 16 ? n2.substring(0, 16) : n2;
    }

    public static String r() {
        String str = n;
        if (str != null) {
            return str;
        }
        n = SystemPropertiesNative.get("ro.product.manufacturer", "");
        com.oppo.camera.d.a("Util", "getManufacturer, sManufacturer: " + n);
        return n;
    }

    public static int s() {
        return P;
    }

    public static Typeface t() {
        Typeface typeface = o;
        if (typeface != null) {
            return typeface;
        }
        if (OppoFontUtils.isFlipFontUsed) {
            o = Typeface.DEFAULT;
        } else {
            try {
                o = Typeface.createFromFile("/system/fonts/ColorFont-Regular.ttf");
            } catch (Exception e2) {
                o = Typeface.DEFAULT;
                e2.printStackTrace();
            }
        }
        return o;
    }

    public static Typeface u() {
        Typeface typeface = p;
        if (typeface != null) {
            return typeface;
        }
        if (OppoFontUtils.isFlipFontUsed) {
            p = Typeface.DEFAULT;
        } else {
            try {
                p = Typeface.create("sys-sans-en", 1);
            } catch (Exception e2) {
                p = Typeface.DEFAULT;
                e2.printStackTrace();
            }
        }
        return p;
    }

    public static void v() {
        o = null;
        p = null;
        q = null;
        r = null;
    }

    public static boolean w() {
        return g;
    }

    public static synchronized boolean x() {
        boolean z2;
        synchronized (d.class) {
            z2 = f;
        }
        return z2;
    }

    public static boolean y() {
        return e;
    }

    public static boolean z() {
        return h;
    }
}
