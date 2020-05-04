package com.oppo.camera;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.app.Activity;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.hardware.cabc.CabcManager;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.Face;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.display.DisplayManager;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.foss.FossManager;
import android.location.Address;
import android.location.Location;
import android.media.ExifInterface;
import android.media.Image;
import android.media.ImageReader;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicYuvToRGB;
import android.renderscript.Type;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Range;
import android.util.Size;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.VelocityTracker;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.color.compat.hardware.display.DisplayManagerNative;
import com.color.compat.os.PowerManagerNative;
import com.color.compat.os.SystemPropertiesNative;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.lens.sdk.LensApi;
import com.oppo.camera.Ipa.ImageProcessService;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.Ipa.e;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d.a;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.a;
import com.oppo.camera.e.c;
import com.oppo.camera.e.d;
import com.oppo.camera.e.f;
import com.oppo.camera.e.g;
import com.oppo.camera.e.h;
import com.oppo.camera.gl.t;
import com.oppo.camera.i;
import com.oppo.camera.jni.FormatConverter;
import com.oppo.camera.jni.NativeBufferProducer;
import com.oppo.camera.jni.YuvProcessUtil;
import com.oppo.camera.k;
import com.oppo.camera.m;
import com.oppo.camera.n;
import com.oppo.camera.q;
import com.oppo.camera.s;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.statistics.model.FocusAimMsgData;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.statistics.model.PreviewStaticInfoMsgData;
import com.oppo.camera.statistics.model.ReminderMsgData;
import com.oppo.camera.statistics.model.SwitchCameraMsgData;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.t;
import com.oppo.camera.ui.RotateImageView;
import com.oppo.camera.ui.control.ShutterButton;
import com.oppo.camera.ui.control.e;
import com.oppo.camera.ui.control.h;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.ui.preview.d;
import com.oppo.camera.ui.preview.e;
import com.oppo.camera.v;
import com.oppo.camera.x;
import com.oppo.exif.OppoExifInterface;
import com.oppo.exif.OppoExifTag;
import com.oppo.providers.downloads.DownloadManager;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: CameraManager */
public class e implements c, q.b {
    private long A = 0;
    private long B = 0;
    /* access modifiers changed from: private */
    public long C;
    /* access modifiers changed from: private */
    public long D;
    /* access modifiers changed from: private */
    public long E;
    /* access modifiers changed from: private */
    public long F;
    /* access modifiers changed from: private */
    public long G = 0;
    private long H = 0;
    private long I = 0;
    private long J = 0;
    private float K;
    /* access modifiers changed from: private */
    public boolean L = false;
    /* access modifiers changed from: private */
    public boolean M = false;
    /* access modifiers changed from: private */
    public boolean N = false;
    /* access modifiers changed from: private */
    public boolean O = false;
    /* access modifiers changed from: private */
    public boolean P;
    /* access modifiers changed from: private */
    public boolean Q = false;
    /* access modifiers changed from: private */
    public boolean R = false;
    /* access modifiers changed from: private */
    public boolean S = false;
    /* access modifiers changed from: private */
    public boolean T = false;
    /* access modifiers changed from: private */
    public boolean U = false;
    /* access modifiers changed from: private */
    public boolean V = false;
    private boolean W = false;
    /* access modifiers changed from: private */
    public boolean X = false;
    /* access modifiers changed from: private */
    public int Y = 0;
    /* access modifiers changed from: private */
    public long Z = -1;

    /* renamed from: a  reason: collision with root package name */
    protected int f1930a = 100;
    /* access modifiers changed from: private */
    public boolean aA = false;
    private boolean aB = false;
    private boolean aC = false;
    private boolean aD = false;
    /* access modifiers changed from: private */
    public boolean aE = false;
    /* access modifiers changed from: private */
    public boolean aF = false;
    private boolean aG = false;
    private String aH = null;
    private String aI = null;
    private String aJ = c.a_;
    /* access modifiers changed from: private */
    public String aK = "on";
    private String aL = "on";
    /* access modifiers changed from: private */
    public String aM = "normal";
    private String aN = "";
    /* access modifiers changed from: private */
    public CaptureMsgData aO = null;
    private String aP = null;
    /* access modifiers changed from: private */
    public Object aQ = new Object();
    private Object aR = new Object();
    private ConditionVariable aS = new ConditionVariable();
    /* access modifiers changed from: private */
    public Activity aT;
    /* access modifiers changed from: private */
    public i aU = null;
    private SharedPreferences aV = null;
    private SharedPreferences aW = null;
    /* access modifiers changed from: private */
    public f aX = null;
    /* access modifiers changed from: private */
    public h aY = null;
    private f.e aZ = null;
    /* access modifiers changed from: private */
    public String aa = "";
    private boolean ab = false;
    private volatile boolean ac = false;
    /* access modifiers changed from: private */
    public boolean ad;
    /* access modifiers changed from: private */
    public boolean ae;
    /* access modifiers changed from: private */
    public boolean af;
    private boolean ag = false;
    private boolean ah = false;
    private boolean ai = false;
    private boolean aj = false;
    private boolean ak = true;
    /* access modifiers changed from: private */
    public boolean al = false;
    /* access modifiers changed from: private */
    public boolean am = false;
    /* access modifiers changed from: private */
    public boolean an = false;
    /* access modifiers changed from: private */
    public boolean ao = false;
    /* access modifiers changed from: private */
    public boolean ap = false;
    private boolean aq = false;
    /* access modifiers changed from: private */
    public boolean ar = false;
    /* access modifiers changed from: private */
    public boolean as = false;
    private boolean at = false;
    /* access modifiers changed from: private */
    public boolean au;
    /* access modifiers changed from: private */
    public boolean av;
    private boolean aw = false;
    private boolean ax = false;
    /* access modifiers changed from: private */
    public boolean ay = false;
    /* access modifiers changed from: private */
    public boolean az = false;

    /* renamed from: b  reason: collision with root package name */
    protected int f1931b = 0;
    /* access modifiers changed from: private */
    public com.oppo.camera.Ipa.e bA = null;
    /* access modifiers changed from: private */
    public VelocityTracker bB;
    private GestureDetector bC = null;
    /* access modifiers changed from: private */
    public u bD = null;
    /* access modifiers changed from: private */
    public m bE;
    private FingerprintManager bF = null;
    private Thread bG = null;
    /* access modifiers changed from: private */
    public c bH = null;
    /* access modifiers changed from: private */
    public CabcManager bI;
    private w bJ = null;
    /* access modifiers changed from: private */
    public Handler bK = null;
    private HandlerThread bL = null;
    private Uri bM = null;
    private float bN = 0.0f;
    private StickerItem bO = null;
    private ShortcutManager bP = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.entry.b bQ = null;
    /* access modifiers changed from: private */
    public byte[] bR = null;
    private p bS;
    /* access modifiers changed from: private */
    public k bT = null;
    private n bU = null;
    private s bV = null;
    /* access modifiers changed from: private */
    public Size bW = null;
    /* access modifiers changed from: private */
    public f.b bX = null;
    /* access modifiers changed from: private */
    public int bY = 0;
    /* access modifiers changed from: private */
    public LensApi bZ = null;
    private f.C0058f ba = null;
    /* access modifiers changed from: private */
    public ImageReader bb = null;
    /* access modifiers changed from: private */
    public ImageReader bc = null;
    /* access modifiers changed from: private */
    public ImageReader bd = null;
    private ImageReader be = null;
    /* access modifiers changed from: private */
    public ImageReader bf = null;
    /* access modifiers changed from: private */
    public ImageReader bg = null;
    /* access modifiers changed from: private */
    public ImageReader bh = null;
    /* access modifiers changed from: private */
    public ImageReader bi = null;
    /* access modifiers changed from: private */
    public ImageReader bj = null;
    /* access modifiers changed from: private */
    public f bk;
    /* access modifiers changed from: private */
    public Face[] bl = null;
    private int bm = 0;
    /* access modifiers changed from: private */
    public Rect bn = null;
    private Rect bo = null;
    /* access modifiers changed from: private */
    public o bp = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.e bq = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.preview.a.i br = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.preview.h bs = null;
    /* access modifiers changed from: private */
    public x bt = null;
    /* access modifiers changed from: private */
    public y bu = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.d.i bv;
    private AsyncTask bw = null;
    private t bx = null;
    private FossManager by;
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.control.h bz = null;
    /* access modifiers changed from: private */
    public final ImageReader.OnImageAvailableListener cA = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            d.b("CameraManager", "mMainYuvCaptureImageMfnrListener, onImageAvailable, isNeedAPSProcess: " + e.this.bv.aj());
            boolean aj = e.this.bv.aj();
            if (!aj) {
                e.this.a(imageReader);
            }
            if (e.this.bv != null) {
                e.this.bv.a(imageReader, 0, aj);
            }
        }
    };
    /* access modifiers changed from: private */
    public final ImageReader.OnImageAvailableListener cB = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            d.b("CameraManager", "mSubYuvCaptureImageListener, onImageAvailable, isNeedAPSProcess: " + e.this.bv.aj());
            boolean aj = e.this.bv.aj();
            if (!aj) {
                e.this.a(imageReader);
            }
            if (e.this.bv != null) {
                e.this.bv.a(imageReader, 2, aj);
            }
        }
    };
    /* access modifiers changed from: private */
    public final ImageReader.OnImageAvailableListener cC = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            d.b("CameraManager", "mThirdYuvCaptureImageListener, onImageAvailable, isNeedAPSProcess: " + e.this.bv.aj());
            boolean aj = e.this.bv.aj();
            if (!aj) {
                e.this.a(imageReader);
            }
            if (e.this.bv != null) {
                e.this.bv.a(imageReader, 3, aj);
            }
        }
    };
    /* access modifiers changed from: private */
    public final ImageReader.OnImageAvailableListener cD = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            d.a("captureX mRawCaptureImageListener onImageAvailable");
            if (e.this.bv != null) {
                e.this.bv.a(imageReader, e.this.bv.aj());
            }
            d.b("captureX mRawCaptureImageListener onImageAvailable");
        }
    };
    /* access modifiers changed from: private */
    public final ImageReader.OnImageAvailableListener cE = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            boolean z;
            NativeBufferProducer.NativeBufferInfo nativeBufferInfo;
            d.a("CameraManager", "onImageAvailable, mBurstCaptureImageListener, mReceiveBurstPictureCount: " + e.this.Y + ", mbBurstShot: " + e.this.X);
            d.a("captureX mBurstCaptureImageListener onImageAvailable");
            int unused = e.this.Y = e.this.Y + 1;
            long currentTimeMillis = System.currentTimeMillis();
            Image acquireNextImage = imageReader.acquireNextImage();
            int width = acquireNextImage.getWidth();
            int height = acquireNextImage.getHeight();
            int format = acquireNextImage.getFormat();
            if (e.this.X) {
                Image.Plane[] planes = acquireNextImage.getPlanes();
                ByteBuffer buffer = planes[0].getBuffer();
                ByteBuffer buffer2 = planes[2].getBuffer();
                nativeBufferInfo = e.this.ck.getNativeBuffer(new ByteBuffer[]{buffer, buffer2}, new int[]{buffer.limit(), buffer2.limit()}, new int[]{width, height}, new int[]{planes[0].getRowStride(), planes[2].getRowStride()}, false, false);
                if (nativeBufferInfo != null) {
                    d.b("CameraManager", "onImageAvailable, mBurstCaptureImageListener, getNativeBuffer: " + nativeBufferInfo.toString());
                }
                if (e.this.bv != null) {
                    z = false;
                    e.this.bv.a((byte[]) null, width, height, format, true);
                } else {
                    z = false;
                }
            } else {
                z = false;
                nativeBufferInfo = null;
            }
            b.a aVar = new b.a();
            aVar.f1799a = null;
            aVar.e = width;
            aVar.f = height;
            aVar.i = 17;
            aVar.g = width;
            aVar.h = height;
            aVar.k = acquireNextImage.getTimestamp();
            aVar.j = e.this.m;
            aVar.d = nativeBufferInfo;
            aVar.l = true;
            aVar.o = e.this.Y;
            aVar.m = e.this.Z;
            aVar.n = e.this.aa;
            aVar.p = currentTimeMillis;
            if (e.this.cj != null) {
                e.this.cj.a(aVar);
            }
            if (e.this.Y > 1) {
                e.this.a(acquireNextImage.getTimestamp(), com.oppo.camera.o.d.a(currentTimeMillis), false, false);
            }
            if (e.this.Y >= com.oppo.camera.o.d.s()) {
                int unused2 = e.this.Y = z ? 1 : 0;
                String unused3 = e.this.aa = "";
                long unused4 = e.this.Z = -1;
                if (e.this.aX != null) {
                    e.this.aX.g(z);
                    e.this.aX.a((f.c) null);
                }
            }
            acquireNextImage.close();
            d.a("captureX mBurstCaptureImageListener onImageAvailable");
        }
    };
    private k.c cF = new k.c() {
        public void a(Rect rect) {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("onOpenHand, ");
            if (rect != null) {
                str = "hand rect: " + rect.toString();
            } else {
                str = "";
            }
            sb.append(str);
            d.b("CameraManager", sb.toString());
            e.this.cM.a(new Runnable() {
                public void run() {
                    if (!e.this.P && e.this.B(false) && !e.this.ak() && !e.this.aq() && e.this.bq.V() && !"gesture".equals(e.this.cq) && !e.this.bq.aO() && !e.this.Q()) {
                        String unused = e.this.cq = "gesture";
                        e.this.bT.a(true);
                        String x = e.this.bn();
                        if (!c.a_.equals(x)) {
                            e.this.f(x);
                        }
                        e.this.bT.a(false);
                        e.this.bk.d();
                    }
                }
            });
            d.b("CameraManager", "onOpenHand X");
        }
    };
    /* access modifiers changed from: private */
    public f cG = null;
    private int cH = 0;
    /* access modifiers changed from: private */
    public b cI = new b();
    private h cJ = new h();
    private t cK = new t();
    /* access modifiers changed from: private */
    public q cL = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.n.a cM = new com.oppo.camera.n.a(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            d.a("CameraManager", "handleMessage, what: " + message.what);
            int i = message.what;
            if (i != 1) {
                if (i == 2) {
                    e.this.a(96, false);
                } else if (i == 3) {
                    e.this.a(95, false);
                } else if (i == 5) {
                    d.a("CameraManager", "handleMessage, onPreviewStartedAsync OK");
                    e.this.j(1);
                    boolean unused = e.this.ad = false;
                    e.this.c(true);
                    boolean unused2 = e.this.ae = true;
                    if (e.this.an) {
                        e.this.bk.c();
                        e.this.cM.postDelayed(new Runnable() {
                            public void run() {
                                if (!e.this.P) {
                                    e.this.k(1);
                                }
                            }
                        }, 200);
                    }
                } else if (i != 6) {
                    switch (i) {
                        case 10:
                            e.this.l(2);
                            break;
                        case 11:
                            if (e.this.cc != null) {
                                e.this.cc.g();
                                break;
                            }
                            break;
                        case 12:
                            if (e.this.bq != null) {
                                e.this.bq.i(true);
                                break;
                            }
                            break;
                        case 13:
                            if (!((Boolean) message.obj).booleanValue()) {
                                e.this.bq.d();
                                break;
                            } else {
                                e.this.bq.a(e.this.bl);
                                break;
                            }
                        case 14:
                            Bundle data = message.getData();
                            if (data != null) {
                                boolean booleanValue = ((Boolean) data.get("view_enable")).booleanValue();
                                boolean booleanValue2 = ((Boolean) data.get("view_ashed")).booleanValue();
                                if (e.this.bq != null) {
                                    e.this.bq.d(booleanValue, booleanValue2);
                                    break;
                                }
                            }
                            break;
                        case 15:
                            if (e.this.bp != null && !e.this.P) {
                                e.this.bp.c();
                                break;
                            }
                    }
                } else {
                    e.this.cM.removeMessages(6);
                    e eVar = e.this;
                    eVar.i(eVar.M());
                }
            } else if (!e.this.P) {
                d.d("CameraManager", "handleMessage, MSG_CODE_SWITCH_CAMERA_OVER_TIME");
                e.this.g(false);
                e.this.bq.d(true, true);
                if (!e.this.bq.y() && e.this.bv.aY() && DebugUtil.isEnableHighPictureSizeSetting()) {
                    double a2 = com.oppo.camera.o.d.a((Context) e.this.aT, CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE));
                    e.this.bq.a(e.this.aT.getString(R.string.camera_picture_size_standard_high_hint, new Object[]{Double.valueOf(a2)}), 0, (int) R.color.screen_hint_text_color);
                }
                e.this.j(1);
                f unused3 = e.this.cG = null;
            }
            d.a("CameraManager", "handleMessage, what: " + message.what + " X");
        }
    };
    private ImageReader.OnImageAvailableListener cN = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            d.a("CameraManager", "mPostViewImageAvailableListener, onImageAvailable");
            Image acquireNextImage = imageReader.acquireNextImage();
            if (acquireNextImage == null) {
                d.e("CameraManager", "onPreviewFrameReceived, image is null");
                return;
            }
            e.this.bv.a(acquireNextImage);
            acquireNextImage.close();
        }
    };
    /* access modifiers changed from: private */
    public ImageReader.OnImageAvailableListener cO = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            e.this.b(imageReader);
        }
    };
    private t.c cP = new t.c() {
        public void a() {
            if (e.this.bs != null) {
                e.this.bs.A();
            }
        }

        public void b() {
            if (e.this.bs != null) {
                e.this.bs.B();
            }
        }
    };
    private i.a cQ = new i.a() {
        public boolean a(String str) {
            if (e.this.bv != null) {
                return e.this.bv.h(str);
            }
            return false;
        }

        public Rect[] a() {
            if (e.this.bq != null) {
                return e.this.bq.aL();
            }
            return null;
        }

        public void b() {
            if (e.this.aT != null) {
                e.this.aT.runOnUiThread(new Runnable() {
                    public void run() {
                        if (e.this.bq != null) {
                            e.this.bq.o();
                        }
                    }
                });
            }
        }

        public void b(final String str) {
            if (e.this.aT != null) {
                e.this.aT.runOnUiThread(new Runnable() {
                    public void run() {
                        if (e.this.bq != null) {
                            e.this.bq.i(str);
                        }
                    }
                });
            }
        }
    };
    /* access modifiers changed from: private */
    public f.c cR = new f.c() {
        /* JADX WARNING: Removed duplicated region for block: B:31:0x00ef  */
        /* JADX WARNING: Removed duplicated region for block: B:33:0x0121  */
        /* JADX WARNING: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
        public void a() {
            byte[] bArr;
            d.e("CameraManager", "onFirstCaptureResultArrived");
            e.this.cM.sendEmptyMessageDelayed(5, (long) (e.this.ae ? 100 : 0));
            if (e.this.x()) {
                e.this.bq.aM();
                if (!e.this.cc.a()) {
                    e.this.bq.N(true);
                }
            }
            if (e.this.bq.c() != null) {
                e.this.bq.c().l();
            }
            if (e.this.a("pref_camera_gradienter_key") && "on".equals(e.this.aU.getString("pref_camera_gradienter_key", c.a_))) {
                e.this.bq.a(true, e.this.o);
            }
            File file = new File(e.this.aT.getFilesDir(), "dual_cam_cal.bin");
            if (!file.exists()) {
                int[] iArr = null;
                try {
                    bArr = (byte[]) e.this.aY.E().get(c.g);
                    try {
                        iArr = (int[]) e.this.aY.E().get(c.f);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        d.a("CameraManager", "onFirstCaptureResultArrived, size:" + iArr + ", bytes:" + bArr);
                        if (iArr != null) {
                        }
                        if (bArr != null) {
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    bArr = null;
                    e.printStackTrace();
                    d.a("CameraManager", "onFirstCaptureResultArrived, size:" + iArr + ", bytes:" + bArr);
                    if (iArr != null) {
                    }
                    if (bArr != null) {
                    }
                }
                d.a("CameraManager", "onFirstCaptureResultArrived, size:" + iArr + ", bytes:" + bArr);
                if (iArr != null) {
                    d.a("CameraManager", "onFirstCaptureResultArrived, dual calibration size: " + iArr[0] + ", path: " + e.this.aT.getFilesDir() + "/" + "dual_cam_cal.bin");
                }
                if (bArr != null) {
                    com.oppo.camera.l.a.b(file.getAbsolutePath(), com.oppo.camera.l.a.f, bArr);
                }
            }
        }

        public void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        }

        public void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            if (e.this.P || e.this.U || e.this.T || e.this.aX == null) {
                d.e("CameraManager", "onPreviewCaptureResult, mOneCamera: " + e.this.aX + ", mbCaptureModeChanging: " + e.this.U + ", mbSwitchingCamera: " + e.this.T);
            } else if (e.this.cd == null || !e.this.cd.j()) {
                Face[] faceArr = (Face[]) totalCaptureResult.get(CaptureResult.STATISTICS_FACES);
                e.this.a(faceArr);
                if (e.this.ak()) {
                    com.oppo.camera.ui.control.h aN = e.this.bz;
                    e eVar = e.this;
                    aN.a(eVar.c(eVar.au()), faceArr, e.this.n);
                }
                if (e.this.bq != null) {
                    e.this.bq.y(false);
                }
                if (e.this.cd != null && e.this.cd.b("key_beauty3d_main_face_detect")) {
                    CaptureResult.Key<?> b2 = e.this.aX.n().b("com.oppo.fb.face.info");
                    if (b2 != null) {
                        int[] iArr = (int[]) totalCaptureResult.get(b2);
                        if (iArr != null && iArr.length >= 3) {
                            d.a("CameraManager", "onCaptureCompleted, mainFaceIndex: " + iArr[2]);
                            if (e.this.bq != null) {
                                e.this.bq.y(true);
                                e.this.bq.n(iArr[2]);
                            }
                        }
                    }
                }
                int[] a2 = e.this.aX.a("com.oppo.fb.face.info", totalCaptureResult);
                if (e.this.br != null) {
                    e.this.br.a(a2);
                    Long l = (Long) totalCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP);
                    e.this.br.a(l != null ? l.longValue() : 0);
                }
                e.this.b(totalCaptureResult);
            } else {
                e.this.cd.a(totalCaptureResult);
            }
        }
    };
    /* access modifiers changed from: private */
    public com.oppo.camera.d.b cS = new com.oppo.camera.d.b() {
        public void A() {
            e.this.bk.e();
            e.this.bv.v();
            if (!e.this.R && e.this.bs != null && !O() && e.this.bv.h("pref_continuous_focus_key")) {
                e.this.bs.d(true);
            }
            if (e.this.cM != null) {
                e.this.cM.removeMessages(15);
                e.this.cM.sendEmptyMessageDelayed(15, 250);
            }
            e.this.a((Face[]) null);
        }

        public void B() {
            if (e.this.bp != null) {
                e.this.bp.d();
            }
        }

        public void C() {
            e.this.bs.t();
            if (e.this.bQ.r() == 1) {
                if (!e.this.bv.a()) {
                    e.this.bq.a(0);
                } else if (!e.this.bv.aC()) {
                    e.this.bq.J(true);
                }
            }
            e.this.bq.c(!com.oppo.camera.o.d.O() || e.this.a("key_short_video"), e.this.bv.aC(), !e.this.bv.au());
            if (e.this.bv.aC()) {
                return;
            }
            if ((e.this.bq.w() || e.this.bq.m()) && e.this.bv.h("pref_zoom_key")) {
                a((Animation.AnimationListener) new Animation.AnimationListener() {
                    public void onAnimationEnd(Animation animation) {
                        if (e.this.bq.m()) {
                            e.this.bq.k(true);
                        }
                        if (e.this.bq.w()) {
                            e.this.bq.m(true);
                        }
                    }

                    public void onAnimationRepeat(Animation animation) {
                    }

                    public void onAnimationStart(Animation animation) {
                        if (e.this.bt != null) {
                            e.this.bt.a(8);
                        }
                    }
                });
                return;
            }
            if (e.this.bq != null) {
                e.this.bq.k(true);
                e.this.bq.m(true);
            }
            x();
            c(true);
            if (!e.this.bv.ba()) {
                return;
            }
            if (e.this.aQ()) {
                e.this.bt.a(0);
            } else {
                e.this.bt.a(e.this.ax(), e.this.bv.aY(), false, e.this.bz(), e.this.bt.a(), e.this.aw(), e.this.aY.d());
            }
        }

        public boolean D() {
            return com.oppo.camera.j.b.a().a(true, e.this.aT);
        }

        public void E() {
            e.this.bk.a();
        }

        public boolean F() {
            return e.this.d();
        }

        public boolean G() {
            return e.this.S;
        }

        public void H() {
            e.this.z();
        }

        public int I() {
            return e.this.k;
        }

        public void J() {
            e.this.l(2);
        }

        public void K() {
            e.this.aP();
        }

        public void L() {
            int unused = e.this.Y = e.this.Y + 1;
            if (e.this.Y >= com.oppo.camera.o.d.s()) {
                int unused2 = e.this.Y = 0;
            }
        }

        public void M() {
            if (e.this.bs != null) {
                e.this.bs.t();
            }
        }

        public int N() {
            if (e.this.cj != null) {
                return e.this.cj.c();
            }
            return 0;
        }

        public boolean O() {
            return e.this.s();
        }

        public String P() {
            return e.this.aJ();
        }

        public String Q() {
            return e.this.aM;
        }

        public int R() {
            return e.this.u;
        }

        public String S() {
            return e.this.cq;
        }

        public String T() {
            return e.this.W();
        }

        public int U() {
            return e.this.v;
        }

        public boolean V() {
            return e.this.aq();
        }

        public boolean W() {
            return e.this.aQ();
        }

        public Uri a(e.a aVar) {
            if (e.this.bA == null) {
                return null;
            }
            e.this.cm.add(Long.valueOf(aVar.n));
            e.this.bA.a(aVar);
            return null;
        }

        public com.oppo.camera.entry.b a() {
            return e.this.bQ;
        }

        public void a(int i) {
            e.this.b(i);
        }

        public void a(int i, d dVar, f.a aVar) {
            if (e.this.aX != null) {
                t();
                if (e.this.X) {
                    if (e.this.bf != null) {
                        e.this.bf.setOnImageAvailableListener(e.this.cE, e.this.cn != null ? e.this.cn : e.this.aX.i());
                    }
                    if (e.this.bh != null) {
                        e.this.bh.setOnImageAvailableListener(e.this.cE, e.this.cn != null ? e.this.cn : e.this.aX.i());
                    }
                    if (e.this.bi != null) {
                        e.this.bi.setOnImageAvailableListener(e.this.cE, e.this.cn != null ? e.this.cn : e.this.aX.i());
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    String unused = e.this.aa = v.a(String.valueOf(currentTimeMillis), "");
                    long unused2 = e.this.Z = currentTimeMillis;
                } else {
                    if (e.this.bf != null) {
                        e.this.bf.setOnImageAvailableListener(e.this.cz, e.this.cn != null ? e.this.cn : e.this.aX.i());
                    }
                    if (e.this.bg != null) {
                        e.this.bg.setOnImageAvailableListener(e.this.cA, e.this.cn != null ? e.this.cn : e.this.aX.i());
                    }
                    if (e.this.bh != null) {
                        e.this.bh.setOnImageAvailableListener(e.this.cB, e.this.cn != null ? e.this.cn : e.this.aX.i());
                    }
                    if (e.this.bi != null) {
                        e.this.bi.setOnImageAvailableListener(e.this.cC, e.this.cn != null ? e.this.cn : e.this.aX.i());
                    }
                    if (e.this.bq != null && e.this.bv.h("pref_sticker_process_key")) {
                        e.this.br.a(e.this.bv.c(e.this.aY), e.this.bq.aj() != 0);
                    }
                    if (e.this.bb != null) {
                        e.this.bb.setOnImageAvailableListener(e.this.cy, e.this.aX.i());
                    }
                }
                if (e.this.X && e.this.aX.c().C()) {
                    e.this.aX.a(true, dVar, aVar);
                } else if (e.this.bv.ar()) {
                    e.this.aX.a(aVar, dVar);
                } else {
                    if (e.this.cn != null) {
                        e.this.aX.a(i, dVar, aVar, e.this.cn);
                    } else {
                        e.this.aX.a(i, dVar, aVar);
                    }
                    e.this.cx.b();
                    if ((c.a_.equals(e.this.bv.I()) || "torch".equals(e.this.bv.I())) && !g()) {
                        e.this.aX.e();
                    }
                }
            }
        }

        public void a(long j) {
            if (e.this.cj != null) {
                e.this.cj.a(2, j);
            }
        }

        public void a(Animation.AnimationListener animationListener) {
            e.this.a(animationListener);
        }

        public void a(v.a aVar) {
            e.this.a(aVar);
        }

        public void a(boolean z) {
            e.this.p(z);
        }

        public void a(boolean z, List<String> list, String str, int i) {
            d.a("CameraManager", "updateEffectMenuData, currMenuName: " + str + ", currItemIndex: " + i);
            e.this.bq.a(list, str, i);
            if (z && e.this.bv.h("pref_filter_process_key")) {
                e.this.bv.a(e.this.bq.r());
                if (e.this.bv.B() == null || !e.this.bq.m()) {
                    e.this.bq.i(true);
                } else {
                    e.this.bq.e(e.this.bv.B());
                }
            }
        }

        public void a(boolean z, boolean z2) {
            e.this.b(z, z2);
        }

        public void a(byte[] bArr) {
            d.a("CameraManager", "beforePictureTaken");
            if (!e.this.P) {
                if (!e.this.R() && g() && 5 != e()) {
                    e.this.j(1);
                }
                if (e.this.bQ.r() == 2 && e.this.bq != null && e.this.bv != null && e.this.bv.W()) {
                    e.this.bq.a(e.this.bv.d(), e.this.bx());
                }
            }
        }

        public boolean a(ImageProcessService.a aVar) {
            if (e.this.cj != null) {
                return e.this.cj.a(aVar);
            }
            return false;
        }

        public void b(boolean z) {
            e.this.j(z);
        }

        public void b(byte[] bArr) {
            d.a("CameraManager", "afterPictureTaken");
            if (!e.this.P) {
                if (e.this.al) {
                    if (e.this.cY != null) {
                        e.this.cY.h();
                    }
                    e.this.h(false);
                }
                if (e.this.aA) {
                    try {
                        if (!(e.this.bq == null || e.this.P || e.this.aX == null || e.this.bk == null)) {
                            boolean unused = e.this.aA = false;
                            e.this.aX.a(c.a_);
                            e.this.aX.a((f.c) null);
                            e.this.aH();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (e.this.bd != null) {
                    e.this.bd.discardFreeBuffers();
                }
                if (e.this.bb != null) {
                    e.this.bb.discardFreeBuffers();
                }
                if (v.s == 0) {
                    e.this.aL();
                }
            }
        }

        public boolean b() {
            d.a("CameraManager", "beforeCaptureProcess, mCameraState: " + e.this.l + ", mbCaptureModeChanging: " + e.this.U + ", mbPaused: " + e.this.P);
            if ((e.this.bv.Y() && e.this.P()) || ((!e.this.bv.Y() && !e.this.O()) || e.this.U)) {
                return false;
            }
            if (e.this.aT != null) {
                e.this.aT.runOnUiThread(new Runnable() {
                    public void run() {
                        if (e.this.bq != null && !e.this.P) {
                            e.this.bq.C(e.this.bv.Y());
                        }
                    }
                });
            }
            e.this.j(2);
            int unused = e.this.m = a.b(e.this.q, e.this.n);
            e eVar = e.this;
            int unused2 = eVar.p = eVar.n;
            boolean unused3 = e.this.aF = false;
            if (e.this.bv == null || e.this.bs == null || !e.this.bv.h("pref_time_lapse_key") || c.a_.equals(e.this.bv.U())) {
                return true;
            }
            e.this.bs.n();
            return true;
        }

        public void c() {
            if (e.this.bQ.r() == 2 && e.this.bv.W()) {
                e.this.bq.a(new com.oppo.camera.ui.control.c(4, "button_color_inside_grey"));
            }
        }

        public void c(boolean z) {
            e.this.x(z);
        }

        public void d() {
            d.a("CameraManager", "resetVideoTakePicture, mbPaused: " + e.this.P);
            if (!e.this.P) {
                e.this.r(false);
                e.this.bq.e(true, true);
                e.this.bq.c(!e.this.bv.ar(), false);
                e.this.j(1);
            }
        }

        public void d(boolean z) {
            d.a("CameraManager", "stopVideoRecordingProcess, failed: " + z);
            if (e.this.P) {
                e.this.bv.w();
                if (e.this.bQ.r() == 3 && !z) {
                    a((Animation.AnimationListener) null);
                    e.this.bq.b(e.this.bv.i(com.oppo.camera.o.d.N()));
                    return;
                }
                return;
            }
            a(false, false);
            if (e.this.bQ.r() == 3) {
                if (!z) {
                    a((Animation.AnimationListener) null);
                    e.this.bq.b(e.this.bv.i(com.oppo.camera.o.d.N()));
                } else {
                    w();
                    e.this.bq.c(e.this.bv.d(), e.this.bx());
                }
                e.this.aL();
            } else {
                e.this.aB();
                if (!z && !e.this.bv.au()) {
                    e.this.bq.d(true, true);
                    com.oppo.camera.ui.control.g.a();
                    e.this.bq.c(true);
                    d.e("CameraManager", "CameraTest Video Thumbnail Saved");
                }
                e.this.r(false);
                e eVar = e.this;
                eVar.a(eVar.bv.H(), a.a(), a.a());
                if (e.this.v() && !e.this.bs.D()) {
                    e.this.bq.A(a.c(e.this.q));
                }
                e.this.aL();
            }
            e.this.bv.w();
            e.this.bk.d();
        }

        public int e() {
            return e.this.l;
        }

        public void e(boolean z) {
            if (G()) {
                d.a("CameraManager", "onBeauty3DChange, BlurAnimRunning, return");
                return;
            }
            boolean unused = e.this.cb = z;
            Size Q = e.this.bq.Q();
            Size size = null;
            if (e.this.bv != null) {
                size = e.this.bv.a(e.this.aY);
            }
            Size size2 = size;
            if (size2 != null && Q != null) {
                e eVar = e.this;
                if (eVar.a(Q, size2, false, 0, (d.a) eVar.cI)) {
                    e.this.i(true);
                }
            }
        }

        public void f() {
            if (!e.this.bq.az()) {
                e.this.bq.ad();
            }
        }

        public boolean g() {
            return e.this.bQ.r() == 1;
        }

        public boolean h() {
            return e.this.bQ.r() == 3;
        }

        public void i() {
            if (e.this.bq != null) {
                e.this.bq.A(a.c(e.this.q));
            }
        }

        public SharedPreferences j() {
            return e.this.aU;
        }

        public int k() {
            return e.this.n;
        }

        public int l() {
            return e.this.p;
        }

        public String m() {
            return e.this.aa;
        }

        public long n() {
            return e.this.Z;
        }

        public Location o() {
            if (e.this.bE != null) {
                return e.this.bE.c();
            }
            return null;
        }

        public boolean p() {
            return O();
        }

        public boolean q() {
            return e.this.ak();
        }

        public void r() {
        }

        public boolean s() {
            return e.this.am;
        }

        public void t() {
            e.this.q();
        }

        public boolean u() {
            return e.this.T;
        }

        public boolean v() {
            return e.this.U;
        }

        public void w() {
            e.this.al();
        }

        public void x() {
            e.this.am();
        }

        public boolean y() {
            e.this.bq.d(false, false);
            e.this.bq.aa();
            e.this.bv.u();
            if (e.this.bq.R()) {
                e.this.bq.al();
            }
            if (e.this.bQ.r() == 3) {
                return true;
            }
            e.this.aC();
            return true;
        }

        public void z() {
            e.this.bq.i(a.c(e.this.q), !e.this.a("key_short_video"));
            if (e.this.bQ.r() == 1) {
                if (e.this.bv.a()) {
                    e.this.bq.K(true);
                } else {
                    e.this.bq.a(4);
                }
            }
            if (e.this.bq.m()) {
                e.this.bq.l(false, true);
                e.this.bq.b(false);
            } else {
                e.this.bq.j(false);
            }
            if (e.this.bq.w()) {
                e.this.bq.o(false);
            }
            e.this.bq.a(false, true, false, true);
            if (!e.this.bv.ba()) {
                return;
            }
            if (e.this.aQ()) {
                e.this.bt.a(8);
            } else {
                e.this.bt.a(e.this.ax(), e.this.bv.aY(), false, false, e.this.bt.a(), e.this.aw(), e.this.aY.d());
            }
        }
    };
    private com.oppo.camera.ui.preview.c cT = new com.oppo.camera.ui.preview.c() {
        public void a() {
            if (e.this.bq != null) {
                e.this.bq.A(a.c(e.this.q));
            }
        }

        public void a(int i) {
            if (e.this.aX != null) {
                int unused = e.this.u = i;
                e.this.aX.c(e.this.u);
            }
        }

        public void a(int i, int i2) {
            e.this.a(i, i2);
        }

        public void a(int i, MeteringRectangle[] meteringRectangleArr, MeteringRectangle[] meteringRectangleArr2) {
            e.this.a(i, meteringRectangleArr, meteringRectangleArr2);
        }

        public void a(boolean z) {
            e.this.z(z);
        }

        public void a(boolean z, boolean z2) {
            if (e.this.bq != null) {
                e.this.bq.d(z, z2);
            }
        }

        public void a(MeteringRectangle[] meteringRectangleArr, MeteringRectangle[] meteringRectangleArr2) {
            e.this.aX.a(meteringRectangleArr);
            e.this.aX.b(meteringRectangleArr2);
            e.this.aX.a((f.c) null);
        }

        public boolean a(String str) {
            if (e.this.bv != null) {
                return e.this.bv.h(str);
            }
            return false;
        }

        public void b() {
            e.this.bq.aa();
        }

        public void b(boolean z, boolean z2) {
            e.this.b(z, z2);
        }

        public boolean c() {
            return e.this.bv.e();
        }

        public int d() {
            return e.this.q;
        }

        public void e() {
            if (e.this.bs != null && e.this.bs.i()) {
                String unused = e.this.cq = "tap";
            }
            e.this.bu();
        }

        public boolean f() {
            if (e.this.bq != null) {
                return e.this.bq.V();
            }
            return false;
        }

        public boolean g() {
            return e.this.bv.ar();
        }

        public boolean h() {
            return e.this.bv.L();
        }

        public boolean i() {
            if (e.this.bv != null) {
                return e.this.bv.h("pref_manual_exposure_key");
            }
            return false;
        }

        public boolean j() {
            if (e.this.aX == null || e.this.aX.c() == null) {
                return false;
            }
            return e.this.aX.c().q();
        }

        public boolean k() {
            if (e.this.aX == null || e.this.aX.c() == null) {
                return false;
            }
            return e.this.aX.c().p();
        }

        public void l() {
            e.this.e();
        }

        public void m() {
            if (e.this.aX != null) {
                e.this.aX.k();
            }
        }

        public boolean n() {
            return e.this.c();
        }

        public boolean o() {
            return e.this.ak();
        }

        public int p() {
            return e.this.f();
        }

        public int q() {
            return e.this.aY != null ? e.this.aY.n() : a.b();
        }

        public int r() {
            return e.this.aY != null ? e.this.aY.m() : a.b();
        }

        public Rect s() {
            e eVar = e.this;
            return eVar.c(eVar.au());
        }
    };
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.d cU = new com.oppo.camera.ui.d() {
        public boolean A() {
            if (e.this.bt != null) {
                return e.this.bt.d();
            }
            return false;
        }

        public int[] B() {
            return e.this.bv != null ? e.this.bv.aW() : c.e;
        }

        public String C() {
            return e.this.bv != null ? e.this.bv.h() : "";
        }

        public boolean D() {
            if (e.this.bv != null) {
                return e.this.bv.aX();
            }
            return true;
        }

        public void E() {
            if (e.this.bv != null) {
                e.this.bv.E();
            }
        }

        public boolean F() {
            return e.this.U;
        }

        public int G() {
            return e.this.v;
        }

        public void H() {
            if (e.this.bt != null) {
                e.this.bh();
            }
        }

        public boolean I() {
            return e.this.bx();
        }

        public String a(String str, int i, int i2) {
            if (!e.this.bq.m() || !e.this.g(str) || i == i2) {
                return null;
            }
            e.this.bq.l(true, true);
            e.this.bq.i(true);
            return null;
        }

        public void a(int i) {
            e.this.u(i);
        }

        public void a(int i, int i2) {
            if (e.this.bs != null) {
                e.this.bs.a(i, i2);
            }
        }

        public void a(int i, int i2, boolean z) {
            if (e.this.bv != null) {
                e.this.bv.a(i, i2, z);
            }
        }

        public void a(RotateImageView rotateImageView) {
            if (e.this.bs != null) {
                e.this.bs.a(rotateImageView);
            }
        }

        public boolean a() {
            return e.this.bv.ar();
        }

        public boolean a(String str) {
            return (!"pref_camera_flashmode_key".equals(str) && !"pref_camera_videoflashmode_key".equals(str)) || !a.c(e.this.q);
        }

        public boolean a(String str, boolean z) {
            boolean g = e.this.g(str);
            if ("pref_camera_torch_mode_key".equals(str) && e.this.bp()) {
                i.a a2 = e.this.aU.edit();
                a2.putString("pref_camera_hdr_mode_key", c.a_);
                a2.apply();
                e.this.bq.d("pref_camera_hdr_mode_key");
            }
            return g;
        }

        public boolean a(String str, boolean z, boolean z2) {
            if (e.this.P || e.this.am || !e.this.au || !e.this.ap || !e.this.O() || e.this.V || e.this.U || e.this.d() || e.this.T || e.this.bq.aB() || !e.this.bv.G() || ((e.this.bv.h("pref_burst_shot_key") && e.this.X) || r() || e.this.bv.aq() || e.this.bv.at())) {
                d.e("CameraManager", "onMenuButtonClick, key: " + str + ", mbPaused: " + e.this.P + ", !mbDoubleFinger: " + (!e.this.am) + ", !mbInitialized: " + (!e.this.au) + ", !mbFrameAvailable: " + (!e.this.ap) + ", !isPreviewStarted: " + (!e.this.O()) + ", mbSizeChanging: " + e.this.V + ", CaptureModeChangeState: " + e.this.U + ", isAnimationRunning: " + e.this.d() + ", mbSwitchingCamera: " + e.this.T + ", isEffectMenuScrolling: " + e.this.bq.aB() + ", !mModeManager.isAllowSwitch: " + (!e.this.bv.G()) + ", mbBurstShot: " + e.this.X + ", isTimerSnapShotRunning: " + r() + ", mModeManager.isVideoRecordStarting: " + e.this.bv.aq() + ", mModeManager.isVideoRecordStopping: " + e.this.bv.at());
                return false;
            }
            e.this.a(str, z, com.oppo.camera.ui.menu.f.a(), e.this.bq.m());
            if (e.this.j(str)) {
                e.this.h(str);
            }
            if (!z2 && e.this.bq.y() && !"pref_subsetting_key".equals(str)) {
                e.this.bq.z();
            }
            if (z && e.this.bq.m() && e.this.g(str)) {
                e.this.bq.l(true, true);
                e.this.bq.i(true);
            }
            e.this.bq.k(str);
            return true;
        }

        public void b() {
            e.this.bk.a();
        }

        public boolean b(int i) {
            if (e.this.bv != null) {
                return e.this.bv.e(i);
            }
            return false;
        }

        public boolean b(String str) {
            return e.this.bv.f(str);
        }

        public void c() {
            e.this.bv.C();
        }

        public void c(int i) {
            if (e.this.bv != null) {
                e.this.bv.f(i);
            }
        }

        public void c(String str) {
            if (e.this.bq != null) {
                if (e.this.bv.B() != null) {
                    e.this.bq.e(e.this.bv.B());
                }
                e.this.bv.a(e.this.bq.r());
            }
        }

        public void d(final int i) {
            d.a("CameraManager", "onModeItemClick, itemId: " + i);
            if (5 == i) {
                if (e.this.bZ != null) {
                    e.this.bZ.launchLensActivity(e.this.aT);
                }
                e.this.be();
                e.this.bq.O(true);
                e.this.d(true, true);
            } else if (!t()) {
                d.a("CameraManager", "onModeItemClick, is not allowed to switch mode");
                e.this.be();
                e.this.bq.O(true);
                e.this.d(true, true);
            } else {
                e.this.bs.f(false);
                if (g("pref_zoom_key")) {
                    e.this.a((Animation.AnimationListener) null);
                    e.this.x(false);
                }
                e.this.e(true, true);
                e.this.bq.a(4, 0, 0, (TimeInterpolator) null, (Animator.AnimatorListener) new Animator.AnimatorListener() {
                    public void onAnimationCancel(Animator animator) {
                        e.this.bq.j(com.oppo.camera.ui.modepanel.a.a(e.this.aT, i));
                        e.this.bq.J(true);
                        e.this.bq.O(false);
                    }

                    public void onAnimationEnd(Animator animator) {
                        e.this.bq.j(com.oppo.camera.ui.modepanel.a.a(e.this.aT, i));
                        e.this.bq.J(true);
                        e.this.bq.O(false);
                    }

                    public void onAnimationRepeat(Animator animator) {
                    }

                    public void onAnimationStart(Animator animator) {
                    }
                });
                e.this.bq.j(true);
                e.this.d(com.oppo.camera.ui.modepanel.a.a(i));
            }
        }

        public void d(String str) {
            if (e.this.bv != null) {
                e.this.bv.e(str);
            }
        }

        public boolean d() {
            return e.this.am;
        }

        public int e(int i) {
            if (e.this.bv != null) {
                return e.this.bv.o(i);
            }
            return -100000;
        }

        public void e() {
            if (e.this.bv != null && e.this.bv.h("pref_zoom_key")) {
                e.this.a((Animation.AnimationListener) null);
                e.this.x(false);
            }
            if (e.this.bv != null) {
                e.this.bv.az();
            }
        }

        public boolean e(String str) {
            if (e.this.bv != null) {
                return e.this.bv.c(str);
            }
            return false;
        }

        public void f() {
            if (e.this.bv != null && e.this.bv.h("pref_zoom_key") && e.this.bq != null && !e.this.bq.K() && !e.this.X) {
                e.this.al();
                e.this.x(true);
            }
            if (e.this.bv != null) {
                e.this.bv.aA();
            }
        }

        public void f(int i) {
            if (e.this.bv != null) {
                e.this.bv.n(i);
            }
        }

        public boolean f(String str) {
            if (e.this.bv != null) {
                return e.this.bv.d(str);
            }
            return false;
        }

        public boolean g() {
            return e.this.E();
        }

        public boolean g(String str) {
            if (e.this.bv != null) {
                return e.this.bv.h(str);
            }
            return false;
        }

        public boolean h() {
            if (e.this.bv != null) {
                return e.this.bv.A();
            }
            return false;
        }

        public boolean h(String str) {
            if (!t()) {
                return false;
            }
            if ("more".equals(str)) {
                return true;
            }
            if (e.this.bv != null) {
                String h = e.this.bv.h();
                d.a("CameraManager", "isHeadlineCanTouch, modeName: " + str + ", currentModeName: " + h);
                if (TextUtils.equals(str, h)) {
                    return true;
                }
            }
            if (e.this.cd == null) {
                return false;
            }
            String b2 = e.this.cd.b();
            d.a("CameraManager", "isHeadlineCanTouch, modeName: " + str + ", lastModeName: " + b2);
            return TextUtils.equals(str, b2);
        }

        public int i() {
            return (e.this.bv == null || 1 != e.this.bv.l(0)) ? 0 : 1;
        }

        public boolean j() {
            if (e.this.bv != null) {
                return e.this.bv.D();
            }
            return false;
        }

        public void k() {
            if (e.this.bv != null) {
                e.this.bv.n();
            }
        }

        public boolean l() {
            return e.this.bv.e();
        }

        public void m() {
            d.a("CameraManager", "onPreviewTextureCopied");
            e.this.cM.removeMessages(6);
            e.this.cM.sendEmptyMessage(6);
        }

        public void n() {
            e.this.b(true);
        }

        public int o() {
            String string = e.this.aU != null ? e.this.aU.getString("pref_mirror_key", e.this.aT.getString(R.string.camera_mirror_default_value)) : c.a_;
            boolean z = e.this.n == 0 || e.this.n == 180;
            if (!a.c(e.this.q) || !TextUtils.equals(string, "on")) {
                return 0;
            }
            return z ? 1 : 2;
        }

        public int p() {
            return e.this.q;
        }

        public boolean q() {
            if (e.this.bs != null) {
                return e.this.bs.w();
            }
            return false;
        }

        public boolean r() {
            return e.this.ak();
        }

        public boolean s() {
            return (e.this.bv != null && (e.this.bv.L() || e.this.bv.ar())) || e.this.ci;
        }

        public boolean t() {
            return e.this.F();
        }

        public void u() {
            if (!e.this.O() || !e.this.ap) {
                d.a("CameraManager", "onModeTitleTouch, return false, state: " + e.this.l + ", mbFrameAvailable: " + e.this.ap);
            } else if (!e.this.av()) {
                if (r()) {
                    d.a("CameraManager", "onModeTitleTouch, can not touch, timesnap is running");
                } else if (a()) {
                    d.a("CameraManager", "onModeTitleTouch, can not touch, video record started");
                } else if (!e.this.bv.au() || !e.this.bv.av()) {
                    String c = e.this.bv.c();
                    if (c.equals("night") && a.c(e.this.q)) {
                        c = e.this.bv.j();
                    }
                    String a2 = e.this.bv.a(e.this.q, c);
                    e.this.bq.K(true);
                    e.this.bq.b(e.this.q, a2);
                    e.this.bq.a(0);
                    if (!e.this.d(a2)) {
                        e.this.bq.J(true);
                        e.this.bq.a(4);
                    }
                } else {
                    d.a("CameraManager", "onModeTitleTouch, can not touch, isVideoEncoding");
                }
            }
        }

        public void v() {
            if (e.this.bv != null) {
                e.this.bv.aU();
            }
        }

        public int w() {
            if (e.this.bv != null) {
                return e.this.bv.aT();
            }
            return 0;
        }

        public int x() {
            if (e.this.bv != null) {
                return e.this.bv.aR();
            }
            return 0;
        }

        public int y() {
            if (e.this.bv != null) {
                return e.this.bv.aV();
            }
            return 40;
        }

        public void z() {
            d.a("CameraManager", "onBackFromMoreMode");
            e.this.d(true, true);
        }
    };
    private com.oppo.camera.ui.menu.e cV = new com.oppo.camera.ui.menu.e() {
        public void a(String str) {
            if (e.this.bv != null) {
                e.this.bv.a(8, false);
            }
        }

        public void b(String str) {
            if (e.this.bv != null) {
                e.this.bv.a(8, true);
            }
        }

        public void c(String str) {
            if (e.this.bv != null) {
                e.this.bv.a(9, false);
            }
        }

        public void d(String str) {
            if (e.this.bv != null) {
                e.this.bv.a(9, true);
            }
        }
    };
    private e.b cW = new e.b() {
        public void a(final com.oppo.camera.ui.control.e eVar, b.c cVar, ContentResolver contentResolver) {
            if (e.this.cj != null) {
                cVar.j = e.this.cx;
                e.this.cj.a(cVar);
                if (e.this.a("pref_support_night_process")) {
                    b.c unused = e.this.cl = cVar;
                } else {
                    b.c unused2 = e.this.cl = null;
                }
            }
            if (e.this.cM != null && !e.this.P) {
                e.this.cM.post(new Runnable() {
                    public void run() {
                        if (e.this.bq != null) {
                            e.this.bq.b(eVar);
                        }
                    }
                });
            }
            if (eVar != null && e.this.ag()) {
                v.a(eVar.b(), contentResolver);
            }
            if (eVar != null) {
                com.oppo.camera.ui.control.g.a();
                com.oppo.camera.ui.control.g.a(eVar);
            }
            if (e.this.cm.contains(Long.valueOf(cVar.h))) {
                e.this.cm.remove(Long.valueOf(cVar.h));
            }
        }
    };
    private com.oppo.camera.ui.control.f cX = new com.oppo.camera.ui.control.f() {
        public void a(com.oppo.camera.ui.control.e eVar, View view) {
            if (!e.this.aZ() || eVar == null) {
                d.d("CameraManager", "onThumbNailClick, cameraState: " + e.this.l + ", thumbnail: " + eVar);
                return;
            }
            Uri b2 = eVar.b();
            boolean a2 = com.oppo.camera.o.d.a(b2, e.this.aT.getContentResolver());
            boolean bK = e.this.bo();
            if (!com.oppo.camera.j.b.a().g() || ((e.this.ag() && !bK) || !a2)) {
                d.d("CameraManager", "onThumbNailClick, imageSaveListIsEmpty: " + com.oppo.camera.j.b.a().g() + ", getDisplayOnLock: " + e.this.ag() + ", isLockAblumHasPicture: " + bK + ", isUriValid: " + a2);
                return;
            }
            d.e("CameraManager", "CameraTest Camera View Picture Start, onThumbNailClick, mCurrentUri: " + b2);
            e.this.bH();
            if (com.oppo.camera.o.d.a((Context) e.this.aT, "com.coloros.gallery3d")) {
                try {
                    boolean unused = e.this.as = true;
                    Intent intent = new Intent("com.android.camera.action.REVIEW");
                    intent.setDataAndType(b2, eVar.g());
                    intent.putExtra("media-from", "from_camera");
                    intent.setPackage("com.coloros.gallery3d");
                    e.this.aT.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    d.a("CameraManager", "onThumbNailClick, Exception: ActivityNotFoundException.", (Throwable) e);
                    boolean unused2 = e.this.as = false;
                }
            }
        }

        public void a(v.a aVar) {
            d.a("CameraManager", "notifyGalleryPreDecode");
            if (aVar != null && aVar.f2997b != null) {
                com.oppo.camera.j.a.a().a(aVar);
            }
        }

        public boolean a() {
            if (!e.this.ag() || e.this.bo()) {
                return true;
            }
            d.a("CameraManager", "needGetLastThumbNail, LockAblum list is null");
            return false;
        }
    };
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.control.a cY = new com.oppo.camera.ui.control.a() {
        public void a() {
            e.this.L();
        }

        public void a(boolean z) {
            if (e.this.P || e.this.Q() || e.this.P() || !z || !e.this.O() || v.s != 0) {
            }
        }

        public void b() {
            if (!e.this.P && e.this.bR != null) {
                e.this.bq.ab();
                e.this.bv.a(5, true);
                e.this.aj();
                e eVar = e.this;
                eVar.v(eVar.bv.aH());
            }
        }

        public void c() {
            e.this.bv.h(true);
        }

        public void d() {
            e.this.bv.ak();
            e.this.bq.ac();
            e.this.bm();
            e.this.bq.b("pref_camera_videoflashmode_key", (String) null);
            if ("torch".equals(e.this.aU.getString("pref_camera_videoflashmode_key", e.this.aT.getString(R.string.camera_flash_mode_video_default_value)))) {
                e.this.bq.a(-1, (int) R.drawable.torch_hint_icon, false, true, false);
            } else {
                e.this.bq.a(false, true, true);
            }
        }

        public void e() {
            boolean unused = e.this.as = true;
            e.this.bv.al();
        }

        public void f() {
            d.a("CameraManager", "onCameraShutterButtonClick");
            if (e.this.bq != null && e.this.bq.y()) {
                e.this.bq.z();
            }
            e.this.bt();
        }

        public void g() {
            boolean a2 = e.this.a(2);
            if (e.this.ak() || e.this.bv.ar() || !e.this.bs() || !a2 || e.this.P || e.this.Y != 0 || e.this.T || e.this.P()) {
                d.d("CameraManager", "onCameraShutterButtonLongClick, isTimerSnapShotRunning: " + e.this.ak() + ", isVideoRecording: " + e.this.bv.ar() + ", isSoundLoaded: " + a2 + ", mbPaused: " + e.this.P + ", mReceiveBurstPictureCount: " + e.this.Y + ", mbSwitchingCamera: " + e.this.T + ", isPreviewStopped: " + e.this.P());
            } else if (!v.a(e.this.cS.N())) {
                d.d("CameraManager", "onCameraShutterButtonLongClick, sStorageStatus is failed, so return");
                e.this.bq.k();
            } else {
                if (e.this.bq != null && e.this.bq.y()) {
                    e.this.bq.z();
                }
                if (e.this.bv.h("key_short_video")) {
                    e.this.cM.removeMessages(9);
                    e.this.w(true);
                    e.this.bv.r();
                    return;
                }
                boolean h = e.this.bv.h("pref_burst_shot_key");
                boolean b2 = e.this.bv.b(false);
                if (!com.oppo.camera.j.b.a().a(false, e.this.aT) || (e.this.cj != null && !e.this.cj.a(ImageProcessService.a.CHECK_QUEUE_TYPE_BURST))) {
                    d.d("CameraManager", "onCameraShutterButtonLongClick, checkReadyToCapture, memory or storage is not enough");
                    e.this.bv.F();
                } else if (com.oppo.camera.j.b.a().f() || !h || e.this.X || e.this.Q() || e.this.U || e.this.V || b2) {
                    d.d("CameraManager", "onCameraShutterButtonLongClick, checkQueueLimit: " + com.oppo.camera.j.b.a().f() + ", isBurstShotSupported: " + h + ", mbBurstShot: " + e.this.X + ", isSnapShotProgress: " + e.this.Q() + ", mbCaptureModeChanging: " + e.this.U + ", mbSizeChanging: " + e.this.V + ", stopTakePicture: " + b2);
                } else {
                    d.e("CameraManager", "onCameraShutterButtonLongClick");
                    e.this.w(true);
                    e.this.h(false);
                    e.this.q(true);
                    if (e.this.bv.h("pref_filter_process_key")) {
                        e.this.bq.l(true);
                        e.this.bq.b(false);
                    }
                    if (e.this.bq.w()) {
                        e.this.bq.o(false);
                        e.this.bq.b(false, true, false);
                    }
                    e.this.aU();
                    if (!e.this.bv.o()) {
                        d.b("CameraManager", "onCameraShutterButtonLongClick, burstShotCapture return false!");
                        if (e.this.aT != null) {
                            e.this.aT.runOnUiThread(new Runnable() {
                                public void run() {
                                    e.this.al();
                                    e.this.x(true);
                                    if (e.this.bq != null) {
                                        e.this.bq.d(true, true);
                                    }
                                }
                            });
                        }
                        e.this.j(1);
                        return;
                    }
                    e.this.a((Animation.AnimationListener) null);
                }
            }
        }

        public void h() {
            if (e.this.bv.h("key_short_video")) {
                e.this.bv.s();
                return;
            }
            boolean h = e.this.bv.h("pref_burst_shot_key");
            if (e.this.ak() || e.this.bv.ar() || !e.this.X || e.this.P || !h) {
                d.d("CameraManager", "onCameraShutterButtonLongClickReleased, isTimerSnapShotRunning: " + e.this.ak() + ", isVideoRecording: " + e.this.bv.ar() + ", mbBurstShot: " + e.this.X + ", mbPaused: " + e.this.P + ", supportBurstShot: " + h);
            } else if (e.this.bv.aa() != 0 || !e.this.Q()) {
                d.a("CameraManager", "onCameraShutterButtonLongClickReleased");
                e.this.q(false);
                e.this.bv.t();
                e.this.bq.a(e.this.bv.d(), e.this.bx());
            } else {
                d.a("CameraManager", "onCameraShutterButtonLongClickReleased, waiting receive first burst picture, so return");
                e.this.h(true);
            }
        }

        public void i() {
            if (e.this.P || !e.this.O() || !e.this.au || e.this.bv.e() || e.this.bq.aB() || !e.this.a(1)) {
                d.a("CameraManager", "onCameraVideoShutterButtonClick, mbPaused: " + e.this.P + ", isPreviewStarted: " + e.this.O() + ", mbInitialized: " + e.this.au + ", isCaptureModeType: " + e.this.bv.e() + ", isEffectMenuScrolling: " + e.this.bq.aB() + ", isSoundLoaded: " + e.this.a(1));
                return;
            }
            e.this.cM.removeMessages(9);
            int unused = e.this.w = 0;
            e.this.w(true);
            e.this.bv.am();
        }

        public void j() {
            e.this.C(true);
        }

        public void k() {
            int i;
            if (!e.this.O() || e.this.U || e.this.ak() || e.this.d() || e.this.T || !e.this.bv.G() || e.this.bq.aB() || e.this.bq.B() || !e.this.ap || !e.this.au || !e.this.bv.h("pref_support_switch_camera") || e.this.bv.aC()) {
                d.a("CameraManager", "onSwitchCameraButtonClick, isPreviewStarted: " + e.this.O() + ", mbCaptureModeChanging: " + e.this.U + ", isTimerSnapShotRunning: " + e.this.ak() + ", isAnimationRunning: " + e.this.d() + ", mbSwitchingCamera: " + e.this.T + ", isAllowSwitch: " + e.this.bv.G() + ", isHeadLineAnimationRunning: " + e.this.bq.B() + ", isEffectMenuScrolling: " + e.this.bq.aB() + ", mbFrameAvailable: " + e.this.ap + ", mbInitialized: " + e.this.au + ", support switch: " + e.this.bv.h("pref_support_switch_camera") + ", isStickerMenuOpen: " + e.this.bv.aC());
                return;
            }
            d.a("CameraManager", "onSwitchCameraButtonClick");
            d.a("onSwitchCameraButtonClick");
            if (e.this.M() == 0) {
                i = 1;
                e.this.bq.g(e.this.aT.getResources().getString(R.string.camera_description_front_camera));
            } else {
                i = 0;
                e.this.bq.g(e.this.aT.getResources().getString(R.string.camera_description_rear_camera));
            }
            i.a a2 = e.this.aU.edit();
            a2.putString("pref_camera_id_key", Integer.toString(i));
            a2.apply();
            e.this.bG();
            if (e.this.bv != null) {
                e.this.bv.aN();
            }
            d.b("onSwitchCameraButtonClick");
        }

        public void l() {
            d.a("CameraManager", "onSwitchCameraButtonDown");
            d.a("onSwitchCameraButtonDown");
            e.this.bq.aE();
            if (!e.this.T && e.this.O() && !e.this.U && e.this.bv.h("pref_get_preview_on_switch_button_down")) {
                e.this.N();
            }
            d.b("onSwitchCameraButtonDown");
        }

        public void m() {
            d.a("CameraManager", "onSwitchCameraButtonUp");
            e.this.bq.aF();
        }

        public boolean n() {
            if (!e.this.O()) {
                d.a("CameraManager", "onVideoRecordingPause, preview not started.");
                return false;
            } else if (e.this.bv != null) {
                return e.this.bv.ao();
            } else {
                return false;
            }
        }

        public boolean o() {
            if (!e.this.O()) {
                d.a("CameraManager", "onVideoRecordingResume, preview not started.");
                return false;
            } else if (e.this.bv != null) {
                return e.this.bv.ap();
            } else {
                return false;
            }
        }
    };
    /* access modifiers changed from: private */
    public boolean ca = false;
    /* access modifiers changed from: private */
    public boolean cb = false;
    /* access modifiers changed from: private */
    public l cc = null;
    /* access modifiers changed from: private */
    public n cd = null;
    /* access modifiers changed from: private */
    public byte ce = 0;
    private boolean cf = false;
    /* access modifiers changed from: private */
    public boolean cg = true;
    private boolean ch = false;
    /* access modifiers changed from: private */
    public boolean ci = false;
    /* access modifiers changed from: private */
    public ImageProcessService cj = null;
    /* access modifiers changed from: private */
    public NativeBufferProducer ck = new NativeBufferProducer();
    /* access modifiers changed from: private */
    public b.c cl = null;
    /* access modifiers changed from: private */
    public List cm = null;
    /* access modifiers changed from: private */
    public Handler cn = null;
    /* access modifiers changed from: private */

    /* renamed from: co  reason: collision with root package name */
    public long f1932co = -1;
    /* access modifiers changed from: private */
    public long cp = -1;
    /* access modifiers changed from: private */
    public String cq = "normal";
    private i cr = null;
    private boolean cs = false;
    private long ct = -1;
    private Object cu = null;
    private Method cv = null;
    private Method cw = null;
    /* access modifiers changed from: private */
    public final com.oppo.camera.Ipa.c cx = new com.oppo.camera.Ipa.c() {

        /* renamed from: b  reason: collision with root package name */
        private boolean f1934b = false;
        private RenderScript c = null;
        private ScriptIntrinsicYuvToRGB d = null;
        private Type.Builder e = null;
        private Type.Builder f = null;
        private Allocation g = null;
        private Allocation h = null;

        private void b(final v.a aVar) {
            if (!e.this.P && e.this.aX != null) {
                byte[] unused = e.this.bR = aVar.d;
                d.a("CameraManager", "processInThirdApp, size: " + (e.this.bR.length / 1024) + "KB" + ", width x height: " + aVar.o + " x " + aVar.p);
                if (this.f1934b || e.this.cp > e.this.f1932co) {
                    d.e("CameraManager", "processInThirdApp, mThirdPartyPauseTime: " + e.this.cp + ", mThirdPartyCaptureTime: " + e.this.f1932co + ", mbReceivedYuv: " + this.f1934b);
                    return;
                }
                e.this.aX.a(c.a_);
                e.this.aX.a((f.c) null);
                e.this.aX.d();
                new Thread(new Runnable() {
                    public void run() {
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        Size c = e.this.bv.c(e.this.aY);
                        if (c.getWidth() * c.getHeight() >= 8000000) {
                            if (e.this.m % 180 == 0) {
                                options.inSampleSize = Math.round(((float) c.getWidth()) / ((float) com.oppo.camera.o.d.N()));
                            } else {
                                options.inSampleSize = Math.round(((float) c.getHeight()) / ((float) com.oppo.camera.o.d.N()));
                            }
                            if (options.inSampleSize < 1) {
                                options.inSampleSize = 1;
                            }
                        } else {
                            options.inSampleSize = 2;
                        }
                        AnonymousClass1.this.a(BitmapFactory.decodeByteArray(aVar.d, 0, aVar.d.length, options));
                    }
                }).start();
            }
        }

        public void a() {
            if (e.this.aT != null) {
                e.this.aT.runOnUiThread(new Runnable() {
                    public void run() {
                        if (!e.this.P && e.this.bq != null) {
                            e.this.bq.c(false);
                        }
                    }
                });
            }
        }

        /* access modifiers changed from: package-private */
        public void a(final Bitmap bitmap) {
            if (bitmap != null) {
                e.this.cM.a(new Runnable() {
                    public void run() {
                        if (!e.this.P) {
                            e.this.a((Animation.AnimationListener) null);
                            if (e.this.bq != null) {
                                e.this.bq.a(bitmap);
                                e.this.J();
                                if (e.this.a("pref_camera_gradienter_key") && "on".equals(e.this.aU.getString("pref_camera_gradienter_key", c.a_))) {
                                    e.this.bq.C();
                                }
                            }
                            e.this.bv.a(12, false);
                            int unused = e.this.v = 0;
                            e.this.bv.a(5, false);
                        }
                    }
                });
            }
        }

        public void a(v.a aVar) {
            if (e.this.bQ.r() == 1) {
                d.b("CameraManager", "onCameraPictureBuilt, uri: " + aVar.f2997b);
                com.oppo.camera.j.b.a().c(aVar);
                return;
            }
            b(aVar);
        }

        public void a(byte[] bArr, int i, int i2, int i3, int i4, int i5, boolean z) {
            if ((e.this.cS == null || !e.this.cS.g()) && bArr != null) {
                this.f1934b = true;
                if (e.this.cp > e.this.f1932co) {
                    d.e("CameraManager", "onYuvImageBuilt, mThirdPartyPauseTime: " + e.this.cp + ", mThirdPartyCaptureTime: " + e.this.f1932co);
                    return;
                }
                final int i6 = i;
                final int i7 = i2;
                final int i8 = i3;
                final boolean z2 = z;
                final int i9 = i4;
                final int i10 = i5;
                final byte[] bArr2 = bArr;
                AnonymousClass2 r0 = new Runnable() {
                    public void run() {
                        int i;
                        if (!e.this.P && e.this.aX != null) {
                            d.a("CameraManager", "processInThirdApp, nv21ToBitmapThread start, width: " + i6 + " height: " + i7 + " rotate: " + i8 + " bMirror: " + z2);
                            int i2 = 2;
                            int i3 = i9;
                            int[] iArr = {i3, i3};
                            int i4 = i10;
                            int[] iArr2 = {i4, i4};
                            byte[] bArr = bArr2;
                            if (z2) {
                                d.a("CameraManager", "processInThirdApp, mirrorYUV start");
                                bArr = YuvProcessUtil.mirrorYUV(bArr, bArr.length, iArr, iArr2, i6, i7, i8);
                                d.a("CameraManager", "processInThirdApp, mirrorYUV end");
                            }
                            byte[] bArr2 = bArr;
                            FormatConverter formatConverter = new FormatConverter();
                            int i5 = i6;
                            int i6 = i7;
                            int i7 = i8;
                            if (i7 == 90 || i7 == 270) {
                                i5 = i7;
                                i6 = i6;
                            }
                            int i8 = i8;
                            if (i8 != 90) {
                                if (i8 != 180) {
                                    if (i8 != 270) {
                                        i = 0;
                                    } else {
                                        i2 = 3;
                                    }
                                }
                                i = i2;
                            } else {
                                i = 1;
                            }
                            d.a("CameraManager", "processInThirdApp, nv21ToBitmapProcess start");
                            Bitmap a2 = com.oppo.camera.o.d.a(i5, i6, Bitmap.Config.ARGB_8888);
                            int i9 = i6;
                            long nv21ToBitmapInit = formatConverter.nv21ToBitmapInit(i9, i7, i9, i10, i9, i5, i6, 1.0f, 1, i, 0, 0, 2);
                            formatConverter.nv21ToBitmapProcess(nv21ToBitmapInit, bArr2, 0, a2, i5);
                            formatConverter.nv21ToBitmapUnInit(nv21ToBitmapInit);
                            d.a("CameraManager", "processInThirdApp, nv21ToBitmapProcess end");
                            if (a2 != null) {
                                e.this.aX.a(c.a_);
                                e.this.aX.a((f.c) null);
                                e.this.aX.d();
                            }
                            AnonymousClass1.this.a(a2);
                        }
                    }
                };
                new Thread(r0).start();
            }
        }

        public void b() {
            this.f1934b = false;
            byte[] unused = e.this.bR = null;
            long unused2 = e.this.f1932co = System.currentTimeMillis();
        }
    };
    /* access modifiers changed from: private */
    public final ImageReader.OnImageAvailableListener cy = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            d.a("CameraManager", "mCaptureImageListener, mCaptureImageListener");
            Image acquireNextImage = imageReader.acquireNextImage();
            if (acquireNextImage == null) {
                d.a("CameraManager", "mCaptureImageListener, image not ready");
                e.this.bv.q();
                if (e.this.aX != null) {
                    e.this.aX.r();
                    return;
                }
                return;
            }
            d.a("captureX mCaptureImageListener onImageAvailable");
            int width = acquireNextImage.getWidth();
            int height = acquireNextImage.getHeight();
            int format = acquireNextImage.getFormat();
            byte[] bArr = null;
            if (256 == format) {
                bArr = new byte[acquireNextImage.getPlanes()[0].getBuffer().remaining()];
                acquireNextImage.getPlanes()[0].getBuffer().get(bArr);
            } else if (35 == format) {
                bArr = com.oppo.camera.o.d.a(acquireNextImage, 17);
            }
            byte[] bArr2 = bArr;
            if (bArr2 == null) {
                d.e("CameraManager", "mCaptureImageListener, imageData is null");
            } else if (e.this.a("pref_support_capture_preview")) {
                b.a aVar = new b.a();
                aVar.f1799a = bArr2;
                aVar.e = width;
                aVar.f = height;
                aVar.i = format;
                aVar.k = acquireNextImage.getTimestamp();
                aVar.j = e.this.m;
                aVar.p = System.currentTimeMillis();
                if (e.this.cj != null) {
                    e.this.cj.a(aVar);
                }
                if (e.this.bv != null) {
                    e.this.bv.a((byte[]) null, width, height, format, false);
                }
            } else {
                if (e.this.bv != null) {
                    e.this.bv.a(bArr2, width, height, format, false);
                }
                if (e.this.cj != null) {
                    e.this.cj.b(acquireNextImage.getTimestamp());
                }
            }
            acquireNextImage.close();
            if (e.this.aX != null) {
                e.this.aX.r();
            }
            d.b("captureX mCaptureImageListener onImageAvailable");
        }
    };
    /* access modifiers changed from: private */
    public final ImageReader.OnImageAvailableListener cz = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            d.b("CameraManager", "mMainYuvCaptureImageListener, onImageAvailable, isNeedAPSProcess: " + e.this.bv.aj());
            boolean aj = e.this.bv.aj();
            if (!aj) {
                e.this.a(imageReader);
            }
            if (e.this.bv != null) {
                e.this.bv.a(imageReader, 0, aj);
            }
        }
    };
    /* access modifiers changed from: private */
    public final Object g = new Object();
    /* access modifiers changed from: private */
    public final Object h = new Object();
    private final Object i = new Object();
    private final ExecutorService j = Executors.newSingleThreadExecutor();
    /* access modifiers changed from: private */
    public int k = 255;
    /* access modifiers changed from: private */
    public int l = 0;
    /* access modifiers changed from: private */
    public int m = 0;
    /* access modifiers changed from: private */
    public int n = 0;
    /* access modifiers changed from: private */
    public int o = 0;
    /* access modifiers changed from: private */
    public int p = 0;
    /* access modifiers changed from: private */
    public int q = -1;
    private int r = -1;
    /* access modifiers changed from: private */
    public int s = 0;
    private int[] t;
    /* access modifiers changed from: private */
    public int u;
    /* access modifiers changed from: private */
    public int v = 0;
    /* access modifiers changed from: private */
    public int w = 0;
    private int x = -1;
    /* access modifiers changed from: private */
    public int y = 0;
    private int z = -1;

    /* compiled from: CameraManager */
    private class a implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private Size f2018b;
        private Size c;

        private a() {
            this.f2018b = null;
            this.c = null;
        }

        public void a() {
            d.e("CameraManager", "BaseSwitchDualCameraAnimationListenerImpl, onAnimationEnd");
            e.this.bv.a(b(), true);
            if (e.this.cL != null) {
                e.this.cL.b(true);
            }
            if (!e.this.bv.aL()) {
                e.this.a(this.f2018b, true);
            }
            if (!(this.c == null || this.f2018b == null)) {
                e.this.bq.d(com.oppo.camera.o.d.b(this.c.getWidth(), this.c.getHeight()), com.oppo.camera.o.d.b(this.f2018b.getWidth(), this.f2018b.getHeight()));
            }
            e.this.bq.d(true, false);
            e.this.i(false);
            e.this.k(false);
            e.this.c(-1);
            e eVar = e.this;
            eVar.t(eVar.bv.bc());
            e.this.bq.g(true);
        }

        public void a(Size size) {
            d.a("CameraManager", "BaseSwitchDualCameraAnimationListenerImpl, onAnimationStart");
            e.this.bq.d(false, false);
            if (e.this.aE && com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
                boolean unused = e.this.aE = false;
            }
            e eVar = e.this;
            eVar.i(eVar.M());
        }

        public void a(Size size, Size size2) {
            StringBuilder sb = new StringBuilder();
            sb.append("BaseSwitchDualCameraAnimationListenerImpl, onAnimationMiddle , fromSize: ");
            String str = null;
            sb.append(size != null ? size.toString() : null);
            sb.append(", toSize: ");
            if (size2 != null) {
                str = size2.toString();
            }
            sb.append(str);
            d.a("CameraManager", sb.toString());
            this.f2018b = size2;
            this.c = size;
            if (!e.this.aE && com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
            }
        }

        public int b() {
            return -1;
        }
    }

    /* compiled from: CameraManager */
    public class b implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private Size f2024b = null;
        private Size c = null;

        public b() {
        }

        public void a() {
            e.this.bq.w(true);
            d.e("CameraManager", "onSwitchAnimEnd, Beauty3DState: " + e.this.bv.aK());
            if (e.this.cL != null) {
                e.this.cL.b(true);
            }
            int aK = e.this.bv.aK();
            if (e.this.bv.aK() == 0 || e.this.bv.aK() == 4) {
                e.this.A();
                e.this.af();
                if (e.this.aT != null) {
                    e.this.aT.onUserInteraction();
                }
                e.this.a(this.f2024b, true);
                e.this.bq.aH();
                e.this.bq.G(e.this.bx());
                e.this.bv.a(10, true);
                e.this.bm();
                if (e.this.aU.getBoolean("key_bubble_type_custom_beuty3d", true) && e.this.cb && !e.this.bq.m() && com.oppo.camera.ui.preview.a.f.a(e.this.aT) == 1) {
                    e.this.bq.a((View) null, 5, e.this.aT.getResources().getDimensionPixelSize(R.dimen.bubble_type_beauty3d_custom_offset_x), e.this.aT.getResources().getDimensionPixelSize(R.dimen.bubble_type_beauty3d_custom_offset_y));
                }
                boolean unused = e.this.cb = false;
                if (e.this.bq != null && e.this.bq.m()) {
                    e.this.u(com.oppo.camera.ui.preview.a.f.a(e.this.aT) == 1 ? 0 : 2);
                    if (e.this.bv != null) {
                        e.this.bv.a(e.this.bq.r());
                    }
                }
                if (e.this.bv.aK() == 4) {
                    d.e("CameraManager", "onSwitchAnimEnd, retsetBeauty3DState");
                    e.this.bv.k(0);
                }
                e.this.bq.g(true);
            } else if (aK == 1 || aK == 6 || aK == 7 || aK == 8 || aK == 10) {
                e.this.bv.a(15, true);
            }
            e.this.k(false);
            e.this.c(-1);
            e.this.i(false);
            e.this.g(false);
        }

        public void a(Size size) {
            d.a("CameraManager", "onSwitchAnimStart, Beauty3DState: " + e.this.bv.aK());
            this.f2024b = size;
            e.this.bq.d(false, false);
            e.this.bq.G(false);
            e.this.bq.i(false);
            e.this.bq.g(false);
            if (!e.this.bv.h("pref_zoom_key") || e.this.bv.h("pref_expand_popbar_key")) {
                e.this.a((Animation.AnimationListener) null);
            }
            int aK = e.this.bv.aK();
            if (aK != 0) {
                if (aK == 1) {
                    e.this.bq.aD();
                    e.this.bv.a(10, false);
                    e eVar = e.this;
                    eVar.i(eVar.M());
                    return;
                } else if (aK == 4) {
                    e.this.bq.aH();
                    e.this.bq.d(false, true);
                    e eVar2 = e.this;
                    eVar2.i(eVar2.M());
                    return;
                } else if (aK == 6) {
                    e.this.bv.a(14, true);
                    e eVar3 = e.this;
                    eVar3.i(eVar3.M());
                    return;
                } else if (aK == 8) {
                    e.this.bv.a(10, false);
                    e.this.bv.a(14, true);
                } else {
                    return;
                }
            }
            e.this.aj();
            e eVar4 = e.this;
            eVar4.v(eVar4.bv.aH());
        }

        public void a(Size size, Size size2) {
            d.a("CameraManager", "onSwitchAnimMiddle, mAfterSwitchPrvSize: " + e.this.bW);
            this.c = size;
            this.f2024b = size2;
            if (this.f2024b != null) {
                if (this.c != null) {
                    e.this.bq.d(com.oppo.camera.o.d.b(this.c.getWidth(), this.c.getHeight()), com.oppo.camera.o.d.b(this.f2024b.getWidth(), this.f2024b.getHeight()));
                }
                e.this.bq.a(this.f2024b, false);
                if (e.this.bv.aK() == 0 || e.this.bv.aK() == 4) {
                    e.this.a(this.f2024b, false);
                }
            }
        }

        public int b() {
            return 2;
        }
    }

    /* compiled from: CameraManager */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public String f2026a = null;

        /* renamed from: b  reason: collision with root package name */
        public String f2027b = null;
        public String c = null;
        public String d = null;
        public String e = null;
        public String f = null;
        public String g = null;
        public double h = 0.0d;
        public double i = 0.0d;
    }

    /* compiled from: CameraManager */
    private class d implements f.b {
        private d() {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0070, code lost:
            if (r0 != 3) goto L_0x014b;
         */
        /* JADX WARNING: Removed duplicated region for block: B:27:0x0153  */
        /* JADX WARNING: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        public void a() {
            d.a("CameraManager", "CameraOpenCallback onCameraOpened, mOneCamera: " + e.this.aX + ", mOpenCameraType: " + e.this.w);
            if (!e.this.P && e.this.aX != null) {
                synchronized (e.this.g) {
                    e.this.aX.a(e.this.bk());
                }
                e eVar = e.this;
                h unused = eVar.aY = eVar.aX.c();
                int aR = e.this.w;
                if (aR != 0) {
                    if (aR != 1) {
                        if (aR != 2) {
                        }
                    }
                    e eVar2 = e.this;
                    Size unused2 = eVar2.bW = eVar2.cd.a(e.this.aY);
                    e.this.bs.b(a.c(e.this.q));
                    e.this.bq.x(a.c(e.this.q));
                    e.this.bv.a(e.this.aX);
                    e.this.bv.c(e.this.q);
                    if (e.this.cc != null) {
                        e.this.cc.f();
                    }
                    e.this.r(false);
                    e.this.b(false, false);
                    e.this.cM.a(new Runnable() {
                        public void run() {
                            if (!e.this.P) {
                                e.this.bq.d(e.this.q, !e.this.cd.j() && !e.this.cd.k() && !e.this.bq.aW() && !e.this.bq.aQ());
                                e.this.bq.b(e.this.cd.a(e.this.aY));
                            }
                        }
                    });
                    if (e.this.bq.a(e.this.cd.a(e.this.aY)) && !e.this.P) {
                        e.this.aj();
                        e eVar3 = e.this;
                        eVar3.v(eVar3.cd.l());
                        if (e.this.cj == null) {
                            e.this.cj.d();
                            return;
                        }
                        return;
                    }
                    return;
                }
                int unused3 = e.this.bY = 0;
                e.this.a(96, false);
                com.oppo.camera.o.d.k();
                e.this.ai();
                e.this.n(true);
                e.this.m(true);
                if (e.this.cj == null) {
                }
            }
        }

        public void a(int i) {
            d.a("CameraManager", "CameraOpenCallback onError, mOneCamera: " + e.this.aX + ", errorCode: " + i + ", mOpenCameraType: " + e.this.w);
            if (e.this.cc != null) {
                e.this.cc.k();
            }
            synchronized (e.this.g) {
                if (e.this.aX != null) {
                    e.this.aX.a((f.C0058f) null);
                }
            }
            if (e.this.bv != null && !e.this.P) {
                e.this.bv.Q();
            }
            if (e.this.cM != null) {
                e.this.cM.removeMessages(10);
                e.this.cM.a(new Runnable() {
                    public void run() {
                        if (e.this.aT != null && !e.this.aT.isFinishing()) {
                            d.e("CameraManager", "onError, camera will finish");
                            e.this.aT.finish();
                        }
                    }
                });
            }
        }

        public void a(boolean z) {
            d.a("CameraManager", "CameraOpenCallback onFailure, mOneCamera: " + e.this.aX + ", mOpenCameraTime: " + e.this.bY + ", mOpenCameraType: " + e.this.w + ", disconnected: " + z);
            if (e.this.cc != null) {
                e.this.cc.k();
            }
            if (z) {
                synchronized (e.this.g) {
                    if (e.this.aX != null) {
                        e.this.aX.a((f.C0058f) null);
                    }
                }
                if (e.this.bv != null && !e.this.P) {
                    e.this.bv.Q();
                }
                if (e.this.aT != null && !e.this.aT.isFinishing()) {
                    if (e.this.w == 0 || e.this.w == 2) {
                        e.this.cM.a(new Runnable() {
                            public void run() {
                                if (!e.this.P) {
                                    if (e.this.bY <= 3) {
                                        e.this.cM.removeMessages(10);
                                        e.this.cM.sendEmptyMessageDelayed(10, 100);
                                        return;
                                    }
                                    com.oppo.camera.o.d.a(e.this.aT, (int) R.string.camera_camera_error_title);
                                    e.this.cM.a(new Runnable() {
                                        public void run() {
                                            e.this.a(true);
                                        }
                                    });
                                }
                            }
                        });
                        return;
                    }
                    e.this.cM.removeMessages(10);
                    e.this.cM.a(new Runnable() {
                        public void run() {
                            if (e.this.aT != null && !e.this.aT.isFinishing()) {
                                d.e("CameraManager", "onError, camera will finish");
                                e.this.aT.finish();
                            }
                        }
                    });
                }
            }
        }

        public void b() {
            int i;
            d.a("CameraManager", "CameraOpenCallback onCameraClosed, mOneCamera: " + e.this.aX + ", mOpenCameraType: " + e.this.w);
            if (e.this.Y > 0) {
                d.b("CameraManager", "CameraOpenCallback onCameraClosed, mReceiveBurstPictureCount: " + e.this.Y + ", mBurstShotFlagId: " + e.this.Z);
                i = e.this.Y;
            } else {
                i = 0;
            }
            e.this.cM.a(new Runnable() {
                public void run() {
                    int unused = e.this.Y = 0;
                    e.this.j(0);
                }
            });
            if (e.this.cj != null) {
                e.this.cj.a(true, e.this.cm);
                if (i > 0 && i < com.oppo.camera.o.d.s()) {
                    e.this.cj.b(i, e.this.Z);
                }
            }
        }
    }

    /* renamed from: com.oppo.camera.e$e  reason: collision with other inner class name */
    /* compiled from: CameraManager */
    private final class C0057e implements f.C0058f {
        private C0057e() {
        }

        public void a() {
            if (e.this.cM != null) {
                e.this.cM.a(new Runnable() {
                    public void run() {
                        if (!e.this.P && e.this.ay) {
                            e.this.C();
                        }
                    }
                });
            }
        }

        public void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j) {
            e.this.cj.a(j, (long) captureRequest.getTag().hashCode());
        }

        public void a(TotalCaptureResult totalCaptureResult, CaptureRequest captureRequest) {
            String str;
            int i;
            int i2;
            TotalCaptureResult totalCaptureResult2 = totalCaptureResult;
            e.this.c("normal");
            if (e.this.bv.h("pref_support_ipa_process")) {
                b.C0052b bVar = new b.C0052b();
                com.oppo.camera.e.d dVar = (com.oppo.camera.e.d) captureRequest.getTag();
                int c = e.this.bv.ag() ? com.oppo.camera.Ipa.a.b.c() | 0 : 0;
                if (e.this.bD != null && e.this.bD.d() && e.this.bv.h("pref_camera_slogan_key")) {
                    c |= com.oppo.camera.Ipa.a.b.e();
                    bVar.an = true;
                }
                if (dVar.l) {
                    if (dVar.m) {
                        c |= 256;
                        bVar.as = e.this.bv.k();
                    } else if (dVar.n) {
                        c |= 128;
                        bVar.ar = true;
                        bVar.as = e.this.bv.k();
                    } else {
                        c |= 128;
                        bVar.ar = false;
                        bVar.as = e.this.bv.k();
                    }
                }
                if (dVar != null && dVar.e) {
                    c |= com.oppo.camera.Ipa.a.b.b();
                    bVar.O = dVar.f2032b;
                    bVar.P = dVar.c;
                }
                if (e.this.A(dVar.j)) {
                    c |= com.oppo.camera.Ipa.a.b.d();
                }
                Long l = (Long) totalCaptureResult2.get(CaptureResult.SENSOR_TIMESTAMP);
                byte byteValue = ((Byte) totalCaptureResult2.get(CaptureResult.JPEG_QUALITY)).byteValue();
                Location location = (Location) totalCaptureResult2.get(CaptureResult.JPEG_GPS_LOCATION);
                d.b("CameraManager", "onCaptureCompleted, timeStamp: " + l + ", isNeedAPSProcess: " + e.this.bv.aj());
                Integer num = (Integer) totalCaptureResult2.get(CaptureResult.FLASH_STATE);
                int h = e.this.bv.h(num == null ? 0 : num.intValue());
                int intValue = ((Integer) totalCaptureResult2.get(CaptureResult.JPEG_ORIENTATION)).intValue();
                int intValue2 = ((Integer) totalCaptureResult2.get(CaptureResult.SENSOR_SENSITIVITY)).intValue();
                int intValue3 = ((Integer) totalCaptureResult2.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST)).intValue();
                Long l2 = l;
                long longValue = ((Long) totalCaptureResult2.get(CaptureResult.SENSOR_EXPOSURE_TIME)).longValue();
                float floatValue = ((Float) totalCaptureResult2.get(CaptureResult.LENS_APERTURE)).floatValue();
                byte b2 = byteValue;
                int intValue4 = ((Integer) totalCaptureResult2.get(CaptureResult.CONTROL_AWB_MODE)).intValue();
                long j = longValue;
                float floatValue2 = ((Float) totalCaptureResult2.get(CaptureResult.LENS_FOCAL_LENGTH)).floatValue();
                long frameNumber = totalCaptureResult.getFrameNumber();
                Face[] faceArr = (Face[]) totalCaptureResult2.get(CaptureResult.STATISTICS_FACES);
                int i3 = intValue;
                float intValue5 = ((float) ((Integer) totalCaptureResult2.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION)).intValue()) * e.this.aX.c().o();
                boolean z = dVar != null && dVar.d;
                if (dVar != null) {
                    str = "pref_camera_slogan_key";
                    i = dVar.h;
                } else {
                    str = "pref_camera_slogan_key";
                    i = 1;
                }
                bVar.x = intValue5;
                int i4 = i;
                bVar.f1802b = l2.longValue();
                if (intValue3 > 0) {
                    bVar.i = (intValue2 * intValue3) / 100;
                } else {
                    bVar.i = intValue2;
                }
                bVar.j = floatValue;
                bVar.k = intValue4;
                bVar.l = h;
                bVar.c = e.this.bv.aj();
                bVar.f1801a = faceArr;
                bVar.ao = e.this.bn;
                bVar.ap = a.a(0, e.this.q);
                bVar.e = e.this.aX.a(totalCaptureResult2) || dVar.o;
                bVar.d = z;
                bVar.au = dVar;
                bVar.H = e.this.a("key_support_no_face_forbid_beauty");
                bVar.I = e.this.a("pref_high_resolution_key");
                bVar.g = i4;
                bVar.ak = dVar != null && dVar.k;
                bVar.at = e.this.n;
                if (dVar != null && dVar.j) {
                    bVar.an = true;
                }
                if (location != null && e.this.cg) {
                    bVar.m = location;
                    bVar.n = location.getLatitude();
                    bVar.o = location.getLongitude();
                }
                dVar.a(dVar.a());
                if ((!bVar.c || !e.this.aF || bVar.d || d.a.CAPTURE_REPROCESS == dVar.a()) && d.a.CAPTURE_RAW != dVar.a()) {
                    if (dVar != null) {
                        bVar.Q = dVar.p;
                        bVar.R = dVar.q;
                        bVar.S = dVar.r;
                        bVar.T = dVar.s;
                        bVar.V = dVar.u;
                        bVar.W = dVar.v;
                        bVar.U = dVar.t;
                        bVar.X = dVar.w;
                        bVar.Y = dVar.x;
                        bVar.Z = dVar.y;
                        bVar.aa = dVar.z;
                        bVar.ab = dVar.B;
                    }
                    int[] iArr = null;
                    int[] iArr2 = null;
                    for (CaptureResult.Key key : totalCaptureResult.getKeys()) {
                        if (TextUtils.equals(key.getName(), "com.oppo.facebeauty.level")) {
                            int[] iArr3 = (int[]) totalCaptureResult2.get(key);
                            if (iArr3 != null && iArr3.length > 0) {
                                d.a("CameraManager", "onCaptureCompleted, beautyLevel: " + iArr3[0]);
                                bVar.z = iArr3[0];
                            }
                        } else if (TextUtils.equals(key.getName(), "com.oppo.facebeauty.custom")) {
                            int[] iArr4 = (int[]) totalCaptureResult2.get(key);
                            if (iArr4 != null && iArr4.length > 0) {
                                d.a("CameraManager", "onCaptureCompleted, customBeautyParam: " + iArr4.length);
                                System.arraycopy(iArr4, 0, bVar.A, 0, bVar.A.length);
                            }
                        } else if (TextUtils.equals(key.getName(), "com.oppo.beauty3d.custom.params")) {
                            int[] iArr5 = (int[]) totalCaptureResult2.get(key);
                            if (iArr5 != null && iArr5.length >= bVar.K.length + 1) {
                                d.a("CameraManager", "onCaptureCompleted, beauty3DParam: " + iArr5.length);
                                bVar.J = iArr5[0];
                                System.arraycopy(iArr5, 1, bVar.K, 0, bVar.K.length);
                            }
                        } else {
                            if (TextUtils.equals(key.getName(), "com.oppo.upscale.input.size")) {
                                int[] iArr6 = (int[]) totalCaptureResult2.get(key);
                                if (iArr6 == null || iArr6.length != 4) {
                                    d.e("CameraManager", "onCaptureCompleted, upscaleInputArray is null");
                                } else {
                                    bVar.ac = iArr6[0];
                                    bVar.ad = iArr6[1];
                                    bVar.ae = iArr6[2];
                                    bVar.af = iArr6[3];
                                }
                            } else if (TextUtils.equals(key.getName(), "com.oppo.upscale.output.size")) {
                                int[] iArr7 = (int[]) totalCaptureResult2.get(key);
                                if (iArr7 == null || iArr7.length != 4) {
                                    d.e("CameraManager", "onCaptureCompleted, upscaleOutputArray is null");
                                } else {
                                    bVar.ag = iArr7[0];
                                    bVar.ah = iArr7[1];
                                    bVar.ai = iArr7[2];
                                    bVar.aj = iArr7[3];
                                }
                            } else if (TextUtils.equals(key.getName(), "com.oppo.tunning.stats.debug")) {
                                byte[] bArr = (byte[]) totalCaptureResult2.get(key);
                                if (bArr != null) {
                                    int i5 = 0;
                                    for (int i6 = 3; i6 >= 0; i6--) {
                                        i5 = (i5 << 8) + (bArr[i6] & 255);
                                    }
                                    d.a("CameraManager", "onCaptureCompleted, dataSize: " + i5);
                                    if (i5 > 0) {
                                        bVar.am = new byte[i5];
                                        for (int i7 = 0; i7 < i5; i7++) {
                                            bVar.am[i7] = bArr[i7 + 4];
                                        }
                                    }
                                } else {
                                    d.e("CameraManager", "onCaptureCompleted, debugData is null");
                                }
                            } else if (TextUtils.equals(key.getName(), "com.oppo.aec.isoSpeedRate")) {
                                int[] iArr8 = (int[]) totalCaptureResult2.get(key);
                                if (iArr8 == null || iArr8.length <= 0) {
                                    d.e("CameraManager", "onCaptureCompleted, isoSpeedRate is null");
                                } else {
                                    d.a("CameraManager", "onCaptureCompleted, isoSpeedRate: " + iArr8[0]);
                                    bVar.i = iArr8[0];
                                }
                            } else if (TextUtils.equals(key.getName(), "com.oppo.picture.exif.flag")) {
                                int[] iArr9 = (int[]) totalCaptureResult2.get(key);
                                if (iArr9 == null || iArr9.length <= 0) {
                                    d.e("CameraManager", "onCaptureCompleted, exifFlag is null");
                                } else {
                                    d.a("CameraManager", "onCaptureCompleted, exifFlag: " + iArr9[0]);
                                    bVar.aq = OppoExifTag.EXIF_TAG_PREFIX + iArr9[0];
                                }
                            } else if (TextUtils.equals(key.getName(), "com.oppo.SensorName")) {
                                byte[] bArr2 = (byte[]) totalCaptureResult2.get(key);
                                if (bArr2 == null || bArr2.length <= 0) {
                                    d.e("CameraManager", "onCaptureCompleted, sensorName is null");
                                } else {
                                    bVar.y = bArr2;
                                }
                            } else if (TextUtils.equals(key.getName(), "com.oppo.aps.sat.snapshot.sensors.mask")) {
                                iArr = (int[]) totalCaptureResult2.get(key);
                            } else if (TextUtils.equals(key.getName(), "com.oppo.multicamera.input.cropRegion")) {
                                iArr2 = (int[]) totalCaptureResult2.get(key);
                            }
                        }
                    }
                    if (bVar.i == 0) {
                        bVar.i = (((Integer) totalCaptureResult2.get(CaptureResult.SENSOR_SENSITIVITY)).intValue() * ((Integer) totalCaptureResult2.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST)).intValue()) / 100;
                    }
                    bVar.B = !e.this.bv.e();
                    if ((bVar.B || dVar.d) && iArr != null && iArr[0] > 0) {
                        c |= com.oppo.camera.Ipa.a.b.f();
                        bVar.al = iArr2;
                        d.a("CameraManager", "onCaptureCompleted, sensorMask(mean ultra wide when == 1): " + iArr[0]);
                    }
                    bVar.f = (long) c;
                    bVar.C = e.this.bv.ai();
                    bVar.E = a.c(e.this.q);
                    bVar.F = TextUtils.equals(e.this.bv.h(), CameraStatisticsUtil.EVENT_CAPTURE);
                    Size a2 = e.this.bv.a(e.this.aY);
                    bVar.L = (int) ((((float) a2.getWidth()) / ((float) a2.getHeight())) * ((float) com.oppo.camera.o.d.N()));
                    bVar.M = com.oppo.camera.o.d.N();
                    if (e.this.bD == null || !e.this.bD.d() || !e.this.bv.h(str)) {
                        i2 = i3;
                    } else {
                        int[] a3 = e.this.aX.a("com.oppo.aps.sat.snapshot.sensors.mask", totalCaptureResult2);
                        String str2 = "type_still_capture_yuv_main";
                        if (!(a3 == null || a3.length == 0)) {
                            if (a3[0] == 0) {
                                str2 = "type_still_capture_yuv_sub";
                            } else if (2 == a3[0]) {
                                str2 = "type_still_capture_yuv_third";
                            }
                        }
                        Size a4 = e.this.cd.a(str2, e.this.aX.c());
                        if (a4 != null) {
                            i2 = i3;
                            bVar.N = e.this.a(a4, i2);
                        } else {
                            i2 = i3;
                            d.e("CameraManager", "onCaptureCompleted, surfaceSize is null, watermark will be lost !");
                        }
                    }
                    bVar.s = frameNumber;
                    bVar.t = j;
                    bVar.u = floatValue2;
                    bVar.v = i2;
                    bVar.w = b2;
                    bVar.h = com.oppo.camera.o.d.p();
                    bVar.r = com.oppo.camera.o.d.r();
                    if ("Realme".equals(bVar.r)) {
                        bVar.r = bVar.r.replace("Realme", "realme");
                    }
                    if (e.this.cj != null) {
                        d.e("CameraManager", "before handleActionMetaInfo, metaItem.mbMultiFrame: " + bVar.c + ", mbMultiMetaHandled: " + e.this.aF + ", mbBurstShot: " + bVar.d);
                        if (!bVar.c || !e.this.aF || bVar.d) {
                            e.this.cj.a(bVar, e.this.aO);
                            if (!e.this.cS.g()) {
                                e.this.a(bVar.f1802b, (String) null, false, false);
                            } else if (e.this.bv != null && e.this.bv.h(CameraFunction.POST_THUMBNAIL)) {
                                e.this.a(bVar.f1802b, (String) null, true, true);
                            }
                        }
                    }
                    if (!e.this.aF) {
                        boolean unused = e.this.aF = true;
                        return;
                    }
                    return;
                }
                d.a("CameraManager", "onCaptureCompleted, no need metainfo, so return, timeStamp: " + totalCaptureResult2.get(CaptureResult.SENSOR_TIMESTAMP));
            } else if (e.this.aO != null && totalCaptureResult2 != null) {
                e.this.aO.mFocalLength = ((Float) totalCaptureResult2.get(CaptureResult.LENS_FOCAL_LENGTH)).floatValue();
                e.this.aO.mISO = (((Integer) totalCaptureResult2.get(CaptureResult.SENSOR_SENSITIVITY)).intValue() * ((Integer) totalCaptureResult2.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST)).intValue()) / 100;
                e.this.aO.mEXP = ((Long) totalCaptureResult2.get(CaptureResult.SENSOR_EXPOSURE_TIME)).longValue();
                e.this.aO.parseFaceInfo((Face[]) totalCaptureResult2.get(CaptureResult.STATISTICS_FACES));
                if (e.this.bv != null) {
                    e.this.aO.mbFlashTrigger = e.this.bv.h(((Integer) totalCaptureResult2.get(CaptureResult.FLASH_STATE)).intValue());
                }
            }
        }

        public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
            e.this.bv.a(dVar, builder, hashMap);
        }

        public void b() {
            if (e.this.cM != null && e.this.bv != null && e.this.bv.J()) {
                e.this.cM.a(new Runnable() {
                    public void run() {
                        if (!e.this.P) {
                            d.a("CameraManager", "openFrontPreFlash");
                            e.this.B();
                        }
                    }
                });
            }
        }

        public void c() {
            if (e.this.cM != null && e.this.D()) {
                e.this.cM.a(new Runnable() {
                    public void run() {
                        if (!e.this.P) {
                            d.a("CameraManager", "closeFrontMainFlash");
                            e.this.bq.ay();
                            if (!e.this.bq.m() && !e.this.bq.w() && !e.this.bv.a()) {
                                e.this.bq.s(false);
                            }
                            e.this.bv.aE();
                        }
                    }
                });
            }
        }

        public void d() {
        }
    }

    /* compiled from: CameraManager */
    public class f {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f2044a = null;

        /* renamed from: b  reason: collision with root package name */
        public Size f2045b = null;
        public int c = 0;
        public String d = null;
        public a.C0055a e = null;
        public boolean f = false;
        public boolean g = false;
        public Bitmap h = null;

        public f() {
        }
    }

    /* compiled from: CameraManager */
    private class g implements x.a {
        private g() {
        }

        public void a(float f, boolean z, boolean z2) {
            d.a("CameraManager", "onZoomChange, zoomValue: " + f);
            if (e.this.bu != null) {
                e.this.bu.a(new z().a(f).a(z).b(z2));
            }
        }

        public boolean a() {
            return e.this.bv.h("pref_zoom_key") && !e.this.bq.az() && !e.this.ak();
        }

        public boolean a(float f) {
            return e.this.d(f);
        }

        public void b() {
            e.this.bk.e();
        }

        public void c() {
            e.this.bk.d();
        }

        public boolean d() {
            if (e.this.aX == null || e.this.bv == null || !e.this.bv.h("pref_zoom_key") || e.this.bv.aq() || e.this.bv.at() || e.this.bv.L() || !e.this.O() || e.this.V || e.this.T || e.this.U) {
                d.e("CameraManager", "getZoomMenuEnabled, isPreviewStarted: " + e.this.O() + ", mbSizeChanging: " + e.this.V + ", mbSwitchingCamera: " + e.this.T + ", mbCaptureModeChanging: " + e.this.U);
                return false;
            } else if (e.this.bq == null || !e.this.bq.aO()) {
                return true;
            } else {
                d.a("CameraManager", "getZoomMenuEnabled, headline is scrolling, disable ZoomMenu");
                return false;
            }
        }

        public boolean e() {
            if (e.this.bu != null) {
                return !e.this.bu.b();
            }
            return false;
        }

        public void f() {
            if (e.this.bv != null) {
                e.this.bv.z();
            }
            if (e.this.bq != null) {
                e.this.bq.aC();
            }
        }

        public void g() {
            if (e.this.bv != null && e.this.bq != null) {
                e.this.bv.y();
                if (!e.this.ak()) {
                    e.this.bq.H(e.this.bv.aB());
                }
                if (!e.this.bv.ar() && (e.this.bq.m() || e.this.bq.w())) {
                    e.this.a((Animation.AnimationListener) null);
                }
                if (e.this.a("pref_camera_gradienter_key") && "on".equals(e.this.aU.getString("pref_camera_gradienter_key", c.a_)) && e.this.bv.h().equals("professional")) {
                    e.this.bq.a(e.this.O(), e.this.o);
                }
            }
        }

        public void h() {
            double a2 = com.oppo.camera.o.d.a((Context) e.this.aT, CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE));
            if (Math.abs(a2 - 4800.0d) < 100.0d) {
                a2 = 4800.0d;
            } else if (Math.abs(a2 - 6400.0d) < 100.0d) {
                a2 = 6400.0d;
            }
            if (e.this.bv != null && e.this.bv.aY() && a2 > 0.0d) {
                e.this.bq.e(e.this.aT.getString(R.string.camera_zoom_not_support, new Object[]{Double.valueOf(a2)}));
                e.this.cM.removeMessages(12);
                e.this.cM.sendEmptyMessageDelayed(12, 3000);
            }
        }

        public boolean i() {
            return e.this.bv.e();
        }

        public boolean j() {
            return !e.this.bv.ar();
        }

        public void k() {
            e.this.bv();
        }

        public void l() {
            e.this.bw();
        }
    }

    /* compiled from: CameraManager */
    public class h implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private boolean f2094b = false;
        private boolean c = false;
        private Size d = null;
        private int e = 0;
        private int f = 0;

        public h() {
        }

        private boolean e() {
            if (com.oppo.camera.o.d.c(this.e)) {
                return true;
            }
            return !com.oppo.camera.o.d.e(this.e) && (!com.oppo.camera.o.d.U() || !com.oppo.camera.o.d.c(this.e, this.f) || com.oppo.camera.o.d.c(this.f));
        }

        public void a() {
            d.a("CameraManager", "switch camera mode, onAnimationEnd, mbCancle: " + this.c);
            if (!this.c) {
                if (e.this.cL != null) {
                    e.this.cL.b(true);
                }
                if (!e()) {
                    e.this.a(this.d, true);
                    e.this.bq.d(this.e, this.f);
                }
                e.this.f(false);
                e.this.k(false);
                e.this.c(-1);
                if (e.this.P) {
                    this.f2094b = false;
                    return;
                }
                if (!e.this.bq.aW() || !e.this.bq.aQ()) {
                    e.this.bq.d(true, false);
                    e.this.bq.g(true);
                } else {
                    e.this.bq.d(false, true);
                    e.this.bq.g(false);
                }
                e.this.i(false);
                this.f2094b = false;
                e.this.bv.a(13, true);
                e.this.bv.a(b(), true);
            }
        }

        public void a(Size size) {
            d.a("CameraManager", "switch camera mode, onAnimationStart");
            this.f2094b = true;
            this.c = false;
            com.oppo.camera.d.a a2 = e.this.bv.a(e.this.aU.getString("pref_camera_mode_key", com.oppo.camera.o.d.a(e.this.bQ.r() == 3)));
            if (!a2.d("pref_filter_process_key")) {
                e.this.bq.j(true);
            }
            if (e.this.bq.w()) {
                e.this.bq.b(false, true, false);
            }
            if (!a2.d(CameraFunction.FACE_BEAUTY_PROCESS)) {
                e.this.bq.a(true, true, false, false);
            }
            if (!a2.d("pref_zoom_key") || a2.d("pref_expand_popbar_key")) {
                e.this.a((Animation.AnimationListener) null);
            } else if (e.this.bt != null && e.this.bt.d()) {
                e.this.am();
            }
            e.this.bv.a(1, false);
            e.this.bq.c(a2.a(), true);
            e.this.a(true, false, true);
        }

        public void a(Size size, Size size2) {
            StringBuilder sb = new StringBuilder();
            sb.append("switch camera mode, onAnimationMiddle, mbCancle: ");
            sb.append(this.c);
            sb.append(", fromSize: ");
            String str = null;
            sb.append(size != null ? size.toString() : null);
            sb.append(", toSize: ");
            if (size2 != null) {
                str = size2.toString();
            }
            sb.append(str);
            d.a("CameraManager", sb.toString());
            e.this.bq.a(e.this.bv.h(), e.this.bv.d(), e.this.bx());
            this.d = size2;
            if (size2 != null) {
                this.f = com.oppo.camera.o.d.b(size2.getWidth(), size2.getHeight());
            }
            if (size != null) {
                this.e = com.oppo.camera.o.d.b(size.getWidth(), size.getHeight());
            }
            if (e()) {
                e.this.a(size2, true);
                e.this.bq.d(this.e, this.f);
            }
            if (e.this.bv.h("pref_zoom_key") && !e.this.bv.h("pref_expand_popbar_key")) {
                e.this.al();
                e.this.x(true);
            }
        }

        public int b() {
            return 1;
        }

        public void c() {
            d.a("CameraManager", "switch camera mode, cancleAnimation");
            e.this.k(false);
            e.this.c(-1);
            this.c = true;
            this.f2094b = false;
        }

        public boolean d() {
            d.a("CameraManager", "switch camera mode, isAnimationRunning, mbRunning: " + this.f2094b);
            return this.f2094b;
        }
    }

    /* compiled from: CameraManager */
    private class i extends AsyncTask<Object, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private ConditionVariable f2098b;

        private i() {
            this.f2098b = new ConditionVariable();
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            Integer num = objArr[0];
            Boolean bool = objArr[1];
            d.a("CameraManager", "doInBackground, beforeOperatingMode: " + num + ", currentSessionHFR: " + bool);
            if ((num.intValue() & 768) == 768) {
                e.this.aX.i(bool.booleanValue());
            }
            e.this.aj();
            this.f2098b.open();
            d.a("CameraManager", "doInBackground X");
            return null;
        }

        public void a() {
            this.f2098b.block();
        }
    }

    /* compiled from: CameraManager */
    private class j extends Thread {

        /* renamed from: b  reason: collision with root package name */
        private Context f2100b = null;
        private Location c = null;

        public j(String str, Context context, Location location) {
            super(str);
            this.f2100b = context;
            this.c = location;
        }

        public void run() {
            c cVar = new c();
            cVar.i = this.c.getLatitude();
            cVar.h = this.c.getLongitude();
            Address a2 = com.oppo.camera.o.d.a(this.f2100b, this.c);
            if (a2 == null) {
                d.d("CameraManager", "GetAddressThread run, address is null, return");
                return;
            }
            cVar.f2026a = a2.getThoroughfare();
            cVar.f2027b = a2.getSubLocality();
            cVar.c = a2.getLocality();
            cVar.d = a2.getSubAdminArea();
            cVar.e = a2.getAdminArea();
            cVar.f = a2.getCountryName();
            cVar.g = a2.getSubLocality() != null ? a2.getSubLocality() : "";
            if (a2.getMaxAddressLineIndex() >= 0) {
                cVar.g += a2.getAddressLine(a2.getMaxAddressLineIndex());
            }
            c unused = e.this.bH = cVar;
            long unused2 = e.this.G = System.currentTimeMillis();
            d.e("CameraManager", "GetAddressThread run, address: [" + e.this.bH.f + "." + e.this.bH.e + e.this.bH.d + "." + e.this.bH.c + "]");
        }
    }

    /* compiled from: CameraManager */
    private class k implements d.a {
        private k() {
        }

        public void a() {
            d.e("CameraManager", "HdrAnimationListenerImpl, onAnimationEnd");
            e.this.bv.a(b(), true);
            if (e.this.cL != null) {
                e.this.cL.b(true);
            }
            e.this.bq.d(true, false);
            e.this.i(false);
            e.this.bq.g(true);
            e.this.k(false);
            e.this.c(-1);
            e.this.bv.a(13, true);
        }

        public void a(Size size) {
            d.a("CameraManager", "HdrAnimationListenerImpl, onAnimationStart");
            e.this.bq.d(false, false);
            e.this.aj();
            e eVar = e.this;
            eVar.v(eVar.bv.aH());
        }

        public void a(Size size, Size size2) {
            d.e("CameraManager", "HdrAnimationListenerImpl, onAnimationMiddle");
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
            }
        }

        public int b() {
            return 6;
        }
    }

    /* compiled from: CameraManager */
    private class l {

        /* renamed from: b  reason: collision with root package name */
        private Vector<m> f2103b;
        private int c;
        private int d;
        /* access modifiers changed from: private */
        public boolean e;

        private l() {
            this.f2103b = null;
            this.c = 0;
            this.d = 0;
            this.e = false;
        }

        public void a(int i) {
            d.b("ModeChangeExecutor", "setProperCameraId, properCameraId: " + i);
            this.c = i;
        }

        public void a(m mVar) {
            if (mVar != null) {
                synchronized (e.this.h) {
                    if (this.f2103b == null) {
                        this.f2103b = new Vector<>();
                    }
                    d.b("ModeChangeExecutor", "addModeChangeTask, task: " + mVar + ", size: " + this.f2103b.size());
                    if (this.d == 1) {
                        mVar.d();
                    } else if (this.d == 2) {
                        mVar.c();
                    }
                    this.d = 0;
                    if (this.f2103b.size() <= 1) {
                        this.f2103b.add(mVar);
                    } else {
                        this.f2103b.removeElementAt(1);
                        this.f2103b.add(mVar);
                    }
                }
                g();
            }
        }

        public boolean a() {
            boolean z;
            synchronized (e.this.h) {
                z = this.f2103b != null && this.f2103b.size() > 0;
            }
            return z;
        }

        public boolean b() {
            boolean z;
            synchronized (e.this.h) {
                z = this.f2103b != null && this.f2103b.size() > 0 && this.d == 0;
            }
            return z;
        }

        public boolean b(int i) {
            d.b("ModeChangeExecutor", "isSwitchCamera, mProperCameraId: " + this.c + ", properCameraId: " + i);
            return this.c != i;
        }

        public void c() {
            synchronized (e.this.h) {
                m i = i();
                if (i == null) {
                    d.e("ModeChangeExecutor", "handleOnSessionClosing, firstTask is null ");
                    this.d = 1;
                    return;
                }
                i.d();
            }
        }

        public void d() {
            synchronized (e.this.h) {
                m i = i();
                if (i == null) {
                    d.e("ModeChangeExecutor", "handleOnSessionClosed, firstTask is null ");
                    this.d = 2;
                    return;
                }
                if (!(i == null || i.k == null)) {
                    i.k.J();
                }
                i.c();
                e.this.aT.runOnUiThread(new Runnable() {
                    public void run() {
                        l.this.g();
                    }
                });
            }
        }

        public void e() {
            d.b("ModeChangeExecutor", "handleOnSessionConfigured");
            m i = i();
            if (i != null) {
                this.e = i.i;
                d.b("ModeChangeExecutor", "handleOnSessionConfigured, mbCurrentHFR: " + this.e);
            }
            h();
        }

        public void f() {
            d.b("ModeChangeExecutor", "handleOnCameraOpened");
            m i = i();
            if (i != null) {
                i.b();
            }
        }

        public void g() {
            int i;
            int size;
            e.this.cM.removeMessages(11);
            m i2 = i();
            synchronized (e.this.h) {
                i = 0;
                size = this.f2103b != null ? this.f2103b.size() : 0;
            }
            if (i2 != null) {
                d.b("ModeChangeExecutor", "looperExecuteModeChangeTask, firstTask: " + i2.toString() + ", size: " + size);
                int d2 = i2.f2106b;
                if (d2 == 0) {
                    i2.a();
                } else if (d2 == 2) {
                    if (size > 1) {
                        h();
                        m i3 = i();
                        if (i3 != null) {
                            int unused = i3.f2106b = 2;
                            i3.a();
                        }
                    } else {
                        i2.a();
                    }
                }
            }
            synchronized (e.this.h) {
                if (this.f2103b != null) {
                    i = this.f2103b.size();
                }
            }
            d.b("ModeChangeExecutor", "looperExecuteModeChangeTask, after size : " + i);
            if (i > 0) {
                e.this.cM.sendEmptyMessageDelayed(11, 100);
            }
        }

        public void h() {
            synchronized (e.this.h) {
                if (this.f2103b != null && this.f2103b.size() > 0) {
                    this.f2103b.remove(0);
                    d.b("ModeChangeExecutor", "popFirstModeChangeTask X ");
                }
            }
        }

        public m i() {
            m mVar;
            synchronized (e.this.h) {
                mVar = (this.f2103b == null || this.f2103b.size() <= 0) ? null : this.f2103b.get(0);
            }
            return mVar;
        }

        public m j() {
            synchronized (e.this.h) {
                if (this.f2103b == null || this.f2103b.size() <= 0) {
                    return null;
                }
                m lastElement = this.f2103b.lastElement();
                return lastElement;
            }
        }

        public void k() {
            d.b("ModeChangeExecutor", "release");
            synchronized (e.this.h) {
                if (this.f2103b != null) {
                    this.f2103b.clear();
                }
            }
        }
    }

    /* compiled from: CameraManager */
    private class m {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public int f2106b;
        private String c;
        private String d;
        private int e;
        private int f;
        private int g;
        private boolean h;
        /* access modifiers changed from: private */
        public boolean i;
        /* access modifiers changed from: private */
        public com.oppo.camera.d.a j;
        /* access modifiers changed from: private */
        public com.oppo.camera.d.a k;

        private m() {
            this.f2106b = 0;
            this.c = null;
            this.d = null;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = false;
            this.i = false;
            this.j = null;
            this.k = null;
        }

        public m a(int i2) {
            this.e = i2;
            return this;
        }

        public m a(com.oppo.camera.d.a aVar) {
            this.j = aVar;
            return this;
        }

        public m a(String str) {
            this.c = str;
            return this;
        }

        public m a(boolean z) {
            this.h = z;
            return this;
        }

        public void a() {
            d.b("ModeChangeTask", "execute task: " + toString());
            int i2 = this.f2106b;
            if (i2 == 0) {
                this.f2106b = 1;
                d.b("ModeChangeTask", "execute, send closeCaptureSession");
                if ((this.g & 768) == 768) {
                    boolean z = false;
                    if (e.this.cc != null) {
                        z = e.this.cc.e;
                    }
                    e.this.aX.i(z);
                }
                e.this.aj();
                d.a("ModeChangeTaskDelay");
            } else if (i2 == 2) {
                d.b("closeSession");
                d.b("ModeChangeTask", "execute, STATUS_SESSION_CLOSED after mOneCamera.endOfStream X, mAfterModeProperCameraId: " + this.f);
                if (e.this.cc == null || !e.this.cc.b(this.f)) {
                    this.f2106b = 3;
                    d.b("ModeChangeTask", "execute, STATUS_SESSION_CLOSED createCaptureSession");
                    e.this.v(this.i);
                    return;
                }
                int unused = e.this.w = 3;
                d.b("ModeChangeTask", "execute, openCamera");
                this.f2106b = 4;
                e.this.cc.a(this.f);
                e.this.aX.a(e.this.aT, this.f, e.this.bX, false, e.this.bQ.r());
            }
        }

        public m b(int i2) {
            this.f = i2;
            return this;
        }

        public m b(com.oppo.camera.d.a aVar) {
            this.k = aVar;
            return this;
        }

        public m b(String str) {
            this.d = str;
            return this;
        }

        public m b(boolean z) {
            this.i = z;
            return this;
        }

        public void b() {
            d.b("ModeChangeTask", "handleOnCameraOpened mStatus: " + this.f2106b);
            if (this.f2106b == 4) {
                this.f2106b = 5;
            }
        }

        public m c(int i2) {
            this.g = i2;
            return this;
        }

        public void c() {
            d.b("ModeChangeTask", "handleOnSessionClosed mStatus: " + this.f2106b);
            this.f2106b = 2;
        }

        public void d() {
            d.b("ModeChangeTask", "handleOnSessionClosing mStatus: " + this.f2106b);
            this.f2106b = 1;
        }

        public String toString() {
            return "mStatus: " + this.f2106b + ", mBeforeModeName: " + this.c + ", mAfterModeName: " + this.d + ", mBeforeModeProperCameraId: " + this.e + ", mAfterModeProperCameraId: " + this.f + ", mbBeforeHFR: " + this.h + " ,mbAfterHFR : " + this.i + ", mBeforeOperatingMode: " + this.g;
        }
    }

    /* compiled from: CameraManager */
    private class n {
        private n() {
        }

        public synchronized Size a(h hVar) {
            return m() ? e.this.cc.i().j.c(hVar) : e.this.bv.a(hVar);
        }

        public synchronized Size a(String str, h hVar) {
            if (m()) {
                return e.this.cc.i().j.a(str, hVar);
            }
            return e.this.bv.a(str, hVar);
        }

        public synchronized void a() {
            if (m()) {
                e.this.cc.i().j.V();
            } else {
                e.this.bv.l();
            }
        }

        public synchronized void a(TotalCaptureResult totalCaptureResult) {
            if (m()) {
                e.this.cc.i().j.a(totalCaptureResult);
            } else {
                e.this.bv.a(totalCaptureResult);
            }
        }

        public synchronized void a(HashMap<String, Surface> hashMap) {
            if (m()) {
                e.this.cc.i().j.a(hashMap);
            } else if (e.this.bv != null) {
                e.this.bv.a(hashMap);
            }
        }

        public synchronized boolean a(String str) {
            if (m()) {
                return e.this.cc.i().j.k(str);
            }
            return e.this.bv.k(str);
        }

        public synchronized Size b(h hVar) {
            if (m()) {
                return e.this.cc.i().j.e(hVar);
            }
            return e.this.bv.b(hVar);
        }

        public synchronized String b() {
            if (e.this.cc != null) {
                m j = e.this.cc.j();
                if (!(j == null || j.j == null)) {
                    return j.j.a();
                }
            }
            return null;
        }

        public synchronized boolean b(String str) {
            if (m()) {
                return e.this.cc.i().j.d(str);
            }
            return e.this.bv.h(str);
        }

        public synchronized Size c(h hVar) {
            if (m()) {
                return e.this.cc.i().j.b(hVar);
            }
            return e.this.bv.c(hVar);
        }

        public synchronized void c() {
            if (m()) {
                e.this.cc.i().j.U();
            } else {
                e.this.bv.m();
            }
        }

        public synchronized int d() {
            return m() ? e.this.cc.i().j.au() : e.this.bv.H();
        }

        public synchronized Size d(h hVar) {
            if (m()) {
                return e.this.cc.i().j.d(hVar);
            }
            return e.this.bv.d(hVar);
        }

        public synchronized int e() {
            if (m()) {
                return e.this.cc.i().j.b();
            }
            return e.this.bv.b();
        }

        public synchronized boolean f() {
            if (m()) {
                return e.this.cc.i().j.cm();
            }
            return e.this.bv.aF();
        }

        public synchronized int g() {
            if (m()) {
                return e.this.cc.i().j.ab();
            }
            return e.this.bv.M();
        }

        public synchronized int h() {
            if (m()) {
                return e.this.cc.i().j.ac();
            }
            return e.this.bv.N();
        }

        public synchronized void i() {
            if (m()) {
                e.this.cc.i().j.cn();
            } else {
                e.this.bv.aG();
            }
        }

        public synchronized boolean j() {
            if (m()) {
                return e.this.cc.i().j.A();
            }
            return e.this.bv.aI();
        }

        public synchronized boolean k() {
            if (m()) {
                return e.this.cc.i().j.z();
            }
            return e.this.bv.aJ();
        }

        public synchronized boolean l() {
            if (m()) {
                return e.this.cc.i().i;
            }
            return e.this.bv.aH();
        }

        public synchronized boolean m() {
            return (e.this.cc == null || e.this.cc.i() == null || e.this.cc.i().j == null) ? false : true;
        }
    }

    /* compiled from: CameraManager */
    private class o implements com.oppo.camera.ui.control.d {
        private o() {
        }

        public void a(String str) {
            d.a("CameraManager", "onModeTypeChanged, switch mode to: " + str);
            if ("more".equals(str)) {
                e.this.bf();
                e.this.aU();
                if (e.this.bq != null) {
                    e.this.bq.t(e.this.q);
                    e.this.bq.aS();
                }
                e.this.e(true, false);
            } else if (!e.this.bv.h().equals(str)) {
                if (e.this.bq != null && e.this.bq.aQ()) {
                    e.this.bq.aR();
                    e.this.bq.P(false);
                    e.this.d(false, false);
                }
                e.this.d(str);
            } else if (e.this.bq != null && e.this.bq.aQ()) {
                e.this.bq.aR();
                e.this.bq.P(true);
                e.this.d(true, true);
            }
        }
    }

    /* compiled from: CameraManager */
    private class p implements GestureDetector.OnGestureListener {

        /* renamed from: b  reason: collision with root package name */
        private final Rect f2110b;
        private boolean c;
        private boolean d;

        private p() {
            this.f2110b = new Rect();
            this.c = false;
        }

        public void a(boolean z) {
            this.d = z;
        }

        public boolean onDown(MotionEvent motionEvent) {
            if (e.this.bv.a(motionEvent)) {
                return false;
            }
            this.d = true;
            this.c = true;
            return false;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public void onLongPress(MotionEvent motionEvent) {
            if (e.this.P || !e.this.av || e.this.aX == null || e.this.bq.e() == null || e.this.az || e.this.T || e.this.Q() || e.this.P()) {
                d.e("CameraManager", "onLongPress, is not preview state,so return");
            } else if (e.this.bq.R()) {
                e.this.bq.al();
                d.e("CameraManager", "onLongPress, hidepopupwindow, so return");
            } else if (!e.this.bs.y()) {
                if (e.this.bv != null && e.this.bv.c(motionEvent)) {
                    return;
                }
                if (e.this.bq.b(motionEvent)) {
                    d.e("CameraManager", "onLongPress, needSubSettingTouchEvent, so return");
                    return;
                }
                int x = (int) (((double) motionEvent.getX()) + 0.5d);
                int y = (int) (((double) motionEvent.getY()) + 0.5d);
                this.f2110b.set(e.this.bq.e().getLeft(), e.this.bq.e().getTop(), e.this.bq.e().getRight(), e.this.bq.e().getBottom());
                if (y >= e.this.bq.am() && y <= e.this.bq.an() && this.f2110b.contains(x, y)) {
                    e.this.r(true);
                    e.this.b(false, false);
                    if (new Rect(e.this.bq.e().getLeft(), e.this.bq.e().getTop(), e.this.bq.e().getRight(), e.this.bq.e().getBottom()).contains(x, y) && !e.this.bq.b(x, y) && e.this.bv.h("pref_continuous_focus_key") && e.this.bs != null) {
                        d.e("CameraManager", "CameraTest Camera Touch Focus Start");
                        e.this.bs.a(x, y - e.this.bq.e().getTop(), true);
                    }
                }
            }
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (e.this.bv == null || !e.this.bv.ar()) {
                d.e("CameraManager", "onScroll, mCameraProcessManager.isPreviewStarted() :" + e.this.O());
                if (!this.d || e.this.am) {
                    d.a("CameraManager", "onScroll, mbCanScroll: " + this.d + ", mbDoubleFinger: " + e.this.am);
                    return false;
                } else if (e.this.bv != null && e.this.bv.a(motionEvent, motionEvent2, f, f2)) {
                    return false;
                } else {
                    if (e.this.bs != null && e.this.bs.y() && e.this.n % 180 != 0) {
                        return false;
                    }
                    if (!e.this.av) {
                        d.a("CameraManager", "onScroll, mFirstTimeInitialized is false, so return.");
                        return false;
                    }
                    if (!(motionEvent == null || motionEvent2 == null)) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        float x2 = motionEvent2.getX();
                        float y2 = motionEvent2.getY();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onScroll, eX1 - eX2: ");
                        float f3 = x - x2;
                        sb.append(Math.abs(f3));
                        sb.append(", eY1 - eY2: ");
                        float f4 = y - y2;
                        sb.append(Math.abs(f4));
                        d.a("CameraManager", sb.toString());
                        if (!e.this.bv.ar() && !e.this.bv.L() && !e.this.T) {
                            e.this.bB.computeCurrentVelocity(400);
                            float xVelocity = e.this.bB.getXVelocity();
                            d.a("CameraManager", "onScroll, xVelocity: " + e.this.bB.getXVelocity() + ", yVelocity: " + e.this.bB.getYVelocity());
                            if (Math.abs(f4) >= Math.abs(f3)) {
                                return false;
                            }
                            if ((f3 > 200.0f || (xVelocity < -200.0f && f3 > 0.0f)) && e.this.bQ.r() != 3) {
                                int unused = e.this.s = 1;
                                this.d = false;
                                return false;
                            } else if ((x2 - x > 200.0f || (xVelocity > 200.0f && f3 < 0.0f)) && e.this.bQ.r() != 3) {
                                int unused2 = e.this.s = 2;
                                this.d = false;
                            }
                        }
                    }
                    return false;
                }
            } else {
                d.e("CameraManager", "onScroll, isVideoRecording, so return");
                return false;
            }
        }

        public void onShowPress(MotionEvent motionEvent) {
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            int actionIndex = motionEvent.getActionIndex();
            int x = (int) (((double) motionEvent.getX(actionIndex)) + 0.5d);
            int y = (int) (((double) motionEvent.getY(actionIndex)) + 0.5d);
            if (e.this.P || e.this.aX == null || e.this.d() || e.this.bv.b(motionEvent) || e.this.T || e.this.Q() || !e.this.O() || !this.c) {
                d.a("CameraManager", "onSingleTapUp, mbPaused: " + e.this.P + ", mbSwitchingCamera: " + e.this.T + ", isSnapShotProgress: " + e.this.Q() + ", !isPreviewStarted: " + (!e.this.O()) + ", mbHasReceiveDownEvent: " + this.c);
                return false;
            } else if (e.this.bq.b(motionEvent)) {
                d.e("CameraManager", "onSingleTapUp, needSubSettingTouchEvent, so return");
                return false;
            } else {
                this.f2110b.set(e.this.bq.e().getLeft(), e.this.bq.e().getTop(), e.this.bq.e().getRight(), e.this.bq.e().getBottom());
                if (!this.f2110b.contains(x, y) || y < e.this.bq.am() || y > e.this.bq.an()) {
                    d.a("CameraManager", "onSingleTapUp, y is not in right area");
                } else {
                    e.this.r(false);
                    e.this.b(false, false);
                    if (new Rect(e.this.bq.e().getLeft(), e.this.bq.e().getTop(), e.this.bq.e().getRight(), e.this.bq.e().getBottom()).contains(x, y) && !e.this.bq.b(x, y) && e.this.bv.h("pref_continuous_focus_key") && e.this.bs != null) {
                        d.e("CameraManager", "CameraTest Camera Touch Focus Start");
                        e.this.bs.a(x, y - e.this.bq.e().getTop(), true);
                    }
                }
                this.c = false;
                return true;
            }
        }
    }

    /* compiled from: CameraManager */
    public class q implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private Size f2112b = null;
        private Size c = null;

        public q() {
        }

        public void a() {
            d.a("CameraManager", "PictureSizeAnimationListenerImpl, onAnimationEnd");
            if (e.this.cL != null) {
                e.this.cL.b(true);
            }
            if (!e.this.bv.aL()) {
                e.this.a(this.f2112b, true);
            }
            if (!(this.c == null || this.f2112b == null)) {
                e.this.bq.d(com.oppo.camera.o.d.b(this.c.getWidth(), this.c.getHeight()), com.oppo.camera.o.d.b(this.f2112b.getWidth(), this.f2112b.getHeight()));
            }
            e.this.x(true);
            e.this.bq.d(true, false);
            e.this.f(false);
            e.this.bq.G(e.this.bx());
            e.this.i(false);
            e.this.bq.g(true);
            e.this.k(false);
            e.this.c(-1);
            e.this.bv.a(13, true);
        }

        public void a(Size size) {
            d.a("CameraManager", "PictureSizeAnimationListenerImpl, onAnimationStart");
            e.this.bq.d(false, false);
            e.this.bq.G(false);
            if (2 == com.oppo.camera.o.d.b(size.getWidth(), size.getHeight())) {
                e.this.bv.a(13, true);
            }
            e.this.aj();
            e eVar = e.this;
            eVar.v(eVar.bv.aH());
        }

        public void a(Size size, Size size2) {
            StringBuilder sb = new StringBuilder();
            sb.append("PictureSizeAnimationListenerImpl, onAnimationMiddle , fromSize: ");
            String str = null;
            sb.append(size != null ? size.toString() : null);
            sb.append(", toSize: ");
            if (size2 != null) {
                str = size2.toString();
            }
            sb.append(str);
            d.a("CameraManager", sb.toString());
            this.f2112b = size2;
            this.c = size;
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
            }
            e.this.bv.a(b(), true);
        }

        public int b() {
            return -1;
        }
    }

    /* compiled from: CameraManager */
    private final class r implements f.e {
        private r() {
        }

        public InputConfiguration a() {
            Size c = e.this.cd.c(e.this.aY);
            if (32 == e.this.cd.h()) {
                c = e.this.cd.d(e.this.aY);
            }
            InputConfiguration inputConfiguration = null;
            if (e.this.cd.f() && c != null) {
                inputConfiguration = new InputConfiguration(c.getWidth(), c.getHeight(), e.this.cd.h());
            }
            d.e("CameraManager", "getInputConfiguration, configuration: " + inputConfiguration);
            return inputConfiguration;
        }

        public void a(LinkedHashMap<String, Surface> linkedHashMap) {
            if (e.this.aX == null || e.this.P) {
                d.e("CameraManager", "configOutputSessionSurface, mOneCamera: " + e.this.aX);
                return;
            }
            HashMap hashMap = (!e.this.ao() || !e.this.bv.h("pref_camera_slogan_key")) ? null : new HashMap();
            linkedHashMap.put("type_preview", e.this.bq.P());
            Size b2 = e.this.cd.b(e.this.aY);
            if (e.this.cd.a("type_preview_frame") && b2 != null) {
                if (!(e.this.bc != null && e.this.bc.getWidth() == b2.getWidth() && e.this.bc.getHeight() == b2.getHeight())) {
                    if (e.this.bc != null) {
                        e.this.bc.close();
                    }
                    ImageReader unused = e.this.bc = ImageReader.newInstance(b2.getWidth(), b2.getHeight(), 35, 2);
                    e.this.bc.setOnImageAvailableListener(e.this.cO, e.this.aX.i());
                }
                linkedHashMap.put("type_preview_frame", e.this.bc.getSurface());
            }
            Size c = e.this.cd.c(e.this.aY);
            if (e.this.cd.a("type_still_capture") && c != null) {
                if (!(e.this.bb != null && e.this.bb.getWidth() == c.getWidth() && e.this.bb.getHeight() == c.getHeight())) {
                    if (e.this.bb != null) {
                        e.this.bb.close();
                    }
                    ImageReader unused2 = e.this.bb = ImageReader.newInstance(c.getWidth(), c.getHeight(), e.this.cd.g(), 3);
                    e.this.bb.setOnImageAvailableListener(e.this.cy, (Handler) null);
                }
                linkedHashMap.put("type_still_capture", e.this.bb.getSurface());
            }
            Size d = e.this.cd.d(e.this.aY);
            if (e.this.cd.a("type_still_capture_raw") && d != null) {
                if (!(e.this.bd != null && e.this.bd.getWidth() == d.getWidth() && e.this.bd.getHeight() == d.getHeight())) {
                    if (e.this.bd != null) {
                        e.this.bd.close();
                    }
                    int i = e.this.cd.b("pref_support_raw_post_process") ? 20 : 3;
                    d.e("CameraManager", "configOutputSessionSurface, operatingMode: " + e.this.cd.e() + ", maxImageNum: " + i);
                    ImageReader unused3 = e.this.bd = ImageReader.newInstance(d.getWidth(), d.getHeight(), 32, i);
                    e.this.bd.setOnImageAvailableListener(e.this.cD, e.this.aX.i());
                }
                if (hashMap != null) {
                    hashMap.put("type_still_capture_raw", d);
                }
                linkedHashMap.put("type_still_capture_raw", e.this.bd.getSurface());
            }
            Size a2 = e.this.cd.a("type_still_capture_yuv_main", e.this.aY);
            if (e.this.cd.a("type_still_capture_yuv_main") && a2 != null) {
                if (!(e.this.bf != null && e.this.bf.getWidth() == a2.getWidth() && e.this.bf.getHeight() == a2.getHeight())) {
                    if (e.this.bf != null) {
                        e.this.bf.close();
                    }
                    d.a("CameraManager", "configOutputSessionSurface, mainSurfaceSize: " + a2.getWidth() + "x" + a2.getHeight());
                    ImageReader unused4 = e.this.bf = ImageReader.newInstance(a2.getWidth(), a2.getHeight(), 35, 20);
                    e.this.bf.setOnImageAvailableListener(e.this.cz, (Handler) null);
                }
                if (hashMap != null) {
                    hashMap.put("type_still_capture_yuv_main", a2);
                }
                linkedHashMap.put("type_still_capture_yuv_main", e.this.bf.getSurface());
            }
            if (e.this.cd.a("type_still_capture_yuv_main_high_pixel_mfnr")) {
                Size a3 = e.this.cd.a("type_still_capture_yuv_main_high_pixel_mfnr", e.this.aY);
                if (a3 != null) {
                    if (!(e.this.bg != null && e.this.bg.getWidth() == a3.getWidth() && e.this.bg.getHeight() == a3.getHeight())) {
                        if (e.this.bg != null) {
                            e.this.bg.close();
                        }
                        d.a("CameraManager", "configOutputSessionSurface, mainMfnrSurfaceSize: " + a3.getWidth() + "x" + a3.getHeight());
                        ImageReader unused5 = e.this.bg = ImageReader.newInstance(a3.getWidth(), a3.getHeight(), 35, 20);
                        e.this.bg.setOnImageAvailableListener(e.this.cA, (Handler) null);
                    }
                    if (hashMap != null) {
                        hashMap.put("type_still_capture_yuv_main_high_pixel_mfnr", a3);
                    }
                    linkedHashMap.put("type_still_capture_yuv_main_high_pixel_mfnr", e.this.bg.getSurface());
                }
            }
            Size a4 = e.this.cd.a("type_still_capture_yuv_sub", e.this.aY);
            if (e.this.cd.a("type_still_capture_yuv_sub") && a4 != null) {
                if (!(e.this.bh != null && e.this.bh.getWidth() == a4.getWidth() && e.this.bh.getHeight() == a4.getHeight())) {
                    if (e.this.bh != null) {
                        e.this.bh.close();
                    }
                    d.a("CameraManager", "configOutputSessionSurface, subSurfaceSize: " + a4.getWidth() + "x" + a4.getHeight());
                    ImageReader unused6 = e.this.bh = ImageReader.newInstance(a4.getWidth(), a4.getHeight(), 35, 20);
                    e.this.bh.setOnImageAvailableListener(e.this.cB, e.this.aX.i());
                }
                if (hashMap != null) {
                    hashMap.put("type_still_capture_yuv_sub", a4);
                }
                linkedHashMap.put("type_still_capture_yuv_sub", e.this.bh.getSurface());
            }
            Size a5 = e.this.cd.a("type_still_capture_yuv_third", e.this.aY);
            if (e.this.cd.a("type_still_capture_yuv_third") && a5 != null) {
                if (!(e.this.bi != null && e.this.bi.getWidth() == a5.getWidth() && e.this.bi.getHeight() == a5.getHeight())) {
                    if (e.this.bi != null) {
                        e.this.bi.close();
                    }
                    d.a("CameraManager", "configOutputSessionSurface, thirdSurfaceSize: " + a5.getWidth() + "x" + a5.getHeight());
                    ImageReader unused7 = e.this.bi = ImageReader.newInstance(a5.getWidth(), a5.getHeight(), 35, 20);
                    e.this.bi.setOnImageAvailableListener(e.this.cC, e.this.aX.i());
                }
                if (hashMap != null) {
                    hashMap.put("type_still_capture_yuv_third", a5);
                }
                linkedHashMap.put("type_still_capture_yuv_third", e.this.bi.getSurface());
            }
            if (hashMap != null && hashMap.size() > 0 && e.this.ao()) {
                e.this.bK.removeMessages(3);
                e.this.bK.obtainMessage(3, hashMap).sendToTarget();
            }
            e.this.cd.a((HashMap<String, Surface>) linkedHashMap);
            d.e("CameraManager", "configOutputSessionSurface, surfaces: " + linkedHashMap);
        }

        public void b() {
            if (e.this.aX == null || e.this.P) {
                d.e("CameraManager", "onSessionConfigured, Camera closed, aborting");
                return;
            }
            e.this.cd.i();
            d.a("setRepeatingRequest");
            e.this.aX.a(e.this.cR);
            d.b("setRepeatingRequest");
            e.this.cM.a(new Runnable() {
                public void run() {
                    if (e.this.aT != null) {
                        boolean z = false;
                        e.this.a(false);
                        e.this.a(e.this.D() ? 1.0f : -1.0f);
                        if (Camera.f1750b && e.this.N) {
                            e.this.aG();
                        } else if (Camera.f1749a && e.this.M) {
                            e.this.aH();
                        }
                        if (e.this.k()) {
                            String string = e.this.aU.getString("pref_camera_gesture_shutter_key", e.this.aT.getString(R.string.camera_gesture_shutter_default_value));
                            if (e.this.cU.g("pref_camera_gesture_shutter_key") && string.equals("on") && e.this.by() && e.this.ce != 2) {
                                byte unused = e.this.ce = (byte) 1;
                            }
                            e eVar = e.this;
                            if (e.this.ce == 1) {
                                z = true;
                            }
                            eVar.d(z);
                            byte unused2 = e.this.ce = (byte) 2;
                        } else if (e.this.bT != null && e.this.bT.b()) {
                            e.this.l();
                        }
                    }
                }
            });
            if (e.this.cc != null) {
                e.this.cc.e();
            }
        }

        public void c() {
            d.b("CameraManager", "onSessionConfigureFailed");
            e.this.cM.a(new Runnable() {
                public void run() {
                    e.this.j(0);
                }
            });
            e.this.bb();
            if (e.this.x()) {
                e.this.bq.N(true);
            }
        }

        public void d() {
            d.b("CameraManager", "onSessionClosed");
            e.this.cM.a(new Runnable() {
                public void run() {
                    e.this.j(0);
                    boolean unused = e.this.ap = false;
                }
            });
            if (e.this.bc != null) {
                e.this.bc.setOnImageAvailableListener((ImageReader.OnImageAvailableListener) null, (Handler) null);
                e.this.bc.close();
                ImageReader unused = e.this.bc = null;
            }
            if (e.this.bj != null) {
                e.this.bj.setOnImageAvailableListener((ImageReader.OnImageAvailableListener) null, (Handler) null);
                e.this.bj.close();
                ImageReader unused2 = e.this.bj = null;
            }
            if (e.this.cc != null) {
                e.this.cc.d();
            }
        }

        public Range<Integer> e() {
            return e.this.bv.i();
        }
    }

    /* compiled from: CameraManager */
    public class s {
        public s() {
        }

        public c a() {
            return e.this.at();
        }
    }

    /* compiled from: CameraManager */
    public class t implements e.b {
        public t() {
        }

        public int a(int i) {
            int m = e.this.bv.m(i);
            if (Camera.f1749a) {
                m += 150;
            }
            d.a("CameraManager", "getSwitchAnimTime, switchTime: " + m + ", cameraId: " + i);
            return m;
        }

        public void a() {
            d.a("CameraManager", "onSwitchAnimStart");
            if (!e.this.P) {
                if (e.this.bq.m()) {
                    e.this.bq.j(false);
                }
                if (e.this.bq.w()) {
                    e.this.bq.b(false, true, false);
                }
                e.this.bq.i(false);
                e.this.bq.aD();
                if (!e.this.bv.h("pref_zoom_key") || e.this.bv.h("pref_expand_popbar_key")) {
                    e.this.a((Animation.AnimationListener) null);
                }
                e.this.bv.a(13, false);
                e.this.bv.a(12, false);
            }
        }

        public void b() {
            d.a("CameraManager", "onSwitchAnimMiddle, mAfterSwitchPrvSize: " + e.this.bW);
            if (!e.this.P && e.this.bW != null) {
                e.this.bq.a(e.this.bW, false);
                e eVar = e.this;
                eVar.a(eVar.bW, false);
                if (!e.this.bv.e()) {
                    e.this.bq.a(e.this.bW, true);
                }
            }
        }

        public void c() {
            d.e("CameraManager", "onSwitchAnimEnd");
            if (!e.this.P) {
                e.this.bv.a(2, true);
                e.this.bq.a(e.this.bv.a(e.this.aY), true);
                e.this.bq.w(true);
                e.this.bq.e(true, false);
                e.this.A();
                e.this.af();
                e.this.bq.d(true, false);
                if (e.this.aT != null) {
                    e.this.aT.onUserInteraction();
                }
                e.this.bv.ab();
                if (e.this.bq.m()) {
                    if (e.this.bv.h("pref_filter_process_key")) {
                        e.this.bq.k(true);
                    } else {
                        e.this.bq.l(true);
                    }
                }
                String str = null;
                if (e.this.bv.h("pref_portrait_new_style_menu")) {
                    str = "pref_portrait_new_style_menu";
                } else if (e.this.bv.h("pref_filter_menu")) {
                    str = "pref_filter_menu";
                } else if (e.this.bv.h("pref_video_filter_menu")) {
                    str = "pref_video_filter_menu";
                }
                if (str != null) {
                    e.this.bq.f(str);
                }
                if (e.this.bv.h(CameraFunction.FACE_BEAUTY_PROCESS)) {
                    e.this.bq.m(true);
                } else {
                    e.this.bq.a(true, true, true, false);
                }
                e.this.bm();
                e.this.g(false);
                e.this.bv.a(13, true);
                if (e.this.bW != null) {
                    e eVar = e.this;
                    eVar.a(eVar.bW, false);
                }
            }
        }

        public void d() {
            d.a("CameraManager", "onSwitchAnimCancel");
            e.this.g(false);
        }
    }

    /* compiled from: CameraManager */
    private class u implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private Size f2120b;
        private Size c;

        private u() {
            this.f2120b = null;
            this.c = null;
        }

        public void a() {
            d.e("CameraManager", "ThreeDStickerAnimationListenerImpl, onAnimationEnd");
            e.this.bv.a(b(), true);
            if (e.this.cL != null) {
                e.this.cL.b(true);
            }
            if (!e.this.bv.aL()) {
                e.this.a(this.f2120b, true);
            }
            if (!(this.c == null || this.f2120b == null)) {
                e.this.bq.d(com.oppo.camera.o.d.b(this.c.getWidth(), this.c.getHeight()), com.oppo.camera.o.d.b(this.f2120b.getWidth(), this.f2120b.getHeight()));
            }
            e.this.bq.d(true, false);
            e.this.i(false);
            e.this.k(false);
            e.this.c(-1);
        }

        public void a(Size size) {
            d.a("CameraManager", "ThreeDStickerAnimationListenerImpl, onAnimationStart");
            e.this.bq.d(false, false);
            e eVar = e.this;
            eVar.i(eVar.M());
        }

        public void a(Size size, Size size2) {
            StringBuilder sb = new StringBuilder();
            sb.append("ThreeDStickerAnimationListenerImpl, onAnimationMiddle , fromSize: ");
            String str = null;
            sb.append(size != null ? size.toString() : null);
            sb.append(", toSize: ");
            if (size2 != null) {
                str = size2.toString();
            }
            sb.append(str);
            d.a("CameraManager", sb.toString());
            this.f2120b = size2;
            this.c = size;
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
            }
        }

        public int b() {
            return 11;
        }
    }

    /* compiled from: CameraManager */
    private class v implements h.b {
        private v() {
        }

        public void a() {
            d.a("CameraManager", "onTimeOut, getCurrentModeName: " + e.this.bv.h());
            e.this.C(false);
        }

        public void a(boolean z) {
            if (e.this.bq != null) {
                e.this.bq.d(true, false);
                if (!z || (e.this.bv != null && !e.this.bv.Z())) {
                    e.this.bq.f(0);
                    e.this.bq.h(0);
                    e eVar = e.this;
                    eVar.a(eVar.bv.a(e.this.aY), true);
                    e.this.bv.c(z);
                    e.this.bq.f();
                    e.this.bq.b(true);
                    e.this.bq.o(true);
                    e.this.bq.k(true);
                    e.this.bq.m(true);
                    e.this.bv.a(3, true);
                    if (!e.this.bv.h("pref_expand_popbar_key")) {
                        e.this.al();
                        e.this.x(true);
                    }
                }
                if (e.this.bQ.r() == 3) {
                    return;
                }
                if (!z || (e.this.bv != null && !e.this.bv.Z())) {
                    if (!e.this.ay) {
                        if (!e.this.bv.a()) {
                            e.this.bq.a(0);
                        } else if (!e.this.bv.h("pref_headline_control_by_mode")) {
                            e.this.bq.J(true);
                        }
                    }
                    if (e.this.bv.h("pref_support_switch_camera")) {
                        e.this.bq.e(0);
                    } else {
                        e.this.bq.e(4);
                    }
                }
            }
        }

        public void b() {
            e.this.bq.I(com.oppo.camera.o.d.c(e.this.bv.a(e.this.aY)));
            e.this.bv.O();
            e.this.bv.a(3, false);
            e.this.a((Animation.AnimationListener) null);
            e.this.x(false);
        }

        public void c() {
            d.a("CameraManager", "onTimeUpdated, mbPaused: " + e.this.P + ", mPhoneState: " + e.this.y);
            if (!e.this.P && e.this.y == 0) {
                e.this.b(4);
            }
        }
    }

    /* compiled from: CameraManager */
    private class w implements m.e {
        private w() {
        }

        public void a(Location location) {
            e eVar = e.this;
            eVar.a((Context) eVar.aT, location);
        }

        public boolean a() {
            return e.this.bk.f();
        }
    }

    /* compiled from: CameraManager */
    private class x implements d.a {
        private x() {
        }

        public void a() {
            d.a("CameraManager", "VideoSizeChangeAnimationListenerImpl, onAnimationEnd");
            if (e.this.cL != null) {
                e.this.cL.b(true);
            }
            e.this.bq.d(true, false);
            e.this.f(false);
            e.this.i(false);
            e.this.k(false);
            e.this.c(-1);
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
            }
        }

        public void a(Size size) {
            e.this.bq.d(false, false);
            Size Q = e.this.bq.Q();
            d.a("CameraManager", "VideoSizeChangeAnimationListenerImpl, onAnimationStart, currSize: " + Q.getWidth() + "x" + Q.getHeight() + ", toSize: " + size.getWidth() + "x" + size.getHeight());
            if (e.this.bv.ar()) {
                return;
            }
            if (TextUtils.equals("commonVideo", e.this.bv.h()) || TextUtils.equals("slowVideo", e.this.bv.h())) {
                boolean unused = e.this.ad = true;
                if (e.this.aX != null && (e.this.bv.b() & 768) == 768) {
                    e.this.aX.i(e.this.bv.aH());
                }
                e.this.aj();
                e eVar = e.this;
                eVar.v(eVar.bv.aH());
            }
        }

        public void a(Size size, Size size2) {
            d.a("CameraManager", "VideoSizeChangeAnimationListenerImpl, onAnimationMiddle");
            e.this.a(size2, true);
            e.this.bv.a(b(), true);
        }

        public int b() {
            return -1;
        }
    }

    /* compiled from: CameraManager */
    private class y {

        /* renamed from: b  reason: collision with root package name */
        private Vector<z> f2125b;

        private y() {
            this.f2125b = null;
        }

        private void e() {
            Vector<z> vector = this.f2125b;
            if (vector != null && vector.size() > 0) {
                this.f2125b.remove(0);
                d.b("ZoomExecutor", "popFirstZoomTask X ");
            }
        }

        private z f() {
            Vector<z> vector = this.f2125b;
            if (vector == null || vector.size() <= 0) {
                return null;
            }
            return this.f2125b.get(0);
        }

        public synchronized void a(z zVar) {
            if (zVar != null) {
                if (this.f2125b == null) {
                    this.f2125b = new Vector<>();
                }
                d.b("ZoomExecutor", "addZoomTask, task: " + zVar.toString() + ", size: " + this.f2125b.size());
                if (!zVar.b()) {
                    Iterator<z> it = this.f2125b.iterator();
                    while (it.hasNext()) {
                        if (!it.next().b()) {
                            it.remove();
                        }
                    }
                }
                this.f2125b.add(zVar);
            }
        }

        public boolean a() {
            Vector<z> vector = this.f2125b;
            return vector != null && vector.size() > 0;
        }

        public boolean b() {
            Vector<z> vector = this.f2125b;
            if (vector == null) {
                return false;
            }
            Iterator<z> it = vector.iterator();
            while (it.hasNext()) {
                if (it.next().b()) {
                    return true;
                }
            }
            return false;
        }

        public synchronized void c() {
            z f = f();
            if (f != null) {
                d.b("ZoomExecutor", "executeZoomTask, firstTask: " + f.toString());
                f.a();
                e();
            }
        }

        public synchronized void d() {
            if (this.f2125b != null) {
                this.f2125b.clear();
            }
        }
    }

    /* compiled from: CameraManager */
    private class z {

        /* renamed from: b  reason: collision with root package name */
        private float f2127b;
        private boolean c;
        private boolean d;

        private z() {
            this.f2127b = 0.0f;
            this.c = false;
            this.d = false;
        }

        public z a(float f) {
            this.f2127b = f;
            return this;
        }

        public z a(boolean z) {
            this.c = z;
            return this;
        }

        public void a() {
            d.b("CameraManager", "execute task: " + toString());
            if (!e.this.P) {
                e.this.a(this.f2127b, this.c);
            }
        }

        public z b(boolean z) {
            this.d = z;
            return this;
        }

        public boolean b() {
            return this.d;
        }

        public String toString() {
            return "mZoomValue: " + this.f2127b + ", mbZoomSubmmit: " + this.c;
        }
    }

    public e(Activity activity, f fVar) {
        this.aT = activity;
        this.bk = fVar;
        this.bv = new com.oppo.camera.d.i(activity);
        this.cm = new ArrayList();
    }

    /* access modifiers changed from: private */
    public boolean A(boolean z2) {
        return TextUtils.equals(this.bv.h(), CameraStatisticsUtil.EVENT_CAPTURE) && !com.oppo.camera.e.a.c(this.q) && !z2;
    }

    /* access modifiers changed from: private */
    public boolean B(boolean z2) {
        if (this.bv == null) {
            return false;
        }
        if (this.bq.K()) {
            d.d("CameraManager", "checkReadyToCapture, video alert showing, so return");
            return false;
        } else if (this.Y != 0) {
            d.d("CameraManager", "checkReadyToCapture, burst capture is processing");
            return false;
        } else {
            boolean a2 = "panorama".equals(this.bv.h()) ? a(1) : a(0);
            if (this.P || !this.au || !a2) {
                d.d("CameraManager", "checkReadyToCapture, mbPaused: " + this.P + ", mbInitialized: " + this.au + ", isSoundLoaded: " + a2);
                return false;
            } else if (this.bq.aB()) {
                d.d("CameraManager", "checkReadyToCapture, isEffectMenuScrolling, so return");
                return false;
            } else if (!com.oppo.camera.j.b.a().a(false, this.aT)) {
                d.d("CameraManager", "checkReadyToCapture, memory or storage is not enough");
                this.bv.F();
                return false;
            } else {
                ImageProcessService imageProcessService = this.cj;
                if (imageProcessService != null) {
                    if (!imageProcessService.a(this.bv.aY() ? ImageProcessService.a.CHECK_QUEUE_TYPE_HIGHT_PICTURE_SIZE : ImageProcessService.a.CHECK_QUEUE_TYPE_COMMON)) {
                        d.d("CameraManager", "checkReadyToCapture, IpaProcess queue is full!");
                        return false;
                    }
                }
                if (!v.a(this.cS.N())) {
                    d.d("CameraManager", "checkReadyToCapture, sStorageStatus is failed, so return");
                    Activity activity = this.aT;
                    if (activity != null) {
                        activity.runOnUiThread(new Runnable() {
                            public void run() {
                                if (e.this.bq != null) {
                                    e.this.bq.k();
                                }
                            }
                        });
                    }
                    return false;
                }
                if (com.oppo.camera.ui.menu.f.a()) {
                    Activity activity2 = this.aT;
                    if (activity2 != null) {
                        activity2.runOnUiThread(new Runnable() {
                            public void run() {
                                com.oppo.camera.ui.menu.f.c();
                            }
                        });
                    }
                }
                int e = com.oppo.camera.j.b.a().e();
                if ("professional".equals(this.bv.h()) && e > 3) {
                    d.d("CameraManager", "checkReadyToCapture, rawCount: " + e);
                    this.bq.a((int) R.string.camera_toast_camera_Low_memory_hint, -1, true, false, false);
                    return false;
                } else if (this.T || this.X || d() || this.U || this.V) {
                    d.d("CameraManager", "checkReadyToCapture, mbSwitchingCamera: " + this.T + ", mbBurstShot: " + this.X + ", isAnimationRunning: " + d() + ", mbCaptureModeChanging: " + this.U + ", mbSizeChanging: " + this.V);
                    return false;
                } else if (this.bv.b(false)) {
                    d.d("CameraManager", "checkReadyToCapture, stopTakePicture sucess, so return");
                    return false;
                } else if (P() || this.l == 5) {
                    d.d("CameraManager", "checkReadyToCapture, mCameraState: " + this.l + ", so return");
                    return false;
                } else {
                    if (z2) {
                        com.oppo.camera.ui.preview.h hVar = this.bs;
                        if (hVar != null && hVar.j()) {
                            d.d("CameraManager", "checkReadyToCapture, checkStateBeforeCapture true, so return");
                            return false;
                        }
                    }
                    if (this.bv.L() || (!this.bv.Y() && !O())) {
                        d.d("CameraManager", "checkReadyToCapture, mCameraState: " + this.l + ", getIsCapturingState: " + this.bv.L() + ", so return");
                        return false;
                    }
                    bs();
                    return true;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void C(final boolean z2) {
        this.ci = true;
        if (this.aX == null) {
            d.d("CameraManager", "capture, mOneCamera null");
            this.cq = "normal";
            this.ci = false;
            return;
        }
        d.a("CameraManager", "capture, mbSendCapturePictureRequest: " + this.ci);
        this.aX.i().post(new Runnable() {
            public void run() {
                if (!e.this.B(z2)) {
                    if (e.this.bs != null) {
                        e.this.bs.h();
                    }
                    String unused = e.this.cq = "normal";
                    boolean unused2 = e.this.ci = false;
                    return;
                }
                if (e.this.aT != null) {
                    e.this.aT.runOnUiThread(new Runnable() {
                        public void run() {
                            if (e.this.bz != null && e.this.ak()) {
                                e.this.bz.g();
                            }
                        }
                    });
                }
                e.this.w(true);
                if (e.this.D()) {
                    d.e("CameraManager", "CameraTest Shutter Respond Start");
                    if (!e.this.bv.p()) {
                        if (e.this.cM != null) {
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("view_enable", true);
                            bundle.putBoolean("view_ashed", false);
                            e.this.cM.removeMessages(14);
                            Message obtainMessage = e.this.cM.obtainMessage(14);
                            obtainMessage.setData(bundle);
                            obtainMessage.sendToTarget();
                        }
                        e.this.j(1);
                    }
                    String unused3 = e.this.cq = "normal";
                    boolean unused4 = e.this.ci = false;
                    return;
                }
                if (e.this.C <= 0 || e.this.D != 0) {
                    long unused5 = e.this.D = -1;
                } else {
                    long unused6 = e.this.D = System.currentTimeMillis() - e.this.C;
                }
                if (e.this.E > 0) {
                    long unused7 = e.this.F = System.currentTimeMillis() - e.this.E;
                }
                long unused8 = e.this.E = System.currentTimeMillis();
                if (e.this.bQ.r() == 2 && e.this.bv.W() && e.this.bq != null && e.this.bq.c() != null) {
                    e.this.bq.c().b(false);
                }
                d.e("CameraManager", "CameraTest Shutter Respond Start");
                if (!e.this.bv.p()) {
                    d.d("CameraManager", "doCapture, capture failed for some reason!");
                    if (e.this.aT != null) {
                        e.this.aT.runOnUiThread(new Runnable() {
                            public void run() {
                                e.this.x(true);
                                if (e.this.bv != null) {
                                    e.this.bv.a(12, true);
                                }
                                if (e.this.bq != null) {
                                    e.this.bq.d(true, true);
                                }
                            }
                        });
                    }
                    e.this.j(1);
                }
                String unused9 = e.this.cq = "normal";
                boolean unused10 = e.this.ci = false;
            }
        });
    }

    private void D(boolean z2) {
        if (z2 && this.bv != null) {
            PreviewStaticInfoMsgData previewStaticInfoMsgData = new PreviewStaticInfoMsgData(this.aT);
            previewStaticInfoMsgData.mCaptureMode = this.bv.h();
            previewStaticInfoMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            previewStaticInfoMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            previewStaticInfoMsgData.mCameraId = String.valueOf(this.q);
            previewStaticInfoMsgData.mOrientation = this.n;
            previewStaticInfoMsgData.mScreenBrightness = (int) ((float) Settings.System.getInt(this.aT.getContentResolver(), CameraStatisticsUtil.SCREEN_BRIGHTNESS, (int) (((float) this.k) * 0.4f)));
            previewStaticInfoMsgData.report();
        }
    }

    private Size a(com.oppo.camera.d.a aVar) {
        if (aVar == null) {
            d.a("CameraManager", "getModePreviewSize, mode: " + aVar);
            return null;
        }
        aVar.f(this.q);
        aVar.a(this.aX);
        Size c2 = aVar.c(this.aY);
        d.d("CameraManager", "getModePreviewSize, previewSize: " + c2.getWidth() + "x" + c2.getHeight());
        return c2;
    }

    private String a(String str, String str2, String str3, String str4, String str5) {
        if (str == null) {
            str = DebugUtil.getDebugProperty(str4, str5);
        }
        SharedPreferences sharedPreferences = this.aW;
        if (sharedPreferences != null) {
            str = sharedPreferences.getString(str3, str);
        }
        SharedPreferences sharedPreferences2 = this.aV;
        return sharedPreferences2 != null ? sharedPreferences2.getString(str2, str) : str;
    }

    /* access modifiers changed from: private */
    public void a(int i2, boolean z2) {
        d.a("CameraManager", "useIsoSetDisplay, messageType: " + i2 + ", delay: " + z2);
        d.a("useIsoSetDisplay");
        if (this.aq) {
            this.cM.removeMessages(3);
            this.cM.removeMessages(2);
            if (i2 != 95) {
                if (i2 == 96) {
                    if (z2) {
                        this.cM.sendEmptyMessageDelayed(2, 800);
                    } else if (Settings.System.getInt(this.aT.getContentResolver(), "oppo_in_camera_mode", 0) == 2) {
                        Settings.System.putInt(this.aT.getContentResolver(), "oppo_in_camera_mode", 0);
                    }
                }
            } else if (z2) {
                this.cM.sendEmptyMessageDelayed(3, 800);
            }
        }
        d.b("useIsoSetDisplay");
    }

    private void a(int i2, boolean z2, boolean z3) {
        if (this.P || !this.ap) {
            d.e("CameraManager", "onCameraIdChange, mbPaused: " + this.P + ", mbFrameAvailable: " + this.ap);
            return;
        }
        t tVar = this.bx;
        if (tVar != null) {
            tVar.b();
        }
        d.e("CameraManager", "CameraTest Camera Switch Start, cameraId: " + i2);
        g(true);
        this.bq.w(false);
        this.bq.d(false, false);
        this.bq.L(true);
        if (this.bv.aY()) {
            this.bq.p(true);
        }
        this.v = 0;
        this.aC = true;
        this.bs.u();
        j(3);
        if (z2 || z3) {
            f fVar = this.cG;
            if (fVar == null || !fVar.f) {
                if (this.cG == null) {
                    N();
                }
                if (this.cG.f) {
                    aX();
                    return;
                }
                this.cG.g = true;
                this.cM.removeMessages(1);
                this.cM.sendEmptyMessageDelayed(1, 2000);
                return;
            }
            aX();
            return;
        }
        i(i2);
        this.bq.w(true);
        this.bq.d(true, true);
    }

    /* access modifiers changed from: private */
    public void a(ImageReader imageReader) {
        d.a("CameraManager", "addImageToIpa, start");
        Image acquireNextImage = imageReader.acquireNextImage();
        int width = acquireNextImage.getWidth();
        int height = acquireNextImage.getHeight();
        int rowStride = acquireNextImage.getPlanes()[0].getRowStride();
        com.oppo.camera.o.d.a(acquireNextImage);
        Image.Plane[] planes = acquireNextImage.getPlanes();
        ByteBuffer buffer = planes[0].getBuffer();
        ByteBuffer buffer2 = planes[2].getBuffer();
        NativeBufferProducer.NativeBufferInfo nativeBuffer = this.ck.getNativeBuffer(new ByteBuffer[]{buffer, buffer2}, new int[]{buffer.limit(), buffer2.limit()}, new int[]{width, height}, new int[]{planes[0].getRowStride(), planes[2].getRowStride()}, true, false);
        if (nativeBuffer != null) {
            d.a("CameraManager", "addImageToIpa, nativeBufferInfo: " + nativeBuffer.toString() + ", mThumbnailInfo: " + this.cl);
        } else {
            d.e("CameraManager", "addImageToIpa, nativeBufferInfo is null!");
        }
        b.a aVar = new b.a();
        aVar.d = nativeBuffer;
        aVar.e = width;
        aVar.f = height;
        aVar.i = 17;
        aVar.g = rowStride;
        aVar.h = height;
        aVar.k = acquireNextImage.getTimestamp();
        aVar.j = this.m;
        aVar.o = -1;
        aVar.l = false;
        aVar.p = System.currentTimeMillis();
        ImageProcessService imageProcessService = this.cj;
        if (imageProcessService != null) {
            imageProcessService.a(aVar);
        }
        if (!a("pref_support_capture_preview") && !this.bv.h(CameraFunction.POST_THUMBNAIL) && this.cS.g()) {
            a(aVar.k, com.oppo.camera.o.d.a(aVar.p), false, false);
        }
        acquireNextImage.close();
    }

    private void a(String str, boolean z2) {
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.b(str, z2);
        }
    }

    /* access modifiers changed from: private */
    public void a(String str, boolean z2, boolean z3, boolean z4) {
        if (this.bv != null) {
            MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.aT);
            menuClickMsgData.mCaptureMode = this.bv.h();
            menuClickMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            menuClickMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            menuClickMsgData.mCameraId = String.valueOf(this.q);
            menuClickMsgData.mOrientation = this.n;
            menuClickMsgData.mbVideoRecording = aq();
            menuClickMsgData.buildMenuClick(str, z2, z3, z4);
            menuClickMsgData.report();
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0223  */
    public void a(boolean z2, boolean z3, boolean z4) {
        boolean z5;
        l lVar;
        boolean z6 = z2;
        boolean z7 = z3;
        boolean z8 = z4;
        d.e("CameraManager", "CameraTest Camera Mode Change Start, isAsync: " + z6 + ", checkToAsync: " + z7 + ", fromAnimation: " + z8 + ", mbPaused: " + this.P);
        if (!this.P && this.bq != null) {
            if (!z8) {
                f(true);
            }
            if (!z6) {
                this.bq.d(false, false);
            }
            aU();
            String string = this.aU.getString("pref_camera_mode_key", com.oppo.camera.o.d.a(this.bQ.r() == 3));
            this.bq.w(false);
            this.bq.aI();
            this.bq.D();
            this.v = 0;
            if (z7 && b(string)) {
                J();
                if (!z8) {
                    q qVar = this.cL;
                    if (qVar == null || qVar.b() || this.cJ.d()) {
                        q qVar2 = this.cL;
                        if (qVar2 != null && qVar2.b()) {
                            this.cL.b(false);
                        }
                        this.bq.av();
                        this.cJ.c();
                        e(string);
                        return;
                    }
                }
                if (!e(string)) {
                    d.a("CameraManager", "onCaptureModeChanged, mPreviewImageProcess: " + this.cL);
                    this.ag = true;
                } else {
                    d.a("CameraManager", "onCaptureModeChanged, modeType or surfaceType changed, delay to call");
                    return;
                }
            }
            boolean aH2 = this.bv.aH();
            int b2 = this.bv.b();
            String h2 = this.bv.h();
            com.oppo.camera.d.i iVar = this.bv;
            int a2 = iVar.a(iVar.h()).a(this.q);
            com.oppo.camera.d.i iVar2 = this.bv;
            com.oppo.camera.d.a a3 = iVar2.a(iVar2.h());
            com.oppo.camera.d.a a4 = this.bv.a(string);
            int a5 = a4.a(this.q);
            d.b("CameraManager", "onCaptureModeChanged, beforeModeName: " + h2 + ", beforeModeProperCameraId: " + a2 + ", afterModeName: " + string + ", afterModeProperCameraId: " + a5);
            boolean a6 = a(string, this.q);
            boolean aH3 = this.bv.aH();
            if (!(a2 == a5 || this.T || this.aX == null)) {
                l lVar2 = this.cc;
                if (lVar2 != null) {
                    lVar2.a(new m().a(h2).b(string).a(a2).b(a5).c(b2).a(aH2).b(aH3).a(a4).b(a3));
                    z5 = true;
                    if (this.ag) {
                        a3.a(1, false);
                        this.bv.a(1, true);
                        this.bq.c(string, true);
                    }
                    d.b("CameraManager", "onCaptureModeChanged, modeChange: " + a6 + ", hasOpenCamera: " + z5);
                    if (!a6 || P()) {
                        d.a("CameraManager", "onCaptureModeChanged, isPreviewStopped: " + P() + ", isAsync: " + z6);
                        b(false, false);
                        r(false);
                        lVar = this.cc;
                        if (lVar != null && !z5) {
                            lVar.a(new m().a(h2).b(string).a(a2).b(a5).c(b2).a(aH2).b(aH3).a(a4).b(a3));
                        }
                        if (!z6) {
                            af();
                        }
                    } else {
                        af();
                    }
                    if (!z6 && !this.cJ.d()) {
                        this.bv.a(1, true);
                        f(false);
                        bm();
                        this.bq.d(true, false);
                    }
                    d.e("CameraManager", "CameraTest Camera Mode Change End, isAsync: " + z6);
                }
            }
            z5 = false;
            if (this.ag) {
            }
            d.b("CameraManager", "onCaptureModeChanged, modeChange: " + a6 + ", hasOpenCamera: " + z5);
            if (!a6) {
            }
            d.a("CameraManager", "onCaptureModeChanged, isPreviewStopped: " + P() + ", isAsync: " + z6);
            b(false, false);
            r(false);
            lVar = this.cc;
            lVar.a(new m().a(h2).b(string).a(a2).b(a5).c(b2).a(aH2).b(aH3).a(a4).b(a3));
            if (!z6) {
            }
            this.bv.a(1, true);
            f(false);
            bm();
            this.bq.d(true, false);
            d.e("CameraManager", "CameraTest Camera Mode Change End, isAsync: " + z6);
        }
    }

    private void a(byte[] bArr) {
        k kVar = this.bT;
        if (kVar != null) {
            kVar.a(bArr, this.q, this.n);
        }
    }

    private void a(byte[] bArr, int i2, int i3) {
        com.oppo.camera.ui.preview.a.i iVar = this.br;
        if (iVar != null) {
            iVar.a(bArr, i2, i3, 16);
        }
    }

    private boolean a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editor;
        d.a("CameraManager", "applyFlashModeOff");
        if (!c.a_.equals(sharedPreferences.getString("pref_camera_flashmode_key", c.a_))) {
            editor = sharedPreferences.edit();
            editor.putString("pref_camera_flashmode_key", c.a_);
        } else {
            editor = null;
        }
        if (!c.a_.equals(sharedPreferences.getString("pref_camera_videoflashmode_key", c.a_))) {
            if (editor == null) {
                editor = sharedPreferences.edit();
            }
            editor.putString("pref_camera_videoflashmode_key", c.a_);
        }
        if (editor == null) {
            return false;
        }
        editor.apply();
        return true;
    }

    /* access modifiers changed from: private */
    public boolean a(Size size, Size size2, boolean z2, int i2, d.a aVar) {
        int b2 = aVar != null ? aVar.b() : -1;
        d.e("CameraManager", "showBlurAnim, animType: " + b2);
        if (this.P || this.S) {
            return false;
        }
        if (this.cL == null) {
            this.cL = new q(this);
        }
        if (y()) {
            this.cL.a(size, size2, z2, i2);
        }
        if (!this.cL.a(aVar)) {
            return false;
        }
        k(true);
        c(b2);
        return true;
    }

    private boolean a(String[] strArr, String str) {
        if (strArr == null) {
            return false;
        }
        for (String equals : strArr) {
            if (str.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    private void aA() {
        this.bL = new HandlerThread("CameraHandlerThread");
        this.bL.start();
        this.bK = new Handler(this.bL.getLooper()) {
            public void handleMessage(Message message) {
                d.a("CameraManager", "handleMessage_mWorkThreadHandler, what: " + message.what);
                if (e.this.bI == null) {
                    CabcManager unused = e.this.bI = CabcManager.getCabcManagerInstance();
                }
                int i = message.what;
                if (i == 1) {
                    e.this.bI.openCabc();
                } else if (i == 2) {
                    e.this.bI.closeCabc();
                } else if (i == 3) {
                    e eVar = e.this;
                    u unused2 = eVar.bD = eVar.br();
                    if (e.this.bD != null) {
                        e.this.bD.a();
                        e.this.bD.a(e.this.q);
                        e.this.bD.a((HashMap<String, Size>) (HashMap) message.obj);
                    }
                }
                d.a("CameraManager", "handleMessage_mCabcHandler X");
            }
        };
    }

    /* access modifiers changed from: private */
    public void aB() {
        Handler handler = this.bK;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.bK.sendEmptyMessage(2);
        }
    }

    /* access modifiers changed from: private */
    public void aC() {
        Handler handler = this.bK;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.bK.sendEmptyMessage(1);
        }
    }

    private void aD() {
        HandlerThread handlerThread = this.bL;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    private void aE() {
        this.bp = new o(this.aT);
        this.bp.a();
        a(96, false);
        if (this.bQ.r() == 2) {
            Bundle extras = this.aT.getIntent().getExtras();
            if (extras != null) {
                try {
                    this.bM = (Uri) extras.getParcelable("output");
                } catch (Exception e) {
                    e.printStackTrace();
                }
                try {
                    this.aI = extras.getString("crop");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        this.bv.e(this.aj);
    }

    private boolean aF() {
        if (this.cj == null || !this.bv.h("pref_support_ipa_process") || (!A(!this.cS.g()) && !com.oppo.camera.e.a.c(this.q))) {
            d.b("CameraManager", "needNotifyIpa, will return false");
            return false;
        }
        d.b("CameraManager", "needNotifyIpa, will return true");
        return true;
    }

    /* access modifiers changed from: private */
    public void aG() {
        a((SharedPreferences) this.aU);
        if (a(CameraFunction.TORCH_SOFT_LIGHT)) {
            b(this.aU.b(this.aT, 1));
        }
        aI();
        o();
    }

    /* access modifiers changed from: private */
    public void aH() {
        a((SharedPreferences) this.aU);
        if (a(CameraFunction.TORCH_SOFT_LIGHT)) {
            b(this.aU.b(this.aT, 1));
        }
        aI();
        p();
    }

    private void aI() {
        this.bq.d("pref_camera_flashmode_key");
        this.bq.d("pref_camera_videoflashmode_key");
        if (a(CameraFunction.TORCH_SOFT_LIGHT)) {
            this.bq.d("pref_camera_torch_mode_key");
        }
    }

    /* access modifiers changed from: private */
    public String aJ() {
        int[] iArr = this.t;
        if (iArr == null || iArr.length < 2) {
            return "";
        }
        return this.t[0] + "x" + this.t[1];
    }

    /* access modifiers changed from: private */
    public String aK() {
        d.a("CameraManager", "checkSmallInternalStorage");
        String string = this.aT.getString(R.string.camera_storage_default_value);
        if (v.d() && v.g() <= 8.0d) {
            string = "on";
        }
        i.a a2 = this.aU.edit();
        a2.putString("pref_camera_storage_key", string);
        a2.apply();
        return string;
    }

    /* access modifiers changed from: private */
    public void aL() {
        d.a("CameraManager", "checkStorage, mbCheckStorage: " + this.L);
        if (!this.L) {
            this.L = true;
            this.bw = new AsyncTask<Void, Void, Void>() {
                /* access modifiers changed from: protected */
                /* renamed from: a */
                public Void doInBackground(Void... voidArr) {
                    d.a("CameraManager", "checkStorage, doInBackground");
                    if (e.this.P) {
                        return null;
                    }
                    v.a(e.this.aU, e.this.aK);
                    return null;
                }

                /* access modifiers changed from: protected */
                /* renamed from: a */
                public void onPostExecute(Void voidR) {
                    d.a("CameraManager", "checkStorage, onPostExecute, mbPaused: " + e.this.P);
                    if (!e.this.P) {
                        int i = v.r;
                        if (i == 1 || i == 2 || i == 3 || i == 4) {
                            if (e.this.bv.ar()) {
                                e.this.bv.f(false);
                            }
                        } else if (i == 5 && e.this.bv.ar() && e.this.bk != null) {
                            e.this.bk.a();
                        }
                        e eVar = e.this;
                        String unused = eVar.aK = eVar.aU.getString("pref_camera_storage_key", e.this.aT.getString(R.string.camera_storage_default_value));
                        e.this.bq.k();
                    }
                    boolean unused2 = e.this.L = false;
                }

                /* access modifiers changed from: protected */
                public void onPreExecute() {
                    d.a("CameraManager", "onPreExecute");
                    if (!e.this.P) {
                        e eVar = e.this;
                        String unused = eVar.aK = eVar.aU.getString("pref_camera_storage_key", (String) null);
                        if (e.this.aK == null) {
                            e eVar2 = e.this;
                            String unused2 = eVar2.aK = eVar2.aK();
                        }
                    }
                    if (!e.this.ar) {
                        if ("on".equals(e.this.aK) && !v.d()) {
                            i.a a2 = e.this.aU.edit();
                            a2.putString("pref_camera_storage_key", c.a_);
                            a2.apply();
                            String unused3 = e.this.aK = c.a_;
                        }
                        boolean unused4 = e.this.ar = true;
                    }
                }
            }.execute(new Void[0]);
        }
    }

    private int aM() {
        int i2 = this.k;
        if (!com.oppo.camera.o.d.b("oppo.multibits.dimming.support")) {
            return i2;
        }
        int parseInt = Integer.parseInt(DebugUtil.getDebugProperty("sys.oppo.multibrightness", "0"));
        return parseInt == 0 ? this.k : parseInt;
    }

    private void aN() {
        d.a("CameraManager", "onPictureSizeChanged");
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            if (a(eVar.Q(), this.bv.a(this.aY), false, 100, (d.a) new q())) {
                i(true);
            }
            this.bq.aJ();
        }
        this.v = 0;
    }

    private void aO() {
        String string = this.aU.getString("pref_video_size_key", CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", this.q));
        if (!aQ() || (!"video_size_4kuhd".equals(string) && !this.bv.aw())) {
            if (a(this.bq.Q(), this.bv.a(this.aY), false, 0, (d.a) new x())) {
                i(true);
                if (this.cS.g() && "video_size_720p".equals(string)) {
                    this.bq.aA();
                    return;
                }
                return;
            }
            return;
        }
        this.aE = true;
        bJ();
        aP();
    }

    /* access modifiers changed from: private */
    public void aP() {
        Size Q2 = this.bq.Q();
        if (a(Q2, Q2, false, 0, (d.a) new a())) {
            i(true);
        }
    }

    /* access modifiers changed from: private */
    public boolean aQ() {
        boolean equals = "on".equals(this.aU.getString("pref_none_sat_ultra_wide_angle_key", c.a_));
        d.c("CameraManager", "isNoneSatUltraWideAngleMenuOpen, noneSatUltraWideAngleMenuOpen: " + equals);
        return equals;
    }

    private void aR() {
        Size Q2 = this.bq.Q();
        if (a(Q2, Q2, false, 0, (d.a) new k())) {
            i(true);
        }
    }

    private void aS() {
        Size Q2 = this.bq.Q();
        com.oppo.camera.d.i iVar = this.bv;
        Size a2 = iVar != null ? iVar.a(this.aY) : null;
        if (a2 != null && Q2 != null) {
            if (a(Q2, a2, false, 0, (d.a) new u())) {
                i(true);
            }
        }
    }

    private boolean aT() {
        return !ak() && !this.am;
    }

    /* access modifiers changed from: private */
    public void aU() {
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.m();
        }
    }

    private void aV() {
        if (!this.P) {
            Activity activity = this.aT;
            if (activity != null) {
                com.oppo.camera.d.i iVar = this.bv;
                if (iVar != null) {
                    iVar.a(activity);
                }
            }
        }
    }

    private void aW() {
        Activity activity = this.aT;
        if (activity != null) {
            Toast.makeText(activity, activity.getString(R.string.camera_high_temperature_exit_toast), 0).show();
            d.e("CameraManager", "finishByHighTemperature, Toast.show.");
            i(ReminderMsgData.KEY_TEMPS_CAM);
            this.aT.finish();
            this.ch = true;
        }
    }

    /* access modifiers changed from: private */
    public void aX() {
        f fVar = this.cG;
        if (fVar == null || !fVar.f || this.P) {
            d.d("CameraManager", "onSwitchPreviewData, invalid data");
            return;
        }
        d.a("CameraManager", "onSwitchPreviewData, getCurrentModeName: " + this.bv.h());
        Bitmap bitmap = this.cG.h;
        Bitmap a2 = com.oppo.camera.o.d.a(bitmap, 25.0f);
        com.oppo.camera.ui.e eVar = this.bq;
        if (!(eVar == null || eVar.c() == null)) {
            this.bq.c().a(a2, this.q);
        }
        if (bitmap != null) {
            bitmap.recycle();
        }
        if (this.bq != null) {
            this.bv.a(2, false);
            this.bq.g(false);
        }
        this.cG = null;
    }

    private String aY() {
        if (this.bQ.r() == 3) {
            return "commonVideo";
        }
        if (this.bQ.r() != 2) {
            return this.bv.h();
        }
        String h2 = this.bv.h();
        d.a("CameraManager", "afterSwitchMode, previousCapMode: " + h2);
        return TextUtils.isEmpty(h2) ? com.oppo.camera.o.d.a(false) : h2;
    }

    /* access modifiers changed from: private */
    public boolean aZ() {
        return O();
    }

    /* access modifiers changed from: private */
    public boolean az() {
        Activity activity = this.aT;
        if (activity == null) {
            return false;
        }
        KeyguardManager keyguardManager = (KeyguardManager) activity.getSystemService("keyguard");
        if (keyguardManager != null) {
            return keyguardManager.isDeviceLocked();
        }
        return false;
    }

    private void b(int i2, int i3) {
        if (this.bv != null) {
            String str = i2 + "x" + i3;
            FocusAimMsgData focusAimMsgData = new FocusAimMsgData(this.aT);
            focusAimMsgData.mCameraId = String.valueOf(this.q);
            focusAimMsgData.mCaptureMode = this.bv.h();
            focusAimMsgData.mOrientation = this.n;
            focusAimMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            focusAimMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            focusAimMsgData.mbVideoRecording = aq();
            focusAimMsgData.mTouchXY = str;
            focusAimMsgData.report();
        }
    }

    /* access modifiers changed from: private */
    public void b(TotalCaptureResult totalCaptureResult) {
        if (this.cd == null || !a("key_support_show_no_face")) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (eVar != null) {
                eVar.aq();
            }
        } else if (this.bq != null) {
            if (this.ae) {
                Face[] faceArr = this.bl;
                if (faceArr == null || faceArr.length == 0) {
                    this.bq.ap();
                }
            }
            this.bq.aq();
        }
        if (this.bq != null) {
            if (a("pref_face_detection_key")) {
                boolean z2 = !this.bq.R() && O() && !x();
                if (z2) {
                    this.bq.a(this.bn);
                    float configFloatValue = CameraConfig.getConfigFloatValue(ConfigDataBase.KEY_VIDEO_EIS_PREVIEW_SCALE);
                    if (!this.af || configFloatValue <= 1.0f) {
                        configFloatValue = 1.0f;
                    }
                    if (com.oppo.camera.o.d.w()) {
                        this.bq.a(configFloatValue);
                    }
                    if (!this.bs.D()) {
                        this.cM.removeMessages(13);
                        this.cM.obtainMessage(13, Boolean.valueOf(z2)).sendToTarget();
                    }
                } else {
                    this.cM.removeMessages(13);
                    this.cM.obtainMessage(13, Boolean.valueOf(z2)).sendToTarget();
                }
            }
            if (totalCaptureResult != null) {
                int[] iArr = null;
                f fVar = this.aX;
                if (fVar != null) {
                    iArr = fVar.a("com.oppo.focus.is.depth.based", totalCaptureResult);
                }
                Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
                Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE);
                if (!(num == null || num2 == null)) {
                    this.bs.a(num.intValue(), num2.intValue(), iArr, this.l);
                }
                a(totalCaptureResult);
            }
            y yVar = this.bu;
            if (yVar != null && yVar.a()) {
                this.bu.c();
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(ImageReader imageReader) {
        if (this.P || this.U || this.T) {
            imageReader.acquireNextImage().close();
            return;
        }
        Image acquireNextImage = imageReader.acquireNextImage();
        if (acquireNextImage == null) {
            d.e("CameraManager", "onPreviewFrameReceived, image is null");
            return;
        }
        boolean ae2 = this.bv.ae();
        boolean h2 = this.bv.h("pref_camera_blur_mode_key");
        boolean m2 = m();
        if (m2 || h2 || ae2) {
            byte[] a2 = com.oppo.camera.o.d.a(acquireNextImage, 17);
            if (a2 == null) {
                d.e("CameraManager", "onPreviewFrameReceived, bytes is null");
                acquireNextImage.close();
                return;
            }
            int i2 = com.oppo.camera.e.a.c(this.q) ? 3 : 4;
            if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_PREVIEW_YUV, DebugUtil.DEBUG_DISABLE)) {
                com.oppo.camera.o.d.a(a2, DebugUtil.DUMP_DIR_PREVIEW_YUV, "yuv_" + acquireNextImage.getTimestamp() + ".yuv");
                d.a("CameraManager", "onPreviewFrameReceived, TYPE_PREVIEW_FRAME, reader.size: " + imageReader.getWidth() + "x" + imageReader.getHeight() + ", format: " + imageReader.getImageFormat() + ", bytes.size: " + a2.length + ", file: yuv_" + acquireNextImage.getTimestamp() + ".yuv");
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            int i3 = 1000 / i2;
            long j2 = uptimeMillis - this.B;
            if (j2 > 1000) {
                j2 = 0;
            }
            this.H += j2;
            this.I += j2;
            this.J += j2;
            this.B = uptimeMillis;
            if (h2) {
                long j3 = this.H;
                long j4 = (long) i3;
                if (j3 >= j4) {
                    this.H = j3 - j4;
                    b(a2, acquireNextImage.getWidth(), acquireNextImage.getHeight());
                }
            }
            if (m2) {
                long j5 = this.I;
                long j6 = (long) 76;
                if (j5 >= j6) {
                    this.I = j5 - j6;
                    a(a2);
                }
            }
            if (ae2) {
                long j7 = this.J;
                long j8 = (long) 33;
                if (j7 >= j8) {
                    this.J = j7 - j8;
                    a(a2, acquireNextImage.getWidth(), acquireNextImage.getHeight());
                }
            }
        }
        this.bv.b(acquireNextImage);
        acquireNextImage.close();
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x011e  */
    private void b(v.a aVar) {
        boolean z2;
        CameraStatisticsUtil.MakerNote makerNote;
        String json;
        if (aVar != null) {
            if (aVar.h != null && !aVar.h.isEmpty()) {
                z2 = true;
            } else if (aVar.d == null || aVar.d.length <= 0) {
                d.b("CameraManager", "writeNearMeDateToExif, picture is invalid");
                return;
            } else {
                z2 = false;
            }
            d.b("CameraManager", "writeNearMeDateToExif, isJpegPath: " + z2);
            ExifInterface d2 = z2 ? com.oppo.camera.o.d.d(aVar.h) : com.oppo.camera.o.d.a(aVar.d);
            if (d2 != null) {
                CameraStatisticsUtil.MakerNote ax2 = this.bv.ax();
                if (ax2 != null) {
                    ax2.J = String.valueOf(this.q);
                    ax2.K = String.valueOf(this.bv.h());
                    ax2.M = String.valueOf(r());
                    Face[] faceArr = this.bl;
                    if (faceArr != null && faceArr.length > 0) {
                        ArrayList<CameraStatisticsUtil.FaceSize> arrayList = new ArrayList<>();
                        ArrayList<CameraStatisticsUtil.FaceCoordinate> arrayList2 = new ArrayList<>();
                        for (Face face : this.bl) {
                            CameraStatisticsUtil.FaceSize faceSize = new CameraStatisticsUtil.FaceSize();
                            faceSize.N1 = String.valueOf(face.getBounds().width());
                            faceSize.N2 = String.valueOf(face.getBounds().height());
                            arrayList.add(faceSize);
                            CameraStatisticsUtil.FaceCoordinate faceCoordinate = new CameraStatisticsUtil.FaceCoordinate();
                            faceCoordinate.L1 = String.valueOf(face.getBounds().left);
                            faceCoordinate.L2 = String.valueOf(face.getBounds().top);
                            faceCoordinate.L3 = String.valueOf(face.getBounds().right);
                            faceCoordinate.L4 = String.valueOf(face.getBounds().bottom);
                            arrayList2.add(faceCoordinate);
                        }
                        ax2.N = arrayList;
                        ax2.L = arrayList2;
                        ax2.S = String.valueOf(this.u);
                    }
                    ax2.R = String.valueOf(this.bv.aR());
                    Gson gson = new Gson();
                    String attribute = d2.getAttribute("MakerNote");
                    if (attribute != null && !attribute.isEmpty()) {
                        try {
                            makerNote = (CameraStatisticsUtil.MakerNote) gson.fromJson(attribute, CameraStatisticsUtil.MakerNote.class);
                        } catch (JsonSyntaxException e) {
                            e.printStackTrace();
                        }
                        if (makerNote != null) {
                            ax2.A = makerNote.A;
                            ax2.B = makerNote.B;
                            ax2.C = makerNote.C;
                            ax2.I = makerNote.I;
                            ax2.P = makerNote.P;
                            ax2.Q = makerNote.Q;
                            ax2.U = makerNote.U;
                            ax2.V = makerNote.V;
                            ax2.PiFlag = makerNote.PiFlag;
                            ax2.nightFlag = makerNote.nightFlag;
                            ax2.asdOut = makerNote.asdOut;
                            ax2.iso = makerNote.iso;
                            ax2.expTime = makerNote.expTime;
                        }
                        json = gson.toJson((Object) ax2);
                        if (json != null && !json.isEmpty()) {
                            aVar.A = json;
                            return;
                        }
                    }
                    makerNote = null;
                    if (makerNote != null) {
                    }
                    json = gson.toJson((Object) ax2);
                    if (json != null) {
                    }
                }
            }
        }
    }

    private void b(byte[] bArr, int i2, int i3) {
        com.oppo.camera.ui.preview.a.i iVar = this.br;
        if (iVar != null) {
            iVar.a(bArr, i2, i3, 1);
        }
    }

    private boolean b(SharedPreferences sharedPreferences) {
        d.a("CameraManager", "applyTorchModeOff");
        if (c.a_.equals(sharedPreferences.getString("pref_camera_torch_mode_key", c.a_))) {
            return false;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("pref_camera_torch_mode_key", c.a_);
        edit.apply();
        return true;
    }

    private void bA() {
        i iVar = this.aU;
        if (iVar != null) {
            boolean z2 = iVar.getBoolean("key_high_picture_size", false);
            d.a("CameraManager", "resetHighPictureSize, isHighPictureSize: " + z2);
            if (z2) {
                this.aU.edit().remove("key_high_picture_size").remove("pref_camera_photo_ratio_key").remove("pref_camera_high_resolution_key").apply();
            }
        }
    }

    private void bB() {
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.a(this.aX);
            this.bv.d(false);
            this.bv.g();
        }
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.E();
        }
    }

    private void bC() {
        d.a("CameraManager", "clearTimerShutterPreference, mPreferences: " + this.aU);
        i iVar = this.aU;
        if (iVar != null) {
            i.a a2 = iVar.edit();
            a2.remove("pref_camera_timer_shutter_key");
            a2.commit();
        }
        d.a("CameraManager", "clearTimerShutterPreference, X");
    }

    private void bD() {
        d.a("CameraManager", "clearCameraIdPreference, mPreference: " + this.aU);
        i iVar = this.aU;
        if (iVar != null) {
            i.a a2 = iVar.edit();
            a2.remove("pref_switch_camera_key");
            a2.commit();
        }
        d.a("CameraManager", "clearCameraIdPreference X");
    }

    private void bE() {
        boolean configBooleanValue = CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_MOTOR_FLASHLIGHT);
        d.a("CameraManager", "saveCameraExitState, motorFlash: " + configBooleanValue);
        if (configBooleanValue) {
            bF();
        }
    }

    private void bF() {
        if (this.aT != null && this.aU != null) {
            if (com.oppo.camera.e.a.c(this.q)) {
                if (b((SharedPreferences) this.aU)) {
                    com.oppo.camera.ui.e eVar = this.bq;
                    if (eVar != null) {
                        if (!eVar.W()) {
                            this.bq.e(true, false);
                        }
                        this.bq.d("pref_camera_torch_mode_key");
                    }
                }
                a(this.aU.b(this.aT, 0));
                return;
            }
            if (a((SharedPreferences) this.aU)) {
                com.oppo.camera.ui.e eVar2 = this.bq;
                if (eVar2 != null) {
                    if (!eVar2.W()) {
                        this.bq.e(true, false);
                    }
                    this.bq.d("pref_camera_flashmode_key");
                    this.bq.d("pref_camera_videoflashmode_key");
                }
            }
            b(this.aU.b(this.aT, 1));
        }
    }

    /* access modifiers changed from: private */
    public void bG() {
        if (this.bv != null) {
            SwitchCameraMsgData switchCameraMsgData = new SwitchCameraMsgData(this.aT);
            switchCameraMsgData.mCameraId = String.valueOf(this.q);
            switchCameraMsgData.mCaptureMode = this.bv.h();
            switchCameraMsgData.mOrientation = this.n;
            switchCameraMsgData.mScreenBrightness = (int) ((float) Settings.System.getInt(this.aT.getContentResolver(), CameraStatisticsUtil.SCREEN_BRIGHTNESS, (int) (((float) this.k) * 0.4f)));
            switchCameraMsgData.mToCaptureMode = this.bv.h();
            switchCameraMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            switchCameraMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            switchCameraMsgData.report();
        }
    }

    /* access modifiers changed from: private */
    public void bH() {
        if (this.bv != null) {
            MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.aT);
            menuClickMsgData.buildEvent(false);
            menuClickMsgData.mFuncKeyId = 6;
            menuClickMsgData.mCaptureMode = this.bv.h();
            menuClickMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            menuClickMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            menuClickMsgData.mCameraId = String.valueOf(this.q);
            menuClickMsgData.mOrientation = this.n;
            menuClickMsgData.mbVideoRecording = aq();
            menuClickMsgData.report();
        }
    }

    private void bI() {
        if (this.bv != null) {
            MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.aT);
            menuClickMsgData.buildEvent(false);
            menuClickMsgData.mFuncKeyId = 5;
            menuClickMsgData.mCaptureMode = this.bv.h();
            menuClickMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            menuClickMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            menuClickMsgData.mCameraId = String.valueOf(this.q);
            menuClickMsgData.mOrientation = this.n;
            menuClickMsgData.report();
        }
    }

    private void bJ() {
        if (a("pref_none_sat_ultra_wide_angle_key")) {
            i iVar = this.aU;
            if (iVar != null && "on".equals(iVar.getString("pref_none_sat_ultra_wide_angle_key", this.aT.getString(R.string.ultra_wide_angle_default_value)))) {
                i.a a2 = this.aU.edit();
                a2.a("pref_none_sat_ultra_wide_angle_key", c.a_, true);
                a2.apply();
            }
        }
    }

    private boolean bK() {
        try {
            String callingPackage = this.aT.getCallingPackage();
            new Intent("android.intent.action.MAIN", (Uri) null).addCategory("android.intent.category.LAUNCHER");
            PackageInfo packageInfo = this.aT.getPackageManager().getPackageInfo(callingPackage, 4096);
            if (packageInfo == null) {
                return false;
            }
            String[] strArr = packageInfo.requestedPermissions;
            return a(strArr, "android.permission.ACCESS_FINE_LOCATION") && a(strArr, "android.permission.ACCESS_COARSE_LOCATION");
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    private void ba() {
        d.a("CameraManager", "exitOneCamera");
        i iVar = this.cr;
        if (iVar != null) {
            iVar.a();
        }
        f fVar = this.aX;
        if (fVar != null) {
            fVar.b();
            this.aX = null;
        }
        bb();
        j(4);
        com.oppo.camera.d.i iVar2 = this.bv;
        if (iVar2 != null) {
            iVar2.aZ();
        }
        ImageProcessService imageProcessService = this.cj;
        if (imageProcessService != null) {
            imageProcessService.b();
        }
    }

    /* access modifiers changed from: private */
    public void bb() {
        d.a("CameraManager", "closeImageReader");
        com.oppo.camera.a.a.a().e();
        ImageReader imageReader = this.bc;
        if (imageReader != null) {
            imageReader.close();
            this.bc = null;
        }
        ImageReader imageReader2 = this.bj;
        if (imageReader2 != null) {
            imageReader2.close();
            this.bj = null;
        }
        ImageReader imageReader3 = this.bb;
        if (imageReader3 != null) {
            imageReader3.close();
            this.bb = null;
        }
        ImageReader imageReader4 = this.bd;
        if (imageReader4 != null) {
            imageReader4.close();
            this.bd = null;
        }
        ImageReader imageReader5 = this.be;
        if (imageReader5 != null) {
            imageReader5.close();
            this.be = null;
        }
        Handler handler = this.cn;
        if (handler != null) {
            handler.getLooper().quitSafely();
            this.cn = null;
        }
        ImageReader imageReader6 = this.bf;
        if (imageReader6 != null) {
            imageReader6.close();
            this.bf = null;
        }
        ImageReader imageReader7 = this.bg;
        if (imageReader7 != null) {
            imageReader7.close();
            this.bg = null;
        }
        ImageReader imageReader8 = this.bh;
        if (imageReader8 != null) {
            imageReader8.close();
            this.bh = null;
        }
        ImageReader imageReader9 = this.bi;
        if (imageReader9 != null) {
            imageReader9.close();
            this.bi = null;
        }
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.Q();
        }
        d.a("CameraManager", "closeImageReader X");
    }

    private void bc() {
        this.C = System.currentTimeMillis();
        this.E = 0;
        this.F = 0;
        this.D = 0;
        g();
        this.u = 0;
    }

    private void bd() {
        g();
        this.u = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
    }

    /* access modifiers changed from: private */
    public void be() {
        d.a("CameraManager", "backToLastMode");
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.aP();
        }
    }

    /* access modifiers changed from: private */
    public void bf() {
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.f(true);
            this.bs.e(8);
            this.bs.f(8);
        }
        a((Animation.AnimationListener) null);
    }

    /* access modifiers changed from: private */
    public void bg() {
        this.bt = new x(this.aT, this.aU, this.cS);
        this.bt.b(this.bq.b().getLayoutDirection());
        this.bt.a((x.a) new g());
        this.bt.a(this.bq.b());
        this.bt.a(this.n, false);
    }

    /* access modifiers changed from: private */
    public void bh() {
        int i2;
        int i3;
        if (this.cS.h()) {
            i3 = (com.oppo.camera.o.d.E() + ((int) (((double) com.oppo.camera.o.d.N()) * 1.5d))) - this.aT.getResources().getDimensionPixelSize(R.dimen.zoom_seek_margin_bottom_third_party);
            i2 = this.aT.getResources().getDimensionPixelSize(R.dimen.zoom_seek_line_bar_height);
        } else {
            i3 = (com.oppo.camera.o.d.E() + ((int) (((double) com.oppo.camera.o.d.N()) * 1.3333333333333333d))) - this.aT.getResources().getDimensionPixelSize(R.dimen.zoom_seek_line_bar_height);
            i2 = this.bv.aS();
        }
        int i4 = i3 - i2;
        this.bt.c(i4);
        s(i4);
    }

    /* access modifiers changed from: private */
    public void bi() {
        d.a("CameraManager", "clearLockDB, mbLockDbCleared: " + this.cf);
        try {
            this.aT.getContentResolver().delete(Uri.parse("content://com.oppo.gallery3d.albumsprovider/locked_pictures"), "0==0", (String[]) null);
        } catch (Exception e) {
            d.a("CameraManager", "clearLockDB ", (Throwable) e);
        }
    }

    private void bj() {
        if (this.aZ == null) {
            this.aZ = new r();
        }
    }

    /* access modifiers changed from: private */
    public f.C0058f bk() {
        if (this.ba == null) {
            this.ba = new C0057e();
        }
        return this.ba;
    }

    private int bl() {
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            return iVar.ac();
        }
        return 1;
    }

    /* access modifiers changed from: private */
    public void bm() {
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null && iVar.h("pref_zoom_key") && !this.bv.h("pref_expand_popbar_key")) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (eVar != null && !eVar.K() && !this.bq.m() && !this.bq.w()) {
                al();
                x(true);
                return;
            }
        }
        a((Animation.AnimationListener) null);
        x(false);
    }

    /* access modifiers changed from: private */
    public String bn() {
        if (O()) {
            com.oppo.camera.d.i iVar = this.bv;
            if (iVar == null || !iVar.h("pref_time_lapse_key") || this.bQ.r() == 3) {
                return c.a_;
            }
            com.oppo.camera.d.i iVar2 = this.bv;
            String U2 = iVar2 != null ? iVar2.U() : c.a_;
            if (n() && "on".equals(this.aU.getString("pref_camera_gesture_shutter_key", this.aT.getString(R.string.camera_gesture_shutter_default_value))) && c.a_.equals(U2)) {
                U2 = OppoExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL;
            }
            if (!this.bQ.b()) {
                return U2;
            }
            String num = Integer.toString(3);
            this.bQ.c();
            return num;
        }
        return c.a_;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0032, code lost:
        if (r2 != null) goto L_0x0034;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0034, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0037, code lost:
        com.oppo.camera.d.b("CameraManager", "isLockAblumHasPicture X");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0052, code lost:
        if (r2 == null) goto L_0x0037;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0055, code lost:
        return false;
     */
    public boolean bo() {
        d.b("CameraManager", "isLockAblumHasPicture");
        Cursor cursor = null;
        try {
            cursor = this.aT.getContentResolver().query(Uri.parse("content://com.oppo.gallery3d.albumsprovider/locked_pictures"), (String[]) null, (String) null, (String[]) null, (String) null);
            if (cursor != null) {
                boolean moveToFirst = cursor.moveToFirst();
                if (cursor != null) {
                    cursor.close();
                }
                d.b("CameraManager", "isLockAblumHasPicture X");
                return moveToFirst;
            }
            d.e("CameraManager", "isLockAblumHasPicture, cursor is null");
        } catch (Exception e) {
            d.e("CameraManager", "isLockAblumHasPicture, failed to open cursor error: " + e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            d.b("CameraManager", "isLockAblumHasPicture X");
            throw th;
        }
    }

    /* access modifiers changed from: private */
    public boolean bp() {
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null && iVar.h(CameraFunction.TORCH_SOFT_LIGHT)) {
            return false;
        }
        String string = this.aU.getString("pref_camera_torch_mode_key", this.aT.getResources().getString(R.string.camera_torch_mode_default_value));
        String string2 = this.aU.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.q));
        if (c.a_.equals(string) || !"on".equals(string2)) {
            return "on".equals(string) && MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(string2);
        }
        return true;
    }

    private void bq() {
        if (this.bA == null) {
            this.bA = new com.oppo.camera.Ipa.e();
            this.bA.a(this.cW);
        }
    }

    /* access modifiers changed from: private */
    public u br() {
        if (this.bD == null) {
            Activity activity = this.aT;
            if (activity != null) {
                i iVar = this.aU;
                if (iVar != null) {
                    this.bD = new u(activity, iVar, new s());
                }
            }
        }
        return this.bD;
    }

    /* access modifiers changed from: private */
    public boolean bs() {
        if (this.bD != null && a("pref_camera_slogan_key") && (this.bD.a("pref_slogan_location_key") || this.bD.a("pref_slogan_time_key"))) {
            if (this.bD.c() && this.bD.f2514a != 1) {
                d.b("CameraManager", "checkReadyToCapture, isTimeOrLocationChanged");
                this.bD.b();
            }
            if (this.bD.f2514a == 1) {
                d.e("CameraManager", "checkReadyToCapture, slogan need to update, so return");
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: private */
    public void bt() {
        if (this.bv.e()) {
            bu();
        } else {
            this.cY.i();
        }
    }

    /* access modifiers changed from: private */
    public void bu() {
        if (!B(false)) {
            com.oppo.camera.ui.preview.h hVar = this.bs;
            if (hVar != null) {
                hVar.h();
                return;
            }
            return;
        }
        String bn2 = bn();
        com.oppo.camera.ui.control.h hVar2 = this.bz;
        if (hVar2 != null && hVar2.a()) {
            this.cq = "normal";
            this.bz.g();
        } else if (!c.a_.equals(bn2)) {
            f(bn2);
        } else {
            com.oppo.camera.ui.control.h hVar3 = this.bz;
            if ((hVar3 == null || !hVar3.f()) && this.bq.au()) {
                d.d("CameraManager", "onCameraShutterButtonClick, beforeCameraShutterButtonClick fail, so return");
            } else {
                C(true);
            }
        }
    }

    /* access modifiers changed from: private */
    public void bv() {
        w wVar = this.bJ;
        if (wVar != null) {
            wVar.c();
        }
    }

    /* access modifiers changed from: private */
    public void bw() {
        w wVar = this.bJ;
        if (wVar != null) {
            wVar.d();
        }
    }

    /* access modifiers changed from: private */
    public boolean bx() {
        return a("pref_burst_shot_key") || a("key_short_video");
    }

    /* access modifiers changed from: private */
    public boolean by() {
        return !this.aU.getString("pref_camera_gesture_shutter_key", this.aT.getString(R.string.camera_gesture_shutter_default_value)).equals(this.aU.getString("last_camera_gesture_shutter_key", this.aT.getString(R.string.camera_gesture_shutter_default_value)));
    }

    /* access modifiers changed from: private */
    public boolean bz() {
        return a("pref_none_sat_ultra_wide_angle_key") && !this.bv.aw();
    }

    private void d(MotionEvent motionEvent) {
        d.a("CameraManager", "onUp");
        d.a("onUp");
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar == null || !iVar.a(this.s, motionEvent)) {
            int i2 = this.s;
            if (i2 != 1) {
                if (i2 == 2) {
                    if (this.bq.m()) {
                        if (motionEvent.getY() < ((float) this.bq.U()) && E()) {
                            this.bq.T();
                        }
                    } else if (F()) {
                        this.bq.J();
                    }
                }
            } else if (this.bq.m()) {
                if (motionEvent.getY() < ((float) this.bq.U()) && E()) {
                    this.bq.S();
                }
            } else if (F()) {
                this.bq.I();
            }
            this.s = 0;
            d.b("onUp");
            return;
        }
        d.a("CameraManager", "onUp, getCurrentModeName: " + this.bv.h());
        this.s = 0;
        d.b("onUp");
    }

    /* access modifiers changed from: private */
    public void d(boolean z2, boolean z3) {
        this.bq.s(this.v);
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null && z2) {
            iVar.E();
        }
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.f(false);
            if (s()) {
                this.bs.e(0);
                this.bs.f(0);
            }
        }
        if (z3) {
            bm();
        }
    }

    /* access modifiers changed from: private */
    public void e(boolean z2, boolean z3) {
        if (this.bv != null) {
            MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.aT);
            menuClickMsgData.buildEvent(z3);
            menuClickMsgData.mFuncKeyId = 1;
            menuClickMsgData.mCaptureMode = this.bv.h();
            menuClickMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            menuClickMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            menuClickMsgData.mCameraId = String.valueOf(this.q);
            menuClickMsgData.mOrientation = this.n;
            menuClickMsgData.mbVideoRecording = aq();
            if (z2) {
                menuClickMsgData.mFuncKeyResult = 1;
            } else {
                menuClickMsgData.mFuncKeyResult = 2;
            }
            menuClickMsgData.report();
        }
    }

    private boolean e(String str) {
        com.oppo.camera.d.a a2 = this.bv.a(str);
        Size a3 = a(a2);
        boolean z2 = !TextUtils.equals(a2.a(), this.bv.h());
        if (a3 == null) {
            d.e("CameraManager", "showCaptureModeChangeBlurAnim, null == newSize!");
            return false;
        }
        return a(this.bq.Q(), a3, z2, 0, (d.a) this.cJ);
    }

    /* access modifiers changed from: private */
    public void f(String str) {
        if (this.bz == null) {
            this.bz = new com.oppo.camera.ui.control.h();
            this.bz.a((h.b) new v());
        }
        String aO2 = this.bv.aO();
        if (aO2 == null) {
            aO2 = this.aU.getString("pref_camera_photo_ratio_key", "standard");
        }
        this.bz.a(Integer.valueOf(str).intValue(), this.aT, this.n, "full".equals(aO2));
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null && eVar.y()) {
            this.bq.z();
        }
    }

    /* access modifiers changed from: private */
    public boolean g(String str) {
        if (DebugUtil.debugPropertyEnabled("oppo.camera.test", DebugUtil.DEBUG_DISABLE)) {
            return false;
        }
        if ("pref_video_size_key".equals(str) || "pref_slow_video_frame_key".equals(str) || "pref_camera_photo_ratio_key".equals(str)) {
            return true;
        }
        if (this.bv.h("pref_camera_hdr_mode_key")) {
            return "pref_camera_hdr_mode_key".equals(str) ? (this.aX.c().H() || this.aX.c().G()) && com.oppo.camera.e.a.c(this.q) && !this.T && !this.U : "pref_camera_torch_mode_key".equals(str) && bp() && !this.T && !this.U;
        }
        return false;
    }

    /* access modifiers changed from: private */
    public void h(String str) {
        if (this.bv != null) {
            MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.aT);
            menuClickMsgData.mCaptureMode = this.bv.h();
            menuClickMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            menuClickMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
            menuClickMsgData.mCameraId = String.valueOf(this.q);
            menuClickMsgData.mOrientation = this.n;
            menuClickMsgData.mbVideoRecording = aq();
            menuClickMsgData.buildMenuItem(str, this.aU, this.q);
            menuClickMsgData.report();
        }
    }

    private void i(String str) {
        if (this.bv != null) {
            ReminderMsgData reminderMsgData = new ReminderMsgData(this.aT);
            reminderMsgData.mCaptureMode = this.bv.h();
            reminderMsgData.mCaptureType = this.bv.e() ^ true ? 1 : 0;
            reminderMsgData.mCameraId = String.valueOf(this.q);
            reminderMsgData.mOrientation = this.n;
            reminderMsgData.mReminderCodeValue = str;
            reminderMsgData.mReminderTrigger = this.cs ? ReminderMsgData.KEY_CHARGE_TRUE : ReminderMsgData.KEY_CHARGE_FALSE;
            reminderMsgData.report();
        }
    }

    /* access modifiers changed from: private */
    public boolean j(String str) {
        return "pref_subsetting_key".equals(str) || "pref_camera_photo_ratio_key".equals(str) || "pref_camera_timer_shutter_key".equals(str) || "pref_camera_high_resolution_key".equals(str);
    }

    private void m(int i2) {
        if (this.bx == null) {
            this.bx = new t(this.aT);
            this.bx.a(this.cP);
        }
        this.bx.a(i2);
    }

    private void n(int i2) {
        t tVar = this.bx;
        if (tVar != null) {
            tVar.b(i2);
        }
    }

    private void o(int i2) {
        d.a("CameraManager", "setSizeRatioType, type: " + i2);
        if (i2 != this.cH) {
            this.cH = i2;
            this.bq.p(this.cH);
        }
    }

    private boolean p(int i2) {
        int i3 = 650;
        try {
            i3 = Integer.valueOf(a((String) null, "temperature_limit_brightness", "temperature_limit_brightness", "ro.camera.temperature.brightness", String.valueOf(650))).intValue();
        } catch (Exception e) {
            d.e("CameraManager", "restoreBrightnessTemperatureLimit, error: " + e);
        }
        d.a("CameraManager", "restoreBrightnessTemperatureLimit, level: " + i2 + ", temperatureValue: " + i3);
        return i2 >= i3;
    }

    private boolean q(int i2) {
        int i3 = 650;
        try {
            i3 = Integer.valueOf(a((String) null, "temperature_limit_finish", "temperature_limit_finish", "ro.camera.temperature.finish", String.valueOf(650))).intValue();
        } catch (Exception e) {
            d.e("CameraManager", "useHighTemperatureUltimateLimit, error: " + e);
        }
        d.a("CameraManager", "useHighTemperatureUltimateLimit, level: " + i2 + ", temperatureValue: " + i3);
        return CameraConfig.getConfigIntValue(ConfigDataBase.KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT) > 0 && i2 >= i3;
    }

    private void r(int i2) {
        d.a("CameraManager", "setCameraId, mCameraId: " + this.q + ", cameraId: " + i2);
        if (this.q != i2) {
            this.q = i2;
            i iVar = this.aU;
            if (iVar != null) {
                iVar.a(this.aT, this.q);
            }
        }
    }

    private void s(int i2) {
        int dimension = i2 + ((int) this.aT.getResources().getDimension(R.dimen.face_beauty_enter_button_margin_zoombar));
        RotateImageView rotateImageView = (RotateImageView) this.aT.findViewById(R.id.face_beauty_enter_button);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) rotateImageView.getLayoutParams();
        layoutParams.topMargin = dimension;
        layoutParams.rightMargin = (int) this.aT.getResources().getDimension(R.dimen.face_beauty_enter_button_margin_right);
        rotateImageView.setLayoutParams(layoutParams);
    }

    /* access modifiers changed from: private */
    public void t(int i2) {
        if (-1 != i2) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (eVar != null) {
                eVar.a(i2, -1, true, false, false);
            }
        }
    }

    /* access modifiers changed from: private */
    public void u(int i2) {
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.d(i2);
            if (this.bv.B() == null || this.P) {
                this.bq.i(true);
            } else if (!ak() && !aq()) {
                this.bq.e(this.bv.B());
            }
        }
    }

    /* access modifiers changed from: private */
    public void z(boolean z2) {
        d.a("CameraManager", "setTabCaptureStart, " + this.az + " -> " + z2);
        this.az = z2;
    }

    public void A() {
        d.a("CameraManager", "updateOtherSettingFlags");
        this.aJ = this.aU.getString("pref_camera_sound_key", this.aT.getString(R.string.camera_sound_default_value));
        this.aL = this.aU.getString("pref_camera_fingerprint_shutter_key", this.aT.getString(R.string.camera_fingerprint_capture_default_value));
        d.a("CameraManager", "updateOtherSettingFlags, mFingerprintShutter: " + this.aL);
        this.aK = this.aU.getString("pref_camera_storage_key", (String) null);
        if (this.aK == null) {
            this.aK = aK();
        }
        if (this.aK.equals(c.a_)) {
            v.q = c.a_;
        } else {
            v.q = "on";
        }
    }

    public void B() {
        a(0.8f);
        this.bq.E(true);
        this.bv.j(true);
        this.ay = true;
    }

    public void C() {
        if (!c.a_.equals(this.bv.U()) || m()) {
            this.bq.a(0);
        }
        a(1.0f);
        this.bq.E(false);
        this.bv.j(false);
        this.ay = false;
    }

    public boolean D() {
        String string = this.aU.getString("pref_camera_torch_mode_key", this.aT.getResources().getString(R.string.camera_torch_mode_default_value));
        if ((string.equals("on") || string.equals(MenuClickMsgData.VALUE_PROFESSION_AUTO)) && com.oppo.camera.e.a.c(this.q)) {
            com.oppo.camera.d.i iVar = this.bv;
            return iVar != null && !iVar.h(CameraFunction.TORCH_SOFT_LIGHT) && this.bv.h("pref_camera_torch_mode_key");
        }
    }

    public boolean E() {
        if (this.bv != null) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (eVar != null) {
                if (this.au && !eVar.az() && this.bv.as() && !this.bv.L() && !Q() && !this.ad && !this.V && this.ae && aT() && this.ap && !this.az && this.bq.h() != 4 && this.bQ.r() != 3 && !this.X && ((this.U || O()) && this.bv.G() && !ak() && !this.T)) {
                    return true;
                }
                d.a("CameraManager", "canRespondTouch, mbInitialized: " + this.au + ", getScreenTorchState: " + this.bq.az() + ", isVideoRecordStopped: " + this.bv.as() + ", getIsCapturingState: " + this.bv.L() + ", isSnapShotProgress: " + Q() + ", mbSwitchingVideoProfile: " + this.ad + ", mbSizeChanging: " + this.V + ", mbFirstPreviewOK: " + this.ae + ", canScrollChangeMode: " + aT() + ", mbFrameAvailable: " + this.ap + ", mbTabCaptureStart: " + this.az + ", getMainShutterButtonType: " + this.bq.h() + ", mCameraEntry.getCameraEntryType(): " + this.bQ.r() + ", mbBurstShot: " + this.X + ", mbCaptureModeChanging: " + this.U + ", isPreviewStarted: " + O() + ", mModeManager.isAllowSwitch: " + this.bv.G() + ", isTimerSnapShotRunning: " + ak() + ", mbSwitchingCamera: " + this.T);
                return false;
            }
        }
        d.a("CameraManager", "canRespondTouch, mModeManager: " + this.bv + ", mCameraUIManager: " + this.bq);
        return false;
    }

    public boolean F() {
        if (this.bv != null) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (eVar != null) {
                if (this.au && !eVar.az() && this.bv.as() && !this.bv.L() && !this.bv.X() && !Q() && !this.ad && !this.V && this.ae && aT() && !this.az && this.bq.h() != 4 && this.bQ.r() != 3 && !this.X && this.Y == 0 && ((this.U || O()) && this.bv.G() && !ak() && !this.T && !this.bq.aG() && !this.bv.A() && ((!this.bq.w() || this.bv.aT() != 1) && !this.bv.aC() && !av() && !this.bq.aU() && !this.bq.aV()))) {
                    return true;
                }
                d.a("CameraManager", "isAllowSwitchMode, mbInitialized: " + this.au + ", getScreenTorchState: " + this.bq.az() + ", isVideoRecordStopped: " + this.bv.as() + ", getIsCapturingState: " + this.bv.L() + ", getIsShowPostCaptureAlert: " + this.bv.X() + ", isSnapShotProgress: " + Q() + ", mbSwitchingVideoProfile: " + this.ad + ", mbSizeChanging: " + this.V + ", mbFirstPreviewOK: " + this.ae + ", canScrollChangeMode: " + aT() + ", mbTabCaptureStart: " + this.az + ", getMainShutterButtonType: " + this.bq.h() + ", mCameraEntry.getCameraEntryType(): " + this.bQ.r() + ", mbBurstShot: " + this.X + ", mReceiveBurstPictureCount: " + this.Y + ", mbCaptureModeChanging: " + this.U + ", isPreviewStarted: " + O() + ", mModeManager.isAllowSwitch: " + this.bv.G() + ", isTimerSnapShotRunning: " + ak() + ", mbSwitchingCamera: " + this.T + ", isModeTitleShow: " + this.bq.aG() + ", isAnyModeAnimationRunning: " + this.bv.A() + ", isFaceBeautyMenuOpen: " + this.bq.w() + ", faceBeautyMenuType: " + this.bv.aT() + ", isStickerMenuOpen: " + this.bv.aC() + ", isZoomAnimRunning: " + av() + ", isFilterEffectMenuAnimRunning: " + this.bq.aU() + ", isNightAnimationRunning: " + this.bq.aV());
                return false;
            }
        }
        d.a("CameraManager", "isAllowSwitchMode, mModeManager: " + this.bv + ", mCameraUIManager: " + this.bq);
        return false;
    }

    public boolean G() {
        n nVar = this.bU;
        return nVar != null && nVar.a();
    }

    public boolean H() {
        if (this.bU == null) {
            this.bU = new n(this.aT);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.bE);
        arrayList.add(new n.a() {
            public void a() {
                if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER)) {
                    com.oppo.camera.ui.preview.a.h.b((Context) e.this.aT).a((Context) e.this.aT);
                    com.oppo.camera.ui.preview.a.h.b((Context) e.this.aT).e();
                }
            }

            public void b() {
            }
        });
        return this.bU.a((SharedPreferences) this.aU, (List<n.a>) arrayList);
    }

    public void I() {
        if (this.bV == null) {
            this.bV = new s(this.aT, new s.a() {
                public void a(boolean z) {
                    e.this.H();
                }
            });
        }
        boolean a2 = this.bV.a((SharedPreferences) this.aU);
        d.a("CameraManager", "showPrivacyPolicyAlertDialog, isShow: " + a2);
        if (!a2) {
            H();
        }
    }

    public void J() {
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.t();
        }
    }

    public int K() {
        Size a2 = this.bv.a(this.aY);
        return (a2 == null || !com.oppo.camera.o.d.b(a2)) ? 10 : 9;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v1, resolved type: android.net.Uri} */
    /* JADX WARNING: type inference failed for: r6v0 */
    /* JADX WARNING: type inference failed for: r6v3, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r6v5 */
    /* JADX WARNING: type inference failed for: r6v6 */
    /* JADX WARNING: Multi-variable type inference failed */
    public void L() {
        if (!this.P && this.bR != null && this.aT != null) {
            d.a("CameraManager", "doAttach, mCropValue:" + this.aI + ", mSaveUri:" + this.bM + ", mJpegImageData:" + this.bR.length);
            ? r6 = 0;
            if (this.aI == null) {
                Uri uri = this.bM;
                if (uri != null) {
                    v.a(uri);
                    try {
                        OutputStream openOutputStream = this.aT.getContentResolver().openOutputStream(this.bM);
                        if (openOutputStream != null) {
                            openOutputStream.write(this.bR);
                            openOutputStream.close();
                        }
                        this.aT.setResult(-1);
                        this.aT.finish();
                        r6 = openOutputStream;
                    } catch (IOException e) {
                        d.e("CameraManager", "doAttach, IOException error, exception: " + e.getMessage());
                        if (com.oppo.camera.o.d.y()) {
                            e.printStackTrace();
                            this.aT.setResult(-1);
                            this.aT.finish();
                        }
                    } catch (SecurityException e2) {
                        d.e("CameraManager", "doAttach, SecurityException error, exception: " + e2.getMessage());
                        this.aT.setResult(-1);
                        this.aT.finish();
                    } catch (Throwable th) {
                        com.oppo.camera.o.d.a((Closeable) null);
                        throw th;
                    }
                    com.oppo.camera.o.d.a((Closeable) r6);
                    return;
                }
                this.aT.setResult(-1, new Intent("inline-data").putExtra("data", com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(this.bR, 51200), com.oppo.camera.o.d.b(this.bR))));
                this.aT.finish();
                return;
            }
            File fileStreamPath = this.aT.getFileStreamPath("crop-temp");
            if (com.oppo.camera.l.a.b(fileStreamPath.getAbsolutePath(), com.oppo.camera.l.a.c, this.bR)) {
                r6 = Uri.fromFile(fileStreamPath);
            } else {
                this.aT.setResult(0);
                this.aT.finish();
            }
            Bundle bundle = new Bundle();
            if ("circle".equals(this.aI)) {
                bundle.putString("circleCrop", DebugUtil.DEBUG_ENABLE);
            }
            Uri uri2 = this.bM;
            if (uri2 != null) {
                bundle.putParcelable("output", uri2);
            } else {
                bundle.putBoolean("return-data", true);
            }
            Intent intent = new Intent("com.android.camera.action.CROP");
            intent.setData(r6);
            try {
                if (!(this.aT == null || this.aT.getIntent().getExtras() == null)) {
                    bundle.putInt("aspectX", this.aT.getIntent().getExtras().getInt("aspectX"));
                    bundle.putInt("aspectY", this.aT.getIntent().getExtras().getInt("aspectY"));
                    bundle.putInt("outputX", this.aT.getIntent().getExtras().getInt("outputX"));
                    bundle.putInt("outputY", this.aT.getIntent().getExtras().getInt("outputY"));
                }
                intent.setDataAndType(r6, "image/*");
                intent.putExtra("key_set_as_contract", "set_as_contract");
                intent.putExtras(bundle);
                this.aT.startActivityForResult(intent, 1000);
            } catch (Exception e3) {
                e3.printStackTrace();
                this.aT.setResult(0);
                this.aT.finish();
            }
        }
    }

    public int M() {
        return Integer.parseInt(this.aU.getString("pref_camera_id_key", String.valueOf(0)));
    }

    public void N() {
        d.a("CameraManager", "setSwitchPreviewCb, mCameraSwitch: " + this.cG);
        this.cG = new f();
        this.cG.f2045b = this.bv.a(this.aY);
        this.cG.c = this.q;
        com.oppo.camera.d.i iVar = this.bv;
        a.C0055a aC2 = iVar.a(iVar.h()).aC();
        if (aC2 != null) {
            d.a("CameraManager", "setSwitchPreviewCb, use realTime bitmap");
            f fVar = this.cG;
            fVar.e = aC2;
            fVar.f2044a = null;
            fVar.f = true;
            return;
        }
        d.a("CaptureOnePreview");
        this.bq.a((t.a) new t.a() {
            public void a(Bitmap bitmap, long j) {
                d.b("CaptureOnePreview");
                if (e.this.cG == null || e.this.P) {
                    d.e("CameraManager", "setSwitchPreviewCb, onPreviewCaptured, mCameraSwitch is null");
                    return;
                }
                d.a("CameraManager", "setSwitchPreviewCb, onPreviewCaptured, mExeNow: " + e.this.cG.g);
                int K = e.this.K();
                e.this.cG.h = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / K, bitmap.getHeight() / K, false);
                e.this.cG.f = true;
                e.this.cM.removeMessages(1);
                if (e.this.cG.g && e.this.cM != null) {
                    e.this.cM.a(new Runnable() {
                        public void run() {
                            e.this.aX();
                        }
                    });
                }
            }
        }, false, false, t.a.f);
    }

    public boolean O() {
        return this.l == 1;
    }

    public boolean P() {
        return this.l == 0;
    }

    public boolean Q() {
        return this.l == 2;
    }

    public boolean R() {
        return this.l == 3;
    }

    public boolean S() {
        return this.P;
    }

    public boolean T() {
        return this.as;
    }

    public void U() {
        this.ag = true;
        a(true, false, false);
        af();
        this.bq.f();
    }

    public void V() {
        d.a("CameraManager", "onPreviewDataReceived");
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.aa();
        }
        j(0);
    }

    public String W() {
        x xVar = this.bt;
        return xVar != null ? xVar.f() : "";
    }

    public boolean X() {
        if (!O() && (!P() || this.bQ.r() != 2)) {
            com.oppo.camera.d.i iVar = this.bv;
            if (iVar != null) {
                iVar.b(false);
            }
            d.a("CameraManager", "onBackPressed, cameraState return");
            this.bk.d();
            return false;
        } else if (this.bq.as() && !this.bv.aI()) {
            d.a("CameraManager", "onBackPressed, mCameraUIManager return");
            this.bk.d();
            return false;
        } else if (this.bz == null || !ak()) {
            com.oppo.camera.d.i iVar2 = this.bv;
            if (iVar2 == null || !iVar2.f()) {
                return true;
            }
            d.a("CameraManager", "onBackPressed, Capmode processing other,so return");
            this.bk.d();
            return false;
        } else {
            this.bz.g();
            this.cq = "normal";
            this.bq.a(true, false);
            this.bq.b(true, false);
            this.bq.c(true, false);
            this.bq.e(true, false);
            this.bk.d();
            return false;
        }
    }

    public void Y() {
        this.bP = (ShortcutManager) this.aT.getSystemService(ShortcutManager.class);
        ShortcutManager shortcutManager = this.bP;
        if (shortcutManager != null) {
            for (ShortcutInfo id : shortcutManager.getDynamicShortcuts()) {
                if ("shortcut_sticker_capture".equals(id.getId())) {
                    this.bP.removeDynamicShortcuts(Collections.singletonList("shortcut_sticker_capture"));
                }
            }
        }
    }

    public void Z() {
        SharedPreferences sharedPreferences = this.aV;
        String str = null;
        if (sharedPreferences != null) {
            str = sharedPreferences.getString("sticker_switch", (String) null);
            d.a("CameraManager", "updateStickerModeFromRUS, stikerModeSwitch: " + str);
        }
        if (str == null) {
            return;
        }
        if (TextUtils.equals(str, "on")) {
            CameraConfig.setConfigBooleanValue(ConfigDataBase.KEY_STICKER, true);
        } else {
            CameraConfig.setConfigBooleanValue(ConfigDataBase.KEY_STICKER, false);
        }
    }

    public String a(Size size, int i2) {
        u uVar = this.bD;
        if (uVar == null || !uVar.d() || !this.bv.h("pref_camera_slogan_key")) {
            return null;
        }
        return this.bD.a(size, i2);
    }

    public void a() {
        d.a("CameraManager", "onStop");
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.S();
        }
        ba();
        n(3);
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.F();
        }
        if (this.bQ.r() == 2) {
            bm();
        }
        if (this.aq && !this.as) {
            try {
                Thread.sleep(50);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(float f2) {
        if (!com.oppo.camera.o.d.z()) {
            if (f2 == -1.0f) {
                z();
                return;
            }
            float f3 = (float) Settings.System.getInt(this.aT.getContentResolver(), CameraStatisticsUtil.SCREEN_BRIGHTNESS, (int) (((float) this.k) * 0.4f));
            if (f3 >= ((float) this.k)) {
                d.a("CameraManager", "changeScreenBrightness, fSysBrightness >= " + this.k + ", so no need set window screenBrightness");
                com.oppo.camera.d.i iVar = this.bv;
                if (iVar != null) {
                    iVar.j((int) f3);
                    return;
                }
                return;
            }
            Window window = this.aT.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.screenBrightness = f2;
            window.setAttributes(attributes);
            float f4 = ((float) this.k) * f2;
            com.oppo.camera.d.i iVar2 = this.bv;
            if (iVar2 != null) {
                iVar2.j((int) f4);
            }
        }
    }

    public void a(float f2, boolean z2) {
        d.a("CameraManager", "updateZoomValue, value: " + f2 + ", submit: " + z2);
        f fVar = this.aX;
        if (fVar != null) {
            fVar.a(c(f2));
            if (z2) {
                this.aX.a((f.c) null);
            }
            this.bq.b(f2);
        }
    }

    public void a(int i2, int i3) {
        b(i2, i3);
        if (this.t == null) {
            this.t = new int[2];
        }
        int[] iArr = this.t;
        iArr[0] = i2;
        iArr[1] = i3;
    }

    public void a(int i2, MeteringRectangle[] meteringRectangleArr, MeteringRectangle[] meteringRectangleArr2) {
        f fVar = this.aX;
        if (fVar != null) {
            fVar.a(i2, meteringRectangleArr, meteringRectangleArr2, true);
            this.aX.a((f.c) null);
        }
    }

    public void a(long j2, String str, boolean z2, boolean z3) {
        d.b("CameraManager", "addEmptyThumbnail, timestamp: " + j2 + ", jpegName: " + str + ", isUpdateThumbnail = " + z2 + ", postThumbnail: " + z3);
        b.c cVar = new b.c();
        cVar.f1803a = null;
        cVar.f1804b = this.aT.getContentResolver();
        cVar.c = "jpeg";
        cVar.e = null;
        cVar.h = j2;
        cVar.j = this.cx;
        cVar.d = str;
        cVar.n = z3;
        if (z2) {
            cVar.m = this.bq.O();
            cVar.o = new e.a() {
                public void a(final com.oppo.camera.ui.control.e eVar, final boolean z) {
                    d.a("CameraManager", "addEmptyThumbnail, updateThumbNail, thumbnail: " + eVar + ", postThumbnail: " + z);
                    e.this.aT.runOnUiThread(new Runnable() {
                        public void run() {
                            if (e.this.bq != null) {
                                e.this.bq.b(eVar);
                                if (z) {
                                    e.this.bv.a((byte[]) null, 0, 0, 256, false);
                                }
                            }
                        }
                    });
                }
            };
        }
        ImageProcessService imageProcessService = this.cj;
        if (imageProcessService != null) {
            imageProcessService.a(cVar);
        }
    }

    public void a(ComponentName componentName, IBinder iBinder) {
        this.cj = ((ImageProcessService.c) iBinder).a();
        d.a("CameraManager", "onServiceConnected, mIpaService: " + this.cj);
        ImageProcessService imageProcessService = this.cj;
        if (imageProcessService != null) {
            imageProcessService.a();
            com.oppo.camera.a.a.a().a(this.cj);
        }
    }

    public void a(Context context, Location location) {
        if (location != null && context != null) {
            Thread thread = this.bG;
            if (thread == null || !thread.isAlive()) {
                long currentTimeMillis = System.currentTimeMillis() - this.G;
                d.e("CameraManager", "onLocationUpdated, mLastGetAddressTimesGap: " + currentTimeMillis);
                if (currentTimeMillis - 600000 > 0 || this.bH == null) {
                    d.a("CameraManager", "onLocationUpdated, lat: " + location.getLatitude() + ", lon: " + location.getLongitude());
                    this.bG = new j("get_address_thread", context, location);
                    this.bG.start();
                    return;
                }
                return;
            }
            d.a("CameraManager", "onLocationUpdated, GetAddressThread is running");
        }
    }

    public void a(Intent intent) {
        String action = intent.getAction();
        Bundle extras = intent.getExtras();
        String string = extras != null ? extras.getString("android.media.EXTRA_RECORD_START_PACKAGE_TYPE") : null;
        d.e("CameraManager", "onReceiver, intent action: " + action + ", packageName: " + string);
        if (action != null) {
            if (action.equals("android.intent.action.MEDIA_MOUNTED") || action.equals("android.intent.action.MEDIA_CHECKING")) {
                aL();
            } else if (action.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
                v.a((Context) this.aT);
                aL();
                if (!this.aj && !this.ai) {
                    if (this.bQ.r() == 1) {
                        com.oppo.camera.d.i iVar = this.bv;
                        if (iVar != null && !iVar.ar() && !Q()) {
                            this.bq.c(false);
                        }
                    }
                } else {
                    return;
                }
            } else if (action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                if (this.bv.ar() && "on".equals(this.aU.getString("pref_camera_storage_key", this.aT.getString(R.string.camera_storage_default_value)))) {
                    this.bk.a();
                }
                aL();
                this.bq.c(false);
            } else if (action.equals("android.intent.action.MEDIA_PRE_SHARED") || action.equals("android.intent.action.MEDIA_SHARED") || action.equals("android.intent.action.MEDIA_EJECT")) {
                if (this.bv.ar() && "on".equals(this.aU.getString("pref_camera_storage_key", this.aT.getString(R.string.camera_storage_default_value)))) {
                    this.aT.finish();
                }
            } else if ("com.oppo.gallery3d.action.DELETE_PICTURE".equals(action)) {
                com.oppo.camera.ui.e eVar = this.bq;
                if (eVar != null && !this.P) {
                    eVar.c(false);
                }
            } else if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                this.f1930a = intent.getIntExtra("level", -1);
                g(this.f1930a);
                this.f1931b = intent.getIntExtra("temperature", -1);
                f(this.f1931b);
            } else if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                bE();
                com.oppo.camera.d.i iVar2 = this.bv;
                if (iVar2 != null && this.P) {
                    iVar2.e(false);
                }
                if (!this.cf) {
                    MyApplication.a().a(new Runnable() {
                        public void run() {
                            e.this.bi();
                        }
                    }, "clearLockDB");
                    this.cf = true;
                }
                if (this.bQ.n()) {
                    b();
                }
            } else if (!intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                if ("android.media.ACTION_AUDIO_RECORD_INVALID".equals(action)) {
                    com.oppo.camera.d.i iVar3 = this.bv;
                    if (iVar3 != null) {
                        iVar3.an();
                    }
                }
                if ("android.intent.action.PHONE_STATE".equals(action)) {
                    String stringExtra = intent.getStringExtra("state");
                    this.y = ((TelephonyManager) this.aT.getSystemService("phone")).getCallState();
                    if (stringExtra != null) {
                        d.a("CameraManager", "onReceiver, phone state: " + stringExtra + ", mPhoneState: " + this.y);
                        if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(stringExtra) && !this.P) {
                            com.oppo.camera.d.i iVar4 = this.bv;
                            if (iVar4 != null && iVar4.ar()) {
                                d.a("CameraManager", "onReceiver, phone offhook, forceStopVideoRecording");
                                this.bv.f(true);
                            }
                        }
                    }
                } else if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                    String stringExtra2 = intent.getStringExtra(DownloadManager.COLUMN_REASON);
                    d.a("CameraManager", "onReceiver, ACTION_CLOSE_SYSTEM_DIALOGS, reason:" + stringExtra2);
                    if ("homekey".equals(stringExtra2) || "recentapps".equals(stringExtra2)) {
                        d.a("CameraManager", "onReceiver, system dialog reason, saveCameraExitState");
                        bJ();
                        this.bQ.a();
                        bE();
                        if (this.bQ.n()) {
                            com.oppo.camera.d.i iVar5 = this.bv;
                            if (iVar5 != null) {
                                iVar5.e(false);
                            }
                            if (!this.cf) {
                                MyApplication.a().a(new Runnable() {
                                    public void run() {
                                        e.this.bi();
                                    }
                                }, "clearLockDB");
                                this.cf = true;
                            }
                            MyApplication.c();
                        }
                    }
                } else if ("com.heytap.speechassist.intent.action.WINDOW_MANAGER_OCCUPIED".equals(action) && !this.P) {
                    com.oppo.camera.d.i iVar6 = this.bv;
                    if (iVar6 == null || !iVar6.L()) {
                        com.oppo.camera.ui.control.h hVar = this.bz;
                        if (hVar == null || !hVar.e()) {
                            com.oppo.camera.d.i iVar7 = this.bv;
                            if (iVar7 != null && iVar7.ar()) {
                                this.bv.f(false);
                            }
                        } else {
                            this.bz.g();
                        }
                    } else {
                        this.bv.b(true);
                    }
                } else if ("com.heytap.speechassist.intent.action.FLOAT_ACTIVITY_START".equals(action)) {
                    this.aT.finish();
                }
            } else if (!this.P) {
                if (this.aj) {
                    u(true);
                }
                com.oppo.camera.ui.e eVar2 = this.bq;
                if (eVar2 != null && eVar2.N() == null) {
                    this.bq.Z();
                }
            }
            d.e("CameraManager", "onReceiver X, intent action: " + action + ", packageName: " + string);
        }
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        SharedPreferences sharedPreferences2 = sharedPreferences;
        String str2 = str;
        d.a("CameraManager", "onSharedPreferenceChanged, key: " + str2);
        if (!j(str2)) {
            h(str2);
        }
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.a(sharedPreferences2, str2);
        }
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.a(sharedPreferences2, str2);
        }
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.a(sharedPreferences2, str2);
        }
        if ("pref_camera_id_key".equals(str2)) {
            int M2 = M();
            if (this.q != M2) {
                this.bQ.g();
                bJ();
                a(M2, true, false);
            }
        } else if ("pref_camera_mode_key".equals(str2)) {
            if (!sharedPreferences2.getString(str2, com.oppo.camera.o.d.a(this.bQ.r() == 3)).equals(this.bv.h())) {
                this.ag = false;
                this.bQ.g();
                bJ();
                a(false, true, false);
            }
        } else if (!"pref_subsetting_key".equals(str2)) {
            if ("pref_setting_key".equals(str2)) {
                Intent intent = new Intent("com.oppo.camera.action.SETTING_MENU");
                Bundle bundle = new Bundle();
                bundle.putInt("pref_camera_id_key", this.q);
                bundle.putBoolean("pref_camera_tap_shutter_key", this.bv.h("pref_camera_tap_shutter_key"));
                bundle.putBoolean("pref_camera_gesture_shutter_key", this.bv.h("pref_camera_gesture_shutter_key"));
                bundle.putString("pref_camera_photo_ratio_key", this.bv.aO());
                bundle.putBoolean("key_is_capture_mode", this.bv.e());
                bundle.putString("pref_camera_mode_key", this.bv.h());
                bundle.putBoolean("pref_camera_assistant_line_key", this.bv.h("pref_camera_assistant_line_key"));
                bundle.putBoolean("pref_ai_scene_key", this.bv.h("pref_ai_scene_key"));
                bundle.putBoolean("pref_mirror_key", this.bv.h("pref_mirror_key"));
                bundle.putBoolean("pref_camera_slogan_key", this.bv.h("pref_camera_slogan_key"));
                bundle.putString("key_full_pic_size_type", this.bv.P());
                bundle.putBoolean("pref_raw_key", a("pref_raw_key"));
                bundle.putBoolean("pref_camera_gradienter_key", a("pref_camera_gradienter_key"));
                bundle.putBoolean("pref_time_lapse_key", this.bv.h("pref_time_lapse_key"));
                bundle.putBoolean("key_high_picture_size", a("key_high_picture_size"));
                bundle.putInt("pref_video_fps_key", this.bv.aP());
                bundle.putBoolean("key_support_video_high_fps", this.bv.h("key_support_video_high_fps"));
                bundle.putInt("camera_enter_type", this.bQ.r());
                bundle.putBoolean("camera_enter_form_lock_screen", this.bQ.n());
                bundle.putString("pref_video_size_key", this.bv.aQ());
                bundle.putBoolean("pref_video_ratio_key", a("pref_video_ratio_key"));
                bundle.putBoolean("pref_video_codec_key", a("pref_video_codec_key"));
                bundle.putBoolean("key_support_video_ultra_wide_angel", this.bv.bb());
                intent.putExtra("camera_intent_data", bundle);
                y(true);
                bI();
                this.aT.startActivity(intent);
            }
            if ("pref_video_size_key".equals(str2) || "pref_slow_video_frame_key".equals(str2) || "pref_video_fps_key".equals(str2)) {
                if (!this.bv.ar() && !this.W) {
                    aO();
                }
            } else if ("pref_switch_camera_key".equals(str2)) {
                aP();
            } else if ("pref_camera_photo_ratio_key".equals(str2)) {
                if (this.aU.b(this.aT, 0).getString("pref_camera_high_resolution_key", "standard_high").equals("standard_high")) {
                    String string = this.aU.getString("pref_camera_photo_ratio_key", "standard");
                    if (!string.equals("standard")) {
                        this.aU.b(this.aT, 0).edit().putString("pref_camera_high_resolution_key", string).apply();
                        this.aU.edit().putBoolean("key_high_picture_size", false).apply();
                        com.oppo.camera.ui.e eVar2 = this.bq;
                        if (eVar2 != null) {
                            eVar2.d("pref_camera_high_resolution_key");
                        }
                    }
                }
                aN();
            } else if ("pref_camera_timer_shutter_key".equals(str2)) {
                if ("normal".equals(this.aU.getString("pref_camera_timer_shutter_key", this.aT.getString(R.string.camera_shutter_mode_default_value)))) {
                    a(str2, false);
                } else {
                    a(str2, true);
                }
            } else if ("pref_camera_high_resolution_key".equals(str2)) {
                String string2 = this.aU.b(this.aT, 0).getString("pref_camera_high_resolution_key", "standard_high");
                if (string2.equals("standard_high") || string2.equals("standard")) {
                    this.aU.edit().putString("pref_camera_photo_ratio_key", string2).apply();
                    this.aU.edit().putBoolean("key_high_picture_size", "standard_high".equals(string2)).apply();
                    com.oppo.camera.ui.e eVar3 = this.bq;
                    if (eVar3 != null) {
                        eVar3.d("pref_camera_photo_ratio_key");
                    }
                    if (string2.equals("standard_high")) {
                        a(str2, true);
                    } else {
                        a(str2, false);
                    }
                }
                if (string2.equals("square") || string2.equals("full")) {
                    this.aU.edit().putBoolean("key_high_picture_size", "standard_high".equals(string2)).apply();
                    com.oppo.camera.ui.e eVar4 = this.bq;
                    if (eVar4 != null) {
                        eVar4.d("pref_camera_photo_ratio_key");
                    }
                    a(str2, false);
                }
                com.oppo.camera.ui.e eVar5 = this.bq;
                if (eVar5 != null) {
                    eVar5.f();
                    if (this.aU.getBoolean("key_high_picture_size", false)) {
                        if (!this.bq.h(CameraFunction.FACE_BEAUTY_PROCESS)) {
                            if (this.bq.w()) {
                                this.bq.b(false, false, false);
                            }
                            this.bq.a(false, false, false, false);
                        }
                        if (!this.bq.h("pref_filter_process_key")) {
                            this.bq.h(true, false);
                            return;
                        }
                        return;
                    }
                    this.bq.m(true);
                    if (this.bq.w()) {
                        this.bq.n(false);
                    }
                }
            } else if ("pref_camera_hdr_mode_key".equals(str2)) {
                if (g(str2)) {
                    aR();
                } else {
                    this.bv.j(sharedPreferences2.getString(str2, c.a_));
                }
            } else if ("pref_high_resolution_key".equals(str2)) {
                this.aX.a((f.c) null);
            } else if ("pref_camera_flashmode_key".equals(str2)) {
                if ("on".equals(sharedPreferences2.getString("pref_camera_flashmode_key", this.aT.getString(R.string.camera_flash_mode_default_value))) && s()) {
                    r(false);
                    b(false, true);
                }
            } else if ("pref_camera_videoflashmode_key".equals(str2)) {
                if (this.bq != null) {
                    String string3 = this.aT.getResources().getString(R.string.camera_flash_mode_default_value);
                    com.oppo.camera.d.i iVar2 = this.bv;
                    if (iVar2 != null) {
                        string3 = iVar2.I();
                    }
                    if (Camera.f1750b || Camera.f1749a) {
                        if (!c.a_.equals(string3)) {
                            if (Camera.f1750b) {
                                this.bq.a((int) R.string.camera_high_temperature_flash_disable, -1, true, false, false);
                                i(ReminderMsgData.KEY_TEMPS_FLASH);
                            } else if (Camera.f1749a) {
                                this.bq.a((int) R.string.camera_low_battery_flash_disable, -1, true, false, false);
                            }
                            i.a a2 = this.aU.edit();
                            a2.putString("pref_camera_videoflashmode_key", c.a_);
                            a2.apply();
                            this.bq.d("pref_camera_videoflashmode_key");
                        }
                        com.oppo.camera.d.i iVar3 = this.bv;
                        if (iVar3 != null) {
                            iVar3.a(false, false);
                            return;
                        }
                        return;
                    }
                    if ("torch".equals(string3)) {
                        this.bq.a(-1, (int) R.drawable.torch_hint_icon, false, true, false);
                    } else {
                        this.bq.a(false, true, true);
                    }
                    f fVar = this.aX;
                    if (fVar != null) {
                        fVar.a(string3);
                        this.aX.a((f.c) null);
                    }
                }
            } else if ("pref_camera_torch_mode_key".equals(str2)) {
                String string4 = sharedPreferences2.getString("pref_camera_torch_mode_key", this.aT.getResources().getString(R.string.camera_torch_mode_default_value));
                if (this.bv.h(CameraFunction.TORCH_SOFT_LIGHT)) {
                    if ("on".equals(string4)) {
                        this.aX.a("torch");
                    } else {
                        this.aX.a(c.a_);
                    }
                    this.aX.a((f.c) null);
                } else if ("on".equals(string4) || MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(string4)) {
                    a(1.0f);
                } else {
                    a(-1.0f);
                }
            } else if ("key_filter_index".equals(str2)) {
                com.oppo.camera.ui.e eVar6 = this.bq;
                if (eVar6 != null) {
                    eVar6.G(bx());
                }
            } else if (!"pref_camera_vivid_effect_key".equals(str2)) {
                if ("pref_current_sticker_uuid".equals(str2)) {
                    StickerItem a3 = com.oppo.camera.ui.preview.a.h.b((Context) this.aT).a((SharedPreferences) this.aU);
                    if ((!com.oppo.camera.ui.preview.a.h.a(this.bO, this.q) && com.oppo.camera.ui.preview.a.h.a(a3, this.q)) || (com.oppo.camera.ui.preview.a.h.a(this.bO, this.q) && !com.oppo.camera.ui.preview.a.h.a(a3, this.q))) {
                        aS();
                    } else if (com.oppo.camera.ui.preview.a.h.c(this.bO) || !com.oppo.camera.ui.preview.a.h.c(a3)) {
                        if (com.oppo.camera.ui.preview.a.h.c(this.bO) && !com.oppo.camera.ui.preview.a.h.c(a3) && !m()) {
                            this.aX.c("type_preview_frame");
                        }
                    } else if (!m()) {
                        this.aX.b("type_preview_frame");
                    }
                    this.bO = a3;
                }
                if ("pref_switch_dual_camera_key".equals(str2)) {
                    a(M(), true, true);
                } else if ("pref_common_facebeauty_level_menu".equals(str2) || "pref_portrait_facebeauty_level_menu".equals(str2) || "pref_sticker_facebeauty_level_menu".equals(str2)) {
                    com.oppo.camera.ui.e eVar7 = this.bq;
                    if (eVar7 != null) {
                        eVar7.G(bx());
                    }
                } else if ("pref_none_sat_ultra_wide_angle_key".equals(str2)) {
                    aP();
                }
            } else if (!this.X) {
                int i2 = R.string.camera_vivid_close_toast;
                com.oppo.camera.d.i iVar4 = this.bv;
                if (iVar4 != null && iVar4.ah()) {
                    i2 = R.string.camera_vivid_open_toast;
                }
                int i3 = i2;
                com.oppo.camera.ui.e eVar8 = this.bq;
                if (eVar8 != null) {
                    eVar8.a(i3, -1, true, false, false);
                }
            }
        } else if (this.bq != null) {
            boolean equals = this.aU.getString("pref_subsetting_key", c.a_).equals("on");
            this.bq.t(equals);
            if (!equals && !this.U && this.bv.aY() && DebugUtil.isEnableHighPictureSizeSetting()) {
                this.bq.a(this.aT.getString(R.string.camera_picture_size_standard_high_hint, new Object[]{Double.valueOf(com.oppo.camera.o.d.a((Context) this.aT, CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE)))}), 0, (int) R.color.screen_hint_text_color);
            }
        }
    }

    public void a(Bitmap bitmap, Size size, Size size2, d.a aVar, int i2) {
        this.bq.g(false);
        int b2 = com.oppo.camera.o.d.b(size.getWidth(), size.getHeight());
        int b3 = com.oppo.camera.o.d.b(size2.getWidth(), size2.getHeight());
        if (com.oppo.camera.o.d.e(b2) && b2 != b3) {
            this.bq.a((byte) 2, false);
        }
        if (b2 != b3) {
            this.bq.c(b2, b3);
        }
        this.bq.a(bitmap, size, size2, aVar, i2);
    }

    public void a(TotalCaptureResult totalCaptureResult) {
        if (!this.P) {
            f fVar = this.aX;
            if (!(fVar == null || totalCaptureResult == null)) {
                c n2 = fVar.n();
                CaptureResult.Key<?> b2 = n2.b("com.oppo.ai.scene.app.data");
                if (b2 != null) {
                    com.oppo.camera.d.i iVar = this.bv;
                    if (iVar != null && iVar.af() && !this.bv.L() && totalCaptureResult.get(b2) != null && ((int[]) totalCaptureResult.get(b2)).length > 0) {
                        int i2 = ((int[]) totalCaptureResult.get(b2))[0];
                        if (this.v != i2) {
                            d.a("CameraManager", "onPreviewCaptureResult, value: " + i2);
                            this.v = i2;
                            this.bq.s(this.v);
                            this.bv.g(this.v);
                        }
                    }
                }
                CaptureResult.Key<?> b3 = n2.b("com.oppo.iris.aperture.switching");
                if (!(b3 == null || totalCaptureResult.get(b3) == null || ((int[]) totalCaptureResult.get(b3)).length <= 0)) {
                    int i3 = ((int[]) totalCaptureResult.get(b3))[0];
                    this.aB = i3 == 1;
                    if (this.aB) {
                        d.e("CameraManager", "onPreviewCaptureResult, apertureSwitchValue: " + i3);
                    }
                    if (this.aB) {
                        this.bq.c().b(false);
                    } else {
                        this.bq.c().b(true);
                    }
                }
                CaptureResult.Key<?> b4 = n2.b("display.iso");
                if (b4 != null) {
                    a(((Integer) totalCaptureResult.get(b4)).intValue(), true);
                }
                CaptureResult.Key<?> b5 = n2.b("post.process");
                if (b5 != null) {
                    Integer num = (Integer) totalCaptureResult.get(b5);
                    if (2 == num.intValue() || 100 == num.intValue()) {
                        Activity activity = this.aT;
                        if (activity != null && !activity.isFinishing()) {
                            this.cM.a(new Runnable() {
                                public void run() {
                                    if (e.this.aT != null && !e.this.aT.isFinishing()) {
                                        e.this.aT.finish();
                                    }
                                }
                            });
                        } else {
                            return;
                        }
                    }
                }
                CaptureResult.Key<?> b6 = n2.b("com.oppo.process.meta.queue.limit");
                if (!(b6 == null || this.cj == null || totalCaptureResult.get(b6) == null || ((int[]) totalCaptureResult.get(b6)).length <= 0)) {
                    this.cj.a(((int[]) totalCaptureResult.get(b6))[0]);
                }
                CaptureResult.Key<?> b7 = n2.b("com.oppo.process.image.queue.limit");
                if (!(b7 == null || this.cj == null || totalCaptureResult.get(b7) == null || ((int[]) totalCaptureResult.get(b7)).length <= 0)) {
                    this.cj.b(((int[]) totalCaptureResult.get(b7))[0]);
                }
                com.oppo.camera.d.i iVar2 = this.bv;
                if (iVar2 != null) {
                    iVar2.a(totalCaptureResult);
                    return;
                }
                return;
            }
        }
        d.e("CameraManager", "onPreviewCaptureResult, mOneCamera: " + this.aX);
    }

    public void a(final Size size) {
        d.a("onPreviewSizeChanged");
        o(com.oppo.camera.o.d.b(size.getWidth(), size.getHeight()));
        d.a("CameraManager", "onPreviewSizeChanged");
        this.bq.a(size, true);
        this.cM.a(new Runnable() {
            public void run() {
                d.a("CameraManager", "onPreviewSizeChanged, mbCaptureModeChanging: " + e.this.U);
                if (!e.this.U) {
                    if (!e.this.bv.aL()) {
                        e eVar = e.this;
                        eVar.a(size, eVar.ao);
                    }
                    if (!e.this.V) {
                        e.this.bq.g(true);
                    }
                }
            }
        });
        d.b("onPreviewSizeChanged");
    }

    public void a(Size size, boolean z2) {
        if (size != null) {
            int b2 = com.oppo.camera.o.d.b(size.getWidth(), size.getHeight());
            this.bq.e(b2, z2);
            d.b("CameraManager", "updateSettingControlBg, type: " + b2 + ", needControllerAnimation" + z2);
        }
    }

    public void a(KeyEvent keyEvent) {
        long downTime = keyEvent.getDownTime();
        if (this.av && keyEvent.getRepeatCount() == 0 && downTime - this.A > 600) {
            this.A = downTime;
            ap();
        } else if (this.av && keyEvent.getRepeatCount() > 0) {
            this.A = downTime;
        }
    }

    public void a(MotionEvent motionEvent) {
        o(motionEvent.getPointerCount() >= 2);
        if (2 == motionEvent.getActionMasked() && this.am) {
            p pVar = this.bS;
            if (pVar != null) {
                this.s = 0;
                pVar.a(false);
            }
        }
    }

    public void a(Animation.AnimationListener animationListener) {
        d.a("CameraManager", "hideOpticalZoomMenu, listener: " + animationListener);
        x xVar = this.bt;
        if (xVar != null) {
            xVar.a(animationListener);
        }
    }

    public void a(t.a aVar, boolean z2, boolean z3, String str) {
        this.bq.a(aVar, z2, z3, str);
    }

    public void a(i iVar, com.oppo.camera.entry.b bVar, boolean z2) {
        d.a("CameraManager create instance");
        this.aU = iVar;
        this.bQ = bVar;
        r(this.bQ.i());
        if (this.aT.getApplication() != null && (this.aT.getApplication() instanceof MyApplication)) {
            ((MyApplication) this.aT.getApplication()).d();
        }
        this.cc = new l();
        if (this.bQ.d()) {
            bC();
            if (DebugUtil.isEnableHighPictureSizeMode()) {
                bA();
            }
            bD();
        }
        if (z2) {
            l(0);
        }
        aA();
        m(2);
        if (this.bQ.d()) {
            bF();
        }
        this.aV = this.aT.getSharedPreferences("rom_update_info", 0);
        this.aW = this.aT.getSharedPreferences("local_update_info", 0);
        this.k = PowerManagerNative.getMaximumScreenBrightnessSetting((PowerManager) this.aT.getSystemService("power"));
        this.ab = com.oppo.camera.o.d.b("oppo.camera.gallery.backlight.optimize");
        this.ac = com.oppo.camera.o.d.b("oppo.autobrightctl.animation.support");
        this.cd = new n();
        d.b("CameraManager create instance");
    }

    public void a(v.a aVar) {
        d.a("CameraManager", "storeImagePictureTakenDone, mJpegRotation: " + this.m + ", orientation: " + aVar.r + ", mbBurstShot: " + this.X + ", jpegName: " + aVar.h + ", mbPaused: " + this.P);
        if (!this.P) {
            CaptureMsgData captureMsgData = this.aO;
            if (captureMsgData != null) {
                captureMsgData.mCaptureMode = this.bv.h();
                this.aO.mCameraId = String.valueOf(this.q);
                CaptureMsgData captureMsgData2 = this.aO;
                captureMsgData2.mOrientation = this.n;
                this.aO = (CaptureMsgData) this.bv.a((DcsMsgData) captureMsgData2, aVar);
                this.aO.report();
            }
            b(aVar);
            g();
            boolean z2 = false;
            this.u = 0;
            aVar.q = this.q;
            if (this.bQ.r() == 1) {
                Location c2 = this.bE.c();
                if (!this.X && !this.bv.ar()) {
                    z2 = true;
                }
                aVar.c = c2;
                aVar.s = this.bq.O();
                aVar.j = this.bv.h();
                aVar.l = System.currentTimeMillis();
                aVar.z = this.bv.K();
                if (z2) {
                    aVar.v = new e.a() {
                        public void a(final com.oppo.camera.ui.control.e eVar, boolean z) {
                            if (e.this.aT == null || e.this.bq == null) {
                                d.e("CameraManager", " mActivity :" + e.this.aT + ", mCameraUIManager :" + e.this.bq);
                                return;
                            }
                            e.this.aT.runOnUiThread(new Runnable() {
                                public void run() {
                                    if (e.this.bq != null) {
                                        e.this.bq.b(eVar);
                                    }
                                }
                            });
                        }
                    };
                }
            }
            this.cx.a(aVar);
            if (v.s == 0) {
                aL();
                d.a("CameraManager", "storeImagePictureTakenDone X");
            }
        }
    }

    public void a(boolean z2) {
        if (!this.P) {
            if (z2) {
                this.bk.c();
                d.a("CameraManager", "notifyFirstFrame, sendBroadcast com.oppo.camera.start notifyFirstFrame");
            }
            b(false);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x007f, code lost:
        return;
     */
    public void a(boolean z2, boolean z3) {
        float f2;
        synchronized (this.aR) {
            if (this.ah) {
                d.a("CameraManager", "setAutoBrightnessAdjust, Process would be kill, don't set adjustValue!");
                return;
            }
            this.ah = z3;
            if (this.ab) {
                f2 = (!z2 || com.oppo.camera.o.d.z()) ? 5.0f : 2.0f;
            } else if (this.ac) {
                f2 = (((float) aM()) * (z2 ? 300.0f : 500.0f)) / 255.0f;
            } else {
                f2 = 0.0f;
            }
            if (f2 == 0.0f) {
                d.a("CameraManager", "setAutoBrightnessAdjust, No need set adjustValue!");
                return;
            }
            d.a("CameraManager", String.format(Locale.ENGLISH, "setAutoBrightnessAdjust %f on sdk %d", new Object[]{Float.valueOf(f2), Integer.valueOf(Build.VERSION.SDK_INT)}));
            if (27 < Build.VERSION.SDK_INT) {
                DisplayManager displayManager = (DisplayManager) this.aT.getSystemService(DisplayManager.class);
                if (displayManager != null) {
                    DisplayManagerNative.setTemporaryAutoBrightnessAdjustment(displayManager, f2);
                }
            }
        }
    }

    public void a(Face[] faceArr) {
        synchronized (this.aQ) {
            this.bl = faceArr;
            this.bm = this.bl != null ? this.bl.length : 0;
            if (this.br != null && v()) {
                this.br.b(this.bm);
            }
        }
    }

    public boolean a(int i2) {
        o oVar = this.bp;
        if (oVar != null) {
            return oVar.a(i2);
        }
        return false;
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        d.a("CameraManager", "onKeyDown, keycode: " + i2);
        if (this.z == i2) {
            if (this.av && keyEvent.getRepeatCount() == 0) {
                c("fingerprint");
                ap();
            }
            return true;
        }
        if (!(i2 == 27 || i2 == 66)) {
            if (i2 == 82) {
                return true;
            }
            if (i2 == 84) {
                return keyEvent.isLongPress();
            }
            if (i2 != 319) {
                if (i2 == 79) {
                    long downTime = keyEvent.getDownTime();
                    if (this.av && keyEvent.getRepeatCount() == 0 && downTime - this.A <= 600) {
                        return true;
                    }
                    if (this.av && keyEvent.getRepeatCount() == 0 && downTime - this.A > 600 && an()) {
                        this.A = downTime;
                        ap();
                    } else if (this.av && keyEvent.getRepeatCount() > 0) {
                        this.A = downTime;
                    }
                    return true;
                } else if (i2 != 80) {
                    switch (i2) {
                        case 23:
                            break;
                        case 24:
                        case 25:
                            return (this.bq.aW() && this.bq.aQ()) || this.bq.aO() || c(i2, keyEvent);
                        default:
                            return false;
                    }
                } else {
                    if (this.av && keyEvent.getRepeatCount() == 0) {
                        ap();
                    }
                    return true;
                }
            }
        }
        a(keyEvent);
        return true;
    }

    public boolean a(String str) {
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            return iVar.h(str);
        }
        return true;
    }

    public boolean a(String str, int i2) {
        d.a("CameraManager", "setCurrentMode, mode: " + str + ", cameraId: " + i2);
        this.bv.b(i2);
        boolean b2 = this.bv.b(str);
        if (b2) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (eVar != null) {
                eVar.G(bx());
                this.bq.b(this.bv.d());
                if (!this.bv.a()) {
                    this.bq.K(false);
                }
            }
        }
        return b2;
    }

    public void aa() {
        Z();
        this.br = new com.oppo.camera.ui.preview.a.j(this.aT);
        this.br.a(this.cQ);
        this.bq = new com.oppo.camera.ui.e(this.aT, this.aU, this.cU);
        this.bq.m(this.bQ.r());
        this.bq.a(this.cY);
        this.bq.a((com.oppo.camera.ui.control.d) new o());
        this.bq.a(this.cX);
        this.bq.a((e.b) this.cK);
        this.bq.a(this.br);
        this.bs = new com.oppo.camera.ui.preview.h(this.aT, this.aU, this.cT);
        this.bs.a(this.bQ.r());
        this.bs.b();
        this.bv.a(this.cS, (com.oppo.camera.ui.c) this.bq, this.br);
        Y();
        bq();
        com.oppo.camera.j.b.a().d();
        this.bv.i(this.bQ.f());
        this.bv.a(this.aX);
        a(this.bQ.f(), this.q);
        this.aS.open();
        this.br.a(this.q);
        if (this.bv.a()) {
            this.bq.j(this.aT.getString(com.oppo.camera.ui.menu.b.d.a(this.bv.h())));
            this.bq.J(false);
        }
        d.a("CameraManager", "onCreate, open the block");
        this.aq = com.oppo.camera.o.d.b("oppo.display.miravision.support");
        this.bE = new m(this.aT, this.aU);
        this.bE.a(this.bQ.r());
        this.bE.a((m.e) new w());
        v.a((Context) this.aT);
    }

    public void ab() {
        this.aC = true;
    }

    public void ac() {
        if (this.an) {
            this.cM.postAtFrontOfQueue(new Runnable() {
                public void run() {
                    e.this.bk.c();
                }
            });
        }
    }

    public void ad() {
        d.a("CameraManager", "onResumeMessage");
        if (this.ao) {
            d.a("CameraManager", "onResumeMessage, return");
            return;
        }
        this.ao = true;
        z(false);
        j(false);
        i(false);
        f(false);
        k(false);
        c(-1);
        A();
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.b(!this.U, false);
            g(false);
        }
        if (this.bt != null) {
            com.oppo.camera.ui.e eVar2 = this.bq;
            if ((eVar2 != null && eVar2.K()) || this.bv.aJ()) {
                this.bt.a(8);
            }
        }
        if (this.bq != null) {
            w(false);
            this.bq.a(bx(), this.bv.aJ(), this.bv.aI(), this.bv.aL(), this.bv.a(), this.bQ.h() && a("pref_filter_process_key"));
            com.oppo.camera.ui.preview.h hVar = this.bs;
            if (hVar != null) {
                hVar.c();
            }
            if (this.bQ.e()) {
                com.oppo.camera.e.h hVar2 = this.aY;
                if (hVar2 != null) {
                    Size a2 = this.bv.a(hVar2);
                    this.bq.c(-1, com.oppo.camera.o.d.b(a2.getWidth(), a2.getHeight()));
                }
            }
            if (com.oppo.camera.o.d.y()) {
                boolean configBooleanValue = CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_GOOGLE_LENS_ENABLE);
                SharedPreferences sharedPreferences = this.aV;
                if (sharedPreferences != null) {
                    String string = sharedPreferences.getString("google_lens_switch", (String) null);
                    if (string != null) {
                        try {
                            configBooleanValue = Boolean.valueOf(string).booleanValue();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                d.a("CameraManager", "onResumeMessage, enableGoogleLens: " + configBooleanValue);
                if (configBooleanValue && this.bZ == null) {
                    this.bZ = new LensApi(this.aT);
                    this.bZ.checkLensAvailability(new LensApi.LensAvailabilityCallback() {
                        public void onAvailabilityStatusFetched(int i) {
                            d.a("CameraManager", "onAvailabilityStatusFetched, status: " + i);
                            if (i == 0) {
                                boolean unused = e.this.ca = true;
                                if (e.this.bq != null && !e.this.az()) {
                                    e.this.bq.q(5);
                                    if (!com.oppo.camera.e.a.c(e.this.q)) {
                                        e.this.bq.L(true);
                                    }
                                }
                            }
                        }
                    });
                }
            }
            if (this.bQ.l() && a(CameraFunction.FACE_BEAUTY_PROCESS) && this.bQ.h()) {
                this.bv.e("beauty");
                int aM2 = this.bv.aM();
                this.bv.n(aM2);
                this.bq.k(aM2);
                if (!this.bv.aL()) {
                    this.bq.n(false);
                }
            } else if ((!this.bQ.l() || this.bv.aD()) && this.bQ.r() != 3 && !this.bq.aG() && !this.bv.a() && !this.bv.aJ()) {
                this.bq.s(false);
            }
            if (this.bQ.r() == 1 && this.ca) {
                if (az()) {
                    this.bq.r(5);
                } else {
                    this.bq.q(5);
                }
            }
            if (this.bv.aI()) {
                this.bq.h(false);
            }
            if (this.bv.h("pref_portrait_new_style_menu")) {
                this.bq.f("pref_portrait_new_style_menu");
            } else if (a("pref_filter_menu")) {
                this.bq.f("pref_filter_menu");
            } else if (a("pref_video_filter_menu")) {
                this.bq.f("pref_video_filter_menu");
            }
        }
        m mVar = this.bE;
        if (mVar != null) {
            mVar.d();
        }
        com.oppo.camera.ui.menu.f.a(this.cV);
        this.bk.d();
        if (this.bQ.l()) {
            this.bq.b(this.q, this.bv.h());
        }
        if (this.bJ == null) {
            this.bJ = new w(this.aT);
        }
        this.bJ.a();
        d.a("CameraManager", "onResumeMessage, end");
    }

    public void ae() {
        d.a("CameraManager", "onDestroy");
        com.oppo.camera.ui.preview.a.h.b((Context) this.aT).d();
        if (this.aU != null) {
            this.bQ.a();
            bE();
        }
        m mVar = this.bE;
        if (mVar != null) {
            mVar.f();
            this.bE = null;
        }
        com.oppo.camera.ui.control.h hVar = this.bz;
        if (hVar != null) {
            hVar.g();
            this.bz.b();
            this.bz = null;
        }
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.V();
            this.bv = null;
        }
        o oVar = this.bp;
        if (oVar != null) {
            oVar.e();
            this.bp = null;
        }
        k kVar = this.bT;
        if (kVar != null) {
            kVar.d();
            this.bT = null;
        }
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.G();
            this.bq = null;
        }
        com.oppo.camera.ui.preview.h hVar2 = this.bs;
        if (hVar2 != null) {
            hVar2.e();
            this.bs = null;
        }
        n nVar = this.bU;
        if (nVar != null) {
            nVar.c();
            this.bU = null;
        }
        s sVar = this.bV;
        if (sVar != null) {
            sVar.a();
            this.bV = null;
        }
        w wVar = this.bJ;
        if (wVar != null) {
            wVar.b();
            this.bJ = null;
        }
        aD();
        t tVar = this.bx;
        if (tVar != null) {
            tVar.c();
            this.bx = null;
        }
        com.oppo.camera.Ipa.e eVar2 = this.bA;
        if (eVar2 != null) {
            eVar2.a((e.b) null);
            this.bA.a();
            this.bA = null;
        }
        this.ad = false;
        this.aT = null;
        this.bk = null;
        this.bH = null;
    }

    public void af() {
        d.a("CameraManager", "switchUIByCurrentModeType, getCurrentModeName: " + this.bv.h());
        this.bq.b(this.bv.d());
        this.bq.a(this.bv.h(), this.bv.d(), bx());
    }

    public boolean ag() {
        return this.aj;
    }

    public void ah() {
        com.oppo.camera.o.d.a((Context) this.aT, false);
        f fVar = this.aX;
        if (fVar != null) {
            fVar.h();
            this.aX.a(false, (f.b) null);
        }
        synchronized (this.aQ) {
            this.O = false;
        }
        j(0);
        this.ax = false;
    }

    public void ai() {
        d.a("CameraManager", "afterStartUpCamera, mbPaused: " + this.P + ", mFirstTimeInitialized: " + this.av);
        if (!this.P) {
            this.aS.block();
            this.bv.b(this.q);
            this.bv.a(this.aX);
            this.bs.c(com.oppo.camera.e.a.b(this.q));
            this.bs.a(com.oppo.camera.e.a.c(this.q));
            this.bq.l(com.oppo.camera.e.a.a(0, this.q));
            r(false);
            b(false, false);
            if (this.P) {
                d.e("CameraManager", "afterStartUpCamera, activity paused, so return");
                return;
            }
            if (this.bQ.l() && this.bv.h("key_beauty3d")) {
                this.aT.runOnUiThread(new Runnable() {
                    public void run() {
                        e.this.bv.a(13, true);
                    }
                });
            }
            aj();
            v(this.bv.aH());
            if (this.an) {
                this.cM.a(new Runnable() {
                    public void run() {
                        if (!e.this.P) {
                            if (!e.this.av) {
                                e.this.h();
                            } else {
                                e.this.i();
                            }
                        }
                    }
                });
            }
        }
    }

    public void aj() {
        d.a("CameraManager", "closeCaptureSession, mCameraState: " + this.l + ", mbAEAFLocked: " + this.Q + ", mOneCamera: " + this.aX + ", mbPaused: " + this.P);
        if (this.aX != null && !this.P) {
            j(5);
            this.aX.d();
            this.cM.removeMessages(5);
            this.bs.q();
            this.bs.u();
            this.R = false;
            if (this.Q) {
                this.cM.a(new Runnable() {
                    public void run() {
                        if (!e.this.P) {
                            boolean unused = e.this.Q = false;
                            e.this.bq.B(false);
                        }
                    }
                });
            }
        }
    }

    public boolean ak() {
        com.oppo.camera.ui.control.h hVar = this.bz;
        if (hVar != null) {
            return hVar.e();
        }
        return false;
    }

    public void al() {
        d.a("CameraManager", "showOpticalZoomMenu");
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar == null || !eVar.aW() || !this.bq.aQ()) {
            x xVar = this.bt;
            if (xVar != null) {
                xVar.b();
            }
        }
    }

    public void am() {
        d.a("CameraManager", "collapseOpticalZoomMenu");
        x xVar = this.bt;
        if (xVar != null) {
            xVar.c();
        }
    }

    public boolean an() {
        if (this.bv != null) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (!(eVar == null || eVar.M() == null)) {
                ShutterButton M2 = this.bq.M();
                if (this.bq.M().getVisibility() != 0 || !M2.isClickable() || !M2.isEnabled() || (aq() && "sticker".equals(this.bv.h()))) {
                    d.b("CameraManager", "checkVolumeCanCapture, will return, isClickable : " + M2.isClickable() + ", enable: " + M2.isEnabled() + ", recording: " + aq());
                } else {
                    d.a("CameraManager", "checkVolumeCanCapture, getCurrentModeName: " + this.bv.h());
                    return !"common".equals(this.bv.h()) || !this.X;
                }
            }
        }
        return false;
    }

    public boolean ao() {
        if (br() != null) {
            return this.bD.d();
        }
        return false;
    }

    public void ap() {
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.ar();
        }
    }

    public boolean aq() {
        return this.bv.ar();
    }

    public void ar() {
        m mVar = this.bE;
        if (mVar != null) {
            mVar.g();
        }
    }

    public long as() {
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            return iVar.ay();
        }
        return 0;
    }

    public c at() {
        return this.bH;
    }

    public float au() {
        x xVar = this.bt;
        return xVar != null ? xVar.a() : aw();
    }

    public boolean av() {
        x xVar = this.bt;
        if (xVar != null) {
            return xVar.h();
        }
        return false;
    }

    public float aw() {
        return this.aY.a(a(CameraFunction.SAT_CAMERA), a("pref_switch_camera_key"));
    }

    public List<Float> ax() {
        return this.aY.a(bz() && aQ(), this.bv.h(CameraFunction.SAT_CAMERA), this.bv.h("pref_switch_camera_key"));
    }

    public boolean ay() {
        return T() || this.at;
    }

    public void b() {
        d.b("CameraManager", "onScreenOffWhenLocked");
        com.oppo.camera.o.d.a((Context) this.aT, false);
        m(false);
        a(false, true);
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.i(false);
        }
        this.aT.runOnUiThread(new Runnable() {
            public void run() {
                MyApplication.c();
            }
        });
    }

    public void b(final float f2) {
        a(f2, false);
        this.cM.a(new Runnable() {
            public void run() {
                if (!e.this.P) {
                    if (e.this.bt == null) {
                        e.this.bg();
                    }
                    e.this.bt.a(e.this.ax(), e.this.bv.aY(), e.this.a(CameraFunction.SAT_CAMERA), e.this.bz(), f2, e.this.aw(), e.this.aY.d());
                    e.this.bh();
                    e.this.bm();
                }
            }
        });
    }

    public void b(int i2) {
        d.a("CameraManager", "playSound, cameraSound: " + i2);
        if (this.bp != null && "on".equals(this.aJ)) {
            this.bp.b(i2);
        }
    }

    public void b(MotionEvent motionEvent) {
        if (this.bB == null) {
            this.bB = VelocityTracker.obtain();
        }
        this.bB.addMovement(motionEvent);
    }

    public void b(boolean z2) {
        if (this.P) {
            d.a("CameraManager", "onPreviewOk, mbPaused: " + this.P);
        } else if (z2 && !this.ap) {
            this.ap = true;
            if (!this.an) {
                j();
            }
            d.e("CameraManager", "CameraTest Displayed com.oppo.camera");
        } else if (!this.an) {
            u(true);
            d.a("CameraManager", "onPreviewOk, mbDisplayOnLock: " + this.aj);
            this.bk.d();
            j();
        }
    }

    public void b(boolean z2, boolean z3) {
        d.a("CameraManager", "setAEAFLocked, mbAEAFLocked: " + this.Q + "->" + z2 + ", update: " + z3);
        if (this.bv.L()) {
            d.a("CameraManager", "setAEAFLocked, isCapturing, so return!");
            return;
        }
        d.a("setAEAFLocked");
        this.Q = z2;
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            if (this.Q) {
                this.R = false;
                eVar.ao();
                if (a("pref_camera_flashmode_key") && "on".equals(this.aU.getString("pref_camera_flashmode_key", this.aT.getString(R.string.camera_flash_mode_default_value)))) {
                    i.a a2 = this.aU.edit();
                    a2.putString("pref_camera_flashmode_key", c.a_);
                    a2.apply();
                    this.bq.d("pref_camera_flashmode_key");
                }
            } else {
                eVar.B(true);
            }
            com.oppo.camera.ui.preview.h hVar = this.bs;
            if (hVar != null) {
                hVar.e(this.Q);
            }
        }
        f fVar = this.aX;
        if (fVar != null) {
            fVar.e(this.Q);
            if (z3) {
                this.aX.a((f.c) null);
            }
        }
        d.b("setAEAFLocked");
    }

    public boolean b(int i2, KeyEvent keyEvent) {
        d.a("CameraManager", "onKeyUp, keyCode: " + i2);
        boolean z2 = F() && DebugUtil.debugPropertyEnabled("oppo.camera.stresstest", DebugUtil.DEBUG_DISABLE);
        if (!(i2 == 24 || i2 == 25)) {
            if (i2 != 79) {
                if (i2 != 80) {
                    if (i2 != 82) {
                        if (i2 != 131) {
                            if (i2 != 319) {
                                switch (i2) {
                                    case 133:
                                        if (z2) {
                                            d("commonVideo");
                                            return true;
                                        }
                                        break;
                                    case 134:
                                        if (z2) {
                                            return true;
                                        }
                                        break;
                                    case 135:
                                        if (z2) {
                                            this.cU.d(0);
                                            return true;
                                        }
                                        break;
                                    case 136:
                                        if (z2) {
                                            this.cU.d(1);
                                            return true;
                                        }
                                        break;
                                    case 137:
                                        if (z2 && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER)) {
                                            this.cU.d(6);
                                            return true;
                                        }
                                    case 138:
                                    case 139:
                                        com.oppo.camera.d.i iVar = this.bv;
                                        if (iVar != null) {
                                            iVar.b(false);
                                        }
                                        return true;
                                    case 140:
                                        if (z2) {
                                            d(CameraStatisticsUtil.EVENT_CAPTURE);
                                            return true;
                                        }
                                        break;
                                    case 141:
                                        if (z2) {
                                            this.cU.d(3);
                                            return true;
                                        }
                                        break;
                                    case 142:
                                        if (z2) {
                                            this.cU.d(2);
                                            return true;
                                        }
                                        break;
                                    case 143:
                                        if (z2) {
                                            d("night");
                                            return true;
                                        }
                                        break;
                                }
                            }
                        } else if (z2) {
                            d("common");
                        }
                    }
                    return true;
                } else if (this.av) {
                    ap();
                }
            }
            return true;
        }
        if (this.bQ.r() == 3) {
            return true;
        }
        if ((this.bq.aW() && this.bq.aQ()) || this.bq.aO()) {
            return true;
        }
        String string = this.aU.getString("pref_volume_key_function_key", this.aT.getString(R.string.camera_volume_key_function_default_value));
        return "shutter".equals(string) || CameraStatisticsUtil.PORTRAIT_ZOOM.equals(string);
    }

    public boolean b(String str) {
        com.oppo.camera.d.a a2 = this.bv.a(str);
        com.oppo.camera.d.i iVar = this.bv;
        Size a3 = a(iVar.a(iVar.h()));
        Size a4 = a(a2);
        int b2 = a3 != null ? com.oppo.camera.o.d.b(a3.getWidth(), a3.getHeight()) : 0;
        int b3 = a4 != null ? com.oppo.camera.o.d.b(a4.getWidth(), a4.getHeight()) : 0;
        q qVar = this.cL;
        if (qVar != null) {
            qVar.a(a3, a4);
        }
        if (!(a3 == null || a4 == null)) {
            d.a("CameraManager", "isModeSwitchNeedBlurAnimate, previewSize:(" + a3.getWidth() + "x" + a3.getHeight() + ") => (" + a4.getWidth() + "x" + a4.getHeight() + ")");
        }
        return !TextUtils.equals(str, this.bv.h()) || b2 != b3;
    }

    public Rect c(float f2) {
        Rect d2 = this.aY.d();
        Rect rect = new Rect();
        int width = d2.width() / 2;
        int height = d2.height() / 2;
        float f3 = f2 * 2.0f;
        int width2 = (int) (((float) d2.width()) / f3);
        int height2 = (int) (((float) d2.height()) / f3);
        rect.set(width - width2, height - height2, width + width2, height + height2);
        return rect;
    }

    public void c(int i2) {
        d.a("CameraManager", "setBlurAnimType, animType: " + this.x + " > " + i2);
        this.x = i2;
    }

    public void c(String str) {
        if (!str.equals(this.aM)) {
            d.a("CameraManager", "setCameraTriggerShutterType, shutterTriggerType: " + this.aM + " -> " + str);
            this.aM = str;
        }
    }

    public void c(boolean z2) {
        d.a("CameraManager", "afterStartPreview, mbFrameAvailable: " + this.ap + ", mbPaused: " + this.P + ", fromAsync: " + z2);
        D(z2);
        bc();
        if (!this.P) {
            int i2 = this.w;
            if ((i2 == 0 || 2 == i2) && 1 == this.bQ.r()) {
                this.bq.c(1.0f);
            }
            this.cd.c();
            if (this.bv.h("pref_sticker_process_key")) {
                this.bO = com.oppo.camera.ui.preview.a.h.b((Context) this.aT).a((SharedPreferences) this.aU);
            }
            if (!this.U) {
                this.bq.b(true);
                this.bq.o(true);
                x(true);
            }
            if (aF()) {
                this.cj.a(com.oppo.camera.e.a.c(this.q), TextUtils.equals(this.bv.h(), CameraStatisticsUtil.EVENT_CAPTURE));
            }
        }
    }

    public void c(boolean z2, boolean z3) {
        boolean z4;
        String str;
        d.a("CameraManager", "onResume");
        this.bQ.k();
        this.cq = "normal";
        this.cg = true;
        this.ci = false;
        if (1 != this.bQ.r()) {
            this.cg = bK();
            d.a("CameraManager", "onResume, mbAllowObtainExifLocation: " + this.cg);
        }
        if (this.bQ.d()) {
            bC();
            bF();
            bA();
            bD();
        }
        if (this.bQ.d()) {
            z4 = this.q != 0;
            r(0);
        } else if (!this.bQ.l() || this.q == this.bQ.i()) {
            z4 = false;
        } else {
            r(this.bQ.i());
            z4 = true;
        }
        this.bY = 0;
        i.a a2 = this.aU.edit();
        a2.putString("pref_camera_id_key", Integer.toString(this.q));
        a2.apply();
        this.A = 0;
        this.ar = false;
        if (!this.ax) {
            this.bv.ad();
        }
        if (!this.bQ.f().equals(this.bv.h()) || z4) {
            bB();
        }
        a(this.bQ.f(), this.q);
        m(3);
        t(z3);
        u(!this.P);
        this.y = ((TelephonyManager) this.aT.getSystemService("phone")).getCallState();
        aB();
        this.by = FossManager.getInstance();
        FossManager fossManager = this.by;
        if (fossManager != null) {
            fossManager.disableFoss();
        }
        if (this.bv.a()) {
            this.bq.j(this.aT.getString(com.oppo.camera.ui.menu.b.d.a(this.bv.h())));
            this.bq.J(false);
            this.bq.r(false);
            str = this.bv.c();
        } else {
            this.bq.K(false);
            str = this.bv.h();
        }
        this.bq.a(this.q, str, this.bv.h("pref_support_switch_camera"));
        this.bv.d(this.bQ.l());
        if (this.bv.aJ()) {
            this.bq.r(false);
        }
        if (this.at) {
            this.bv.bd();
        }
        this.as = false;
        y(false);
        this.P = false;
        if (!this.ax) {
            if (!com.oppo.camera.o.d.y() || z2) {
                ba();
                this.cf = false;
                l(0);
                ad();
            } else {
                return;
            }
        }
        LensApi lensApi = this.bZ;
        if (lensApi != null) {
            try {
                lensApi.onResume();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        g.a().a(this.aT);
    }

    public boolean c() {
        t tVar = this.bx;
        if (tVar != null) {
            return tVar.a();
        }
        return false;
    }

    public boolean c(int i2, KeyEvent keyEvent) {
        long downTime = keyEvent.getDownTime();
        String string = this.aU.getString("pref_volume_key_function_key", this.aT.getString(R.string.camera_volume_key_function_default_value));
        if (this.av && keyEvent.getRepeatCount() == 0 && downTime - this.A <= 600) {
            return true;
        }
        if ("shutter".equals(string)) {
            if (this.av && keyEvent.getRepeatCount() == 0 && downTime - this.A > 600 && an()) {
                this.A = downTime;
                c("volume");
                this.cq = "volume";
                ap();
            } else if (this.av && keyEvent.getRepeatCount() > 0) {
                this.A = downTime;
            }
            return true;
        } else if (!CameraStatisticsUtil.PORTRAIT_ZOOM.equals(string)) {
            return false;
        } else {
            if (!this.T && this.au && !this.bq.az() && !this.bq.K() && O() && !this.U && !ak() && this.bv.h("pref_zoom_key") && !this.bv.L() && this.bq.V()) {
                if (i2 == 24) {
                    x xVar = this.bt;
                    if (xVar != null) {
                        xVar.b(true);
                    }
                } else {
                    x xVar2 = this.bt;
                    if (xVar2 != null) {
                        xVar2.b(false);
                    }
                }
            }
            return true;
        }
    }

    public boolean c(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && !this.bv.X()) {
            d(motionEvent);
        }
        if (!P()) {
            if (!Q()) {
                com.oppo.camera.ui.preview.h hVar = this.bs;
                if (hVar == null || !hVar.a(motionEvent)) {
                    com.oppo.camera.ui.e eVar = this.bq;
                    if (eVar != null && eVar.a(motionEvent)) {
                        return true;
                    }
                    x xVar = this.bt;
                    if (xVar != null && xVar.a(motionEvent)) {
                        return true;
                    }
                    com.oppo.camera.d.i iVar = this.bv;
                    if (iVar != null && iVar.d(motionEvent)) {
                        return true;
                    }
                    if (this.bC == null) {
                        this.bS = new p();
                        this.bC = new GestureDetector(this.aT, this.bS);
                    }
                    this.bC.onTouchEvent(motionEvent);
                    return false;
                }
                d.a("CameraManager", "dispatchTouchEvent, do mFocus manager touchevent");
                return true;
            } else if (motionEvent.getAction() != 1) {
                return false;
            } else {
                x xVar2 = this.bt;
                if (xVar2 != null) {
                    xVar2.a(motionEvent);
                }
                com.oppo.camera.ui.preview.h hVar2 = this.bs;
                if (hVar2 != null && hVar2.a(motionEvent)) {
                    return false;
                }
                com.oppo.camera.ui.e eVar2 = this.bq;
                if (eVar2 == null) {
                    return false;
                }
                eVar2.a(motionEvent);
                return false;
            }
        } else if (this.bv.X()) {
            return false;
        } else {
            if (this.bC == null) {
                this.bS = new p();
                this.bC = new GestureDetector(this.aT, this.bS);
            }
            this.bC.onTouchEvent(motionEvent);
            return false;
        }
    }

    public void d(int i2) {
        this.n = i2;
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.a(this.n);
        }
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.o(this.n);
        }
        com.oppo.camera.ui.preview.a.i iVar2 = this.br;
        if (iVar2 != null) {
            iVar2.e(this.n);
        }
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.b(i2);
        }
        x xVar = this.bt;
        if (xVar != null) {
            xVar.a(this.n, true);
        }
        if (this.aX != null && this.bQ.r() == 2 && !Q()) {
            this.aX.a(com.oppo.camera.e.a.b(this.q, this.n));
            this.aX.a((f.c) null);
        }
    }

    public void d(boolean z2) {
        if (z2) {
            this.bq.a((int) R.string.camera_toast_gesture_shutter, -1, true, false, false);
            this.bq.at();
        }
        if (this.bT == null) {
            this.bT = new k();
        }
        Size a2 = this.bv.a(this.aY);
        this.bT.a(this.aT.getApplicationContext(), a2.getWidth(), a2.getHeight());
        this.bT.a(this.cF);
    }

    public boolean d() {
        h hVar = this.cJ;
        if (hVar != null) {
            return hVar.d();
        }
        return false;
    }

    public boolean d(float f2) {
        return a(CameraFunction.SAT_CAMERA) && Float.compare(f2, 1.0f) < 0;
    }

    public boolean d(String str) {
        String b2 = this.cd.b();
        d.a("CameraManager", "checkToSwitchMode, lastModeName: " + b2 + ", modeName: " + str);
        if (str == null || TextUtils.equals(str, b2)) {
            return false;
        }
        d.a("checkToSwitchMode");
        com.oppo.camera.d.a a2 = this.bv.a(str);
        a2.f(this.q);
        l lVar = this.cc;
        a2.e(lVar != null ? lVar.a() : false);
        l lVar2 = this.cc;
        if (lVar2 != null && !lVar2.b()) {
            this.cc.c();
            d.a("CameraManager", "checkToSwitchMode, CloseSessionTask execute");
            this.cr = new i();
            this.cr.executeOnExecutor(this.j, new Object[]{Integer.valueOf(this.bv.b()), Boolean.valueOf(this.bv.aH())});
        }
        this.aC = true;
        j(0);
        i.a a3 = this.aU.edit();
        a3.putString("pref_camera_mode_key", str);
        a3.apply();
        this.bq.b(a2.g());
        this.bv.a(13, false);
        d.b("checkToSwitchMode");
        return true;
    }

    public void e() {
        if (this.aX != null && !this.T && !this.bv.aq()) {
            this.aX.l();
        }
    }

    public void e(int i2) {
        this.o = i2;
        com.oppo.camera.ui.preview.a.i iVar = this.br;
        if (iVar != null) {
            iVar.f(i2);
        }
        if (a("pref_camera_gradienter_key") && "on".equals(this.aU.getString("pref_camera_gradienter_key", c.a_)) && O()) {
            com.oppo.camera.ui.e eVar = this.bq;
            if (eVar != null) {
                x xVar = this.bt;
                if (xVar != null && this.bv != null) {
                    eVar.a(i2, xVar.d(), this.bv.h());
                }
            }
        }
    }

    public void e(boolean z2) {
        d.a("CameraManager", "setDoubleFinger, mbDoubleFinger: " + this.am + " -> " + z2);
        this.am = z2;
    }

    public int f() {
        f fVar = this.aX;
        return fVar != null ? fVar.m() : this.bv.H();
    }

    public void f(int i2) {
        this.aP = a(this.aP, "temperature_limit", "temperature_limit", "ro.camera.temperature.limit", "480");
        int parseInt = Integer.parseInt(this.aP);
        d.a("CameraManager", "onTemperatureChanged, level: " + i2 + ", sbHightTemperature: " + Camera.f1750b + ", temperatureLimit: " + parseInt);
        if (p(i2)) {
            aV();
        }
        if (q(i2)) {
            com.oppo.camera.d.i iVar = this.bv;
            if (iVar != null && iVar.h("pref_support_high_temperature_ultimate_limit")) {
                aW();
            }
        }
        if (i2 < parseInt) {
            if (Camera.f1750b) {
                Camera.f1750b = false;
                this.N = false;
                if (!this.P) {
                    com.oppo.camera.ui.e eVar = this.bq;
                    if (eVar != null) {
                        eVar.b((int) R.string.camera_high_temperature_flash_disable);
                        this.bq.b("pref_camera_flashmode_key", (String) null);
                        this.bq.b("pref_camera_videoflashmode_key", (String) null);
                    }
                }
            }
        } else if (!Camera.f1750b) {
            Camera.f1750b = true;
            this.N = true;
            try {
                if (!this.P && this.bq != null) {
                    if (this.aX != null && !com.oppo.camera.e.a.c(this.q)) {
                        this.aX.a(c.a_);
                        this.aX.a((f.c) null);
                    }
                    aG();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void f(boolean z2) {
        d.a("CameraManager", "setCaptureModeChangeState, " + this.U + " -> " + z2);
        this.U = z2;
    }

    public void g() {
        this.t = null;
    }

    public void g(int i2) {
        d.a("CameraManager", "onBatteryChanged, level: " + i2 + ", sbLowBatteryState: " + Camera.f1749a);
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            if (i2 > 2) {
                iVar.g(false);
                this.bq.b((int) R.string.camera_low_battery_rec_disabled);
            } else {
                iVar.g(true);
                if (this.bv.ar()) {
                    this.bv.f(false);
                    this.bq.a((int) R.string.camera_low_battery_rec_disabled, -1, true, false, false);
                }
            }
        }
        if (i2 > 15) {
            if (Camera.f1749a) {
                Camera.f1749a = false;
                this.M = false;
                if (!this.P) {
                    com.oppo.camera.ui.e eVar = this.bq;
                    if (eVar != null) {
                        eVar.b((int) R.string.camera_low_battery_flash_disable);
                        this.bq.b("pref_camera_flashmode_key", (String) null);
                        this.bq.b("pref_camera_videoflashmode_key", (String) null);
                    }
                }
            }
        } else if (!Camera.f1749a) {
            Camera.f1749a = true;
            this.M = true;
            try {
                if (this.bq != null && !this.P && this.aX != null && this.bk != null) {
                    if (!com.oppo.camera.e.a.c(this.q)) {
                        if (this.bv == null || this.bv.L()) {
                            this.aA = true;
                        } else {
                            this.aX.a(c.a_);
                            this.aX.a((f.c) null);
                        }
                    } else if (a(CameraFunction.TORCH_SOFT_LIGHT) && this.bv != null && !this.bv.L()) {
                        this.aX.a(c.a_);
                        this.aX.a((f.c) null);
                    }
                    aH();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void g(boolean z2) {
        d.a("CameraManager", "setSwitchingCameraState, " + this.T + " -> " + z2);
        this.T = z2;
    }

    public void h() {
        if (this.av || this.aX == null) {
            d.a("CameraManager", "initializeFirstTime, mOneCamera: " + this.aX + ", mbFirstTimeInitialized: " + this.av);
            return;
        }
        this.bu = new y();
        MyApplication.a().a(new Runnable() {
            public void run() {
                e.this.bv.ad();
            }
        }, "initBaseModeMap");
        Size a2 = this.bv.a(this.aY);
        o(com.oppo.camera.o.d.b(a2.getWidth(), a2.getHeight()));
        this.bq.a(this.q, this.bv.aJ(), !this.bv.aL());
        this.L = false;
        aL();
        bq();
        com.oppo.camera.j.b.a().d();
        if (this.bQ.r() != 3) {
            I();
        }
        this.au = true;
        this.av = true;
    }

    public void h(int i2) {
        String h2 = this.bv.h();
        a(h2, i2);
        i.a a2 = this.aU.edit();
        a2.putString("pref_camera_mode_key", h2);
        a2.apply();
    }

    public void h(boolean z2) {
        d.a("CameraManager", "setDelayToDisableBustShot, " + this.al + " > " + z2);
        this.al = z2;
    }

    public void i() {
        if (this.aX == null) {
            d.a("CameraManager", "initializeSecondTime, mOneCamera: " + this.aX);
            return;
        }
        Size a2 = this.bv.a(this.aY);
        o(com.oppo.camera.o.d.b(a2.getWidth(), a2.getHeight()));
        v.a((Context) this.aT);
        this.bq.b(this.bv.d());
        this.bq.e(true, false);
        this.bq.a(this.q, this.bv.aJ(), !this.bv.aL());
        this.L = false;
        aL();
        bq();
        com.oppo.camera.j.b.a().d();
        if (this.bQ.r() != 3) {
            I();
        }
        if (this.bv.h("pref_filter_process_key")) {
            this.bv.a(this.bq.r());
        }
        this.au = true;
    }

    public void i(int i2) {
        d.a("CameraManager", "switchCamera, cameraId: " + i2 + ", mbPaused: " + this.P);
        this.bW = null;
        if (!this.P) {
            d.a("CameraManager", "startOperation, cameraId: " + i2);
            SystemPropertiesNative.set("oppo.camera.switch", MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
            int b2 = this.bv.b();
            boolean aH2 = this.bv.aH();
            this.bq.b(i2, this.bv.h());
            this.aU.a(this.aT, i2);
            this.bv.b(i2);
            h(i2);
            this.bv.x();
            p(false);
            this.bq.aa();
            this.bq.aI();
            this.bq.D();
            this.cM.a(new Runnable() {
                public void run() {
                    e.this.bq.d();
                }
            });
            r(i2);
            this.br.a(i2);
            this.bq.l(com.oppo.camera.e.a.a(0, this.q));
            this.bs.c(com.oppo.camera.e.a.b(this.q));
            int a2 = this.bv.a(aY()).a(this.q);
            d.a("CameraManager", "switchCamera, properCameraId: " + a2);
            l lVar = this.cc;
            if (lVar != null) {
                lVar.a(a2);
            }
            if ((b2 & 768) == 768) {
                this.aX.i(aH2);
            }
            com.oppo.camera.o.d.a((Context) this.aT, !com.oppo.camera.e.a.c(a2));
            this.w = 1;
            this.aX.a(this.aT, a2, this.bX, true, this.bQ.r());
        }
    }

    public void i(boolean z2) {
        d.a("CameraManager", "setSizeChangeState: " + this.V + " > " + z2);
        this.V = z2;
    }

    public void j() {
        d.a("CameraManager", "onPreviewOKMessage");
        if (this.an) {
            d.a("CameraManager", "onPreviewOKMessage, mbPreviewOKMessageEnd is true, so return");
            return;
        }
        this.an = true;
        aE();
        m(1);
        ad();
        this.bE.d();
        this.bk.b();
        if (!this.av) {
            h();
        } else {
            i();
        }
        this.bs.c(com.oppo.camera.e.a.b(this.q));
        this.bq.l(com.oppo.camera.e.a.a(0, this.q));
        this.bq.Y();
        c(false);
        if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER)) {
            com.oppo.camera.ui.preview.a.h.b((Context) this.aT).a((Context) this.aT);
        }
        if (this.bQ.b() && this.cY != null) {
            this.cM.postDelayed(new Runnable() {
                public void run() {
                    e.this.bt();
                }
            }, 500);
        }
        d.a("CameraManager", "onPreviewOKMessage X");
    }

    public void j(int i2) {
        d.a("CameraManager", "setCameraState, state: " + this.l + "->" + i2);
        this.l = i2;
    }

    public void j(boolean z2) {
        d.a("CameraManager", "setForceChangeRecSize: " + this.W + " > " + z2);
        this.W = z2;
    }

    public void k(int i2) {
        if (com.oppo.camera.o.d.j()) {
            if (this.bF == null) {
                this.bF = (FingerprintManager) this.aT.getSystemService("fingerprint");
                this.z = com.oppo.camera.o.d.f("KEYCODE_SYSTEM_FINGERPRINT_KEYMODE");
            }
            if (this.bF != null && "on".equals(this.aL)) {
                try {
                    this.bF.setFingerKeymode(i2);
                } catch (NoSuchMethodError unused) {
                    d.e("CameraManager", "setFingerKeymode, FingerprintManager NoSuchMethodError");
                }
                d.a("CameraManager", "setFingerKeymode, enable: " + i2);
            }
        }
    }

    public void k(boolean z2) {
        d.a("CameraManager", "setBlurAnimRunning, running: " + this.S + " > " + z2);
        this.S = z2;
    }

    public boolean k() {
        return "on".equals(this.aU.getString("pref_camera_gesture_shutter_key", this.aT.getString(R.string.camera_gesture_shutter_default_value))) && this.bv.h("pref_camera_gesture_shutter_key");
    }

    public void l() {
        k kVar = this.bT;
        if (kVar != null) {
            kVar.close();
        }
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.b((int) R.string.camera_toast_gesture_shutter);
            this.bq.a(true);
        }
    }

    public void l(int i2) {
        if (this.bX == null) {
            this.bX = new d();
        }
        com.oppo.camera.entry.b bVar = this.bQ;
        int a2 = bVar.a(bVar.f(), this.q);
        if (this.aX == null) {
            this.aX = new g();
            ImageProcessService imageProcessService = this.cj;
            if (imageProcessService != null) {
                imageProcessService.a();
            }
        }
        this.w = i2;
        this.aX.a(this.aT, a2, this.bX, true, this.bQ.r());
        if (!com.oppo.camera.e.a.c(a2)) {
            com.oppo.camera.o.d.a((Context) this.aT, true);
        }
        l lVar = this.cc;
        if (lVar != null) {
            lVar.a(a2);
        }
        this.bY++;
        this.aY = com.oppo.camera.e.a.a(a2);
        this.ax = true;
        MyApplication.a().a(new Runnable() {
            public void run() {
                e.this.aY.a();
                e.this.aY.a(256);
                e.this.aY.a(32);
                e.this.aY.i();
                d.e("CameraManager", "openCamera, preload finish");
            }
        }, "pre init keys");
    }

    public void l(boolean z2) {
        int i2;
        float f2 = (float) Settings.System.getInt(this.aT.getContentResolver(), CameraStatisticsUtil.SCREEN_BRIGHTNESS, (int) (((float) this.k) * 0.4f));
        d.a("CameraManager", "setScreenBrightness, fSysBrightness: " + f2 + ", fSysBrightnessMode: " + i2 + ", maxScreenBrightness: " + this.k + ", mbSupportAutoBrightness: " + this.ab + ", mbSupportAutoBrightAnimation: " + this.ac);
        float f3 = -1.0f;
        if (com.oppo.camera.o.d.z()) {
            final Window window = this.aT.getWindow();
            final WindowManager.LayoutParams attributes = window.getAttributes();
            if (z2) {
                f3 = 0.1f;
                this.K = 0.1f;
            }
            attributes.screenBrightness = f3;
            this.cM.a(new Runnable() {
                public void run() {
                    window.setAttributes(attributes);
                }
            });
        } else if (this.ab || !this.ac) {
            final Window window2 = this.aT.getWindow();
            final WindowManager.LayoutParams attributes2 = window2.getAttributes();
            if (z2) {
                if (i2 == 1) {
                    f2 = ((float) this.k) / 2.0f;
                }
                if (-1.0f != f2) {
                    f2 = ((f2 / ((float) this.k)) + 1.0f) / 2.0f;
                    if (f2 < 0.6f) {
                        f3 = 0.6f;
                        this.K = f3;
                    }
                }
                f3 = f2;
                this.K = f3;
            }
            d.a("CameraManager", "setScreenBrightness, fSysBrightness: " + f3);
            attributes2.screenBrightness = f3;
            this.cM.a(new Runnable() {
                public void run() {
                    window2.setAttributes(attributes2);
                }
            });
        }
    }

    public void m(boolean z2) {
        if (com.oppo.camera.o.d.b("oppo.display.colormode.support")) {
            synchronized (this.i) {
                String debugProperty = DebugUtil.getDebugProperty("oppo.camera.display.mode", "");
                d.a("CameraManager", "setDisplayActiveMode, bEnterCamera: " + z2 + ", cameraDisplayMode: " + debugProperty + ", mLastActiveDisplayMode: " + this.ct);
                if (!TextUtils.isEmpty(debugProperty)) {
                    try {
                        int i2 = 0;
                        if (this.cu == null) {
                            Class<?> cls = Class.forName("com.oppo.display.OppoMMDisplayQcomQXDM");
                            this.cu = cls.getDeclaredConstructor(new Class[]{Context.class}).newInstance(new Object[]{this.aT});
                            this.cv = cls.getMethod("getActiveMode", new Class[]{Integer.TYPE});
                            this.cw = cls.getMethod("setActiveMode", new Class[]{Integer.TYPE, Integer.TYPE});
                        }
                        if (this.ct == -1 && z2) {
                            long[] jArr = (long[]) this.cv.invoke(this.cu, new Object[]{0});
                            if (jArr != null && jArr.length > 0) {
                                this.ct = jArr[0];
                            }
                            d.a("CameraManager", "setDisplayActiveMode, get last active mode: " + this.ct);
                        }
                        if (z2) {
                            this.cw.invoke(this.cu, new Object[]{0, Integer.valueOf(debugProperty)});
                        } else {
                            Method method = this.cw;
                            Object obj = this.cu;
                            Object[] objArr = new Object[2];
                            objArr[0] = 0;
                            if (this.ct != -1) {
                                i2 = (int) this.ct;
                            }
                            objArr[1] = Integer.valueOf(i2);
                            method.invoke(obj, objArr);
                            this.ct = -1;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        this.ct = -1;
                        this.cu = null;
                        d.a("CameraManager", "setDisplayActiveMode, errMsg: " + e.getMessage());
                    }
                }
            }
        }
    }

    public boolean m() {
        return this.bT != null && a("pref_camera_gesture_shutter_key") && this.bT.b();
    }

    public void n(boolean z2) {
        d.a("CameraManager", "initScreenBrightness, bEnterCamera: " + z2);
        a(z2, false);
        l(z2);
        d.a("CameraManager", "initScreenBrightness X");
    }

    public boolean n() {
        k kVar = this.bT;
        if (kVar != null) {
            return kVar.a();
        }
        return false;
    }

    public void o() {
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar == null || !eVar.W() || com.oppo.camera.e.a.c(this.q)) {
            this.N = true;
            return;
        }
        this.bq.a((int) R.string.camera_high_temperature_flash_disable, -1, true, false, false);
        this.N = false;
        i(ReminderMsgData.KEY_TEMPS_FLASH);
    }

    public void o(boolean z2) {
        e(z2);
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.a(!z2);
        }
    }

    public void p() {
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar == null || !eVar.W() || com.oppo.camera.e.a.c(this.q)) {
            this.M = true;
            return;
        }
        this.bq.a((int) R.string.camera_low_battery_flash_disable, -1, true, false, false);
        this.M = false;
    }

    public void p(boolean z2) {
        d.a("CameraManager", "setBurstCaptureEnable, enable: " + z2 + ", mbBurstShot: " + this.X);
        q(z2);
        if (z2) {
            g.a().c(this.aT);
        } else {
            g.a().a(this.aT);
        }
        f fVar = this.aX;
        if (fVar != null && !z2) {
            fVar.f();
        }
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null && this.bv != null && z2) {
            this.v = 0;
            eVar.s(this.v);
            this.bv.g(this.v);
        }
    }

    public void q() {
        String str;
        d.b("CameraManager", "prepareRealTimeDcsMsgData");
        this.aO = new CaptureMsgData(this.aT);
        CaptureMsgData captureMsgData = this.aO;
        captureMsgData.mTouchEVValue = this.u;
        captureMsgData.mShutterType = this.cq;
        captureMsgData.mCameraEnterType = String.valueOf(this.bQ.r());
        if (this.bv.g("pref_camera_slogan_key")) {
            u uVar = this.bD;
            if (uVar != null) {
                this.aO.mSloganType = uVar.e();
            }
            this.aO.mIsSlogan = ao() ? "on" : c.a_;
        }
        if (this.bv.g("pref_ai_scene_key")) {
            this.aO.mIsAiScene = String.valueOf(this.bv.af());
        }
        if (this.bv.g("pref_zoom_key")) {
            this.aO.mZoomValue = W();
        }
        if (this.bv.g("pref_camera_assistant_line_key")) {
            this.aO.mIsAssistantLine = String.valueOf("on".equals(this.aU.getString("pref_camera_assistant_line_key", this.aT.getString(R.string.camera_assistant_line_default_value))));
        }
        this.aO.mIsRecordLocation = String.valueOf("on".equals(this.aU.getString("pref_camera_recordlocation_key", this.aT.getString(R.string.camera_location_default_value))));
        this.aO.mIsSDCard = String.valueOf("on".equals(this.aU.getString("pref_camera_storage_key", this.aT.getString(R.string.camera_storage_default_value))));
        this.aO.mVolumeFunction = this.aU.getString("pref_volume_key_function_key", this.aT.getString(R.string.camera_volume_key_function_default_value));
        this.aO.mIsFingerprintShutter = this.aU.getString("pref_camera_fingerprint_shutter_key", this.aT.getString(R.string.camera_fingerprint_capture_default_value));
        this.aO.mIsShutterVoice = this.aU.getString("pref_camera_sound_key", this.aT.getString(R.string.camera_sound_default_value));
        if (this.bv.g("pref_camera_gesture_shutter_key")) {
            this.aO.mIsGestureCaptureType = this.aU.getString("pref_camera_gesture_shutter_key", this.aT.getString(R.string.camera_gesture_shutter_default_value));
        }
        this.aO.mIsTapCaptureType = this.aU.getString("pref_camera_tap_shutter_key", this.aT.getString(R.string.camera_tap_shutter_default_value));
        if (com.oppo.camera.e.a.c(this.q)) {
            this.aO.mIsMirror = this.aU.getString("pref_mirror_key", this.aT.getString(R.string.camera_mirror_default_value));
        }
        if (this.bv.h("pref_camera_pi_mode_key")) {
            this.aO.mIsPi = this.aU.getString("pref_camera_pi_mode_key", c.a_);
        }
        if (this.bv.g("pref_camera_hdr_mode_key")) {
            this.aO.mHdrMode = this.aU.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.q));
        }
        if (this.bv.g("pref_camera_flashmode_key")) {
            this.aO.mFlashMode = this.aU.getString("pref_camera_flashmode_key", this.aT.getResources().getString(R.string.camera_flash_mode_default_value));
        } else if (this.bv.g("pref_camera_torch_mode_key")) {
            this.aO.mFlashMode = this.aU.getString("pref_camera_torch_mode_key", this.aT.getResources().getString(R.string.camera_torch_mode_default_value));
        } else if (this.bv.g("pref_camera_videoflashmode_key")) {
            this.aO.mFlashMode = this.aU.getString("pref_camera_videoflashmode_key", this.aT.getResources().getString(R.string.camera_flash_mode_video_default_value));
        }
        if (!com.oppo.camera.o.d.y()) {
            Location c2 = this.bE.c();
            CaptureMsgData captureMsgData2 = this.aO;
            if (c2 != null) {
                str = c2.getLongitude() + "," + c2.getLatitude();
            } else {
                str = "";
            }
            captureMsgData2.mLocation = str;
        }
        CaptureMsgData captureMsgData3 = this.aO;
        captureMsgData3.mPreviewCaptureCostTime = this.D;
        captureMsgData3.mBetweenClickBtnCostTime = this.F;
        captureMsgData3.mDelayTime = this.bv.U();
        CaptureMsgData captureMsgData4 = this.aO;
        captureMsgData4.mAiScene = this.v;
        captureMsgData4.mTouchXYValue = aJ();
        if (this.bz != null && !c.a_.equals(this.aO.mDelayTime)) {
            this.aO.mTimerSize = this.bz.c();
            this.aO.mTimerCoordinate = this.bz.d();
        }
        if (!com.oppo.camera.e.a.c(this.q)) {
            this.aO.mAeAfLock = String.valueOf(s());
        }
        this.aO = (CaptureMsgData) this.bv.a((DcsMsgData) this.aO);
        d.b("CameraManager", "prepareRealTimeDcsMsgData X");
    }

    public void q(boolean z2) {
        this.X = z2;
    }

    public int r() {
        int i2;
        if (!v()) {
            return 0;
        }
        synchronized (this.aQ) {
            i2 = this.bm;
        }
        return i2;
    }

    public void r(boolean z2) {
        this.R = z2;
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.c(z2);
        }
    }

    public void s(boolean z2) {
        d.a("CameraManager", "onPause, mbSwitchingCamera: " + this.T + ", mCameraId: " + this.q);
        k(0);
        f fVar = this.aX;
        if (fVar != null) {
            fVar.a(true);
        }
        if (!this.at && !this.as) {
            this.aC = true;
            bE();
        }
        this.ce = 0;
        this.cf = false;
        if (by()) {
            i.a a2 = this.aU.edit();
            a2.putString("last_camera_gesture_shutter_key", this.aU.getString("pref_camera_gesture_shutter_key", this.aT.getString(R.string.camera_gesture_shutter_default_value)));
            a2.apply();
        }
        this.cf = false;
        this.P = true;
        this.au = false;
        this.ao = false;
        this.ay = false;
        this.ap = false;
        this.cp = System.currentTimeMillis();
        n(3);
        o(false);
        this.bv.R();
        aC();
        FossManager fossManager = this.by;
        if (fossManager != null) {
            fossManager.enableFoss();
        }
        if (this.bz != null && ak()) {
            this.bz.g();
        }
        h(false);
        this.ad = false;
        this.cG = null;
        this.R = false;
        b(false, false);
        this.X = false;
        this.bR = null;
        this.aB = false;
        k kVar = this.bT;
        if (kVar != null && kVar.b()) {
            l();
        }
        x(false);
        this.ae = false;
        this.aw = false;
        this.bW = null;
        this.cH = -1;
        q qVar = this.cL;
        if (qVar != null) {
            qVar.a();
            this.cL = null;
        }
        this.cM.removeMessages(9);
        this.cM.removeMessages(11);
        l lVar = this.cc;
        if (lVar != null) {
            lVar.k();
        }
        y yVar = this.bu;
        if (yVar != null) {
            yVar.d();
        }
        this.bv.T();
        ah();
        m(false);
        if (!z2) {
            n(false);
        }
        com.oppo.camera.j.b.a().c();
        com.oppo.camera.j.a.a().c();
        this.cM.removeCallbacksAndMessages((Object) null);
        com.oppo.camera.o.d.k();
        AsyncTask asyncTask = this.bw;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.bw = null;
        }
        k kVar2 = this.bT;
        if (kVar2 != null) {
            kVar2.c();
        }
        bd();
        x xVar = this.bt;
        if (xVar != null) {
            xVar.e();
        }
        this.bq.b(this.bv.d(), bx());
        if (x()) {
            this.bq.N(false);
        }
        this.cJ.c();
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar != null) {
            hVar.d();
        }
        u uVar = this.bD;
        if (uVar != null) {
            uVar.f();
        }
        m mVar = this.bE;
        if (mVar != null) {
            mVar.e();
        }
        n nVar = this.bU;
        if (nVar != null) {
            nVar.b();
        }
        com.oppo.camera.ui.menu.f.b(this.cV);
        this.v = 0;
        if (!this.at) {
            g.a().b(this.aT);
        } else if (com.oppo.camera.e.a.c(this.q) || !c.a_.equals(this.bv.I())) {
            g.a().c(this.aT);
        }
        LensApi lensApi = this.bZ;
        if (lensApi != null) {
            try {
                lensApi.onPause();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.ch && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P)) {
            Activity activity = this.aT;
            Toast.makeText(activity, activity.getString(R.string.camera_high_temperature_exit_toast), 0).show();
            this.ch = false;
        }
        d.a("CameraManager", "onPause X");
    }

    public boolean s() {
        com.oppo.camera.ui.preview.h hVar = this.bs;
        if (hVar == null) {
            return false;
        }
        return hVar.w();
    }

    public void t() {
        this.cM.a(new Runnable() {
            /* JADX WARNING: Code restructure failed: missing block: B:14:0x0077, code lost:
                return;
             */
            public void run() {
                synchronized (e.this.aQ) {
                    if (!e.this.P) {
                        d.a("CameraManager", "startFaceDetection, mbFaceDetectionStarted: " + e.this.O);
                        e.this.a((Face[]) null);
                        boolean unused = e.this.O = true;
                        boolean unused2 = e.this.af = e.this.bv.h("pref_video_eis");
                        if (e.this.bq != null) {
                            e.this.bq.A(com.oppo.camera.e.a.c(e.this.q));
                        }
                        if (e.this.aX != null) {
                            e.this.aX.g();
                        }
                    }
                }
            }
        });
    }

    public void t(boolean z2) {
        this.ai = z2;
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.u(this.ai);
        }
    }

    public void u() {
        this.cM.a(new Runnable() {
            /* JADX WARNING: Code restructure failed: missing block: B:14:0x0056, code lost:
                return;
             */
            public void run() {
                synchronized (e.this.aQ) {
                    if (!e.this.P) {
                        d.a("CameraManager", "stopFaceDetection, mbFaceDetectionStarted: " + e.this.O);
                        boolean unused = e.this.O = false;
                        if (e.this.bq != null) {
                            e.this.bq.aa();
                        }
                        if (e.this.aX != null) {
                            e.this.aX.h();
                        }
                    }
                }
            }
        });
    }

    public void u(boolean z2) {
        KeyguardManager keyguardManager = (KeyguardManager) this.aT.getSystemService("keyguard");
        if (!keyguardManager.isKeyguardLocked() || !keyguardManager.isKeyguardSecure()) {
            this.aj = false;
        } else {
            this.aj = true;
            if ((z2 || !this.aj) && !this.cf) {
                MyApplication.a().a(new Runnable() {
                    public void run() {
                        e.this.bi();
                    }
                }, "clearLockDB");
                this.cf = true;
            }
        }
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.e(this.aj);
        }
    }

    public void v(boolean z2) {
        l lVar = this.cc;
        String mVar = (lVar == null || lVar.i() == null) ? "" : this.cc.i().toString();
        d.a("CameraManager", "createCaptureSession, mCameraState: " + this.l + ", mbAEAFLocked: " + this.Q + ", mOneCamera: " + this.aX + ", mbPaused: " + this.P + ", isHFR: " + z2 + ", modeChangeTask: " + mVar);
        if (this.aX != null && !this.P) {
            if ((Camera.f1750b && this.N) || (Camera.f1749a && this.M)) {
                a((SharedPreferences) this.aU);
            }
            Size a2 = this.cd.a(this.aY);
            a(a2);
            y yVar = this.bu;
            if (yVar != null && yVar.a()) {
                this.bu.d();
            }
            b((!this.aC || !a("pref_none_sat_ultra_wide_angle_key") || !aQ()) ? (this.aC || this.bt == null || !this.bv.h("pref_zoom_key")) ? aw() : this.bt.a() : 1.0f);
            this.aC = false;
            this.cd.a();
            this.bn = this.aY.a(a2);
            bj();
            if (a("pref_face_detection_key")) {
                t();
            } else {
                u();
            }
            if (!com.oppo.camera.e.a.c(this.q)) {
                this.aX.a(this.cd.d(), a.a(), a.a(), true);
                this.aX.e(this.Q);
            }
            this.aX.a(this.cd.e(), this.aZ, z2, bl());
        }
    }

    public boolean v() {
        boolean z2;
        synchronized (this.aQ) {
            z2 = this.O;
        }
        return z2;
    }

    public void w(boolean z2) {
        com.oppo.camera.ui.e eVar = this.bq;
        if (eVar != null) {
            eVar.z(z2);
        }
    }

    public boolean w() {
        return this.T;
    }

    public void x(boolean z2) {
        d.a("CameraManager", "enableOpticalZoomMenu, enable: " + z2);
        x xVar = this.bt;
        if (xVar != null) {
            xVar.a(z2);
        }
    }

    public boolean x() {
        return this.S;
    }

    public void y(boolean z2) {
        this.at = z2;
        d.b("CameraManager", "setExitCameraToSetting, mbSettingClickCausedPause: " + this.at + " > " + z2);
    }

    public boolean y() {
        d.a("CameraManager", "needPreviewImage");
        q qVar = this.cL;
        return qVar == null || !this.U || qVar.c();
    }

    public void z() {
        int i2;
        d.a("CameraManager", "restoreScreenBrightnessForChangeOnRuningtime");
        Window window = this.aT.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (this.ab || this.ac) {
            i2 = Settings.System.getInt(this.aT.getContentResolver(), CameraStatisticsUtil.SCREEN_BRIGHTNESS, (int) (((float) this.k) * 0.4f));
            attributes.screenBrightness = -1.0f;
        } else {
            float f2 = this.K;
            attributes.screenBrightness = f2;
            i2 = (int) (((double) this.k) * ((double) f2));
        }
        window.setAttributes(attributes);
        com.oppo.camera.d.i iVar = this.bv;
        if (iVar != null) {
            iVar.j(i2);
        }
        d.a("CameraManager", "restoreScreenBrightnessForChangeOnRuningtime X");
    }
}
