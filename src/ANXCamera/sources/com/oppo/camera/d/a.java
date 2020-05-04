package com.oppo.camera.d;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.Face;
import android.media.Image;
import android.media.ImageReader;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Range;
import android.util.Size;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.ViewGroup;
import com.color.compat.os.SystemPropertiesNative;
import com.oppo.camera.Camera;
import com.oppo.camera.Ipa.e;
import com.oppo.camera.R;
import com.oppo.camera.a;
import com.oppo.camera.a.a;
import com.oppo.camera.c;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.d;
import com.oppo.camera.e.f;
import com.oppo.camera.e.h;
import com.oppo.camera.gl.t;
import com.oppo.camera.jni.APSClient;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.control.e;
import com.oppo.camera.ui.preview.a.g;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.v;
import com.oppo.exif.OppoExifInterface;
import com.oppo.exif.OppoExifTag;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: BaseMode */
public abstract class a implements c, f.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f1855a = {"pref_camera_photo_ratio_key", "pref_camera_flashmode_key"};
    protected boolean A = true;
    protected boolean B = true;
    protected boolean C;
    protected boolean D = false;
    protected boolean E = false;
    protected boolean F = false;
    protected boolean G = true;
    protected String H = c.a_;
    protected String I = c.a_;
    protected com.oppo.camera.a.a J = null;
    protected f K = null;
    protected b L = null;
    protected com.oppo.camera.ui.c M = null;
    protected Activity N = null;
    protected SharedPreferences O = null;
    protected i P = null;
    protected ViewGroup Q = null;
    protected List<String> R = null;
    protected String S = "beauty";
    protected int T = 0;
    protected float U = 0.0f;
    protected HashMap<String, String[]> V = new HashMap<>();
    /* access modifiers changed from: private */
    public final Object W = new Object();
    /* access modifiers changed from: private */
    public final Object X = new Object();
    /* access modifiers changed from: private */
    public final Object Y = new Object();
    private final Object Z = new Object();
    /* access modifiers changed from: private */
    public Handler aA = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            if (message == null) {
                d.e("BaseMode", "handleMessage, msg is null");
                return;
            }
            d.c("BaseMode", "handleMessage, msg is: " + a.this.x(message.what));
            switch (message.what) {
                case 1:
                    Bundle data = message.getData();
                    if (data != null) {
                        int intValue = ((Integer) data.get("picture_width")).intValue();
                        int intValue2 = ((Integer) data.get("picture_height")).intValue();
                        int intValue3 = ((Integer) data.get("picture_format")).intValue();
                        boolean booleanValue = ((Boolean) data.get("is_burst_shot")).booleanValue();
                        a.this.b((byte[]) data.get("picture_data"), intValue, intValue2, intValue3, booleanValue);
                        return;
                    }
                    return;
                case 2:
                    a.this.bD();
                    return;
                case 3:
                    a.this.cD();
                    return;
                case 4:
                    a.this.aP();
                    return;
                case 5:
                    a.this.b((g) message.obj);
                    return;
                case 6:
                    a.this.M.a((e) message.obj);
                    return;
                default:
                    return;
            }
        }
    };
    private APSClient.BufferCallback aB = new APSClient.BufferCallback() {
        public void onDataCallback(APSClient.APSResultInfo aPSResultInfo) {
            d.c("BaseMode", "onDataCallback, callbackInfo: " + aPSResultInfo + ", mReprocessMetadata: " + a.this.ax);
            if (aPSResultInfo == null) {
                if (a.this.q()) {
                    a.this.q = false;
                }
                if (!a.this.d(CameraFunction.POST_THUMBNAIL)) {
                    a.this.a((byte[]) null, 0, 0, 256, false);
                    return;
                }
                return;
            }
            a.this.K.a(aPSResultInfo.mImage, a.this.ax, new Rect(aPSResultInfo.mCropLeft, aPSResultInfo.mCropTop, aPSResultInfo.mCropRight, aPSResultInfo.mCropBottom), new Size(aPSResultInfo.mWidth, aPSResultInfo.mHeight));
            synchronized (a.this.Y) {
                d.b("BaseMode", "onDataCallback, mApsReprocessAlgoFlags: " + Arrays.toString(a.this.an) + ", mApsAlgoFlags: " + Arrays.toString(a.this.am) + ", captureNum: " + a.this.p());
                int[] unused = a.this.ao = a.this.am;
                int[] unused2 = a.this.am = a.this.an;
            }
            synchronized (a.this.X) {
                int unused3 = a.this.at = a.this.p();
                int unused4 = a.this.ak = 1;
            }
        }

        public void onServiceDied() {
            d.e("BaseMode", "onServiceDied");
        }
    };
    private final Object aa = new Object();
    private final Object ab = new Object();
    private boolean ac = false;
    private boolean ad = false;
    private boolean ae = false;
    private int af = 0;
    private int ag = 0;
    /* access modifiers changed from: private */
    public e.a ah = null;
    private int ai = Integer.valueOf(DebugUtil.getDebugProperty("thumbnail_index", MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST)).intValue();
    private int aj = 0;
    /* access modifiers changed from: private */
    public int ak = 1;
    private int al = -1;
    /* access modifiers changed from: private */
    public int[] am = null;
    /* access modifiers changed from: private */
    public int[] an = null;
    /* access modifiers changed from: private */
    public int[] ao = null;
    private int ap = 1;
    private long aq = 0;
    private long ar = 0;
    private int as = 0;
    /* access modifiers changed from: private */
    public int at = 1;
    private int au = 0;
    private int av = 1;
    private Object aw = new Object();
    /* access modifiers changed from: private */
    public TotalCaptureResult ax = null;
    private boolean ay = false;
    private boolean az = false;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1856b = false;
    protected int g = 0;
    protected int h;
    protected int i = 0;
    protected int j = 0;
    protected int k = 0;
    protected int l = 0;
    protected int m = 1;
    protected int n = 0;
    protected int o = 0;
    protected boolean p = false;
    protected boolean q;
    protected boolean r = false;
    protected boolean s = false;
    protected boolean t = false;
    protected boolean u = false;
    protected boolean v = false;
    protected boolean w = false;
    protected boolean x = false;
    protected boolean y = false;
    protected boolean z = false;

    /* renamed from: com.oppo.camera.d.a$a  reason: collision with other inner class name */
    /* compiled from: BaseMode */
    public class C0055a {
    }

    public a(Activity activity, b bVar, com.oppo.camera.ui.c cVar, i iVar) {
        this.N = activity;
        this.L = bVar;
        this.M = cVar;
        this.O = this.L.j();
        this.P = iVar;
        this.D = DebugUtil.checkDualCameraType(OppoExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL);
        cB();
    }

    private Size a(h hVar, CameraCharacteristics.Key<int[]> key) {
        List<Size> c = hVar.c(key);
        String string = this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value));
        if ("standard".equals(string) || "standard_high".equals(string)) {
            return com.oppo.camera.o.d.b(c, 1.3333333333333333d);
        }
        if ("full".equals(string)) {
            return com.oppo.camera.o.d.b(c, com.oppo.camera.o.d.P());
        }
        if ("square".equals(string)) {
            return com.oppo.camera.o.d.b(c, 1.0d);
        }
        return null;
    }

    private void b(TotalCaptureResult totalCaptureResult) {
        if (totalCaptureResult != null && !this.q) {
            com.oppo.camera.e.c n2 = this.K.n();
            CaptureResult.Key<?> b2 = n2.b("com.oppo.capture.request.number");
            CaptureResult.Key<?> b3 = n2.b("com.oppo.aps.algo.flag");
            CaptureResult.Key<?> b4 = n2.b("com.oppo.aps.reprocess.algo.flag");
            CaptureResult.Key<?> b5 = n2.b("com.oppo.configure.request.format");
            CaptureResult.Key<?> b6 = n2.b("com.oppo.capture.request.need.preview.stream");
            CaptureResult.Key<?> b7 = n2.b("com.oppo.metadata.index.reprocess");
            CaptureResult.Key<?> b8 = n2.b("com.qti.chi.override.isQuadCFASnapshot");
            if (!(b2 == null || totalCaptureResult.get(b2) == null || ((int[]) totalCaptureResult.get(b2)).length <= 0)) {
                synchronized (this.X) {
                    this.ak = ((int[]) totalCaptureResult.get(b2))[0];
                }
            }
            if (!(b3 == null || totalCaptureResult.get(b3) == null || ((int[]) totalCaptureResult.get(b3)).length <= 0)) {
                synchronized (this.Y) {
                    this.am = (int[]) totalCaptureResult.get(b3);
                    this.ao = this.am;
                    if (!this.az) {
                        d.b("BaseMode", "updateCaptureParameters, ApsAlgoFlags updated");
                        this.az = true;
                    }
                }
            }
            if (!(b4 == null || totalCaptureResult.get(b4) == null || ((int[]) totalCaptureResult.get(b4)).length <= 0)) {
                synchronized (this.Y) {
                    this.an = (int[]) totalCaptureResult.get(b4);
                }
            }
            if (!(b5 == null || totalCaptureResult.get(b5) == null || ((int[]) totalCaptureResult.get(b5)).length <= 0)) {
                synchronized (this.Z) {
                    this.al = ((int[]) totalCaptureResult.get(b5))[0];
                }
            }
            if (!(b6 == null || totalCaptureResult.get(b6) == null || ((int[]) totalCaptureResult.get(b6)).length <= 0)) {
                synchronized (this.aa) {
                    this.ap = ((int[]) totalCaptureResult.get(b6))[0];
                }
            }
            if (!(b7 == null || totalCaptureResult.get(b7) == null || ((int[]) totalCaptureResult.get(b7)).length <= 0)) {
                synchronized (this.aw) {
                    this.av = ((int[]) totalCaptureResult.get(b7))[0];
                }
            }
            if (b8 != null && totalCaptureResult.get(b8) != null && ((byte[]) totalCaptureResult.get(b8)).length > 0) {
                synchronized (this.ab) {
                    this.au = ((byte[]) totalCaptureResult.get(b8))[0];
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(g gVar) {
        String aO = aO();
        if ("filter".equals(aO)) {
            com.oppo.camera.ui.preview.a.d.a(this.N, aO, bc(), com.oppo.camera.e.a.c(this.j), e(this.j), gVar, c(com.oppo.camera.e.a.a(this.j)));
        }
    }

    private void b(String str, boolean z2) {
        d.a("BaseMode", "updateHDRMode, value: " + str + ", update: " + z2);
        if (this.K != null) {
            if (c.a_.equals(str)) {
                this.K.l(0);
                this.K.k(0);
            } else if (MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(str)) {
                this.K.l(2);
                this.K.k(0);
            } else if ("on".equals(str)) {
                this.K.l(1);
                this.K.k(18);
                this.K.a(c.a_);
            } else if ("close".equals(str)) {
                this.K.l(0);
                this.K.k(0);
            }
            if (z2) {
                this.K.a((f.c) null);
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(byte[] bArr, int i2, int i3, int i4, boolean z2) {
        int i5;
        int i6;
        d.a("BaseMode", "doOnPictureCallback, mbPaused: " + this.s);
        if (!this.s) {
            boolean z3 = false;
            if (!this.p) {
                this.K.l(false);
                this.K.a((f.c) null);
            }
            int k2 = this.L.k();
            if (k2 == 0 || k2 == 180) {
                i5 = i2;
                i6 = i3;
            } else {
                i6 = i2;
                i5 = i3;
            }
            String a2 = com.oppo.camera.o.d.a(i4);
            if (bArr != null) {
                z3 = true;
            }
            a(bArr, i6, i5, a2, z3, z2);
        }
    }

    private final boolean b(com.oppo.camera.e.d dVar) {
        d.a("captureX beforeSnapping");
        this.q = true;
        this.r = true;
        this.B = false;
        boolean b2 = this.L.b();
        d.a("BaseMode", "beforeSnapping, ret: " + b2 + ", mbAutoHDR: " + this.v);
        if (!b2) {
            return false;
        }
        this.G = c(dVar);
        if (!this.G || !Y()) {
            d.e("BaseMode", "beforeSnapping, memory is not enough!");
            return false;
        }
        com.oppo.camera.a.a aVar = this.J;
        if (aVar != null) {
            boolean c = aVar.c();
            if (!this.az || (q() && !c)) {
                d.e("BaseMode", "beforeSnapping, needAps, mbAlgoFlagsUpdated: " + this.az + ", isApsConnected: " + c);
                return false;
            }
        }
        if (cC() == 1) {
            d.e("BaseMode", "beforeSnapping, capturePreview not done!");
            return false;
        }
        this.h = this.L.k();
        R();
        boolean n2 = n();
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                a.this.L.c(false);
                a.this.M.d();
            }
        });
        this.az = false;
        this.ac = false;
        this.i = com.oppo.camera.e.a.b(this.j, this.h);
        this.K.a(this.i);
        if (this.p) {
            this.K.b(75);
        } else {
            this.K.b(95);
        }
        this.K.a(this.L.o());
        if (d("pref_camera_blur_mode_key")) {
            this.K.j(true);
            this.K.p(100);
        } else {
            this.K.j(false);
            this.K.p(0);
        }
        d.b("captureX beforeSnapping");
        return n2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x00a8 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x00a9 A[RETURN] */
    private boolean c(com.oppo.camera.e.d dVar) {
        int i2;
        int i3;
        Size b2 = b(this.K.c());
        int width = b2 != null ? (b2.getWidth() * b2.getHeight()) / 1048576 : 0;
        int i4 = dVar.i;
        if (i4 == 32) {
            width = (int) (((float) width) * 2.0f);
            i3 = dVar.h;
        } else if (i4 == 35) {
            width = (int) (((float) width) * 1.5f);
            i3 = dVar.h;
        } else if (i4 != 256) {
            i2 = 0;
            long e = com.oppo.camera.o.d.e((Context) this.N);
            long d = com.oppo.camera.o.d.d((Context) this.N);
            StringBuilder sb = new StringBuilder();
            sb.append("requestNum: ");
            sb.append(dVar.h);
            sb.append(", format: ");
            sb.append(dVar.i);
            sb.append(", needMemory: ");
            sb.append(i2);
            sb.append(", availableMemory: ");
            long j2 = e / 1048576;
            sb.append(j2);
            sb.append("MB");
            sb.append(", totalMemory: ");
            sb.append(d / 1048576);
            sb.append("MB");
            d.b("BaseMode", "checkMemoryState: " + sb.toString());
            return ((long) i2) >= j2;
        } else {
            i3 = dVar.h;
        }
        i2 = width * i3;
        long e2 = com.oppo.camera.o.d.e((Context) this.N);
        long d2 = com.oppo.camera.o.d.d((Context) this.N);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("requestNum: ");
        sb2.append(dVar.h);
        sb2.append(", format: ");
        sb2.append(dVar.i);
        sb2.append(", needMemory: ");
        sb2.append(i2);
        sb2.append(", availableMemory: ");
        long j22 = e2 / 1048576;
        sb2.append(j22);
        sb2.append("MB");
        sb2.append(", totalMemory: ");
        sb2.append(d2 / 1048576);
        sb2.append("MB");
        d.b("BaseMode", "checkMemoryState: " + sb2.toString());
        if (((long) i2) >= j22) {
        }
    }

    private void cB() {
        if (this.J == null) {
            this.J = com.oppo.camera.a.a.a();
        }
    }

    private int cC() {
        int i2;
        synchronized (this.W) {
            i2 = this.ag;
        }
        return i2;
    }

    /* access modifiers changed from: private */
    public void cD() {
        d.a("BaseMode", "doAfterStartPreview");
        if (!this.s && this.M != null) {
            if (!bu() && !bw()) {
                this.M.a(false, true, true);
            }
            if (this.O != null) {
                if (d("key_high_picture_size") && "standard_high".equals(this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value)))) {
                    this.O.edit().putBoolean("key_high_picture_size", true).commit();
                }
                if (cM()) {
                    r(true);
                } else if (cL()) {
                    q(com.oppo.camera.e.a.c(this.j));
                }
                Handler handler = this.aA;
                if (handler != null) {
                    handler.removeMessages(2);
                    this.aA.sendEmptyMessageDelayed(2, 400);
                }
            }
        }
    }

    private String cE() {
        SharedPreferences sharedPreferences = this.O;
        return sharedPreferences != null ? sharedPreferences.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value)) : this.N.getString(R.string.camera_flash_mode_default_value);
    }

    private String cF() {
        String string = this.N.getString(R.string.camera_flash_mode_video_default_value);
        SharedPreferences sharedPreferences = this.O;
        return sharedPreferences != null ? sharedPreferences.getString("pref_camera_videoflashmode_key", string) : string;
    }

    private boolean cG() {
        String callingPackage = this.N.getCallingPackage();
        return "com.android.mms".equals(callingPackage) || "com.android.contacts".equals(callingPackage) || "com.nearme.note".equals(callingPackage) || "com.coloros.note".equals(callingPackage);
    }

    private List<String> cH() {
        if (this.R == null) {
            aP();
        }
        return this.R;
    }

    private int cI() {
        int aW = aW();
        return d("key_beauty3d") ? aW + 1 : aW;
    }

    private boolean cJ() {
        String string = com.oppo.camera.e.a.c(this.j) ? this.O.getString("pref_camera_torch_mode_key", this.N.getString(R.string.camera_torch_mode_default_value)) : this.O.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value));
        String string2 = this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j));
        SharedPreferences.Editor edit = this.O.edit();
        if (!c.a_.equals(string) && "on".equals(string2)) {
            edit.putString("pref_camera_hdr_mode_key", c.a_);
            edit.apply();
            this.M.d("pref_camera_hdr_mode_key");
            return true;
        } else if ((!"torch".equals(string) && !"on".equals(string)) || !MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(string2)) {
            return false;
        } else {
            edit.putString("pref_camera_hdr_mode_key", c.a_);
            edit.apply();
            this.M.d("pref_camera_hdr_mode_key");
            return true;
        }
    }

    private boolean cK() {
        if (!d(CameraFunction.TORCH_SOFT_LIGHT)) {
            return true;
        }
        String string = this.O.getString("pref_camera_torch_mode_key", this.N.getString(R.string.camera_flash_mode_default_value));
        String string2 = this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j));
        SharedPreferences.Editor edit = this.O.edit();
        if (!c.a_.equals(string) && "on".equals(string2)) {
            edit.putString("pref_camera_hdr_mode_key", c.a_);
            edit.apply();
            this.M.d("pref_camera_hdr_mode_key");
            return true;
        } else if (!"on".equals(string) || !MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(string2)) {
            return false;
        } else {
            edit.putString("pref_camera_hdr_mode_key", c.a_);
            edit.apply();
            this.M.d("pref_camera_hdr_mode_key");
            return true;
        }
    }

    private boolean cL() {
        return this.O != null && d("pref_camera_hdr_mode_key") && MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j)));
    }

    private boolean cM() {
        SharedPreferences sharedPreferences = this.O;
        return sharedPreferences != null && "on".equals(sharedPreferences.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j))) && d("pref_camera_hdr_mode_key");
    }

    private boolean cN() {
        if (this.K == null) {
            d.e("BaseMode", "is3HDR, mOneCamera is null");
            return false;
        } else if (!com.oppo.camera.o.d.w()) {
            return this.K.c().G();
        } else {
            if (!com.oppo.camera.e.a.c(this.j) || !this.K.c().H()) {
                return false;
            }
            return cL() || cM();
        }
    }

    private void d(final com.oppo.camera.e.d dVar) {
        d.a("BaseMode", "capturePreviewData");
        if (this.M != null && cC() == 1) {
            this.M.a((t.a) new t.a() {
                public void a(Bitmap bitmap) {
                    a.this.aA.removeMessages(6);
                    a.this.aA.sendMessage(a.this.aA.obtainMessage(6, new com.oppo.camera.ui.control.e(bitmap, (long) dVar.hashCode())));
                }

                public void a(Bitmap bitmap, long j) {
                    d.a("BaseMode", "capturePreviewData, onPreviewCaptured, bitmap: " + bitmap + ", timeStamp: " + j);
                    String string = (a.this.O == null || a.this.N == null) ? c.a_ : a.this.O.getString("pref_mirror_key", a.this.N.getString(R.string.camera_mirror_default_value));
                    if (0 == j) {
                        a.this.N.runOnUiThread(new Runnable() {
                            public void run() {
                                a.this.b(false, true);
                            }
                        });
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    e.a aVar = new e.a();
                    aVar.f1809b = bitmap;
                    aVar.c = a.this.a();
                    aVar.m = a.this.N.getContentResolver();
                    aVar.d = new Size(bitmap.getHeight(), bitmap.getWidth());
                    aVar.i = currentTimeMillis;
                    aVar.h = com.oppo.camera.o.d.a(currentTimeMillis);
                    aVar.f = a.this.bI();
                    aVar.g = string;
                    aVar.j = a.this.h;
                    aVar.l = a.this.j;
                    aVar.k = com.oppo.camera.e.a.b(a.this.j, a.this.h);
                    aVar.n = j;
                    aVar.o = a.this.p;
                    aVar.p = a.this.p ? 1 : -1;
                    aVar.s = (long) dVar.hashCode();
                    if (a.this.p) {
                        aVar.q = a.this.L.m();
                        aVar.r = a.this.L.n();
                    }
                    e.a unused = a.this.ah = aVar;
                    if (!a.this.bE()) {
                        a.this.L.a(aVar);
                    }
                    synchronized (a.this.W) {
                        a.this.y(2);
                    }
                    d.a("BaseMode", "capturePreviewData, onPreviewCaptured, X");
                }

                public boolean a() {
                    return dVar.A;
                }

                public int b() {
                    int b2 = com.oppo.camera.e.a.b(a.this.j, dVar.z);
                    return com.oppo.camera.e.a.c(a.this.j) ? (!a() || b2 % 180 != 0) ? b2 % 180 != 0 ? 360 - b2 : b2 : 180 - b2 : b2;
                }
            }, true, aa(), t.a.g);
        }
    }

    private void l(String str) {
        if (this.L.e() != 0) {
            b(str, true);
            r("on".equals(str));
            if (!"on".equals(str)) {
                if (!bx() && !bA()) {
                    if (!((by() || bz()) && this.x)) {
                        this.M.a(false, true, true);
                    }
                }
                if (MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(str)) {
                    q(com.oppo.camera.e.a.c(this.j));
                }
            } else if (this.N == null) {
            } else {
                if (cN()) {
                    this.M.a(-1, R.drawable.hdr_hint_icon_3hdr, false, true, false);
                } else {
                    this.M.a(-1, R.drawable.hdr_hint_icon, false, true, false);
                }
            }
        }
    }

    private void n(boolean z2) {
        d.b("BaseMode", "setHDRMenuVisibility(), flag: " + z2 + ", mCameraUIInterface: " + this.M);
        com.oppo.camera.ui.c cVar = this.M;
        if (cVar != null) {
            if (z2) {
                cVar.b("pref_camera_hdr_mode_key", (String) null);
                this.M.b("pref_camera_hdr_mode_key");
                return;
            }
            cVar.c("pref_camera_hdr_mode_key");
        }
    }

    private void o(boolean z2) {
        d.b("BaseMode", "setFalterMenuVisibility, flag: " + z2);
        com.oppo.camera.ui.c cVar = this.M;
        if (cVar != null && !z2) {
            cVar.c("pref_filter_menu");
        }
    }

    private void p(boolean z2) {
        d.b("BaseMode", "setPiMenuVisibility, flag: " + z2);
        com.oppo.camera.ui.c cVar = this.M;
        if (cVar != null && !z2) {
            cVar.c("pref_camera_pi_mode_key");
        }
    }

    private void q(boolean z2) {
        String str;
        String str2;
        if (this.O == null) {
            d.a("BaseMode", "updateFlashMenuIfHDRIsAuto null  == mPreferences");
            return;
        }
        if (z2) {
            str = "pref_camera_torch_mode_key";
            str2 = c.a_;
        } else {
            str = "pref_camera_flashmode_key";
            str2 = MenuClickMsgData.VALUE_PROFESSION_AUTO;
        }
        String string = this.O.getString(str, str2);
        d.a("BaseMode", "updateFlashMenuIfHDRIsAuto flashMode  =" + string);
        if ("on".equals(string) || "torch".equals(string)) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString(str, c.a_);
            edit.apply();
            com.oppo.camera.ui.c cVar = this.M;
            if (cVar != null) {
                cVar.d(str);
            }
        }
    }

    private void r(boolean z2) {
        d.a("BaseMode", "updateMenuWithHDRChange(), enable: " + z2);
        if (this.M != null && z2) {
            SharedPreferences.Editor edit = this.O.edit();
            if (com.oppo.camera.e.a.c(this.j)) {
                edit.putString("pref_camera_torch_mode_key", c.a_);
                edit.apply();
                this.M.d("pref_camera_torch_mode_key");
                return;
            }
            edit.putString("pref_camera_flashmode_key", c.a_);
            edit.apply();
            this.M.d("pref_camera_flashmode_key");
        }
    }

    /* access modifiers changed from: private */
    public String x(int i2) {
        switch (i2) {
            case 1:
                return "MSG_AFTER_TAKEPICTURE";
            case 2:
                return "MSG_DIS_SCREEN_HINT_ICON";
            case 3:
                return "MSG_AFTER_START_PREVIEW";
            case 4:
                return "MSG_UPDATE_EFFECT_MENUNAME";
            case 5:
                return "MSG_CREATE_EFFECT_TEXTURE";
            case 6:
                return "MSG_PRE_UPDATE_THUMBNAIL";
            default:
                return null;
        }
    }

    /* access modifiers changed from: private */
    public void y(int i2) {
        synchronized (this.W) {
            d.a("BaseMode", "setCapturePreviewDataState: " + this.ag + " -> " + i2);
            this.ag = i2;
        }
    }

    public boolean A() {
        return false;
    }

    public boolean B() {
        return true;
    }

    public void C() {
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c(10, "button_color_inside_none");
        cVar.b(0);
        this.M.a(cVar);
    }

    public String D() {
        return "full";
    }

    public int E() {
        return 5;
    }

    public boolean F() {
        return d("pref_filter_process_key") && bc() != 0;
    }

    public boolean G() {
        return this.C;
    }

    public void H() {
        this.M.a(R.string.camera_toast_camera_Low_memory_hint, -1, true, false, false);
    }

    public void I() {
        if (this.M.y()) {
            this.M.z();
        }
        this.P.d(2);
    }

    public void J() {
    }

    public int K() {
        return 0;
    }

    public final void L() {
        this.s = true;
        this.f1856b = false;
        this.q = false;
        this.r = false;
        this.B = true;
        d.a("BaseMode", "pause, mbInCapturing: " + this.q);
        this.P.d(0);
        h();
        y(0);
        Handler handler = this.aA;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        if (cM()) {
            r(false);
        }
        this.M.a(true, true, true);
        f(false);
        this.v = false;
        this.w = false;
        this.y = false;
        this.E = false;
        this.az = false;
        this.l = 0;
        bp();
    }

    public final void M() {
        i();
        com.oppo.camera.ui.preview.a.d.a();
    }

    public final void N() {
        j();
        this.t = false;
        this.u = false;
        this.O = null;
        this.P = null;
        this.N = null;
        this.L = null;
    }

    public final void O() {
        com.oppo.camera.a.a aVar = this.J;
        if (aVar != null) {
            aVar.f();
        }
    }

    public boolean P() {
        this.ac = true;
        return false;
    }

    public void Q() {
        String string = this.O.getString("pref_camera_mode_key", com.oppo.camera.o.d.a(this.L.h()));
        d.a("BaseMode", "setForceMode, capMode: " + string + ", modeName: " + a());
        if (!string.equals(a())) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_camera_mode_key", a());
            edit.apply();
        }
    }

    public void R() {
        int a2 = com.oppo.camera.f.a.a(a(), this.j);
        int b2 = com.oppo.camera.e.a.b(this.j, this.h);
        if (b2 > 0 && !d("pref_support_ipa_process")) {
            a2 |= 32;
        }
        if (aW() > 0) {
            a2 |= 2;
        }
        if (d("pref_camera_blur_mode_key")) {
            a2 |= 16;
        }
        if (d("pref_filter_process_key") && bc() > 0) {
            a2 |= 1024;
        }
        d.b("BaseMode", "setExif, exif: " + a2 + ", jpegOrientation: " + b2);
        f fVar = this.K;
        if (fVar != null) {
            fVar.m(a2);
        }
    }

    public final void S() {
        d.a("BaseMode", "initCameraMode");
        this.t = false;
        this.u = false;
        if (this.P.j() != 0) {
            n(bc());
            if (!d(CameraFunction.FILTER_VIGNETTE) || !"oppo_video_filter_olympus".equals(bd())) {
                this.P.b(false);
            } else {
                this.P.b(true);
            }
        }
        this.C = false;
        this.g = this.L.k();
        this.u = true;
        this.Q = this.M.b();
        this.P.b();
        k();
        this.M.f();
        b(f1855a);
        aP();
        if (cM()) {
            r(true);
        } else if (cL()) {
            q(com.oppo.camera.e.a.c(this.j));
        }
        this.t = true;
    }

    public final void T() {
        d.c("BaseMode", "deInitCameraMode");
        Handler handler = this.aA;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        this.u = false;
        this.l = 0;
        a(f1855a);
        n(false);
        if (cM()) {
            r(false);
            b(c.a_, true);
        }
        f fVar = this.K;
        if (fVar != null) {
            if (fVar.c().G()) {
                this.K.n(false);
            } else if (cL()) {
                this.K.l(0);
            }
            this.K.j(false);
            this.K.p(0);
            this.K.a(com.oppo.camera.a.a());
        }
        f(false);
        this.v = false;
        this.w = false;
        this.y = false;
        l();
        SharedPreferences sharedPreferences = this.O;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("pref_subsetting_key", c.a_).apply();
        }
        this.P.d(1);
        this.t = false;
        this.az = false;
        bp();
    }

    public final void U() {
        if (this.t) {
            X();
        }
        this.ae = DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DEBUG_IN_BGS_ENABLE, DebugUtil.DEBUG_DISABLE);
    }

    public final void V() {
        f fVar = this.K;
        if (fVar != null) {
            fVar.o(0);
            this.K.c(com.oppo.camera.a.b());
            this.K.l(false);
        }
        n(bc());
        bm();
        if (this.K != null) {
            d.b("BaseMode", "beforePreview, flashMode: " + av());
            this.K.a(av());
            this.K.d(E());
            if (this.K.c() != null && this.K.c().F()) {
                this.K.m(d(CameraFunction.REQUEST_FAST_LAUNCH));
            }
            if (!com.oppo.camera.e.a.c(this.j) || (!cL() && !cM())) {
                this.K.i(a.C0053a.CenterWeighted.ordinal());
            } else {
                this.K.i(a.C0053a.FrameAverage.ordinal());
            }
        }
        m();
        i iVar = this.P;
        if (iVar != null) {
            iVar.c(iVar.j());
        }
        if (d("pref_camera_hdr_mode_key")) {
            b(this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j)), false);
        }
        f(false);
        this.v = false;
        this.w = false;
        this.y = false;
        W();
    }

    /* access modifiers changed from: protected */
    public void W() {
        if (com.oppo.camera.e.a.c(this.j) && this.K != null) {
            if (TextUtils.equals(az(), c.a_)) {
                this.K.c(true);
            } else {
                this.K.c(false);
            }
            this.K.a((f.c) null);
        }
    }

    public void X() {
        this.B = true;
        this.aA.removeMessages(3);
        this.aA.sendEmptyMessage(3);
        com.oppo.camera.a.a aVar = this.J;
        if (aVar != null) {
            aVar.b();
        }
    }

    public boolean Y() {
        return this.G;
    }

    public boolean Z() {
        return true;
    }

    public final int a(int i2) {
        if (this.M == null) {
            return -1;
        }
        return this.L.a().a(a(), i2);
    }

    public Size a(h hVar) {
        if (!cG()) {
            return null;
        }
        String string = this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value));
        List<Size> a2 = hVar.a(256);
        int configIntValue = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_CAPTURE_THIRD_PICTURE_SIZE);
        d.a("BaseMode", "getDecreasedSizeForThirdApp, configThirdPictureSize: " + configIntValue);
        String a3 = com.oppo.camera.o.d.a(a2, configIntValue, com.oppo.camera.o.d.a(string));
        if (a3 != null) {
            return new Size(Integer.parseInt(a3.split("x")[0]), Integer.parseInt(a3.split("x")[1]));
        }
        return null;
    }

    public Size a(String str, h hVar) {
        if (d(CameraFunction.SAT_CAMERA)) {
            if ("type_still_capture_yuv_main".equals(str)) {
                return b(hVar);
            }
            if ("type_still_capture_yuv_sub".equals(str)) {
                return a(hVar, com.oppo.camera.e.c.q);
            }
            if ("type_still_capture_yuv_third".equals(str)) {
                return a(hVar, com.oppo.camera.e.c.r);
            }
            return null;
        } else if (!d("pref_dual_camera")) {
            return b(hVar);
        } else {
            int[] a2 = hVar.a((CameraCharacteristics.Key<?>) com.oppo.camera.e.c.k);
            if ("type_still_capture_yuv_main".equals(str)) {
                if (a2.length >= 2) {
                    return new Size(a2[0], a2[1]);
                }
                return null;
            } else if (!"type_still_capture_yuv_sub".equals(str) || a2.length < 4) {
                return null;
            } else {
                return new Size(a2[2], a2[3]);
            }
        }
    }

    /* access modifiers changed from: protected */
    public com.oppo.camera.e.d a(com.oppo.camera.e.d dVar) {
        if (dVar == null) {
            return dVar;
        }
        dVar.p = a();
        dVar.q = this.j;
        if (d("pref_camera_hdr_mode_key")) {
            dVar.r = this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j));
            dVar.s = bw();
        }
        dVar.t = com.oppo.camera.o.d.a(b(this.K.c()));
        dVar.u = aA();
        dVar.v = this.L.Q();
        if (!com.oppo.camera.e.a.c(this.j)) {
            dVar.w = String.valueOf(this.L.O());
        }
        dVar.x = this.o;
        dVar.y = this.L.P();
        dVar.z = this.g;
        return dVar;
    }

    public final DcsMsgData a(DcsMsgData dcsMsgData) {
        d.b("BaseMode", "getCaptureMsgCommonData");
        dcsMsgData.mScreenBrightness = this.o;
        if (dcsMsgData instanceof CaptureMsgData) {
            CaptureMsgData captureMsgData = (CaptureMsgData) dcsMsgData;
            captureMsgData.mPicSizeType = com.oppo.camera.o.d.a(b(this.K.c()));
            captureMsgData.mCCT = String.valueOf(this.T);
            captureMsgData.mLux = this.U;
        }
        d.b("BaseMode", "getCaptureMsgCommonData X");
        return b(dcsMsgData);
    }

    public final DcsMsgData a(DcsMsgData dcsMsgData, v.a aVar) {
        return b(dcsMsgData, aVar);
    }

    public abstract String a();

    public List<String> a(String str, int i2) {
        return b(str, i2);
    }

    public void a(int i2, int i3, boolean z2) {
        int[] bO = bO();
        if (bO == null) {
            d.d("BaseMode", "onFaceBeautyItemValueChange, return");
            return;
        }
        bO[i2] = i3;
        a(bO);
        f fVar = this.K;
        if (fVar != null) {
            fVar.a((f.c) null);
        }
        if (z2 && this.O != null && bL() != null) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putInt(bL()[i2], i3);
            edit.commit();
        }
    }

    public void a(int i2, boolean z2) {
        d.a("BaseMode", "changeModeAllViewWhenAnimation, animType: " + i2 + ", isShow: " + z2);
        if (5 == i2) {
            if (z2) {
                this.f1856b = false;
                this.C = false;
                if (this.M != null && !com.oppo.camera.e.a.c(this.j) && "on".equals(av())) {
                    this.M.a(-1, R.drawable.flash_hint_icon, false, false, false);
                    return;
                }
                return;
            }
            this.C = true;
            com.oppo.camera.ui.c cVar = this.M;
            if (cVar != null) {
                cVar.a(true, true, false);
            }
        } else if (6 == i2) {
            l(this.O.getString("pref_camera_hdr_mode_key", c.a_));
            this.M.d("pref_camera_hdr_mode_key");
        } else if (2 == i2) {
            if (z2) {
                this.M.g(z2);
            }
        } else if (10 == i2 && this.M != null) {
            if (z2 && "on".equals(av())) {
                this.M.a(-1, R.drawable.flash_hint_icon, false, false, false);
            } else if (!cM() || !z2) {
                this.M.a(true, true, false);
            } else if (cN()) {
                this.M.a(-1, R.drawable.hdr_hint_icon_3hdr, false, true, false);
            } else {
                this.M.a(-1, R.drawable.hdr_hint_icon, false, true, false);
            }
        }
    }

    public void a(Activity activity) {
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        SharedPreferences sharedPreferences2 = sharedPreferences;
        String str2 = str;
        if ("pref_camera_flashmode_key".equals(str2)) {
            String string = sharedPreferences2.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value));
            d.a("BaseMode", "onSharedPreferenceChanged, flashMode: " + string + ", mbAutoFlash: " + this.x);
            if (Camera.f1749a || Camera.f1750b) {
                this.ad = true;
                f(false);
                c(this.v, this.x);
                if (!c.a_.equals(string)) {
                    if (Camera.f1750b) {
                        this.M.a(R.string.camera_high_temperature_flash_disable, -1, true, false, false);
                    } else if (Camera.f1749a) {
                        this.M.a(R.string.camera_low_battery_flash_disable, -1, true, false, false);
                    }
                    SharedPreferences.Editor edit = this.O.edit();
                    edit.putString("pref_camera_flashmode_key", c.a_);
                    edit.apply();
                    this.M.d("pref_camera_flashmode_key");
                }
            } else {
                if ("on".equals(string)) {
                    this.M.a(-1, R.drawable.flash_hint_icon, false, true, false);
                } else if (MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(string)) {
                    if (this.x) {
                        this.M.a(-1, R.drawable.flash_hint_icon, false, true, false);
                    } else {
                        this.M.a(false, true, true);
                    }
                } else if ("torch".equals(string)) {
                    this.M.a(-1, R.drawable.torch_hint_icon, false, true, false);
                } else {
                    if (c.a_.equals(string)) {
                        f(false);
                    }
                    this.M.a(false, true, true);
                }
                f fVar = this.K;
                if (fVar != null) {
                    fVar.a(string);
                    this.K.a((f.c) null);
                }
                cJ();
            }
        }
        if ("pref_camera_torch_mode_key".equals(str2)) {
            if (!d(CameraFunction.TORCH_SOFT_LIGHT) || (!Camera.f1749a && !Camera.f1750b)) {
                String string2 = sharedPreferences2.getString(str2, c.a_);
                if ("on".equals(string2)) {
                    this.M.a(-1, d(CameraFunction.TORCH_SOFT_LIGHT) ? R.drawable.torch_hint_icon : R.drawable.flash_hint_icon, false, true, false);
                } else if (MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(string2)) {
                    if (this.x) {
                        this.M.a(-1, R.drawable.flash_hint_icon, false, true, false);
                    } else if (!cM()) {
                        this.M.a(false, true, true);
                    }
                } else if (!cM()) {
                    this.M.a(false, true, true);
                }
                if (d(CameraFunction.TORCH_SOFT_LIGHT)) {
                    cK();
                } else {
                    cJ();
                }
                if (this.K != null) {
                    if (d(CameraFunction.TORCH_SOFT_LIGHT) && "on".equals(string2)) {
                        string2 = "torch";
                    }
                    this.K.a(string2);
                    this.K.a((f.c) null);
                }
            } else {
                this.ad = true;
                f(false);
                c(this.v, this.x);
                if (!c.a_.equals(sharedPreferences2.getString(str2, c.a_))) {
                    if (Camera.f1750b) {
                        this.M.a(R.string.camera_high_temperature_flash_disable, -1, true, false, false);
                    } else if (Camera.f1749a) {
                        this.M.a(R.string.camera_low_battery_flash_disable, -1, true, false, false);
                    }
                    SharedPreferences.Editor edit2 = this.O.edit();
                    edit2.putString("pref_camera_torch_mode_key", c.a_);
                    edit2.apply();
                    this.M.d("pref_camera_torch_mode_key");
                }
            }
        }
        if ("pref_camera_vivid_effect_key".equals(str2) && bk() && F()) {
            l(0);
            if ("filter".equals(aO())) {
                this.M.a(this.N.getString(R.string.camera_filter_none), 0);
            }
        }
        if ("pref_none_sat_ultra_wide_angle_key".equals(str2)) {
            bg();
        }
    }

    public void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j2, long j3) {
        boolean z2;
        long j4 = j2;
        d.a("captureX onCaptureStarted");
        boolean z3 = true;
        final boolean z4 = this.aj == 0;
        this.aj++;
        com.oppo.camera.e.d dVar = (com.oppo.camera.e.d) captureRequest.getTag();
        d.b("BaseMode", "onCaptureStarted, burstShot: " + z2 + ", timestamp: " + j4 + ", mReprocessMetadataIndex: " + this.av);
        if (z4) {
            this.k = captureRequest.hashCode();
        }
        if (aa()) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    a aVar = a.this;
                    aVar.b(aVar.p, z4);
                }
            });
        }
        boolean z5 = this.ai == this.aj;
        if (z5 && d("pref_support_capture_preview")) {
            if (aa()) {
                this.M.c().a(cameraCaptureSession, captureRequest, j2, j3);
            }
            this.aq = j4;
        }
        if (this.J != null && q() && !z2) {
            if (!z5 && d.a.CAPTURE_REPROCESS != dVar.a()) {
                z3 = false;
            }
            this.J.a(cameraCaptureSession, captureRequest, j2, j3, z3);
        }
        if (this.av == this.aj) {
            com.oppo.camera.d.b("BaseMode", "onCaptureStarted, we save the use reprocess's metadata's timestamp: " + j4);
            this.ar = j4;
        }
        if (dVar.a() == d.a.CAPTURE_REPROCESS) {
            e.a aVar = this.ah;
            if (aVar != null) {
                aVar.n = j4;
                this.L.a(aVar);
                this.ah = null;
            }
        }
        com.oppo.camera.d.b("captureX onCaptureStarted");
    }

    public void a(CaptureRequest captureRequest) {
        com.oppo.camera.d.e("BaseMode", "onCaptureFailed, request: " + captureRequest);
        boolean z2 = false;
        if (captureRequest != null) {
            com.oppo.camera.e.d dVar = (com.oppo.camera.e.d) captureRequest.getTag();
            if (dVar != null) {
                z2 = dVar.d;
            }
        }
        if (this.J == null || !q() || z2) {
            b bVar = this.L;
            if (bVar != null) {
                bVar.a(this.aq);
                if (z2) {
                    this.L.L();
                }
            }
            a((byte[]) null, 0, 0, ab(), false);
            return;
        }
        a.C0054a aVar = new a.C0054a();
        aVar.c = s();
        aVar.f1821a = this.j;
        this.J.a(aVar);
    }

    public void a(CaptureRequest captureRequest, CaptureResult captureResult) {
        com.oppo.camera.d.a("BaseMode", "onProgress");
        if (d("pref_support_fast_capture")) {
            CaptureResult.Key<?> b2 = this.K.n().b("com.mediatek.control.capture.next.ready");
            if (b2 != null) {
                int[] iArr = (int[]) captureResult.get(b2);
                boolean z2 = false;
                if (iArr != null && iArr.length > 0) {
                    int length = iArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (iArr[i2] == 1) {
                            z2 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                if (z2 && !this.s) {
                    com.oppo.camera.d.a("BaseMode", "onProgress, earlyNotify: " + z2);
                    this.A = true;
                }
            }
        }
    }

    public void a(TotalCaptureResult totalCaptureResult) {
        CaptureResult.Key<?> key;
        CaptureResult.Key<?> key2;
        if (!d(CameraFunction.TORCH_SOFT_LIGHT)) {
            Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
            Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_MODE);
            if (num != null && !this.p) {
                boolean z2 = this.x;
                if (this.L.p()) {
                    f(false);
                } else if (!this.q && num2.intValue() == 2) {
                    if (num.intValue() == 4) {
                        f(true);
                    } else if (num.intValue() == 2) {
                        f(false);
                    }
                }
                if (this.x != z2) {
                    if (!bx() && !bA() && !this.C) {
                        c(this.v, this.x);
                    } else {
                        return;
                    }
                }
            }
        }
        com.oppo.camera.e.c n2 = this.K.n();
        CaptureResult.Key<?> b2 = n2.b("com.oppo.picture.exif.flag");
        CaptureResult.Key<?> b3 = n2.b("com.oppo.scene.state");
        if (!(b2 == null || totalCaptureResult.get(b2) == null || ((int[]) totalCaptureResult.get(b2)).length <= 0)) {
            int i2 = ((int[]) totalCaptureResult.get(b2))[0];
            if (this.af != i2) {
                com.oppo.camera.d.a("BaseMode", "onPreviewCaptureResult, pictureExifFlag: " + this.af + " > " + i2);
                this.af = i2;
            }
        }
        if (totalCaptureResult.get(CaptureResult.STATISTICS_FACES) != null) {
            this.n = ((Face[]) totalCaptureResult.get(CaptureResult.STATISTICS_FACES)).length;
        }
        if (com.oppo.camera.o.d.w()) {
            key2 = n2.b("org.codeaurora.qcamera3.manualWB.color_temperature");
            key = n2.b("com.oppo.rawhdr.isp.luxindex");
        } else {
            key2 = n2.b("com.oppo.manualWB.color_temperature");
            key = n2.b("com.mediatek.3afeature.aeLuxIndex");
        }
        this.T = 0;
        if (key2 != null) {
            try {
                this.T = ((int[]) totalCaptureResult.get(key2))[0];
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.U = 0.0f;
        if (key != null) {
            try {
                this.U = ((float[]) totalCaptureResult.get(key))[0];
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (!cL() || b3 == null || this.p) {
            this.v = false;
        } else if (totalCaptureResult.get(b3) != null && ((int[]) totalCaptureResult.get(b3)).length > 0) {
            int i3 = ((int[]) totalCaptureResult.get(b3))[0];
            boolean z3 = this.v;
            if (i3 == 0) {
                this.v = true;
                this.y = false;
                if (!cM() && !this.C) {
                    boolean z4 = this.v;
                    if (z3 != z4) {
                        c(z4, this.x);
                    }
                }
            } else if (2 == i3) {
                this.v = false;
                this.y = false;
                if (!cM() && !this.C) {
                    boolean z5 = this.v;
                    if (z3 != z5) {
                        c(z5, this.x);
                    }
                }
            } else if (1 == i3) {
                this.y = true;
                this.v = false;
                if (!cM() && !this.C) {
                    boolean z6 = this.v;
                    if (z3 != z6) {
                        c(z6, this.x);
                    }
                }
            }
        }
        CaptureResult.Key<?> b4 = n2.b("scene.binning");
        if (b4 != null) {
            Integer num3 = (Integer) totalCaptureResult.get(b4);
            if (103 == num3.intValue()) {
                this.w = true;
            } else if (104 == num3.intValue()) {
                this.w = false;
            }
        }
        CaptureResult.Key<?> b5 = n2.b("capture.state");
        if (b5 != null) {
            Integer num4 = (Integer) totalCaptureResult.get(b5);
            if (1002 == num4.intValue() || 1003 == num4.intValue()) {
                this.z = true;
                int i4 = this.l;
                if (i4 > 0) {
                    this.l = i4 - 1;
                }
                if (this.M.h() == 4 && (d("pref_camera_hdr_mode_key") || d("pref_auto_night_scence_key"))) {
                    this.M.a(g(), d("pref_burst_shot_key"));
                }
                am();
            }
        }
        b(totalCaptureResult);
        com.oppo.camera.a.a aVar = this.J;
        if (aVar != null && !this.s && aVar.c()) {
            this.J.a(totalCaptureResult, this.aB, a(), String.valueOf(this.j), this.V.get(a()), String.valueOf(a(this.j)), cw());
        }
    }

    public void a(TotalCaptureResult totalCaptureResult, CaptureRequest captureRequest) {
        boolean z2;
        com.oppo.camera.d.a("captureX onCaptureCompleted");
        Long l2 = (Long) totalCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP);
        com.oppo.camera.e.d dVar = (com.oppo.camera.e.d) captureRequest.getTag();
        int i2 = 0;
        com.oppo.camera.d.b("BaseMode", "onCaptureCompleted, timeStamp: " + l2 + ", burstShot: " + z2 + ", result: " + totalCaptureResult);
        if (!z2 && q() && this.J != null) {
            if (d(CameraFunction.SAT_CAMERA)) {
                int[] a2 = this.K.a("com.oppo.aps.sat.snapshot.sensors.mask", totalCaptureResult);
                if (a2 != null && a2.length >= 3) {
                    int length = a2.length;
                    int i3 = 0;
                    while (i2 < length) {
                        if (a2[i2] == 1) {
                            i3++;
                        }
                        i2++;
                    }
                    i2 = i3;
                }
                if (i2 > 0) {
                    this.m = i2;
                } else {
                    this.m = 1;
                }
            }
            com.oppo.camera.d.a("BaseMode", "onCaptureCompleted, mDefaultCaptureNumber: " + this.ak + ", mSensorNumber: " + this.m);
            this.J.a(totalCaptureResult, s());
        }
        if (l2 != null && this.ar == l2.longValue()) {
            com.oppo.camera.d.b("BaseMode", "onCaptureCompleted, will save capture result for reprocess");
            this.ax = totalCaptureResult;
        }
        com.oppo.camera.d.b("captureX onCaptureCompleted");
    }

    public void a(Image image) {
        if (this.s) {
            com.oppo.camera.d.e("BaseMode", "onPostViewReceived, is paused, so return.");
        } else {
            com.oppo.camera.d.a("BaseMode", "onPostViewReceived");
        }
    }

    public void a(ImageReader imageReader, boolean z2) {
        a(imageReader, 0, z2);
    }

    /* access modifiers changed from: protected */
    public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
        if (d.a.PREVIEW != dVar.a()) {
            CaptureRequest.Key<?> a2 = this.K.n().a("com.oppo.request.aps.algo.flag");
            if (!this.ay && a2 != null) {
                synchronized (this.Y) {
                    builder.set(a2, this.am);
                }
            }
        }
    }

    public void a(f fVar) {
        this.K = fVar;
        if (this.K != null && d("key_support_zsl")) {
            this.K.h(at());
        }
    }

    public void a(g gVar) {
        if (d("pref_filter_process_key")) {
            this.aA.removeMessages(5);
            Message message = new Message();
            message.obj = gVar;
            message.what = 5;
            this.aA.sendMessage(message);
        }
    }

    public void a(String str, boolean z2) {
        SharedPreferences sharedPreferences = this.O;
        if (sharedPreferences == null) {
            com.oppo.camera.d.e("BaseMode", "updateBubbleValue, mPreference null");
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putBoolean(str, z2);
        edit.commit();
    }

    public void a(HashMap<String, Surface> hashMap) {
    }

    /* access modifiers changed from: protected */
    public abstract void a(boolean z2);

    /* access modifiers changed from: protected */
    public void a(boolean z2, boolean z3) {
        com.oppo.camera.d.e("BaseMode", "CameraTest Shutter clickable Restart");
    }

    public void a(byte[] bArr, int i2, int i3, int i4, boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append("onPictureCallback, data size: ");
        sb.append(bArr != null ? Integer.valueOf(bArr.length) : null);
        sb.append(", width: ");
        sb.append(i2);
        sb.append(", height: ");
        sb.append(i3);
        sb.append(", imageFormat: ");
        sb.append(i4);
        sb.append(", isBurstShot: ");
        sb.append(z2);
        com.oppo.camera.d.a("BaseMode", sb.toString());
        com.oppo.camera.d.a("BaseMode", this.aA, a());
        if (!z2) {
            this.aA.removeMessages(1);
        }
        Message message = new Message();
        Bundle bundle = new Bundle();
        bundle.putByteArray("picture_data", bArr);
        bundle.putInt("picture_width", i2);
        bundle.putInt("picture_height", i3);
        bundle.putInt("picture_format", i4);
        bundle.putBoolean("is_burst_shot", z2);
        message.setData(bundle);
        message.what = 1;
        this.aA.sendMessage(message);
    }

    public final void a(byte[] bArr, int i2, int i3, String str, boolean z2, boolean z3) {
        int i4;
        int i5;
        this.L.a(bArr);
        b(bArr, z3);
        if (z2) {
            if (!this.s) {
                if (i2 == 0 && i3 == 0) {
                    f fVar = this.K;
                    if (fVar != null) {
                        Size b2 = b(fVar.c());
                        if (com.oppo.camera.e.a.b(this.j, this.L.k()) % 180 == 0) {
                            i4 = b2.getWidth();
                            i5 = b2.getHeight();
                        } else {
                            i4 = b2.getHeight();
                            i5 = b2.getWidth();
                        }
                        v.a aVar = new v.a();
                        aVar.o = i4;
                        aVar.p = i5;
                        aVar.d = bArr;
                        aVar.i = str;
                        aVar.r = com.oppo.camera.o.d.b(bArr);
                        aVar.h = null;
                        this.L.a(aVar);
                    }
                }
                int i6 = i3;
                i4 = i2;
                i5 = i6;
                v.a aVar2 = new v.a();
                aVar2.o = i4;
                aVar2.p = i5;
                aVar2.d = bArr;
                aVar2.i = str;
                aVar2.r = com.oppo.camera.o.d.b(bArr);
                aVar2.h = null;
                this.L.a(aVar2);
            } else {
                return;
            }
        }
        this.L.b(bArr);
        a(bArr, z3);
        if (!q()) {
            this.q = false;
        }
        if (!ae() && !this.q) {
            this.B = true;
        }
        this.f1856b = true;
        this.ay = false;
        this.ak = this.at;
        if (this.L.g()) {
            this.L.c(true);
        }
        if ((Camera.f1749a || Camera.f1750b) && this.ad && !z3) {
            this.ad = false;
            this.M.d("pref_camera_flashmode_key");
            this.M.d("pref_camera_videoflashmode_key");
        }
        com.oppo.camera.d.a("BaseMode", "pictureTakenCallback, mbInCapturing: " + this.q + ", mbNeedReloadFlashMenu: " + this.ad);
    }

    /* access modifiers changed from: protected */
    public abstract void a(byte[] bArr, boolean z2);

    /* access modifiers changed from: protected */
    public void a(int[] iArr) {
        f fVar = this.K;
        if (fVar != null && iArr != null) {
            fVar.a(com.oppo.camera.o.d.a(iArr));
        }
    }

    public final void a(String[] strArr) {
        if (strArr != null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                List<String> a2 = a(strArr[i2], this.j);
                if (a2 != null && a2.size() >= 2) {
                    List<String> b2 = b(strArr[i2], this.j);
                    if (b2 != null) {
                        for (int i3 = 0; i3 < b2.size(); i3++) {
                            String str = b2.get(i3);
                            if (!a2.contains(str)) {
                                this.M.a(strArr[i2], str);
                            }
                        }
                    }
                }
            }
        }
    }

    public boolean a(int i2, MotionEvent motionEvent) {
        return false;
    }

    public boolean a(ImageReader imageReader, int i2, boolean z2) {
        com.oppo.camera.d.e("BaseMode", "onImageReceived, isNeedAPSProcess: " + z2);
        if (z2 && this.J != null) {
            a.C0054a aVar = new a.C0054a();
            aVar.j = imageReader;
            aVar.c = s();
            aVar.f1821a = this.j;
            aVar.k = i2;
            synchronized (this.Y) {
                aVar.f1822b = this.am;
            }
            this.J.b(aVar);
            return true;
        } else if (d(CameraFunction.POST_THUMBNAIL)) {
            return false;
        } else {
            a((byte[]) null, 0, 0, ab(), false);
            return false;
        }
    }

    public boolean a(MotionEvent motionEvent) {
        return false;
    }

    public boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public boolean a(String str) {
        return "pref_camera_photo_ratio_key".equals(str) || "pref_camera_timer_shutter_key".equals(str) || "pref_camera_high_resolution_key".equals(str) || "pref_setting_key".equals(str);
    }

    public String aA() {
        return this.L.S();
    }

    public boolean aB() {
        return this.q;
    }

    public C0055a aC() {
        return null;
    }

    /* access modifiers changed from: protected */
    public void aD() {
        bm();
        f fVar = this.K;
        if (fVar != null) {
            fVar.l(false);
            this.K.a((f.c) null);
        }
    }

    public void aE() {
        if (d("pref_camera_flashmode_key")) {
            f(false);
            this.I = this.O.getString("pref_camera_flashmode_key", c.a_);
            if ("on".equals(this.I) || MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(this.I)) {
                this.M.a(false, true, true);
                this.M.b("pref_camera_flashmode_key", c.a_);
                f fVar = this.K;
                if (fVar != null) {
                    fVar.a(c.a_);
                    this.K.a((f.c) null);
                }
            }
        }
        if (d("pref_camera_hdr_mode_key")) {
            this.v = false;
            this.H = this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j));
            if (!c.a_.equals(this.H)) {
                this.M.a(false, true, true);
                this.M.b("pref_camera_hdr_mode_key", c.a_);
                b(c.a_, false);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void aF() {
        SharedPreferences.Editor edit = this.O.edit();
        edit.putString("pref_camera_vivid_effect_key", "on");
        edit.apply();
        this.M.b("pref_camera_vivid_effect_key", "on");
    }

    /* access modifiers changed from: protected */
    public void aG() {
        SharedPreferences.Editor edit = this.O.edit();
        edit.putString("pref_camera_vivid_effect_key", c.a_);
        edit.apply();
        this.M.a(true, false, true);
        this.M.b("pref_camera_vivid_effect_key", c.a_);
    }

    public void aH() {
        if (d("pref_camera_flashmode_key")) {
            this.I = this.O.getString("pref_camera_flashmode_key", c.a_);
            if ("on".equals(this.I) || MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(this.I)) {
                this.M.b("pref_camera_flashmode_key", this.I);
                f fVar = this.K;
                if (fVar != null) {
                    fVar.a(this.I);
                    this.K.a((f.c) null);
                }
            }
        }
        if (d("pref_camera_hdr_mode_key")) {
            this.H = this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j));
            if (!c.a_.equals(this.H)) {
                this.M.b("pref_camera_hdr_mode_key", this.H);
                b(this.H, false);
            }
        }
    }

    public final void aI() {
        aD();
        this.l = 0;
        aH();
        ah();
        if (this.E) {
            this.E = false;
            aF();
        }
        if ((Camera.f1749a || Camera.f1750b) && this.ad) {
            this.ad = false;
            this.M.d("pref_camera_flashmode_key");
            this.M.d("pref_camera_videoflashmode_key");
        }
        b bVar = this.L;
        if (bVar != null) {
            bVar.c(true);
        }
    }

    public void aJ() {
        com.oppo.camera.d.a("BaseMode", "onUpdateCameraSettingMenu");
        if (d("pref_filter_menu")) {
            this.M.f("pref_filter_menu");
        } else if (d("pref_portrait_new_style_menu")) {
            this.M.f("pref_portrait_new_style_menu");
        } else if (d("pref_video_filter_menu")) {
            this.M.f("pref_video_filter_menu");
        }
        b(f1855a);
        n(d("pref_camera_hdr_mode_key"));
    }

    public boolean aK() {
        return false;
    }

    public void aL() {
    }

    public void aM() {
    }

    public void aN() {
        com.oppo.camera.d.a("BaseMode", "onEffectSurfaceCreated");
        this.aA.removeMessages(4);
        this.aA.sendEmptyMessage(4);
    }

    /* access modifiers changed from: protected */
    public String aO() {
        return this.S;
    }

    /* access modifiers changed from: protected */
    public void aP() {
        com.oppo.camera.d.a("BaseMode", "updateEffectMenuNames");
        if (d("pref_filter_process_key")) {
            if (this.R == null) {
                this.R = new CopyOnWriteArrayList();
            }
            this.R.clear();
            if (d(CameraFunction.FACE_BEAUTY_PROCESS)) {
                this.R.add("beauty");
            }
            if (d("pref_filter_process_key")) {
                this.R.add("filter");
            }
            String aO = aO();
            int i2 = 0;
            if ("beauty".equals(aO)) {
                i2 = cI();
            } else if ("filter".equals(aO)) {
                i2 = bc();
            }
            this.L.a(true, this.R, aO, i2);
        }
    }

    public boolean aQ() {
        int i2;
        List<String> cH = cH();
        if (cH != null) {
            i2 = 0;
            for (String equals : cH) {
                if ("filter".equals(equals)) {
                    i2 = bc();
                }
            }
        } else {
            com.oppo.camera.d.a("BaseMode", "hasEffectSelected, not Support filter effect.");
            i2 = 0;
        }
        return i2 != 0;
    }

    public String aR() {
        if (!"filter".equals(aO())) {
            return null;
        }
        return this.N.getString(d(this.j)[bc()]);
    }

    public int aS() {
        if (d(CameraFunction.FACE_BEAUTY_CUSTOM)) {
            return 1;
        }
        return d(CameraFunction.FACE_BEAUTY_COMMON) ? 2 : 0;
    }

    public void aT() {
        String[] bL = bL();
        com.oppo.camera.d.a("BaseMode", "resetFaceBeautyValues");
        SharedPreferences sharedPreferences = this.O;
        if (!(sharedPreferences == null || bL == null)) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            for (int i2 = 0; i2 < bL.length; i2++) {
                edit.putInt(bL[i2], bN()[i2]);
            }
            edit.commit();
        }
        a(bO());
        f fVar = this.K;
        if (fVar != null) {
            fVar.a((f.c) null);
        }
    }

    public boolean aU() {
        return true;
    }

    public int aV() {
        return 102;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x003a A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x003b A[RETURN] */
    public int aW() {
        int i2;
        if (!d(CameraFunction.FACE_BEAUTY_PROCESS)) {
            return 0;
        }
        if (aX() != null) {
            SharedPreferences sharedPreferences = this.O;
            if (sharedPreferences != null) {
                i2 = sharedPreferences.getInt(aX(), aZ());
                com.oppo.camera.d.a("BaseMode", "getFaceBeautyCurrIndex, index: " + i2);
                return i2 > 0 ? 0 : 102;
            }
        }
        i2 = 0;
        com.oppo.camera.d.a("BaseMode", "getFaceBeautyCurrIndex, index: " + i2);
        if (i2 > 0) {
        }
    }

    /* access modifiers changed from: protected */
    public String aX() {
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean aY() {
        if (!com.oppo.camera.o.d.y()) {
            return false;
        }
        String str = SystemPropertiesNative.get("ro.oppo.regionmark", "");
        return "EUEX".equals(str) || "RU".equals(str);
    }

    /* access modifiers changed from: protected */
    public int aZ() {
        if (aY()) {
            return 0;
        }
        return ((!d(CameraFunction.FACE_BEAUTY_COMMON) || !com.oppo.camera.e.a.c(this.j)) && !d(CameraFunction.FACE_BEAUTY_CUSTOM)) ? 0 : 102;
    }

    public void a_(boolean z2) {
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c(11, "button_color_inside_none");
        cVar.b(0);
        this.M.a(cVar);
    }

    public boolean aa() {
        return true;
    }

    public int ab() {
        return 256;
    }

    public int ac() {
        return 0;
    }

    public int ad() {
        return 256;
    }

    /* access modifiers changed from: protected */
    public boolean ae() {
        return false;
    }

    public final boolean af() {
        com.oppo.camera.d.a("BaseMode", "burstShotCapture");
        this.p = true;
        aE();
        ag();
        if (bk()) {
            aG();
            this.E = true;
        } else {
            this.E = false;
        }
        return ai();
    }

    /* access modifiers changed from: protected */
    public void ag() {
    }

    /* access modifiers changed from: protected */
    public void ah() {
    }

    /* access modifiers changed from: protected */
    public boolean ai() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void aj() {
    }

    /* access modifiers changed from: protected */
    public void ak() {
    }

    public final boolean al() {
        com.oppo.camera.d.a("BaseMode", "capture");
        com.oppo.camera.e.d t2 = t();
        if (!b(t2)) {
            this.q = false;
            this.r = false;
            this.B = true;
            com.oppo.camera.d.b("captureX beforeSnapping");
            return false;
        }
        this.z = false;
        this.aj = 0;
        this.ay = co();
        if (bn()) {
            if (this.p) {
                this.L.a(com.oppo.camera.o.d.s(), t2, x());
            } else {
                this.L.a(p(), t2, x());
            }
            if (d("pref_support_capture_preview")) {
                y(1);
                d(t2);
            } else {
                y(0);
            }
            if (!ba()) {
                this.K.l(true);
                this.K.a((f.c) null);
            }
        } else {
            this.L.t();
        }
        this.k = 0;
        Z();
        return true;
    }

    /* access modifiers changed from: protected */
    public void am() {
    }

    public void an() {
    }

    public void ao() {
    }

    public void ap() {
    }

    /* access modifiers changed from: protected */
    public boolean aq() {
        return false;
    }

    public final void ar() {
        a((CaptureRequest) null);
    }

    public boolean as() {
        return this.B && cC() != 1;
    }

    public boolean at() {
        return !com.oppo.camera.e.a.c(this.j) || !com.oppo.camera.o.d.w();
    }

    public int au() {
        if (this.K.c() != null) {
            List asList = Arrays.asList(new int[][]{this.K.c().x()});
            if (asList != null && asList.size() > 0) {
                if (asList.contains(4)) {
                    return 4;
                }
                if (asList.contains(1)) {
                    return 1;
                }
            }
        }
        com.oppo.camera.d.a("BaseMode", "getDefaultAFMode, focusMode: " + 4);
        return 4;
    }

    public String av() {
        if (d("pref_camera_videoflashmode_key")) {
            return cF();
        }
        if (!d("pref_camera_torch_mode_key") && !d(CameraFunction.TORCH_SOFT_LIGHT)) {
            return d("pref_camera_flashmode_key") ? cE() : c.a_;
        }
        String aw2 = aw();
        return (!d(CameraFunction.TORCH_SOFT_LIGHT) || !"on".equals(aw2)) ? aw2 : "torch";
    }

    /* access modifiers changed from: protected */
    public String aw() {
        SharedPreferences sharedPreferences = this.O;
        return sharedPreferences != null ? sharedPreferences.getString("pref_camera_torch_mode_key", this.N.getString(R.string.camera_torch_mode_default_value)) : this.N.getString(R.string.camera_torch_mode_default_value);
    }

    public boolean ax() {
        if (d("key_high_picture_size")) {
            return this.O.getBoolean("key_high_picture_size", false);
        }
        return false;
    }

    public String ay() {
        if (this.O != null && d("pref_time_lapse_key")) {
            String string = this.O.getString("pref_camera_timer_shutter_key", this.N.getString(R.string.camera_shutter_mode_default_value));
            try {
                Integer.valueOf(string);
                return string;
            } catch (NumberFormatException unused) {
            }
        }
        return c.a_;
    }

    public String az() {
        SharedPreferences sharedPreferences = this.O;
        return bo() != null ? bo() : sharedPreferences != null ? sharedPreferences.getString("pref_mirror_key", this.N.getString(R.string.camera_mirror_default_value)) : null;
    }

    public abstract int b();

    public Size b(h hVar) {
        if (d("key_high_picture_size") && this.O.getBoolean("key_high_picture_size", false)) {
            return CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE);
        }
        String string = this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value));
        List<Size> a2 = hVar.a(256);
        com.oppo.camera.d.a("BaseMode", "getPictureSize, sizeList: " + a2.toString());
        if ("standard".equals(string)) {
            return com.oppo.camera.o.d.b(a2, 1.3333333333333333d);
        }
        if ("full".equals(string)) {
            return com.oppo.camera.o.d.b(a2, com.oppo.camera.o.d.P());
        }
        if ("square".equals(string)) {
            return com.oppo.camera.o.d.b(a2, 1.0d);
        }
        if ("16_9".equals(string)) {
            return com.oppo.camera.o.d.b(a2, 1.7777777777777777d);
        }
        if ("standard_high".equals(string)) {
            return d("key_high_picture_size") ? CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE) : com.oppo.camera.o.d.b(a2, 1.3333333333333333d);
        }
        return null;
    }

    public DcsMsgData b(DcsMsgData dcsMsgData) {
        return dcsMsgData;
    }

    public DcsMsgData b(DcsMsgData dcsMsgData, v.a aVar) {
        return dcsMsgData;
    }

    public final List<String> b(String str, int i2) {
        String[] strArr = null;
        if ("pref_camera_flashmode_key".equals(str) && com.oppo.camera.e.a.c(this.j)) {
            return null;
        }
        List<String> supportedList = CameraConfig.getSupportedList(str, i2);
        if (supportedList == null) {
            supportedList = new ArrayList<>();
            if ("pref_camera_flashmode_key".equals(str)) {
                strArr = this.N.getResources().getStringArray(R.array.flash_mode_values);
            }
            if ("pref_camera_photo_ratio_key".equals(str)) {
                strArr = this.N.getResources().getStringArray(R.array.photo_ratio_values);
            }
            if ("pref_camera_timer_shutter_key".equals(str)) {
                strArr = this.N.getResources().getStringArray(R.array.timer_shutter_values);
            }
            if (strArr != null) {
                for (String add : strArr) {
                    supportedList.add(add);
                }
            }
        }
        return supportedList;
    }

    public void b(int i2) {
        this.C = false;
        this.az = false;
        this.l = 0;
        this.j = i2;
    }

    /* access modifiers changed from: protected */
    public void b(Image image) {
    }

    public final void b(boolean z2, boolean z3) {
        if (!z2 && !this.s) {
            this.l++;
            com.oppo.camera.d.a("BaseMode", "shutterCallback, mPostCounter: " + this.l);
            this.r = false;
        }
        if (this.s) {
            com.oppo.camera.d.a("BaseMode", "shutterCallback, camera pause, so return");
            return;
        }
        if (!z2 && !bE()) {
            this.L.c();
        }
        a(z2, z3);
    }

    /* access modifiers changed from: protected */
    public void b(byte[] bArr, boolean z2) {
    }

    public final void b(String[] strArr) {
        if (strArr != null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                List<String> a2 = a(strArr[i2], this.j);
                if (a2 != null && a2.size() >= 2) {
                    List<String> b2 = b(strArr[i2], this.j);
                    if (b2 != null) {
                        for (int i3 = 0; i3 < b2.size(); i3++) {
                            String str = b2.get(i3);
                            if (!a2.contains(str)) {
                                if ("pref_camera_photo_ratio_key".equals(strArr[i2]) && str.equals(this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value)))) {
                                    SharedPreferences.Editor edit = this.O.edit();
                                    edit.putString("pref_camera_photo_ratio_key", b2.get(0));
                                    edit.apply();
                                }
                                if ("pref_camera_flashmode_key".equals(strArr[i2]) && str.equals(this.O.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value)))) {
                                    SharedPreferences.Editor edit2 = this.O.edit();
                                    edit2.putString("pref_camera_flashmode_key", b2.get(0));
                                    edit2.apply();
                                }
                                this.M.b(strArr[i2], str);
                            }
                        }
                    }
                }
            }
        }
    }

    public boolean b(MotionEvent motionEvent) {
        return false;
    }

    public boolean b(String str) {
        if ("pref_subsetting_key".equals(str)) {
            return B();
        }
        if ("pref_setting_key".equals(str)) {
            return !B();
        }
        if ("pref_filter_menu".equals(str) || "pref_camera_torch_mode_key".equals(str)) {
            return d(str);
        }
        if ("pref_camera_timer_shutter_key".equals(str)) {
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean bA() {
        SharedPreferences sharedPreferences = this.O;
        return sharedPreferences != null && "on".equals(sharedPreferences.getString("pref_camera_torch_mode_key", this.N.getResources().getString(R.string.camera_torch_mode_default_value))) && d("pref_camera_torch_mode_key");
    }

    /* access modifiers changed from: protected */
    public boolean bB() {
        return "torch".equals(av());
    }

    public boolean bC() {
        return d("pref_camera_gesture_shutter_key") && "on".equals(this.O.getString("pref_camera_gesture_shutter_key", this.N.getString(R.string.camera_gesture_shutter_default_value)));
    }

    public void bD() {
        com.oppo.camera.d.a("BaseMode", "displayScreenHintIconInSwitchOn, isOpenFrontTorch: " + bA() + ", isOpenFlash: " + bx());
        if (cq() != 0) {
            com.oppo.camera.d.a("BaseMode", "displayScreenHintIconInSwitchOn, beauty3DMode");
        } else if (!this.M.x()) {
            if ((!bA() && !bu() && !bw()) || this.C || this.p) {
                this.M.a(false, true, true);
            } else if (bw()) {
                if (cN()) {
                    this.M.a(-1, R.drawable.hdr_hint_icon_3hdr, false, true, false);
                } else {
                    this.M.a(-1, R.drawable.hdr_hint_icon, false, true, false);
                }
            } else if ("torch".equals(av())) {
                this.M.a(-1, R.drawable.torch_hint_icon, false, true, false);
            } else {
                this.M.a(-1, R.drawable.flash_hint_icon, false, true, false);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean bE() {
        return false;
    }

    public boolean bF() {
        return false;
    }

    public int bG() {
        return 0;
    }

    public void bH() {
        aP();
    }

    public String bI() {
        return OppoExifTag.EXIF_TAG_PREFIX + String.valueOf(this.af);
    }

    public boolean bJ() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void bK() {
        if (d(CameraFunction.FACE_BEAUTY_PROCESS)) {
            int aW = aW();
            com.oppo.camera.d.a("BaseMode", "onBeforePreview, index: " + aW);
            j(aW);
            a(bO());
            i iVar = this.P;
            if (iVar != null) {
                iVar.g(aW);
                return;
            }
            return;
        }
        j(0);
        i iVar2 = this.P;
        if (iVar2 != null) {
            iVar2.g(0);
        }
    }

    /* access modifiers changed from: protected */
    public String[] bL() {
        return null;
    }

    /* access modifiers changed from: protected */
    public int bM() {
        return 40;
    }

    /* access modifiers changed from: protected */
    public int[] bN() {
        return e;
    }

    /* access modifiers changed from: protected */
    public int[] bO() {
        String[] bL = bL();
        if (bL == null) {
            com.oppo.camera.d.d("BaseMode", "getCustomBeautyValues, customBeautyKeys null");
            return null;
        }
        int[] iArr = new int[bL.length];
        if (d(CameraFunction.FACE_BEAUTY_CUSTOM)) {
            for (int i2 = 0; i2 < bL.length; i2++) {
                SharedPreferences sharedPreferences = this.O;
                if (sharedPreferences != null) {
                    iArr[i2] = sharedPreferences.getInt(bL[i2], bN()[i2]);
                } else {
                    iArr[i2] = bN()[i2];
                }
            }
        } else if (d(CameraFunction.FACE_BEAUTY_COMMON)) {
            SharedPreferences sharedPreferences2 = this.O;
            if (sharedPreferences2 != null) {
                iArr[0] = sharedPreferences2.getInt(bL[0], com.oppo.camera.e.a.c(this.j) ? bM() : 0);
            } else {
                iArr[0] = 0;
            }
            for (int i3 = 1; i3 < bL.length; i3++) {
                iArr[i3] = 0;
            }
        } else {
            for (int i4 = 0; i4 < bL.length; i4++) {
                iArr[i4] = 0;
            }
        }
        return iArr;
    }

    public int bP() {
        return 0;
    }

    public String bQ() {
        return null;
    }

    public void bR() {
    }

    public void bS() {
    }

    public void bT() {
    }

    public void bU() {
    }

    public boolean bV() {
        return false;
    }

    public boolean bW() {
        return false;
    }

    public boolean bX() {
        return false;
    }

    public boolean bY() {
        return false;
    }

    public boolean bZ() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean ba() {
        return d(CameraFunction.FACE_BEAUTY_PROCESS) && aW() != 0;
    }

    public boolean bb() {
        return false;
    }

    public int bc() {
        SharedPreferences sharedPreferences = this.O;
        if (sharedPreferences == null) {
            return 0;
        }
        return com.oppo.camera.o.d.a(sharedPreferences.getInt(be(), 0), 0, e(this.j).length - 1);
    }

    public String bd() {
        return o(bc());
    }

    /* access modifiers changed from: protected */
    public String be() {
        return "key_filter_index";
    }

    public String bf() {
        return "pref_filter_menu";
    }

    /* access modifiers changed from: protected */
    public void bg() {
    }

    public boolean bh() {
        return true;
    }

    public boolean bi() {
        return false;
    }

    public boolean bj() {
        if (!d("pref_ai_scene_key")) {
            return false;
        }
        SharedPreferences sharedPreferences = this.O;
        return "on".equals(sharedPreferences != null ? sharedPreferences.getString("pref_ai_scene_key", this.N.getString(R.string.camera_ai_scene_default_value)) : "on");
    }

    public boolean bk() {
        if (!d("pref_camera_vivid_effect_key")) {
            return false;
        }
        SharedPreferences sharedPreferences = this.O;
        return "on".equals(sharedPreferences != null ? sharedPreferences.getString("pref_camera_vivid_effect_key", this.N.getString(R.string.camera_vivid_effect_off)) : c.a_);
    }

    public void bl() {
        SharedPreferences sharedPreferences = this.O;
        if (sharedPreferences != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("pref_camera_vivid_effect_key", this.N.getString(R.string.camera_vivid_effect_off));
            edit.commit();
            this.M.d("pref_camera_vivid_effect_key");
        }
    }

    /* access modifiers changed from: protected */
    public void bm() {
        if (this.K == null) {
            com.oppo.camera.d.d("BaseMode", "updateAISceneMode failed");
        } else if (bj()) {
            this.K.e(1);
        } else {
            this.K.e(0);
        }
    }

    public boolean bn() {
        return true;
    }

    public String bo() {
        return null;
    }

    public void bp() {
    }

    public boolean bq() {
        return false;
    }

    public boolean br() {
        f fVar = this.K;
        if (fVar != null) {
            return fVar.c().I();
        }
        return false;
    }

    public boolean bs() {
        f fVar = this.K;
        if (fVar != null) {
            return fVar.c().J();
        }
        return false;
    }

    public boolean bt() {
        if ("on".equals(cE())) {
            return true;
        }
        if (by() && this.x) {
            return true;
        }
        if (!bA() || d(CameraFunction.TORCH_SOFT_LIGHT)) {
            return bz() && this.x && !d(CameraFunction.TORCH_SOFT_LIGHT);
        }
        return true;
    }

    public boolean bu() {
        if (bx()) {
            return true;
        }
        if ((!by() || !this.x) && !bA()) {
            return bz() && this.x;
        }
        return true;
    }

    public boolean bv() {
        if (!d("pref_camera_torch_mode_key")) {
            return false;
        }
        if (bA()) {
            return true;
        }
        return bz() && this.x;
    }

    public boolean bw() {
        if (cM()) {
            return true;
        }
        return cL() && this.v;
    }

    /* access modifiers changed from: protected */
    public boolean bx() {
        if (this.O != null) {
            return ("on".equals(av()) || "torch".equals(av())) && !com.oppo.camera.e.a.c(this.j);
        }
        com.oppo.camera.d.a("BaseMode", "isOpenFlash mPreferences is equal null ");
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean by() {
        if (this.O != null) {
            return MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(av()) && !com.oppo.camera.e.a.c(this.j);
        }
        com.oppo.camera.d.a("BaseMode", "isAutoFlash mPreferences is equal null ");
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean bz() {
        SharedPreferences sharedPreferences = this.O;
        return sharedPreferences != null && MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(sharedPreferences.getString("pref_camera_torch_mode_key", this.N.getResources().getString(R.string.camera_torch_mode_default_value))) && d("pref_camera_torch_mode_key");
    }

    public Size c(h hVar) {
        Size b2 = b(hVar);
        double d = 1.3333333333333333d;
        if (!"standard".equals(com.oppo.camera.o.d.a(b2)) && !"standard_high".equals(com.oppo.camera.o.d.a(b2))) {
            if ("full".equals(com.oppo.camera.o.d.a(b2))) {
                d = com.oppo.camera.o.d.P();
            } else if ("square".equals(com.oppo.camera.o.d.a(b2))) {
                d = 1.0d;
            } else if ("16_9".equals(com.oppo.camera.o.d.a(b2))) {
                d = 1.7777777777777777d;
            }
        }
        List<Size> a2 = hVar.a();
        com.oppo.camera.d.a("BaseMode", "getPreviewSize, sizeList: " + a2.toString());
        Size a3 = com.oppo.camera.o.d.a(a2, d);
        return (com.oppo.camera.o.d.w() || a3 == null) ? a3 : (!(a3.getWidth() % 16 == 0 && a3.getHeight() % 16 == 0) && "square".equals(com.oppo.camera.o.d.a(b2))) ? new Size(1088, 1088) : a3;
    }

    public void c(int i2) {
        this.g = i2;
    }

    public final void c(boolean z2) {
        com.oppo.camera.d.a("BaseMode", "resume, isShortcutType: " + z2);
        this.C = false;
        this.s = false;
        Q();
        a(z2);
        if (d("pref_camera_hdr_mode_key")) {
            n(true);
        } else {
            n(false);
        }
        o(d("pref_filter_menu"));
        p(d("pref_camera_pi_mode_key"));
    }

    public void c(boolean z2, boolean z3) {
        if (cq() != 0) {
            com.oppo.camera.d.a("BaseMode", "displayAllIcon, beauty3DMode");
        } else if (!this.M.x()) {
            if (z2) {
                if (cN()) {
                    this.M.a(-1, R.drawable.hdr_hint_icon_3hdr, false, false, false);
                } else {
                    this.M.a(-1, R.drawable.hdr_hint_icon, false, false, false);
                }
            } else if (z3) {
                if (this.p) {
                    return;
                }
                if (by() || bz()) {
                    this.M.a(-1, R.drawable.flash_hint_icon, false, false, false);
                } else if (!cM()) {
                    this.M.a(false, true, true);
                }
            } else if (!bx() && !cM() && !bA()) {
                this.M.a(false, true, true);
            }
        }
    }

    public boolean c() {
        return true;
    }

    public boolean c(MotionEvent motionEvent) {
        return false;
    }

    public boolean c(String str) {
        return "pref_zoom_key".equals(str) ? d(str) || this.p : d(str);
    }

    /* access modifiers changed from: protected */
    public void cA() {
    }

    public boolean ca() {
        return false;
    }

    public boolean cb() {
        return false;
    }

    public boolean cc() {
        return false;
    }

    public boolean cd() {
        return false;
    }

    public void ce() {
    }

    public void cf() {
    }

    public boolean cg() {
        return true;
    }

    public boolean ch() {
        return false;
    }

    public void ci() {
    }

    public CameraStatisticsUtil.MakerNote cj() {
        CameraStatisticsUtil.MakerNote makerNote = new CameraStatisticsUtil.MakerNote();
        if (this.P != null && c("pref_filter_process_key")) {
            makerNote.O = String.valueOf(bc());
        }
        return makerNote;
    }

    public long ck() {
        return 0;
    }

    public int cl() {
        return 1;
    }

    public boolean cm() {
        return false;
    }

    public void cn() {
        if (!this.L.G()) {
            return;
        }
        if (F() || aW() != 0) {
            this.M.v();
        }
    }

    /* access modifiers changed from: protected */
    public boolean co() {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean cp() {
        return false;
    }

    /* access modifiers changed from: protected */
    public int cq() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void cr() {
    }

    /* access modifiers changed from: protected */
    public void cs() {
    }

    /* access modifiers changed from: protected */
    public String ct() {
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean cu() {
        return true;
    }

    /* access modifiers changed from: protected */
    public final boolean cv() {
        f fVar = this.K;
        return (fVar == null || fVar.c() == null || !this.K.c().D()) ? false : true;
    }

    public int cw() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public int cx() {
        return -1;
    }

    public void cy() {
    }

    public void cz() {
    }

    public Range<Integer> d() {
        return null;
    }

    public Size d(h hVar) {
        return null;
    }

    public void d(boolean z2, boolean z3) {
    }

    public boolean d(MotionEvent motionEvent) {
        return false;
    }

    public boolean d(String str) {
        if ("pref_camera_tap_shutter_key".equals(str) || "pref_update_setting_background_bar_key".equals(str) || "pref_face_detection_key".equals(str) || "pref_time_lapse_key".equals(str) || "pref_continuous_focus_key".equals(str) || "pref_manual_exposure_key".equals(str) || "pref_support_switch_camera".equals(str) || "pref_support_thumbnail".equals(str) || "pref_camera_assistant_line_key".equals(str) || "pref_camera_slogan_key".equals(str) || "pref_subsetting_key".equals(str) || "key_support_zsl".equals(str) || "pref_support_rotate_hint_view".equals(str) || "pref_get_preview_on_switch_button_down".equals(str) || CameraFunction.REQUEST_FAST_LAUNCH.equals(str)) {
            return true;
        }
        if ("pref_camera_gesture_shutter_key".equals(str)) {
            return com.oppo.camera.e.a.c(this.j) && !A();
        }
        if ("pref_zoom_key".equals(str)) {
            return !com.oppo.camera.e.a.c(this.j) && !this.p && !ax();
        }
        if ("pref_filter_menu".equals(str)) {
            return d("pref_filter_process_key");
        }
        if (CameraFunction.NEED_PREVIEW_STRAM.equals(str)) {
            return this.ap == 1;
        }
        if (CameraFunction.RESET_AUTO_FOCUS.equals(str)) {
            return !aB() || !"on".equals(av());
        }
        if ("pref_mirror_key".equals(str)) {
            return com.oppo.camera.e.a.c(this.j);
        }
        return false;
    }

    public final boolean d(boolean z2) {
        if (!aq() || !z2) {
            return o();
        }
        am();
        return true;
    }

    /* access modifiers changed from: protected */
    public int[] d(int i2) {
        return com.oppo.camera.e.a.c(i2) ? com.oppo.camera.ui.preview.a.d.c : com.oppo.camera.ui.preview.a.d.d;
    }

    public Size e(h hVar) {
        return c(hVar);
    }

    public void e(boolean z2) {
    }

    public boolean e() {
        return true;
    }

    public final boolean e(String str) {
        if (this.u) {
            return f(str);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public String[] e(int i2) {
        return com.oppo.camera.e.a.c(i2) ? com.oppo.camera.ui.preview.a.d.f2892a : com.oppo.camera.ui.preview.a.d.f2893b;
    }

    public void f(int i2) {
        this.j = i2;
    }

    public void f(boolean z2) {
        if (this.x != z2) {
            this.x = z2;
            f fVar = this.K;
            if (fVar != null) {
                fVar.b(z2);
            }
        }
    }

    public boolean f() {
        return true;
    }

    public boolean f(String str) {
        return !"pref_camera_flashmode_key".equals(str) || a("pref_camera_flashmode_key", this.j) != null;
    }

    public int g(int i2) {
        com.oppo.camera.d.a("BaseMode", "getFaceBeautyItemValue, index: " + i2);
        return bL() != null ? this.O.getInt(bL()[i2], h(i2)) : h(i2);
    }

    public com.oppo.camera.ui.control.c g() {
        return new com.oppo.camera.ui.control.c(1, "button_color_inside_none");
    }

    public void g(String str) {
        com.oppo.camera.d.a("BaseMode", "onEffectMenuChange, menuName: " + str);
        this.S = str;
    }

    public void g(boolean z2) {
    }

    /* access modifiers changed from: protected */
    public int h(int i2) {
        if (d(CameraFunction.FACE_BEAUTY_COMMON)) {
            if (i2 != 0 || !com.oppo.camera.e.a.c(this.j)) {
                return 0;
            }
            return bM();
        } else if (d(CameraFunction.FACE_BEAUTY_CUSTOM)) {
            return bN()[i2];
        } else {
            return -100000;
        }
    }

    /* access modifiers changed from: protected */
    public abstract void h();

    public void h(String str) {
        if (this.L.e() != 0) {
            b(str, true);
            l(str);
        }
    }

    public void h(boolean z2) {
        this.F = z2;
    }

    /* access modifiers changed from: protected */
    public abstract void i();

    public void i(int i2) {
        com.oppo.camera.d.a("BaseMode", "onFaceBeautyItemChange, index: " + i2);
        if (this.O == null || aX() == null) {
            com.oppo.camera.d.d("BaseMode", "onFaceBeautyItemChange, mPreferences: " + this.O + ", key: " + aX());
            return;
        }
        SharedPreferences.Editor edit = this.O.edit();
        edit.putInt(aX(), i2);
        edit.commit();
        j(i2);
        i iVar = this.P;
        if (iVar != null) {
            iVar.g(i2);
        }
    }

    public void i(boolean z2) {
    }

    public boolean i(String str) {
        if (this.O != null) {
            return "key_bubble_short_video".equals(str) ? this.O.getBoolean(str, false) : this.O.getBoolean(str, true);
        }
        com.oppo.camera.d.e("BaseMode", "isBubbleOpen, mPreference null");
        return false;
    }

    /* access modifiers changed from: protected */
    public abstract void j();

    /* access modifiers changed from: protected */
    public void j(int i2) {
        if (this.K != null) {
            if (d(CameraFunction.FACE_BEAUTY_PROCESS)) {
                this.K.g(i2);
            } else {
                this.K.g(0);
            }
            this.K.a((f.c) null);
        }
    }

    public void j(boolean z2) {
    }

    public boolean j(String str) {
        SharedPreferences sharedPreferences = this.O;
        if (sharedPreferences != null) {
            return sharedPreferences.contains(str);
        }
        com.oppo.camera.d.e("BaseMode", "containsBubbleKey, mPreference null");
        return true;
    }

    /* access modifiers changed from: protected */
    public abstract void k();

    public void k(int i2) {
        String aO = aO();
        com.oppo.camera.d.a("BaseMode", "onEffectItemChange, currMenuName: " + aO + ", effectIndex: " + i2);
        if ("beauty".equals(aO)) {
            i(i2);
        } else if ("filter".equals(aO)) {
            l(i2);
        }
    }

    public void k(boolean z2) {
    }

    public boolean k(String str) {
        if ("type_still_capture".equals(str)) {
            return true;
        }
        return "type_still_capture_raw".equals(str) && d("pref_support_raw_post_process");
    }

    /* access modifiers changed from: protected */
    public abstract void l();

    /* access modifiers changed from: protected */
    public void l(int i2) {
        if (bk() && i2 != 0) {
            bl();
        }
        n(i2);
        SharedPreferences.Editor edit = this.L.j().edit();
        edit.putInt(be(), i2);
        edit.apply();
        this.M.a(bf(), i2 != 0);
    }

    public void l(boolean z2) {
        bU();
    }

    /* access modifiers changed from: protected */
    public abstract void m();

    public void m(int i2) {
    }

    public void m(boolean z2) {
    }

    /* access modifiers changed from: protected */
    public void n(int i2) {
        if (this.P != null) {
            if (bk() && i2 != 0) {
                bl();
            }
            this.P.a(o(i2));
            return;
        }
        com.oppo.camera.d.e("BaseMode", "updateFilterParam, mPreviewEffectProcess: " + this.P + ", mPreferences: " + this.O);
    }

    /* access modifiers changed from: protected */
    public abstract boolean n();

    /* access modifiers changed from: protected */
    public String o(int i2) {
        return e(this.j)[i2];
    }

    /* access modifiers changed from: protected */
    public abstract boolean o();

    public int p() {
        int i2;
        if (this.ae || this.ay) {
            com.oppo.camera.d.b("BaseMode", "getDefaultCaptureNumber, mbShouldDisableAps: " + this.ay);
            return 1;
        }
        synchronized (this.X) {
            com.oppo.camera.d.a("BaseMode", "mDefaultCaptureNumber: " + this.ak);
            i2 = this.ak;
        }
        return i2;
    }

    public int p(int i2) {
        if (this.p && !bB()) {
            return 16;
        }
        if (bx()) {
            return 9;
        }
        if (by()) {
            return i2 == 3 ? 25 : 24;
        }
        if (bA()) {
            return 9;
        }
        if (bz()) {
            return this.x ? 25 : 24;
        }
        return 16;
    }

    public int q(int i2) {
        return 0;
    }

    public boolean q() {
        boolean z2 = false;
        if (this.ae || this.ay) {
            com.oppo.camera.d.b("BaseMode", "isNeedAPSProcess, mbShouldDisableAps: " + this.ay);
            return false;
        }
        synchronized (this.Y) {
            if (this.am != null) {
                if (this.am[0] != 0) {
                    z2 = true;
                }
            }
            com.oppo.camera.d.b("BaseMode", "isNeedAPSProcess, value: " + z2 + ", mApsAlgoFlags: " + Arrays.toString(this.am));
        }
        return z2;
    }

    public int r() {
        int i2;
        synchronized (this.Z) {
            i2 = this.al;
        }
        return i2;
    }

    public boolean r(int i2) {
        return false;
    }

    public int s() {
        return p();
    }

    public void s(int i2) {
    }

    public Bitmap t(int i2) {
        return null;
    }

    public com.oppo.camera.e.d t() {
        com.oppo.camera.e.d dVar = new com.oppo.camera.e.d();
        dVar.a(d.a.CAPTURE);
        dVar.f2031a = ax();
        dVar.C = this.au;
        dVar.f2032b = bd();
        dVar.c = d(CameraFunction.FILTER_VIGNETTE) && "oppo_video_filter_olympus".equals(dVar.f2032b);
        dVar.d = this.p;
        dVar.e = F();
        dVar.f = ba();
        dVar.g = u();
        dVar.h = this.p ? com.oppo.camera.o.d.s() : s();
        dVar.i = ad();
        dVar.j = !this.L.g();
        dVar.A = "on".equals(com.oppo.camera.e.a.c(this.j) ? az() : a_);
        if (dVar.j) {
            dVar.k = cG();
        }
        a(dVar);
        return dVar;
    }

    public void u(int i2) {
        this.o = i2;
    }

    public boolean u() {
        return this.L.g() && (F() || ba());
    }

    public void v() {
        y(0);
    }

    /* access modifiers changed from: protected */
    public void v(int i2) {
    }

    /* access modifiers changed from: protected */
    public int w(int i2) {
        return com.oppo.camera.e.a.c(i2) ? CameraConfig.getConfigIntValue(ConfigDataBase.KEY_DEFAULT_TO_REAL_SWITCH_ANIM_TIME) : CameraConfig.getConfigIntValue(ConfigDataBase.KEY_DEFAULT_TO_FRONT_SWITCH_ANIM_TIME);
    }

    public Object w() {
        return null;
    }

    /* access modifiers changed from: protected */
    public f.a x() {
        if (d("pref_support_fast_capture")) {
            this.K.k(true);
        } else {
            this.K.k(false);
        }
        return this;
    }

    public boolean y() {
        return false;
    }

    public boolean z() {
        return false;
    }
}
