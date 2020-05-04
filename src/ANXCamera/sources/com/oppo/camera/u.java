package com.oppo.camera;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Size;
import com.color.compat.os.SystemPropertiesNative;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.e;
import com.oppo.camera.jni.FormatConverter;
import com.oppo.camera.o.d;
import com.oppo.os.OppoUsbEnvironment;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: SloganManager */
public class u {
    private String A = "";
    private String B = "";
    private String C = "";
    private String D = "";
    private String E = "";
    /* access modifiers changed from: private */
    public String F = "";
    /* access modifiers changed from: private */
    public String G = null;

    /* renamed from: a  reason: collision with root package name */
    public int f2514a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f2515b = Executors.newSingleThreadExecutor();
    /* access modifiers changed from: private */
    public volatile boolean c = false;
    /* access modifiers changed from: private */
    public volatile boolean d = false;
    private volatile boolean e = false;
    /* access modifiers changed from: private */
    public volatile String f = "";
    /* access modifiers changed from: private */
    public volatile String g = "";
    private Activity h = null;
    private Resources i = null;
    private FormatConverter j = null;
    private Typeface k = null;
    private AsyncTask l = null;
    private i m = null;
    /* access modifiers changed from: private */
    public SharedPreferences.Editor n = null;
    /* access modifiers changed from: private */
    public boolean o = false;
    /* access modifiers changed from: private */
    public boolean p = false;
    /* access modifiers changed from: private */
    public boolean q = false;
    /* access modifiers changed from: private */
    public int r;
    private int s;
    private int t;
    /* access modifiers changed from: private */
    public ConcurrentHashMap<String, c> u = null;
    private ConcurrentHashMap<String, Size> v = null;
    private SimpleDateFormat w = null;
    private e.s x = null;
    private String y = "";
    private String z = "";

    /* compiled from: SloganManager */
    public class a extends AsyncTask<Void, Void, Void> {
        public a() {
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            String str;
            boolean z = false;
            try {
                if (u.this.d() && u.this.o) {
                    if (!isCancelled()) {
                        d.a("SloganManager", "doInBackground, start");
                        int i = 1;
                        u.this.f2514a = 1;
                        if (u.this.p) {
                            u.this.b(u.this.G);
                        }
                        if (u.this.c || u.this.d) {
                            i = 2;
                        }
                        int i2 = 0;
                        while (i2 < i) {
                            for (c cVar : u.this.u.values()) {
                                if (u.this.p || u.this.q || !cVar.e) {
                                    Bitmap a2 = u.this.a(i2, u.this.r, cVar.c);
                                    if (SystemPropertiesNative.getBoolean("oppo.dump.watermark.png", z)) {
                                        File file = new File(v.l + File.separator + "watermark_png", "Watermark_" + a2.getWidth() + "x" + a2.getHeight() + "_pic_size_" + cVar.c.getWidth() + "x" + cVar.c.getHeight() + ".png");
                                        d.a(a2, file);
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("doInBackground, saveBitmapAsPng file: ");
                                        sb.append(file);
                                        d.e("SloganManager", sb.toString());
                                    }
                                    if (a2 != null) {
                                        int width = a2.getWidth();
                                        int height = a2.getHeight();
                                        int N = d.N();
                                        int floor = (int) Math.floor((double) (((float) width) / u.this.c(cVar.c)));
                                        d.e("SloganManager", "doInBackground, waterMarkBitmapWidth: " + width + ", waterMarkBitmapHeight: " + height + ", watermarkWidthInScreen: " + floor + ", screenWidth: " + N + ", scale: " + r13);
                                        String b2 = u.this.b(cVar.c, u.this.r);
                                        if (i2 == 0) {
                                            str = ".slogan_portrait_" + width + "x" + height + "_" + floor + ".yuv";
                                        } else {
                                            str = ".slogan_landscape_" + width + "x" + height + "_" + floor + ".yuv";
                                        }
                                        boolean a3 = u.this.a(a2, u.this.G + str);
                                        if (u.this.n != null) {
                                            u.this.n.putString(b2, str);
                                            u.this.n.apply();
                                        }
                                        if (a2 != null) {
                                            a2.recycle();
                                        }
                                        cVar.e = a3;
                                        cVar.f2520b = str;
                                        u.this.u.put(b2, cVar);
                                        d.a("SloganManager", "doInBackground, generateYuvFile success: " + a3 + ", key: " + b2 + ", yuvInfo: <mPictureSize: " + cVar.c + ", streamType: " + cVar.f2519a + ", mYuvFilename: " + cVar.f2520b + ", mbFileExist: " + cVar.e + ">");
                                    }
                                }
                                z = false;
                            }
                            i2++;
                            z = false;
                        }
                        u.this.f2514a = 0;
                        d.a("SloganManager", "doInBackground, end");
                        return null;
                    }
                }
                d.e("SloganManager", "doInBackground, return null");
                return null;
            } catch (Exception e) {
                u uVar = u.this;
                uVar.f2514a = 0;
                boolean unused = uVar.p = false;
                boolean unused2 = u.this.q = false;
                boolean unused3 = u.this.o = false;
                d.e("SloganManager", "doInBackground, error: " + e);
                return null;
            }
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public void onPostExecute(Void voidR) {
            d.a("SloganManager", "onPostExecute");
            boolean unused = u.this.p = false;
            boolean unused2 = u.this.q = false;
            u uVar = u.this;
            uVar.f2514a = 0;
            if (uVar.n != null) {
                u.this.n.putString("pref_slogan_owner_name", u.this.l());
                u.this.n.putString("pref_slogan_market_name", u.this.F);
                u.this.n.putFloat("pref_slogan_version", 4.0f);
                u.this.n.putString("pref_slogan_location", u.this.f);
                u.this.n.putString("pref_slogan_time", u.this.g);
                u.this.n.apply();
            }
        }

        /* access modifiers changed from: protected */
        public void onCancelled() {
            d.a("SloganManager", "onCancelled");
            u.this.k();
        }

        /* access modifiers changed from: protected */
        public void onPreExecute() {
        }
    }

    /* compiled from: SloganManager */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f2517a = R.drawable.realme_slogan_copyright_normal;

        /* renamed from: b  reason: collision with root package name */
        public int f2518b = 0;
        public int c = 0;
        public int d = 0;
        public int e = 0;
        public int f = 0;
        public float g = 0.0f;
        public float h = 0.0f;
    }

    /* compiled from: SloganManager */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public String f2519a = null;

        /* renamed from: b  reason: collision with root package name */
        public String f2520b = null;
        public Size c = null;
        public int d = -1;
        public boolean e = false;

        public c() {
        }
    }

    public u(Activity activity, i iVar, e.s sVar) {
        this.h = activity;
        this.i = activity.getResources();
        this.m = iVar;
        this.n = this.m.edit();
        this.x = sVar;
        this.e = a("pref_slogan_device_key");
        this.c = a("pref_slogan_location_key");
        this.d = a("pref_slogan_time_key");
        this.E = d.q();
        this.F = q();
    }

    private int a(Size size) {
        c cVar = this.u.get(b(size, this.r));
        if (cVar != null && cVar.e) {
            return Integer.valueOf(cVar.f2520b.split("_")[2].split("x")[0]).intValue();
        }
        d.e("SloganManager", "getYuvFilePath, return null, file is not exist");
        return -1;
    }

    /* access modifiers changed from: private */
    public Bitmap a(int i2, int i3, Size size) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Bitmap bitmap;
        Canvas canvas;
        int i9;
        Paint paint;
        d.a("SloganManager", "createBitmap, cameraId: " + i4 + ", pictureSize: Width x Height = " + size.getWidth() + "x" + size.getHeight());
        boolean a2 = a("pref_slogan_device_key");
        boolean a3 = a("pref_slogan_location_key");
        boolean a4 = a("pref_slogan_time_key");
        d.e("SloganManager", "createBitmap deviceOn: " + a2 + ", locationOn: " + a3 + ", timeOn: " + a4);
        float c2 = c(size) / 2.77777f;
        float dimensionPixelSize = ((float) this.i.getDimensionPixelSize(R.dimen.slogan_text_padding_ai_shot_gap)) * c2;
        float dimensionPixelSize2 = ((float) this.i.getDimensionPixelSize(R.dimen.slogan_text_padding_r_ai_gap)) * c2;
        int color2 = this.i.getColor(R.color.slogan_text_shadow_color);
        b a5 = a(c2);
        Bitmap a6 = a(a5, c2);
        Paint paint2 = new Paint();
        paint2.setTypeface(o());
        paint2.setTextSize(a5.g);
        float f2 = dimensionPixelSize;
        paint2.setColor(this.h.getColor(R.color.camera_white));
        paint2.setShadowLayer((float) this.i.getDimensionPixelSize(R.dimen.slogan_text_shadow_radius), (float) this.i.getDimensionPixelSize(R.dimen.slogan_text_shadow_x), (float) this.i.getDimensionPixelSize(R.dimen.slogan_text_shadow_y), color2);
        paint2.setAlpha(253);
        int height = a5.f2518b + a6.getHeight() + a5.d;
        if (a2) {
            b(i4);
            this.y = l();
            if (!TextUtils.isEmpty(this.y)) {
                this.A = "Shot by " + this.y;
            }
            Rect rect = new Rect();
            String str = this.D;
            paint2.getTextBounds(str, 0, str.length(), rect);
            i5 = rect.height();
        } else {
            i5 = 0;
        }
        if (a3) {
            i7 = (int) paint2.measureText(this.f);
            Rect rect2 = new Rect();
            paint2.getTextBounds(this.f, 0, this.f.length(), rect2);
            i6 = rect2.height();
        } else {
            i7 = 0;
            i6 = 0;
        }
        int measureText = a4 ? (int) paint2.measureText(this.g) : 0;
        int i10 = measureText > i7 ? measureText : i7;
        if (i5 > 0) {
            i6 = i5;
        }
        StringBuilder sb = new StringBuilder();
        float f3 = dimensionPixelSize2;
        sb.append("createBitmap, timeWidth: ");
        sb.append(measureText);
        sb.append(", locationWidth:");
        sb.append(i7);
        sb.append(", locationHeight: ");
        sb.append(i6);
        sb.append(", textAICameraHeight:");
        sb.append(i5);
        sb.append(", locationTimeMaxPadding: ");
        sb.append(i10);
        d.a("SloganManager", sb.toString());
        if (a3 || a4) {
            i8 = i2 == 0 ? size.getHeight() : size.getWidth();
        } else if (a2) {
            int measureText2 = (int) paint2.measureText("Shot on ");
            int measureText3 = (int) paint2.measureText(this.A);
            int measureText4 = measureText2 + ((int) paint2.measureText(this.F));
            int measureText5 = (int) paint2.measureText(this.D);
            if (!TextUtils.isEmpty(this.y)) {
                int width = a5.c + a6.getWidth();
                if (measureText3 > measureText5) {
                    measureText5 = measureText3;
                }
                i8 = width + measureText5;
            } else {
                int width2 = a5.c + a6.getWidth();
                if (measureText4 > measureText5) {
                    measureText5 = measureText4;
                }
                i8 = width2 + measureText5;
            }
        } else {
            i8 = 0;
        }
        if (i8 % 2 != 0) {
            i8++;
        }
        int i11 = i8;
        if (height % 2 != 0) {
            height++;
        }
        d.b("SloganManager", "createBitmap, composeWidth: " + i11 + ", composeHeight: " + height);
        Bitmap a7 = d.a(i11, height, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(a7);
        int i12 = i6;
        canvas2.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        if (a2) {
            a(canvas2, a6, (float) a5.c, (float) a5.f2518b);
            canvas = canvas2;
            bitmap = a7;
            i9 = i12;
            Paint paint3 = paint2;
            a(canvas2, this.D, (float) (a5.c + a6.getWidth()), ((float) a5.f2518b) + f3, paint2);
            paint2.setTextSize(a5.h);
            String str2 = TextUtils.isEmpty(this.y) ? this.z : this.A;
            float width3 = (float) (a5.c + a6.getWidth());
            float f4 = ((float) a5.f2518b) + f3 + ((float) i5) + f2;
            paint = paint2;
            a(canvas, str2, width3, f4, paint2);
        } else {
            canvas = canvas2;
            paint = paint2;
            bitmap = a7;
            i9 = i12;
        }
        if (a3) {
            paint.setTextSize(a5.g);
            a(canvas, this.f, (float) ((i11 - i10) - a5.c), ((float) a5.f2518b) + f3, paint);
            d.a("SloganManager", "createBitmap drawText mCurrentAddress: " + this.f);
        }
        if (a4) {
            if (i9 > 0) {
                paint.setTextSize(a5.h);
            }
            a(canvas, this.g, (float) ((i11 - i10) - a5.c), ((float) a5.f2518b) + f3 + ((float) i9) + f2, paint);
            d.a("SloganManager", "createBitmap drawText mDateTime: " + this.g);
        }
        if (i11 <= size.getWidth() || bitmap == null) {
            return bitmap;
        }
        float f5 = (float) i11;
        int width4 = (int) (f5 / ((1.0f * f5) / ((float) size.getWidth())));
        int i13 = width4 % 2;
        int i14 = i13 != 0 ? width4 - 1 : width4;
        if (i13 != 0) {
            width4--;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i14, width4, true);
        d.d("SloganManager", "createBitmap, createScaledBitmap now");
        return createScaledBitmap;
    }

    private Bitmap a(b bVar, float f2) {
        Bitmap decodeResource = BitmapFactory.decodeResource(this.h.getResources(), bVar.f2517a);
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        return Bitmap.createBitmap(decodeResource, 0, 0, decodeResource.getWidth(), decodeResource.getHeight(), matrix, true);
    }

    private b a(float f2) {
        b bVar = new b();
        bVar.f2517a = R.drawable.realme_slogan_copyright_normal;
        bVar.f2518b = (int) (((float) this.i.getDimensionPixelSize(R.dimen.slogan_text_margin_top)) * f2);
        bVar.c = (int) (((float) this.i.getDimensionPixelSize(R.dimen.slogan_text_padding_left)) * f2);
        bVar.d = (int) (((float) this.i.getDimensionPixelSize(R.dimen.slogan_text_padding_bottom)) * f2);
        bVar.g = (float) ((int) (this.i.getDimension(R.dimen.slogan_ai_camera_text_size) * f2));
        bVar.h = (float) ((int) (this.i.getDimension(R.dimen.slogan_shot_on_by_text_size) * f2));
        bVar.e = (int) (this.i.getDimension(R.dimen.slogan_shot_on_by_text_size) * f2);
        bVar.f = (int) (this.i.getDimension(R.dimen.slogan_shot_on_by_text_size) * f2);
        return bVar;
    }

    private void a(Canvas canvas, Bitmap bitmap, float f2, float f3) {
        Paint paint = new Paint();
        Matrix matrix = new Matrix();
        matrix.postTranslate(f2, f3);
        paint.setAlpha(255);
        canvas.drawBitmap(bitmap, matrix, paint);
    }

    private void a(Canvas canvas, String str, float f2, float f3, Paint paint) {
        canvas.drawText(str, f2, f3, paint);
    }

    /* access modifiers changed from: private */
    public boolean a(Bitmap bitmap, String str) {
        d.a("SloganManager", "generateYuvFile, yuvFileName: " + str);
        if (bitmap == null || str == null || bitmap.isRecycled()) {
            d.e("SloganManager", "generateYuvFile fail, bitmap: " + bitmap + ", yuvPath: " + str);
            return false;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i2 = width * height;
        int i3 = (int) (((float) i2) * 1.5f);
        byte[] bArr = new byte[(i3 + i2)];
        byte[] bArr2 = new byte[i2];
        int i4 = -1;
        FormatConverter formatConverter = this.j;
        if (formatConverter != null) {
            i4 = formatConverter.argbToNv21(bitmap, bArr, bArr2, 0);
        }
        System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
        d.a("SloganManager", "generateYuvFile, width: " + width + ", height: " + height + ", flag: " + i4);
        if (i4 >= 0) {
            return com.oppo.camera.l.a.a(str, com.oppo.camera.l.a.f, bArr);
        }
        d.e("SloganManager", "generateYuvFile fail, yuvData: " + bArr);
        return false;
    }

    private int b(Size size) {
        c cVar = this.u.get(b(size, this.r));
        if (cVar != null && cVar.e) {
            return Integer.valueOf(cVar.f2520b.split("x")[1].split("_")[0]).intValue();
        }
        d.e("SloganManager", "getYuvFilePath, return null, file is not exist");
        return -1;
    }

    private String b(int i2) {
        this.z = "Shot on " + this.F;
        if (!com.oppo.camera.e.a.c(i2)) {
            int W = d.W();
            d.b("SloganManager", "getSloganInfo, highPictureMP: " + W);
            if (W >= 48) {
                this.B = W + "MP";
            }
            int d2 = com.oppo.camera.e.a.d();
            d.b("SloganManager", "getSloganInfo, physicalBackCameraNum: " + d2);
            if (d2 == -1 || d2 == 1) {
                this.C = null;
            } else if (d2 == 2) {
                this.C = this.i.getString(R.string.camera_watermark_back_camera_num_2);
            } else if (d2 == 3) {
                this.C = this.i.getString(R.string.camera_watermark_back_camera_num_3);
            } else if (d2 != 4) {
                this.C = this.i.getString(R.string.camera_watermark_back_camera_num_super);
            } else {
                this.C = this.i.getString(R.string.camera_watermark_back_camera_num_4);
            }
            if (this.C != null) {
                this.D = (this.B + " AI " + this.C + " Camera").trim().toUpperCase();
            } else {
                this.D = (this.B + " AI " + " Camera".trim()).trim().toUpperCase();
            }
        } else {
            this.D = (" AI " + " Camera".trim()).trim().toUpperCase();
        }
        d.b("SloganManager", "getSloganInfo, mXXMPAIBackCameraNumCamera: " + this.D);
        return this.D;
    }

    /* access modifiers changed from: private */
    public void b(String str) {
        d.a("SloganManager", "deleteDir, yuvFileDir: " + str);
        if (this.G != null) {
            File file = new File(str);
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        if (file2 != null && file2.isFile()) {
                            com.oppo.camera.l.a.c(file2.getAbsolutePath());
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public float c(Size size) {
        float f2;
        int i2;
        if (size.getHeight() >= size.getWidth()) {
            f2 = ((float) size.getWidth()) * 1.0f;
            i2 = d.N();
        } else {
            f2 = ((float) size.getHeight()) * 1.0f;
            i2 = d.N();
        }
        return f2 / ((float) i2);
    }

    private boolean g() {
        if (!a("pref_slogan_time_key")) {
            return false;
        }
        this.g = m();
        String string = this.m.getString("pref_slogan_time", "");
        d.b("SloganManager", "isSloganTimeChange, mDateTime: " + this.g + ", prefTime: " + string);
        return !this.g.equals(string);
    }

    private boolean h() {
        if (!a("pref_slogan_location_key")) {
            return false;
        }
        this.f = n();
        String string = this.m.getString("pref_slogan_location", "");
        d.b("SloganManager", "isSloganLocationChange, mCurrentAddress: " + this.f + ", prefLocation: " + string);
        return !this.f.equals(string);
    }

    private boolean i() {
        String l2 = l();
        String string = this.m.getString("pref_slogan_owner_name", "");
        String string2 = this.m.getString("pref_slogan_market_name", "");
        float f2 = this.m.getFloat("pref_slogan_version", 1.0f);
        d.b("SloganManager", "isSloganInfoChange, ownerName: " + l2 + ", prefOwnerName: " + string + ", mMarketName: " + this.F + ", prefMarketname: " + string2 + ", SLOGAN_CURRENT_VERSION: " + 4.0f + ", prefSloganVersion: " + f2);
        return !string.equals(l2) || !this.F.equals(string2) || f2 < 4.0f;
    }

    private boolean j() {
        return (this.e == a("pref_slogan_device_key") && this.c == a("pref_slogan_location_key") && this.d == a("pref_slogan_time_key")) ? false : true;
    }

    /* access modifiers changed from: private */
    public void k() {
        if (this.n != null) {
            d.a("SloganManager", "clearAllPrefValue");
            this.n.putString("pref_slogan_market_name", "");
            this.n.putString("pref_slogan_owner_name", "");
            this.n.putFloat("pref_slogan_version", 1.0f);
            this.n.putString("pref_slogan_location", "");
            this.n.putString("pref_slogan_time", "");
            this.n.apply();
        }
    }

    /* access modifiers changed from: private */
    public String l() {
        if (CameraConfig.getSupportSettingMenuKey("pref_slogan_owner_key")) {
            String string = PreferenceManager.getDefaultSharedPreferences(this.h).getString("pref_slogan_owner_key", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
        }
        return "";
    }

    private String m() {
        if (this.w == null) {
            this.w = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        }
        TimeZone timeZone = TimeZone.getDefault();
        if (!timeZone.equals(this.w.getTimeZone())) {
            this.w.setTimeZone(timeZone);
        }
        String format = this.w.format(new Date());
        if (!this.g.equals(this.w.format(new Date()))) {
            this.g = format;
        }
        d.b("SloganManager", "getCurrentTime, mDateTime: " + this.g);
        return this.g;
    }

    private String n() {
        String a2 = l.a(this.h, this.x.a());
        if (!this.f.equals(a2)) {
            this.f = a2;
        }
        d.e("SloganManager", "getCurrentAddress, mCurrentAddress: " + this.f);
        return this.f;
    }

    private Typeface o() {
        Typeface typeface = this.k;
        if (typeface != null) {
            return typeface;
        }
        try {
            this.k = Typeface.createFromAsset(this.h.getAssets(), "RadomirTinkovGilroy-Medium.otf");
            d.a("SloganManager", "create RadomirTinkovGilroy-Medium.otf typeface successful");
        } catch (Exception unused) {
            this.k = Typeface.DEFAULT;
            d.e("SloganManager", "create RadomirTinkovGilroy-Medium.otf typeface fail");
        }
        return this.k;
    }

    private boolean p() {
        boolean z2;
        ConcurrentHashMap<String, c> concurrentHashMap = this.u;
        if (concurrentHashMap != null) {
            Iterator<c> it = concurrentHashMap.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                c next = it.next();
                if ((next == null || next.e) && (next == null || next.d == this.r)) {
                }
            }
            z2 = false;
            d.a("SloganManager", "isExistAllYuvFile, exist: " + z2);
            return z2;
        }
        z2 = true;
        d.a("SloganManager", "isExistAllYuvFile, exist: " + z2);
        return z2;
    }

    private String q() {
        String str = SystemPropertiesNative.get("ro.oppo.market.name", "");
        if (TextUtils.equals(str, "") || str.contains("OPPO")) {
            str = Build.MODEL;
        }
        d.b("SloganManager", "getMarketNameForSlogan, marketName: " + str);
        return str;
    }

    public String a(Size size, int i2) {
        boolean a2;
        boolean a3;
        String str;
        String str2;
        this.s = i2;
        float c2 = c(size);
        d.a("SloganManager", "getYuvFilePath, size: = " + size.getWidth() + "x" + size.getHeight() + ", rotation: " + i2 + ", locationOn: " + a2 + ", timeOn: " + a3);
        if (a2 || a3) {
            int b2 = b(size);
            if (d.g(this.s)) {
                int width = size.getWidth();
                str = ".slogan_landscape_" + width + "x" + b2 + "_" + ((int) Math.floor((double) (((float) width) / c2))) + ".yuv";
            } else {
                int height = size.getHeight();
                str = ".slogan_portrait_" + height + "x" + b2 + "_" + ((int) Math.floor((double) (((float) height) / c2))) + ".yuv";
            }
        } else {
            int a4 = a(size);
            int b3 = b(size);
            str = ".slogan_portrait_" + a4 + "x" + b3 + "_" + ((int) Math.floor((double) (((float) a4) / c2))) + ".yuv";
        }
        d.d("SloganManager", "getYuvFilePath, path:" + str2);
        return str2;
    }

    public void a() {
        d.b("SloganManager", "init mbInit: " + this.o);
        if (!this.o) {
            if (this.u == null) {
                this.u = new ConcurrentHashMap<>();
            }
            if (this.v == null) {
                this.v = new ConcurrentHashMap<>();
            }
            if (this.j == null) {
                this.j = new FormatConverter();
            }
            this.o = true;
        }
    }

    public void a(int i2) {
        this.r = i2;
        File internalSdDirectory = OppoUsbEnvironment.getInternalSdDirectory(this.h);
        if (internalSdDirectory != null) {
            if (com.oppo.camera.e.a.c(i2)) {
                this.G = internalSdDirectory.getAbsolutePath() + File.separator + ".SLOGAN" + File.separator + "front" + File.separator;
            } else {
                this.G = internalSdDirectory.getAbsolutePath() + File.separator + ".SLOGAN" + File.separator + "back" + File.separator;
            }
            d.a("SloganManager", "checkYuvFileDir, cameraId: " + i2 + ", mYuvFileDir: " + this.G);
            if (!new File(this.G).exists()) {
                k();
                if (!com.oppo.camera.l.a.f(this.G)) {
                    this.G = null;
                    d.e("SloganManager", "checkYuvFileDir, file directory is not exist");
                    return;
                }
                return;
            }
            return;
        }
        k();
        this.G = null;
        d.e("SloganManager", "checkYuvFileDir, interDir is null");
    }

    public void a(Size size, String str) {
        String b2 = b(size, this.r);
        c cVar = new c();
        cVar.c = size;
        cVar.f2519a = str;
        cVar.d = this.r;
        String string = this.m.getString(b2, (String) null);
        File file = new File(this.G + string);
        if (file.isFile() && file.exists()) {
            cVar.f2520b = string;
            cVar.e = false;
        }
        d.a("SloganManager", "updateYuvInfoItem, prefKey: " + b2 + ", yuvInfo: <mPictureSize: " + size + ", mStreamType: " + str + ", mbFileExist: " + cVar.e + ", mYuvFilename: " + cVar.f2520b + ">");
        this.u.put(b2, cVar);
    }

    public void a(HashMap<String, Size> hashMap) {
        if (!d() || !this.o || hashMap == null || hashMap.size() == 0) {
            d.e("SloganManager", "checkIfUpdate, return, mbInit: " + this.o);
            return;
        }
        boolean i2 = i();
        boolean g2 = g();
        boolean h2 = h();
        boolean p2 = p();
        boolean j2 = j();
        boolean z2 = i2 || g2 || h2 || !p2 || j2;
        d.b("SloganManager", "checkIfUpdate, isSloganInfoChange: " + i2 + "isSloganTimeChange: " + g2 + ", isSloganLocationChange: " + h2 + "isExistAllYuvFile: " + p2 + ", isWatermarkPreferenceStatusChange: " + j2);
        if (z2) {
            this.u.clear();
            this.v.clear();
            k();
            this.p = true;
            this.q = false;
            for (String next : hashMap.keySet()) {
                Size size = hashMap.get(next);
                this.v.put(next, size);
                a(size, next);
            }
        } else {
            for (String next2 : hashMap.keySet()) {
                Size size2 = hashMap.get(next2);
                if (!this.v.containsValue(size2)) {
                    this.v.put(next2, size2);
                    a(size2, next2);
                    this.p = false;
                    this.q = true;
                }
            }
        }
        d.b("SloganManager", "checkIfUpdate, mbUpdateAllData: " + this.p + ", mbUpdateSpecialSizeData: " + this.q);
        if (this.p || this.q) {
            this.e = a("pref_slogan_device_key");
            this.c = a("pref_slogan_location_key");
            this.d = a("pref_slogan_time_key");
            d.b("SloganManager", "checkIfUpdate, mbDeviceOn: " + this.e + ", mbLocationOn: " + this.c + ", mbTimeOn: " + this.d);
            if (this.d) {
                this.g = m();
            }
            if (this.c) {
                this.f = n();
            }
            this.f2514a = 1;
            this.l = new a().executeOnExecutor(this.f2515b, new Void[0]);
        }
    }

    public boolean a(String str) {
        i iVar = this.m;
        if (iVar != null) {
            return "on".equals(iVar.getString(str, this.h.getString(R.string.camera_slogan_default_value)));
        }
        return false;
    }

    public String b(Size size, int i2) {
        return "pref_slogan_" + this.E + "_" + 4.0f + "_" + size + "_" + i2;
    }

    public synchronized void b() {
        if (this.f2515b != null) {
            d.b("SloganManager", "updateAllYuv, now");
            this.p = true;
            this.f2514a = 1;
            this.l = new a().executeOnExecutor(this.f2515b, new Void[0]);
        }
    }

    public boolean c() {
        return g() || h();
    }

    public boolean d() {
        if (this.m == null) {
            return false;
        }
        boolean a2 = a("pref_slogan_device_key");
        boolean a3 = a("pref_slogan_location_key");
        boolean a4 = a("pref_slogan_time_key");
        d.e("SloganManager", "isWatermarkOpen deviceOn: " + a2 + ", locationOn: " + a3 + ", timeOn: " + a4);
        return a2 || a3 || a4;
    }

    public int e() {
        this.t = 0;
        if (TextUtils.isEmpty(l())) {
            this.t = 1;
        } else {
            this.t = 2;
        }
        return this.t;
    }

    public void f() {
        d.a("SloganManager", "onPause");
        AsyncTask asyncTask = this.l;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.l = null;
        }
        this.f2514a = 0;
        this.p = false;
        this.q = false;
        this.o = false;
    }
}
