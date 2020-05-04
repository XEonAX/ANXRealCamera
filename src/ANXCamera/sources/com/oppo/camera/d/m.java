package com.oppo.camera.d;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.location.Location;
import android.media.AudioManager;
import android.media.CamcorderProfile;
import android.media.MediaCodec;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Size;
import android.view.Surface;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import co.polarr.renderer.FilterPackageUtil;
import com.android.providers.downloads.Downloads;
import com.color.compat.content.IntentNative;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.d;
import com.oppo.camera.d.n;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.e;
import com.oppo.camera.e.h;
import com.oppo.camera.gl.q;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.statistics.model.VideoRecordMsgData;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.v;
import com.oppo.exif.OppoExifTag;
import com.oppo.providers.downloads.DownloadManager;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* compiled from: VideoMode */
public abstract class m extends a implements n.d, n.e {
    protected Handler W = null;
    protected String X = "video_size_1080p";
    protected long Y = 0;
    protected CamcorderProfile Z = null;
    private ContentValues aA = null;
    private ParcelFileDescriptor aB = null;
    /* access modifiers changed from: private */
    public AsyncTask aC = null;
    private ValueAnimator aD = null;
    private a aE = null;
    private long aF = 0;
    private int aG = 0;
    private long aH;
    private long aI;
    protected Surface aa = null;
    protected Object ab = new Object();
    protected n ac = null;
    protected int ad = 0;
    protected boolean ae = true;
    private final ConditionVariable af = new ConditionVariable();
    /* access modifiers changed from: private */
    public Handler ag = null;
    private HandlerThread ah = null;
    private String ai;
    private String aj;
    private String ak = null;
    private String al = "";
    private int am = 0;
    private int an = -1;
    private int ao = 2;
    private boolean ap = false;
    private boolean aq = false;
    private boolean ar = true;
    private boolean as = true;
    /* access modifiers changed from: private */
    public boolean at = false;
    /* access modifiers changed from: private */
    public boolean au = false;
    private boolean av = false;
    private long aw = 0;
    private long ax = 0;
    private long ay = 0;
    private Uri az = null;

    /* compiled from: VideoMode */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: b  reason: collision with root package name */
        private float f1922b;
        private float c;
        private Window d;
        private WindowManager.LayoutParams e = this.d.getAttributes();

        public a(Activity activity) {
            this.d = activity.getWindow();
        }

        public void a(float f, float f2) {
            d.a("VideoMode", "setTargetBrightness, targetBrightness: " + f2 + ", deltaBrightness: " + f);
            this.f1922b = f2;
            this.c = f;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (m.this.L != null) {
                float floatValue = (this.c * ((Float) valueAnimator.getAnimatedValue()).floatValue()) + this.f1922b;
                this.e.screenBrightness = floatValue / ((float) m.this.L.I());
                this.d.setAttributes(this.e);
            }
        }
    }

    /* compiled from: VideoMode */
    private class b extends AsyncTask<Void, Void, Boolean> {
        private b() {
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Boolean doInBackground(Void... voidArr) {
            int a2 = v.a(v.q);
            if (a2 != 0) {
                if (a2 == 3 && m.this.L != null) {
                    m.this.L.E();
                }
                return true;
            } else if (!m.this.bZ() || !"on".equals(v.q) || v.b(true)) {
                if (m.this.W != null) {
                    m.this.W.sendEmptyMessageDelayed(2, 5000);
                }
                return false;
            } else {
                d.a("VideoMode", "doInBackground, external storage is removed, wait unmounted broadcast to finish activity");
                return false;
            }
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (bool.booleanValue()) {
                m.this.n(true);
            }
        }
    }

    /* compiled from: VideoMode */
    private final class c extends Handler {
        private c() {
            super(Looper.getMainLooper());
        }

        public void handleMessage(Message message) {
            boolean z = true;
            switch (message.what) {
                case 1:
                    m.this.dn();
                    return;
                case 2:
                    m mVar = m.this;
                    AsyncTask unused = mVar.aC = new b().execute(new Void[0]);
                    return;
                case 3:
                    m.this.M.b(true, false);
                    return;
                case 4:
                    m.this.M.a(true, false);
                    return;
                case 5:
                    if (message.obj != null) {
                        z = ((Boolean) message.obj).booleanValue();
                    }
                    m.this.d(false, z);
                    return;
                case 6:
                    m mVar2 = m.this;
                    mVar2.b(mVar2.N);
                    return;
                case 7:
                    m.this.dd();
                    return;
                case 9:
                    if (m.this.cR()) {
                        m.this.bT();
                        return;
                    } else {
                        sendEmptyMessageDelayed(9, 1000);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    public m(Activity activity, b bVar, com.oppo.camera.ui.c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
        dt();
        this.W = new c();
        this.aE = new a(activity);
        this.aD = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
        this.aD.setDuration(10000);
        this.aD.addUpdateListener(this.aE);
        this.ah = new HandlerThread("CameraRecorder");
        this.ah.start();
        this.ag = new Handler(this.ah.getLooper()) {
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        m.this.dc();
                        return;
                    case 2:
                        m.this.db();
                        return;
                    case 3:
                        m.this.m((String) message.obj);
                        return;
                    case 4:
                        m.this.o((String) message.obj);
                        return;
                    case 5:
                        m.this.n(true);
                        return;
                    case 6:
                        boolean unused = m.this.dq();
                        return;
                    case 8:
                        m.this.N.runOnUiThread(new Runnable() {
                            public void run() {
                                m.this.ds();
                            }
                        });
                        return;
                    default:
                        return;
                }
            }
        };
    }

    private String A(int i) {
        return i == 2 ? ".mp4" : ".3gp";
    }

    private String B(int i) {
        return i == 2 ? "video/mp4" : "video/3gpp";
    }

    private void C(int i) {
        String b2;
        long currentTimeMillis = System.currentTimeMillis();
        String str = b2 + A(i);
        this.al = str;
        String B = B(i);
        this.ak = di();
        String str2 = this.ak + str;
        d.a("VideoMode", "generateVideoFilename, path: " + str2 + ", mime: " + B);
        if (new File(this.ak).exists() || com.oppo.camera.l.a.f(this.ak)) {
            this.aj = str2;
            this.aA = new ContentValues(7);
            this.aA.put("title", b2);
            this.aA.put("_display_name", str);
            this.aA.put("datetaken", Long.valueOf(currentTimeMillis));
            this.aA.put("mime_type", B);
            this.aA.put(Downloads.Impl._DATA, str2);
            this.ad = this.L.k();
            CamcorderProfile cS = cS();
            a.a.a.a(cS != null);
            this.aA.put("resolution", Integer.toString(cS.videoFrameWidth) + "x" + Integer.toString(cS.videoFrameHeight));
            this.aA.put(CameraStatisticsUtil.IMAGE_WIDTH, Integer.toString(cS.videoFrameWidth));
            this.aA.put(CameraStatisticsUtil.IMAGE_HEIGHT, Integer.toString(cS.videoFrameHeight));
            Location o = this.L.o();
            if (o != null) {
                this.aA.put("latitude", Double.valueOf(o.getLatitude()));
                this.aA.put("longitude", Double.valueOf(o.getLongitude()));
            }
            d.a("VideoMode", "generateVideoFilename, New video filename: " + this.aj);
            return;
        }
        this.aj = null;
        d.a("VideoMode", "generateVideoFilename, Exception: mk video dir fail....");
    }

    private ContentValues a(ContentValues contentValues, String str) {
        long n = n(str);
        if (n > 0) {
            contentValues.put("duration", Long.valueOf(n));
        }
        contentValues.put("title", com.oppo.camera.f.a.b(a(), this.j).concat(cO()));
        contentValues.put("_size", Long.valueOf(new File(str).length()));
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        contentValues.put(OppoExifTag.EXIF_KEY_TAGFLAGS, Integer.valueOf(com.oppo.camera.f.a.a(a(), this.j)));
        contentValues.put("_display_name", dj());
        contentValues.put(Downloads.Impl._DATA, str);
        return contentValues;
    }

    private String a(int i, String str) {
        return CamcorderProfile.hasProfile(i, Integer.valueOf(str).intValue()) ? str : Integer.toString(1);
    }

    private void a(Uri uri) {
        if (this.F && this.az != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("media_id", Long.valueOf(ContentUris.parseId(uri)));
            try {
                this.N.getContentResolver().insert(Uri.parse("content://com.oppo.gallery3d.albumsprovider/locked_pictures"), contentValues);
            } catch (Exception e) {
                d.a("VideoMode", "addVideoToMediaStore, updateLockCameraAlbum, error: ", (Throwable) e);
            }
        }
    }

    private String b(long j) {
        return new SimpleDateFormat(this.N.getResources().getString(R.string.camera_video_file_name_format), Locale.US).format(new Date(j));
    }

    /* access modifiers changed from: private */
    public void b(Activity activity) {
        int intValue = Integer.valueOf(DebugUtil.getDebugProperty("persist.sys.brightness.mode", String.valueOf(0))).intValue();
        int i = 191;
        if (intValue == 1) {
            i = Integer.valueOf(DebugUtil.getDebugProperty("camera.video.exponential.brightness", String.valueOf(191))).intValue();
        } else if (intValue == 0) {
            i = Integer.valueOf(DebugUtil.getDebugProperty("camera.video.brightness", String.valueOf(191))).intValue();
        }
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        float f = (float) Settings.System.getInt(activity.getContentResolver(), CameraStatisticsUtil.SCREEN_BRIGHTNESS, i);
        float f2 = (float) i;
        if (f > f2) {
            this.aE.a(f - f2, f2);
            this.aD.start();
        }
        d.a("VideoMode", "setScreenBrightness, brightness: " + i + ", currBrightness: " + f + ", winParams.screenBrightness: " + attributes.screenBrightness);
    }

    private void b(Uri uri) {
        this.N.sendBroadcast(new Intent("android.hardware.action.NEW_VIDEO", uri));
        Intent intent = new Intent("com.oppo.camera.NEW_VIDEO", uri);
        intent.addFlags(IntentNative.FLAG_RECEIVER_INCLUDE_BACKGROUND);
        this.N.sendBroadcast(intent);
    }

    private boolean cB() {
        return this.aG == 2;
    }

    private boolean cJ() {
        return this.aG == 1;
    }

    private void cK() {
        ParcelFileDescriptor parcelFileDescriptor = this.aB;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
                d.d("VideoMode", "closeVideoFileDescriptor, Fail to close fd", e);
            }
            this.aB = null;
        }
    }

    private void cL() {
        d.a("VideoMode", "releaseVideoRecorderWrapper, Releasing media recorder.");
        if (this.ac != null) {
            String str = this.aj;
            if (str != null) {
                this.ag.obtainMessage(4, str).sendToTarget();
                this.aj = null;
            }
            this.ac.c();
            this.ac = null;
        }
    }

    private void cX() {
        Handler handler = this.W;
        if (handler != null) {
            handler.removeMessages(2);
        }
        AsyncTask asyncTask = this.aC;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.aC = null;
        }
    }

    private void cY() {
        if (this.W.hasMessages(1)) {
            this.W.removeMessages(1);
        }
    }

    /* access modifiers changed from: private */
    public void cZ() {
        this.Y = 0;
        this.aw = 0;
        this.ax = 0;
        cX();
        if (this.L != null) {
            this.L.H();
        }
        if (this.W != null) {
            cY();
            this.W.removeMessages(4);
            this.W.removeMessages(3);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00bb A[Catch:{ all -> 0x0095 }] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x013a  */
    private boolean da() {
        boolean z;
        String str;
        String str2;
        d.a("VideoMode", "stopVideoRecording");
        boolean z2 = false;
        if (ca()) {
            this.aF += this.Y;
            try {
                z = this.ac.b();
                try {
                    this.ai = this.aj;
                    d.a("VideoMode", "stopVideoRecording, mCurrentVideoFilename: " + this.ai + ", stopResult: " + z);
                    if (cE() && (this.Y < 1000 || !z)) {
                        d.e("VideoMode", "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: " + this.aj);
                        String str3 = this.aj;
                        if (str3 != null) {
                            this.ag.obtainMessage(3, str3).sendToTarget();
                        }
                        z2 = true;
                    }
                    cL();
                    if (!cp() && k("type_video") && !cE() && this.K != null) {
                        this.K.c("type_video");
                    }
                } catch (RuntimeException e) {
                    e = e;
                    try {
                        d.a("VideoMode", "stopVideoRecording fail, mVideoFilename: " + this.aj, (Throwable) e);
                        if (this.aj != null) {
                        }
                        d.e("VideoMode", "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: " + this.aj);
                        str2 = this.aj;
                        if (str2 != null) {
                        }
                        cL();
                        this.K.c("type_video");
                        return true;
                    } catch (Throwable th) {
                        th = th;
                        d.e("VideoMode", "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: " + this.aj);
                        str = this.aj;
                        if (str != null) {
                        }
                        cL();
                        this.K.c("type_video");
                        throw th;
                    }
                }
            } catch (RuntimeException e2) {
                e = e2;
                z = true;
                d.a("VideoMode", "stopVideoRecording fail, mVideoFilename: " + this.aj, (Throwable) e);
                if (this.aj != null) {
                    this.ag.obtainMessage(3, this.aj).sendToTarget();
                }
                if (cE() && (this.Y < 1000 || !z)) {
                    d.e("VideoMode", "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: " + this.aj);
                    str2 = this.aj;
                    if (str2 != null) {
                        this.ag.obtainMessage(3, str2).sendToTarget();
                    }
                }
                cL();
                if (!cp() && k("type_video") && !cE() && this.K != null) {
                    this.K.c("type_video");
                }
                return true;
            } catch (Throwable th2) {
                z = true;
                th = th2;
                if (cE() && (this.Y < 1000 || !z)) {
                    d.e("VideoMode", "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: " + this.aj);
                    str = this.aj;
                    if (str != null) {
                        this.ag.obtainMessage(3, str).sendToTarget();
                    }
                }
                cL();
                if (!cp() && k("type_video") && !cE() && this.K != null) {
                    this.K.c("type_video");
                }
                throw th;
            }
        }
        return z2;
    }

    /* access modifiers changed from: private */
    public void db() {
        d.a("VideoMode", "stopVideoRecordThread");
        if (this.W.hasMessages(7)) {
            this.W.removeMessages(7);
        }
        this.au = da();
        if (!this.au && this.ae) {
            cT();
        }
        this.L.a(1);
        this.W.post(new Runnable() {
            public void run() {
                if (!m.this.s) {
                    m.this.L.C();
                    m.this.df();
                    m.this.cZ();
                    m.this.L.d(m.this.au);
                    m.this.cI();
                    m.this.x(2);
                    if (m.this.at) {
                        m.this.M.e(m.this.N.getString(R.string.camera_video_reach_size_limit));
                        m.this.L.a((Animation.AnimationListener) null);
                        m.this.L.c(false);
                        m.this.ag.removeMessages(8);
                        m.this.ag.sendEmptyMessageDelayed(8, 3000);
                        boolean unused = m.this.at = false;
                    }
                }
            }
        });
        this.af.open();
    }

    /* access modifiers changed from: private */
    public void dc() {
        boolean a2;
        d.a("VideoMode", "startVideoRecordThread");
        if (this.s) {
            this.af.open();
            return;
        }
        if (!cp() && k("type_video") && !cE() && this.K != null) {
            this.K.b("type_video");
        }
        try {
            this.ac.e();
            d.a("VideoMode", "startVideoRecordThread, start end, result: " + a2);
            if (a2) {
                x(0);
                if (this.W.hasMessages(9)) {
                    this.W.removeMessages(9);
                    this.W.sendEmptyMessageDelayed(9, 1000);
                }
                if (this.W.hasMessages(7)) {
                    this.W.removeMessages(7);
                }
                this.W.sendEmptyMessage(7);
            } else if (cE() && this.F) {
                this.W.sendEmptyMessage(5);
            }
        } catch (Exception e) {
            d.d("VideoMode", "startVideoRecordThread failed, mVideoFilename: " + this.aj, e);
            boolean z = true;
            this.av = true;
            if (com.oppo.camera.o.d.b("oppo.multimedia.record.conflict") && !DebugUtil.getDebugProperty("persist.sys.record.forbid", "0").equalsIgnoreCase(MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST)) {
                if (cE() || !this.F) {
                    z = false;
                }
            }
            this.W.obtainMessage(5, Boolean.valueOf(z)).sendToTarget();
        } catch (Throwable th) {
            this.af.open();
            throw th;
        }
        this.af.open();
    }

    /* access modifiers changed from: private */
    public void dd() {
        cH();
        if (!d("key_short_video")) {
            int z = this.L.h() ? z(R.dimen.record_time_margin_bottom_third_party) : z(R.dimen.record_time_margin_bottom);
            if (cU()) {
                this.M.a(cN(), z);
            }
        }
        this.ay = SystemClock.uptimeMillis();
        dn();
        if (!d("key_short_video")) {
            this.M.e(true);
        }
        this.L.A();
        d.a("VideoMode", "startVideoRecordHandler end");
    }

    private void de() {
        boolean y = this.L != null ? this.L.y() : false;
        this.at = false;
        this.ae = !cb();
        if (this.ag.hasMessages(8)) {
            this.ag.removeMessages(8);
            ds();
        }
        m0do();
        dp();
        if (!y) {
            x(2);
            d.e("VideoMode", "startVideoRecording, ret is false, so return");
            return;
        }
        d.a("VideoMode", "startVideoRecording, mVideoRecorder: " + this.ac);
        this.ag.removeMessages(5);
        if (cV()) {
            this.W.sendEmptyMessageDelayed(4, 2000);
        }
        this.W.sendEmptyMessageDelayed(3, 2000);
        x(1);
        this.az = null;
        if (!dk()) {
            d.e("VideoMode", "startVideoRecording, init FileDescriptor fail");
            return;
        }
        dl();
        dg();
        this.L.a(1);
        this.W.removeMessages(6);
        this.W.sendEmptyMessageDelayed(6, 10000);
        this.af.close();
        if (cE()) {
            this.ag.sendEmptyMessageDelayed(1, 250);
        } else {
            this.ag.sendEmptyMessage(1);
        }
        this.L.z();
        if (com.oppo.camera.o.d.y()) {
            Settings.System.putInt(this.N.getContentResolver(), "oppo_is_camera_recording", 1);
        }
        this.W.sendEmptyMessageDelayed(2, 5000);
        d.a("VideoMode", "afterInitRecorder end");
    }

    /* access modifiers changed from: private */
    public void df() {
        AudioManager audioManager = (AudioManager) this.N.getSystemService("audio");
        if (!this.aq) {
            int abandonAudioFocus = audioManager.abandonAudioFocus((AudioManager.OnAudioFocusChangeListener) null);
            d.a("VideoMode", "resumeAudioPlayback, Not send broadcast to restore the background music: " + abandonAudioFocus);
            return;
        }
        d.a("VideoMode", "resumeAudioPlayback, send broadcast to restore the background music: " + 0);
        Intent intent = new Intent("com.oppo.music.musicservicecommand.resume");
        intent.putExtra("command", "VideoReqMusicRestore");
        this.N.sendBroadcast(intent);
    }

    private void dg() {
        d.a("VideoMode", "pauseAudioPlayback");
        int requestAudioFocus = ((AudioManager) this.N.getSystemService("audio")).requestAudioFocus((AudioManager.OnAudioFocusChangeListener) null, 3, 2);
        if (requestAudioFocus == 1) {
            d.a("VideoMode", "pauseAudioPlayback, Not send broadcast to pause the background music: " + requestAudioFocus);
            this.aq = false;
        }
        if (requestAudioFocus == 0) {
            d.a("VideoMode", "pauseAudioPlayback, send broadcast to pause the background music: " + requestAudioFocus);
            this.aq = true;
            Intent intent = new Intent("com.oppo.music.musicservicecommand.pause");
            intent.putExtra("command", "VideoReqMusicPause");
            this.N.sendBroadcast(intent);
        }
    }

    private boolean dh() {
        d.a("VideoMode", "recDisabledReturn");
        if (!this.ap) {
            return false;
        }
        this.M.a(R.string.camera_low_battery_rec_disabled, -1, true, false, false);
        return true;
    }

    private String di() {
        if (v.q.equals(com.oppo.camera.c.a_)) {
            return v.n + '/';
        }
        return v.h + '/';
    }

    private String dj() {
        if (!TextUtils.isEmpty(this.al)) {
            this.al = this.al.replace("VID", "Slow");
        }
        return this.al;
    }

    private boolean dk() {
        Bundle extras = this.N.getIntent().getExtras();
        cK();
        if (this.L.h() && extras != null) {
            Uri uri = (Uri) extras.getParcelable("output");
            d.c("VideoMode", "initializeRecorder, saveUri: " + uri);
            if (uri != null) {
                try {
                    this.aB = this.N.getContentResolver().openFileDescriptor(uri, "rw");
                    this.az = uri;
                } catch (FileNotFoundException e) {
                    d.e("VideoMode", e.toString());
                }
            }
        }
        if (this.aB != null) {
            return true;
        }
        if (cS() != null) {
            C(cS().fileFormat);
        }
        if (this.aj != null) {
            return true;
        }
        d.e("VideoMode", "initializeRecorder, mVideoFilename is null");
        return false;
    }

    private void dl() {
        boolean z;
        d.c("VideoMode", "initializeRecorder");
        Bundle extras = this.N.getIntent().getExtras();
        long j = "on".equals(v.q) ? STMobileHumanActionNative.ST_MOBILE_BODY_ACTION1 : 0;
        if (this.L.h() && extras != null) {
            j = extras.getLong("android.intent.extra.sizeLimit");
        }
        boolean z2 = false;
        if (extras != null) {
            z = extras.getBoolean("is_from_oppo_mms", false);
            if (this.L.h()) {
                j = extras.getLong("android.intent.extra.sizeLimit");
            }
        } else {
            z = false;
        }
        this.ac = new n(cE());
        synchronized (this.ab) {
            if (this.aa != null) {
                this.ac.a(this.aa);
            }
        }
        this.ac.a((q) this.M.a());
        CamcorderProfile cS = cS();
        if (cS != null) {
            z2 = true;
        }
        a.a.a.a(z2);
        if (this.as) {
            this.ac.a(5);
            cS.audioCodec = 3;
            if (!z) {
                cS.audioBitRate = 320000;
            }
        } else {
            cS.audioCodec = -1;
        }
        this.ac.f(2);
        String cO = cO();
        if (cO != null) {
            this.ac.b(com.oppo.camera.f.a.b(a(), this.j).concat(cO));
        }
        a(this.ac);
        if (com.oppo.camera.o.d.w()) {
            String string = this.O.getString("pref_video_codec_key", this.N.getString(R.string.camera_video_codec_default_value));
            if ("H264".equals(string)) {
                cS.videoCodec = 2;
                this.ac.b(8, 2048);
            } else if ("H265".equals(string)) {
                cS.videoCodec = 5;
            }
            if (com.oppo.camera.e.a.c(this.j) && TextUtils.equals(az(), com.oppo.camera.c.a_)) {
                int k = this.L.k();
                if (k == 0 || k == 180) {
                    this.ac.l(2);
                } else {
                    this.ac.l(1);
                }
            }
            cS.videoFrameRate = cC();
            d.b("VideoMode", "initializeRecorder, vCodec: " + cS.videoCodec + ", vBitRate: " + cS.videoBitRate + ", reduceBitRate: " + cW() + ", aBitRate: " + cS.audioBitRate + ", aCodec: " + cS.audioCodec + ", aChannel: " + cS.audioChannels + ", aSampleRate: " + cS.audioSampleRate + ", pQuality: " + cS.quality);
            this.ac.a(cS);
            if (!this.L.h()) {
                this.ac.g(cW() ? cS.videoBitRate / 2 : cS.videoBitRate);
            } else if (z) {
                this.ac.g(cS.videoBitRate / 4);
            } else {
                this.ac.g(cS.videoBitRate);
            }
        } else {
            CamcorderProfile camcorderProfile = this.Z;
            camcorderProfile.fileFormat = 2;
            this.ac.h(camcorderProfile.fileFormat);
            this.Z.videoFrameRate = cC();
            this.ac.i(this.Z.videoFrameRate);
            this.ac.a(this.Z.videoFrameWidth, this.Z.videoFrameHeight);
            this.ac.j(this.Z.videoCodec);
            if (!this.L.h()) {
                this.ac.g(cW() ? cS.videoBitRate / 2 : cS.videoBitRate);
            } else if (!z) {
                this.ac.g(cS.videoBitRate / 4);
            } else if (com.oppo.camera.o.d.y()) {
                this.ac.g(64000);
            } else {
                this.ac.g(cS.videoBitRate / 24);
            }
            if (this.as) {
                if (this.X.equals("video_size_cif") || this.X.equals("video_size_qcif")) {
                    this.ac.b(this.Z.audioBitRate / 8);
                    this.ac.c(this.Z.audioChannels);
                    this.ac.d(this.Z.audioSampleRate / 8);
                    this.ac.e(this.Z.audioCodec);
                } else {
                    this.ac.b(this.Z.audioBitRate);
                    this.ac.c(this.Z.audioChannels);
                    this.ac.d(this.Z.audioSampleRate);
                    this.ac.e(this.Z.audioCodec);
                }
            }
        }
        Location o = this.L.o();
        if (o != null) {
            this.ac.a((float) o.getLatitude(), (float) o.getLongitude());
        }
        if (d("key_short_video")) {
            this.ac.k(60000);
        } else {
            this.ac.k(this.an);
        }
        String str = cS.videoFrameWidth + "x" + cS.videoFrameHeight;
        this.M.a(cS.videoFrameWidth, cS.videoFrameHeight);
        d.a("VideoMode", "initializeRecorder, vFPS: " + cS.videoFrameRate + ", duration: " + cS.duration + ", vSize: " + str);
        this.ac.c(this.L.k(), this.j);
        ParcelFileDescriptor parcelFileDescriptor = this.aB;
        if (parcelFileDescriptor != null) {
            this.ac.a(parcelFileDescriptor.getFileDescriptor());
        } else {
            this.ac.a(this.aj);
        }
        if (cD() != null && cD().intValue() > 0) {
            this.ac.a((double) cD().intValue());
        }
        long b2 = v.b(v.q);
        if (j > 0 && j < b2) {
            b2 = j;
        }
        try {
            this.ac.a(b2);
        } catch (RuntimeException unused) {
        }
        this.ac.a((n.d) this);
        this.ac.a((n.e) this);
        d.a("VideoMode", "initializeRecorder end, maxFileSize: " + b2 + ", requestedSizeLimit: " + j);
    }

    private void dm() {
        if (this.Z == null) {
            return;
        }
        if ("video_size_1080p".equals(this.X)) {
            CamcorderProfile camcorderProfile = this.Z;
            camcorderProfile.videoFrameWidth = 1920;
            camcorderProfile.videoFrameHeight = 1080;
            camcorderProfile.videoBitRate = 17000000;
        } else if ("video_size_720p".equals(this.X)) {
            CamcorderProfile camcorderProfile2 = this.Z;
            camcorderProfile2.videoFrameWidth = 1280;
            camcorderProfile2.videoFrameHeight = 720;
            camcorderProfile2.videoBitRate = 17000000;
        } else if ("video_size_cif".equals(this.X)) {
            CamcorderProfile camcorderProfile3 = this.Z;
            camcorderProfile3.videoFrameWidth = 352;
            camcorderProfile3.videoFrameHeight = 288;
            camcorderProfile3.videoBitRate = 720000;
        } else if ("video_size_qcif".equals(this.X)) {
            CamcorderProfile camcorderProfile4 = this.Z;
            camcorderProfile4.videoFrameWidth = 176;
            camcorderProfile4.videoFrameHeight = 144;
            camcorderProfile4.videoBitRate = 192000;
        } else {
            CamcorderProfile camcorderProfile5 = this.Z;
            camcorderProfile5.videoFrameWidth = 720;
            camcorderProfile5.videoFrameHeight = 480;
            camcorderProfile5.videoBitRate = 9000000;
        }
    }

    /* access modifiers changed from: private */
    public void dn() {
        if (cR()) {
            long uptimeMillis = (SystemClock.uptimeMillis() - this.ay) - this.aw;
            this.Y = uptimeMillis;
            if (a(uptimeMillis)) {
                bT();
                return;
            }
            if (!d("key_short_video")) {
                this.M.a(this.Y, this.ar);
            }
            this.am++;
            this.am %= 6;
            if (this.am == 0) {
                d.a("VideoMode", "updateRecordingTime, mbShowRecordingIndicator: " + this.ar + "->" + (!this.ar));
                this.ar = this.ar ^ true;
            }
            this.W.sendEmptyMessageDelayed(1, 81);
        }
    }

    /* renamed from: do  reason: not valid java name */
    private void m0do() {
        this.N.sendBroadcast(new Intent("oppo.multimedia.soundrecorder.stopRecroderNormal"));
    }

    private void dp() {
        this.N.sendBroadcast(new Intent("coloros.camera.record.start"));
    }

    /* access modifiers changed from: private */
    public boolean dq() {
        if (k("type_video")) {
            d.b("VideoMode", "prepareVideoSurface");
            y(1);
            dr();
            d.a("prepareVideoSurface");
            n nVar = new n(false);
            synchronized (this.ab) {
                if (this.aa != null) {
                    this.aa.release();
                }
                this.aa = MediaCodec.createPersistentInputSurface();
                nVar.a(this.aa);
            }
            nVar.f(2);
            nVar.h(2);
            nVar.c(this.L.k(), this.j);
            String string = this.O.getString("pref_video_codec_key", this.N.getString(R.string.camera_video_codec_default_value));
            if (cD() != null && cD().intValue() > 0) {
                nVar.a((double) cD().intValue());
            }
            nVar.i(30);
            nVar.a(this.Z.videoFrameWidth, this.Z.videoFrameHeight);
            d.b("VideoMode", "prepareVideoSurface videoCodec: " + string + ", videoBitRate: " + this.Z.videoBitRate);
            if ("H264".equals(string)) {
                nVar.j(2);
                nVar.b(8, 2048);
                nVar.g(this.Z.videoBitRate);
            } else if ("H265".equals(string)) {
                nVar.j(5);
                nVar.g(this.Z.videoBitRate / 2);
            }
            File file = null;
            try {
                file = File.createTempFile("VideoMode", "TempMediaRecorder");
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (file != null) {
                nVar.a(file.getAbsolutePath());
            } else {
                d.e("VideoMode", "configSessionSurface, setOutputFile failed, tempFile: " + file);
            }
            try {
                nVar.e();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            nVar.c();
            if (file != null && file.exists()) {
                com.oppo.camera.l.a.c(file.getAbsolutePath());
            }
            y(2);
            this.af.open();
            d.b("prepareVideoSurface");
        }
        return true;
    }

    private void dr() {
        d.a("VideoMode", "readVideoPreferences");
        d.a("readVideoPreferences");
        this.X = bQ();
        int p = p(com.oppo.camera.e.a.c(this.j) ? a(this.j, this.N.getString(R.string.camera_video_quality_front_default_value)) : a(this.j, this.N.getString(R.string.camera_video_quality_default_value)));
        Intent intent = this.N.getIntent();
        boolean y = com.oppo.camera.o.d.y();
        Bundle extras = intent.getExtras();
        boolean z = false;
        if (extras != null) {
            z = extras.getBoolean("is_from_oppo_mms", false);
        }
        if (intent.hasExtra("android.intent.extra.videoQuality")) {
            if (extras != null && !z) {
                p = extras.getInt("android.intent.extra.videoQuality", 4);
                if (!(6 == p || 5 == p)) {
                    d.a("VideoMode", "readVideoPreferences, EXTRA_VIDEO_QUALITY is not support, reset to QUALITY_480P");
                    p = 4;
                }
            }
            if (y && z) {
                if ("video_size_cif".equals(this.X)) {
                    p = 3;
                } else if ("video_size_qcif".equals(this.X)) {
                    p = 2;
                }
            }
        }
        d.a("VideoMode", "readVideoPreferences, quality: " + p);
        if (intent.hasExtra("android.intent.extra.durationLimit")) {
            int intExtra = intent.getIntExtra("android.intent.extra.durationLimit", -1);
            if (intExtra >= 0) {
                this.an = intExtra * 1000;
            }
            d.a("VideoMode", "readVideoPreferences, mMaxVideoDurationInMs: " + this.an);
        }
        if (!com.oppo.camera.o.d.w()) {
            if (e.c(this.j, p)) {
                this.Z = e.a(this.j, p);
            } else {
                this.Z = e.a(this.j, 4);
            }
            dm();
        } else {
            try {
                this.Z = CamcorderProfile.get(this.j, p);
            } catch (Exception e) {
                this.Z = null;
                d.a("VideoMode", "readVideoPreferences, CamcorderProfile.get fail! ", (Throwable) e);
            }
        }
        if (this.Z == null) {
            d.a("VideoMode", "readVideoPreferences, mProfile is null, so return...");
            return;
        }
        if ("video_size_4kuhd".equals(this.X)) {
            CamcorderProfile camcorderProfile = this.Z;
            camcorderProfile.videoBitRate = 100000000;
            camcorderProfile.videoFrameWidth = 3840;
            camcorderProfile.videoFrameHeight = 2160;
            camcorderProfile.audioSampleRate = 48000;
            camcorderProfile.audioBitRate = 156000;
            camcorderProfile.audioChannels = 2;
        }
        this.Z.videoFrameRate = cC();
        this.Z.videoBitRate = cQ();
        d.a("VideoMode", "readVideoPreferences, videoFrameWidth: " + this.Z.videoFrameWidth + ", videoFrameHeight: " + this.Z.videoFrameHeight + ", videoFrameRate: " + this.Z.videoFrameRate + ", videoBitRate: " + this.Z.videoBitRate);
        d.b("readVideoPreferences");
    }

    /* access modifiers changed from: private */
    public void ds() {
        d.a("VideoMode", "hideHintViewShowZoom");
        this.M.i(true);
        if (this.au && this.L != null) {
            this.L.w();
            this.L.c(true);
        }
    }

    private void dt() {
        if (!com.oppo.camera.o.d.X()) {
            String string = this.N.getString(R.string.camera_video_codec_default_value);
            if ("H265".equals(this.O.getString("pref_video_codec_key", string))) {
                d.a("VideoMode", "checkVideoCodecAndReset, reset video codec to default.");
                SharedPreferences.Editor edit = this.O.edit();
                edit.putString("pref_video_codec_key", string);
                edit.apply();
            }
        }
    }

    private void du() {
        String str;
        VideoRecordMsgData videoRecordMsgData = new VideoRecordMsgData(this.N);
        videoRecordMsgData.mCameraId = String.valueOf(a(this.j));
        videoRecordMsgData.mVideoMode = a();
        videoRecordMsgData.mVideoTime = this.Y;
        videoRecordMsgData.mVideoSizeType = bQ();
        videoRecordMsgData.mFlashMode = av();
        videoRecordMsgData.mAvaliableStorage = v.b(v.q);
        videoRecordMsgData.mOrientation = this.ad;
        videoRecordMsgData.mVideoCodec = this.O.getString("pref_video_codec_key", this.N.getString(R.string.camera_video_codec_default_value));
        videoRecordMsgData.mPreviewCaptureCostTime = this.aI;
        if (this.L != null && this.L.h()) {
            videoRecordMsgData.mCameraEnterType = String.valueOf(3);
        }
        videoRecordMsgData.mPreviewCaptureCostTime = this.aI;
        videoRecordMsgData.mVideoFaceBeauty = this.O.getInt(bL()[0], h(0));
        if (com.oppo.camera.e.a.c(this.j)) {
            videoRecordMsgData.mIsMirror = az();
        }
        int bP = bP();
        if (bP != 0 && d("key_support_video_high_fps")) {
            videoRecordMsgData.mVideoFps = bP;
        }
        videoRecordMsgData.mIsRecordLocation = String.valueOf("on".equals(this.O.getString("pref_camera_recordlocation_key", this.N.getString(R.string.camera_location_default_value))));
        videoRecordMsgData.mSmooth = aW();
        if (c("pref_filter_process_key")) {
            if (!F() || bc() <= 0) {
                videoRecordMsgData.mFilterType = FilterPackageUtil.F_DEFAULT;
            } else {
                videoRecordMsgData.mFilterType = o(bc());
            }
        }
        if (this.L.o() != null) {
            str = r1.getLongitude() + "," + r1.getLatitude();
        } else {
            str = "";
        }
        videoRecordMsgData.mLocation = str;
        if (d("pref_camera_videoflashmode_key") || d("pref_camera_torch_mode_key")) {
            videoRecordMsgData.mFlashMode = av();
            videoRecordMsgData.mbFlashTrigger = p(0);
        }
        if (!com.oppo.camera.e.a.c(this.j)) {
            videoRecordMsgData.mAeAfLock = String.valueOf(this.L.O());
        }
        if (c("pref_zoom_key")) {
            videoRecordMsgData.mZoomValue = this.L.T();
        }
        videoRecordMsgData.mTouchXYValue = this.L.P();
        videoRecordMsgData.mTouchEVValue = this.L.R();
        videoRecordMsgData.mVolumeFunction = this.O.getString("pref_volume_key_function_key", this.N.getString(R.string.camera_volume_key_function_default_value));
        videoRecordMsgData.mIsShutterVoice = this.O.getString("pref_camera_sound_key", this.N.getString(R.string.camera_sound_default_value));
        videoRecordMsgData.mFaceCount = this.n;
        videoRecordMsgData.mScreenBrightness = this.o;
        b((DcsMsgData) videoRecordMsgData);
        videoRecordMsgData.report();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0038, code lost:
        r0.release();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001e */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x003e  */
    private long n(String str) {
        long j;
        MediaMetadataRetriever mediaMetadataRetriever = null;
        MediaMetadataRetriever mediaMetadataRetriever2 = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever2.setDataSource(str);
            j = Long.parseLong(mediaMetadataRetriever2.extractMetadata(9));
            mediaMetadataRetriever2.release();
        } catch (Exception unused) {
            mediaMetadataRetriever = mediaMetadataRetriever2;
            try {
                j = this.Y;
                d.b("VideoMode", "extractMetadataDurationFromFile duration: " + j);
                if (mediaMetadataRetriever != null) {
                }
                return j;
            } catch (Throwable th) {
                th = th;
                if (mediaMetadataRetriever != null) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            mediaMetadataRetriever = mediaMetadataRetriever2;
            if (mediaMetadataRetriever != null) {
                mediaMetadataRetriever.release();
            }
            throw th;
        }
        return j;
    }

    /* access modifiers changed from: private */
    public void o(String str) {
        d.a("VideoMode", "cleanupEmptyFile");
        if (str != null) {
            File file = new File(str);
            if (file.length() == 0 && file.delete()) {
                d.a("VideoMode", "cleanupEmptyFile, Empty video file deleted: " + str);
            }
        }
    }

    private int p(String str) {
        int i = 2;
        if (!com.oppo.camera.o.d.w()) {
            if ("video_size_1080p".equals(this.X)) {
                i = e.a(6);
            } else if ("video_size_720p".equals(this.X)) {
                i = e.a(5);
            } else if ("video_size_480p".equals(this.X)) {
                i = e.a(10);
            } else if (!"video_size_cif".equals(this.X)) {
                if (!"video_size_qcif".equals(this.X)) {
                    i = Integer.valueOf(str).intValue();
                }
            }
            d.a("VideoMode", "matchRecModeToVideoQuality, mVideoSizeType: " + this.X + ", videoQuality: " + i);
            return i;
        } else if (!"video_size_4kuhd".equals(this.X) && !"video_size_1080p".equals(this.X)) {
            if ("video_size_720p".equals(this.X)) {
                i = 5;
            } else if ("video_size_480p".equals(this.X)) {
                i = 4;
            } else if (!"video_size_cif".equals(this.X)) {
                if (!"video_size_qcif".equals(this.X)) {
                    i = Integer.valueOf(str).intValue();
                }
            }
            d.a("VideoMode", "matchRecModeToVideoQuality, mVideoSizeType: " + this.X + ", videoQuality: " + i);
            return i;
        } else {
            i = 6;
            d.a("VideoMode", "matchRecModeToVideoQuality, mVideoSizeType: " + this.X + ", videoQuality: " + i);
            return i;
        }
        i = 3;
        d.a("VideoMode", "matchRecModeToVideoQuality, mVideoSizeType: " + this.X + ", videoQuality: " + i);
        return i;
    }

    private void y(int i) {
        d.a("VideoMode", "setVideoSurfaceState, mVideoSurfaceState: " + this.aG + " => " + i);
        this.aG = i;
    }

    private int z(int i) {
        if (this.N != null) {
            return this.N.getResources().getDimensionPixelSize(i);
        }
        return 0;
    }

    public boolean B() {
        return false;
    }

    public void I() {
        super.I();
        this.ag.removeMessages(6);
        this.ag.sendEmptyMessage(6);
    }

    public boolean P() {
        super.P();
        if (!bY()) {
            return false;
        }
        if (cR() && this.L.e() == 1) {
            n(true);
        } else if (bX() && this.av) {
            n(false);
        }
        d.a("VideoMode", "onBackPressed, isVideoRecording return");
        return true;
    }

    public void X() {
        super.X();
        this.aH = System.currentTimeMillis();
        this.aI = -1;
    }

    public void a(Activity activity) {
        if (cR() && activity.getWindow().getAttributes().screenBrightness > 0.0f) {
            Handler handler = this.W;
            if (handler != null) {
                handler.removeMessages(6);
            }
            ValueAnimator valueAnimator = this.aD;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.L.H();
        }
    }

    public void a(TotalCaptureResult totalCaptureResult) {
        super.a(totalCaptureResult);
        CaptureResult.Key<?> b2 = this.K.n().b("capture.state");
        if (b2 != null) {
            Integer num = (Integer) totalCaptureResult.get(b2);
            if (num != null && this.N != null && 2 == this.L.e()) {
                if (1002 == num.intValue() || 1003 == num.intValue()) {
                    this.N.runOnUiThread(new Runnable() {
                        public void run() {
                            m.this.L.d();
                        }
                    });
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(n nVar) {
    }

    public void a(Object obj, int i, int i2) {
        d.a("VideoMode", "onError, what: " + i + ", extra: " + i2);
        if (cE() || !(i == 1 || i2 == -1007)) {
            if (!cE()) {
                return;
            }
            if (!(i == 1100 || i == 1101)) {
                return;
            }
        }
        if (!bZ()) {
            n(true);
        }
    }

    public void a(HashMap<String, Surface> hashMap) {
        if (this.Z == null) {
            d.e("VideoMode", "configSessionSurface, mProfile is null");
        } else if (k("type_video")) {
            d.a("VideoMode", "configSessionSurface, mVideoSurfaceState: " + this.aG);
            synchronized (this.af) {
                if (!cB()) {
                    if (!this.ag.hasMessages(6) && !cJ()) {
                        d.a("VideoMode", "configSessionSurface, send MSG_PREPARE_VIDEO_SURFACE");
                        this.ag.sendEmptyMessage(6);
                    }
                    this.af.close();
                    this.af.block();
                }
            }
            y(0);
            synchronized (this.ab) {
                if (this.aa != null) {
                    hashMap.put("type_video", this.aa);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        d.a("VideoMode", "onResume");
        this.aF = 0;
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr, boolean z) {
        this.M.d(true, false);
    }

    /* access modifiers changed from: protected */
    public boolean a(long j) {
        return false;
    }

    public boolean a(String str) {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            d.e("VideoMode", "deleteUpdateVideo return! File name is null");
            return false;
        } else if (!"on".equals(v.e()) || v.b(true)) {
            if (DebugUtil.debugPropertyEnabled("oppo.camera.save.originalvideofile", DebugUtil.DEBUG_DISABLE)) {
                d.a("VideoMode", "deleteUpdateSlowVideoToMediaStore save originalVideoFileName: " + str);
                this.N.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(str))));
            } else {
                m(str);
            }
            this.M.k();
            ContentResolver contentResolver = this.N.getContentResolver();
            d.b("VideoMode", "deleteUpdateVideo, originalVideoFileName: " + str + ",  compiledSlowVideoFileName: " + str2);
            this.aA = a(this.aA, str2);
            this.az = contentResolver.insert(v.a(), this.aA);
            d.b("VideoMode", "deleteUpdateVideo, mCurrentVideoUri: " + this.az);
            if (contentResolver.update(this.az, this.aA, (String) null, (String[]) null) <= 0) {
                this.az = contentResolver.insert(v.a(), this.aA);
                d.b("VideoMode", "deleteUpdateVideo, insert, mCurrentVideoUri: " + this.az);
            } else {
                contentResolver.update(this.az, this.aA, (String) null, (String[]) null);
            }
            d.b("VideoMode", "deleteUpdateSlowVideoToMediaStore mbDisplayOnLock: " + this.F);
            a(this.az);
            b(this.az);
            ContentValues contentValues = this.aA;
            if (contentValues != null) {
                contentValues.clear();
                this.aA = null;
            }
            return true;
        } else {
            this.az = null;
            this.ai = null;
            ContentValues contentValues2 = this.aA;
            if (contentValues2 != null) {
                contentValues2.clear();
                this.aA = null;
            }
            return false;
        }
    }

    public void an() {
        if (this.L != null) {
            this.L.x();
        }
    }

    public void ap() {
        if (this.M != null && this.L != null && !this.L.g()) {
            this.M.b(4, true);
        }
    }

    public boolean at() {
        return false;
    }

    public int au() {
        return bY() ? 1 : 3;
    }

    public Size b(h hVar) {
        CamcorderProfile cS = cS();
        return cS != null ? new Size(cS.videoFrameWidth, cS.videoFrameHeight) : super.b(hVar);
    }

    public void b(Object obj, int i, int i2) {
        d.a("VideoMode", "onInfo");
        if (i == 800) {
            if (cR()) {
                n(true);
            }
        } else if (i == 801 && cR()) {
            this.at = true;
            n(true);
        }
    }

    /* access modifiers changed from: protected */
    public void b(byte[] bArr, boolean z) {
        this.L.f();
    }

    public boolean b(String str) {
        return ("pref_camera_videoflashmode_key".equals(str) || "pref_video_filter_menu".equals(str) || "pref_none_sat_ultra_wide_angle_key".equals(str) || "pref_filter_menu".equals(str)) ? d(str) : super.b(str);
    }

    /* access modifiers changed from: protected */
    public String[] bL() {
        return com.oppo.camera.ui.c.b_;
    }

    public int bP() {
        return (this.O == null || com.oppo.camera.e.a.c(this.j)) ? Integer.valueOf(this.N.getString(R.string.camera_video_default_fps)).intValue() : Integer.valueOf(this.O.getString("pref_video_fps_key", this.N.getString(R.string.camera_video_default_fps))).intValue();
    }

    public String bQ() {
        String str;
        if (this.L.h()) {
            Bundle extras = this.N.getIntent().getExtras();
            if (extras != null) {
                boolean z = extras.getBoolean("is_from_oppo_mms", false);
                int i = 4;
                if (!z) {
                    i = extras.getInt("android.intent.extra.videoQuality", 4);
                }
                str = (!com.oppo.camera.o.d.y() || !z) ? i == 6 ? "video_size_1080p" : i == 5 ? "video_size_720p" : "video_size_480p" : extras.getString("mms_size_type", (String) null);
            } else {
                str = "video_size_480p";
            }
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            d.d("VideoMode", "getVideoSizeType, sizeType: " + str);
            return "video_size_480p";
        } else if (this.O != null) {
            return this.O.getString("pref_video_size_key", cG());
        } else {
            d.d("VideoMode", "getVideoSizeType, mPreferences is null!");
            return cG();
        }
    }

    public void bR() {
        d.a("VideoMode", "deleteCurrentVideo");
        String str = this.ai;
        if (str != null) {
            this.ag.obtainMessage(3, str).sendToTarget();
            this.ai = null;
            if (this.az != null) {
                this.N.getContentResolver().delete(this.az, (String) null, (String[]) null);
                this.az = null;
            }
        }
        this.M.k();
    }

    public void bS() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(this.az, B(cS().fileFormat));
        intent.addFlags(1);
        intent.putExtra("IsFromOppoViewCamera", true);
        try {
            this.N.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            d.d("VideoMode", "startPlayVideoActivity, Couldn't view video: " + this.az, e);
        }
    }

    public void bT() {
        d.e("VideoMode", "onVideoShutterButtonClick, mMediaRecorderState: " + this.ao + ", mCameraInterface.isAnimationRunning: " + this.L.F());
        if (this.s || this.L.e() != 1 || this.L.F() || this.L.G() || this.L.u()) {
            d.e("VideoMode", "onVideoShutterButtonClick, mbPaused: " + this.s + ", CameraState: " + this.L.e() + ", isAnimationRunning: " + this.L.F() + ", isBlurAnimRunning: " + this.L.G() + ", mCameraInterface.getSwitchingCameraState: " + this.L.u());
        } else if (cc()) {
            d.a("VideoMode", "onVideoShutterButtonClick, compiling video!");
        } else if (this.L.v()) {
            d.a("VideoMode", "onVideoShutterButtonClick, being capture mode change!");
        } else if (!v.a(this.L.N())) {
            this.M.k();
        } else if (!bY() && !this.L.D()) {
            d.d("VideoMode", "onVideoShutterButtonClick, memory or storage is not enough");
            this.M.a(R.string.camera_toast_camera_Low_memory_hint, -1, true, false, false);
        } else if (bX() || this.W.hasMessages(5)) {
            d.d("VideoMode", "onVideoShutterButtonClick, starting or error processing");
        } else if (!dh()) {
            d.e("VideoMode", "onVideoShutterButtonClick, CameraTest Click Video Button");
            if (cR()) {
                n(true);
            } else if (bZ()) {
                this.aI = System.currentTimeMillis() - this.aH;
                de();
            }
        }
    }

    public void bU() {
        if (cR() || bX()) {
            this.N.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(this.aj))));
            d.a("VideoMode", "notifyScanVideoFile, sendBroadcast() success");
        }
    }

    public boolean bV() {
        d.a("VideoMode", "onVideoRecordingPause");
        if (!cR()) {
            d.a("VideoMode", "onVideoRecordingPause, VideoRecord is not started, so return");
            return false;
        } else if (this.Y < 1000) {
            d.a("VideoMode", "onVideoRecordingPause, mRecordingTotalTime less then 1s, so return");
            return false;
        } else {
            if (this.W.hasMessages(1)) {
                this.W.removeMessages(1);
            }
            this.M.e(false);
            this.ax = SystemClock.uptimeMillis();
            return this.ac.g();
        }
    }

    public boolean bW() {
        d.a("VideoMode", "onVideoRecordingResume");
        if (!cR()) {
            d.a("VideoMode", "onVideoRecordingResume, VideoRecord is not started, so return");
            return false;
        }
        this.W.sendEmptyMessage(1);
        this.M.e(true);
        this.aw += SystemClock.uptimeMillis() - this.ax;
        this.ax = 0;
        return this.ac.f();
    }

    public boolean bX() {
        return this.ao == 1;
    }

    public boolean bY() {
        return cR() || bX();
    }

    public boolean bZ() {
        return this.ao == 2;
    }

    /* access modifiers changed from: protected */
    public String be() {
        return "key_video_filter_index";
    }

    /* access modifiers changed from: protected */
    public int cC() {
        return 30;
    }

    /* access modifiers changed from: protected */
    public Integer cD() {
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean cE() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void cF() {
    }

    public String cG() {
        return this.N.getString(R.string.camera_video_size_default);
    }

    /* access modifiers changed from: protected */
    public void cH() {
    }

    /* access modifiers changed from: protected */
    public void cI() {
    }

    /* access modifiers changed from: protected */
    public boolean cM() {
        if (!"torch".equals(this.O.getString("pref_camera_videoflashmode_key", this.N.getString(R.string.camera_flash_mode_video_default_value))) || !d("pref_camera_videoflashmode_key") || com.oppo.camera.e.a.c(this.j)) {
            return "on".equals(this.O.getString("pref_camera_torch_mode_key", this.N.getResources().getString(R.string.camera_torch_mode_default_value))) && d(CameraFunction.TORCH_SOFT_LIGHT) && com.oppo.camera.e.a.c(this.j);
        }
        return true;
    }

    public Float cN() {
        return null;
    }

    /* access modifiers changed from: protected */
    public String cO() {
        return "";
    }

    /* access modifiers changed from: protected */
    public String cP() {
        return this.ai;
    }

    /* access modifiers changed from: protected */
    public int cQ() {
        return this.Z.videoBitRate;
    }

    /* access modifiers changed from: protected */
    public boolean cR() {
        return this.ao == 0;
    }

    public CamcorderProfile cS() {
        return this.Z;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x01e5  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0200  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x021d  */
    @SuppressLint({"WrongConstant"})
    public boolean cT() {
        ContentValues contentValues;
        Cursor cursor;
        Exception e;
        d.a("VideoMode", "addVideoToMediaStore");
        boolean z = true;
        if (!"on".equals(v.e()) || v.b(true)) {
            if (this.aB == null && this.ai != null) {
                String cO = cO();
                if (!TextUtils.isEmpty(cO)) {
                    this.aA.put("title", com.oppo.camera.f.a.b(a(), this.j).concat(cO));
                }
                this.aA.put("_size", Long.valueOf(new File(this.ai).length()));
                this.aA.put("datetaken", Long.valueOf(System.currentTimeMillis()));
                this.aA.put(OppoExifTag.EXIF_KEY_TAGFLAGS, Integer.valueOf(com.oppo.camera.f.a.a(a(), this.j)));
                long n = n(this.ai);
                if (n > 0) {
                    this.aA.put("duration", Long.valueOf(n));
                }
                d.b("VideoMode", "addVideoToMediaStore, duration: " + n + ", mCurrentVideoFilename: " + this.ai);
                try {
                    String str = (String) this.aA.get("_display_name");
                    d.b("VideoMode", "addVideoToMediaStore, displayname: " + str);
                    if (str != null) {
                        cursor = this.N.getContentResolver().query(v.a(), (String[]) null, "_display_name=  ?", new String[]{str}, (String) null);
                    } else {
                        cursor = null;
                    }
                    if (cursor == null) {
                        try {
                            this.az = this.N.getContentResolver().insert(v.a(), this.aA);
                            d.e("VideoMode", "addVideoToMediaStore, no popwindows mCurrentVideoUri: " + this.az);
                        } catch (Exception e2) {
                            e = e2;
                            try {
                                d.a("VideoMode", "addVideoToMediaStore, failed to add video to media store", (Throwable) e);
                                this.az = null;
                                this.ai = null;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                d.e("VideoMode", "CameraTest Video Flie Save End, mCurrentVideoUri: " + this.az);
                                contentValues = this.aA;
                                if (contentValues != null) {
                                }
                                du();
                                return z;
                            } catch (Throwable th) {
                                th = th;
                                if (cursor != null) {
                                }
                                d.e("VideoMode", "CameraTest Video Flie Save End, mCurrentVideoUri: " + this.az);
                                throw th;
                            }
                        }
                    } else if (cursor.moveToFirst()) {
                        int i = cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_ID));
                        cursor.close();
                        this.az = ContentUris.withAppendedId(v.a(), (long) i);
                        d.e("VideoMode", "addVideoToMediaStore, popwindows mCurrentVideoUri: " + this.az);
                        this.N.getContentResolver().update(this.az, this.aA, (String) null, (String[]) null);
                    } else {
                        this.az = this.N.getContentResolver().insert(v.a(), this.aA);
                        d.e("VideoMode", "addVideoToMediaStore, no popwindows else mCurrentVideoUri: " + this.az);
                        cursor.close();
                    }
                    a(this.az);
                    b(this.az);
                    d.a("VideoMode", "addVideoToMediaStore, Video mCurrentVideoUri: " + this.az);
                    if (cursor != null) {
                        cursor.close();
                    }
                    d.e("VideoMode", "CameraTest Video Flie Save End, mCurrentVideoUri: " + this.az);
                } catch (Exception e3) {
                    e = e3;
                    cursor = null;
                    d.a("VideoMode", "addVideoToMediaStore, failed to add video to media store", (Throwable) e);
                    this.az = null;
                    this.ai = null;
                    if (cursor != null) {
                    }
                    d.e("VideoMode", "CameraTest Video Flie Save End, mCurrentVideoUri: " + this.az);
                    contentValues = this.aA;
                    if (contentValues != null) {
                    }
                    du();
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = null;
                    if (cursor != null) {
                        cursor.close();
                    }
                    d.e("VideoMode", "CameraTest Video Flie Save End, mCurrentVideoUri: " + this.az);
                    throw th;
                }
            }
            z = false;
            contentValues = this.aA;
            if (contentValues != null) {
                contentValues.clear();
                this.aA = null;
            }
            du();
            return z;
        }
        this.az = null;
        this.ai = null;
        ContentValues contentValues2 = this.aA;
        if (contentValues2 != null) {
            contentValues2.clear();
            this.aA = null;
        }
        d.a("VideoMode", "addVideoToMediaStore, Exception: sdcard has removed, so not add to mediastore.");
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean cU() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean cV() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean cW() {
        return !"video_size_1080p".equals(this.X) || "H265".equals(this.O.getString("pref_video_codec_key", this.N.getString(R.string.camera_video_codec_default_value)));
    }

    public boolean ca() {
        return this.ao == 3;
    }

    public long ck() {
        return this.aF;
    }

    public int cl() {
        return 3;
    }

    public void d(boolean z, boolean z2) {
        d.a("VideoMode", "handleStartError, fromBroadcast: " + z + ", showDialog: " + z2);
        this.ag.obtainMessage(3, this.aj).sendToTarget();
        if (!cE()) {
            cL();
        }
        this.L.H();
        if (bX() || cR()) {
            n(false);
        }
        if (z) {
            Handler handler = this.W;
            if (handler != null) {
                handler.removeMessages(5);
            }
            this.N.onBackPressed();
        } else {
            this.M.l();
            if ("on".equals(v.q) && !v.f()) {
                v.r = 5;
                v.q = "invalid";
                v.s = 3;
                this.M.k();
                this.av = false;
                return;
            } else if (z2) {
                this.M.a((DialogInterface.OnCancelListener) new DialogInterface.OnCancelListener() {
                    public void onCancel(DialogInterface dialogInterface) {
                        m.this.N.onBackPressed();
                    }
                });
            }
        }
        this.av = false;
    }

    public boolean d(String str) {
        if ("pref_camera_slogan_key".equals(str)) {
            return false;
        }
        if ("pref_continuous_focus_key".equals(str) && bY()) {
            return !bX();
        }
        if ("pref_support_recording_capture".equals(str) || "pref_video_size_key".equals(str) || "pref_video_codec_key".equals(str) || "pref_video_ratio_key".equals(str)) {
            return true;
        }
        if ("key_support_fovc".equals(str)) {
            return com.oppo.camera.o.d.w();
        }
        if ("key_support_zsl".equals(str) || "key_support_video_recorder".equals(str) || "pref_video_filter_menu".equals(str)) {
            return false;
        }
        if ("pref_filter_menu".equals(str)) {
            return d("pref_filter_process_key");
        }
        if (CameraFunction.FILTER_VIGNETTE.equals(str)) {
            return false;
        }
        return super.d(str);
    }

    /* access modifiers changed from: protected */
    public int[] d(int i) {
        return d("pref_video_filter_menu") ? com.oppo.camera.ui.preview.a.d.j : super.d(i);
    }

    public void e(boolean z) {
        super.e(z);
        if (!z) {
            this.ag.removeMessages(6);
            this.ag.sendEmptyMessage(6);
        }
    }

    /* access modifiers changed from: protected */
    public String[] e(int i) {
        return d("pref_video_filter_menu") ? com.oppo.camera.ui.preview.a.d.i : super.e(i);
    }

    public boolean f() {
        return false;
    }

    public boolean f(String str) {
        if ("pref_camera_timer_shutter_key".equals(str) || "pref_camera_photo_ratio_key".equals(str)) {
            return false;
        }
        return super.f(str);
    }

    public com.oppo.camera.ui.control.c g() {
        com.oppo.camera.ui.control.c g = super.g();
        g.a("button_color_inside_red");
        return g;
    }

    /* access modifiers changed from: protected */
    public int h(int i) {
        if (d(CameraFunction.FACE_BEAUTY_COMMON)) {
            if (i != 0 || !com.oppo.camera.e.a.c(this.j)) {
                return 0;
            }
            return aY() ? -100000 : 40;
        } else if (d(CameraFunction.FACE_BEAUTY_CUSTOM)) {
            return f[i];
        } else {
            return -100000;
        }
    }

    /* access modifiers changed from: protected */
    public void h() {
        d.a("VideoMode", "onPause");
        cF();
        j(false);
        this.ag.removeMessages(5);
        i(false);
        if (this.L != null) {
            this.L.H();
        }
        this.W.removeCallbacksAndMessages((Object) null);
        if (ca()) {
            this.af.block();
            if (this.L != null) {
                this.L.C();
            }
            df();
            cZ();
            cI();
            if (this.L != null) {
                this.L.d(this.au);
            }
            x(2);
        }
        this.av = false;
        y(0);
    }

    /* access modifiers changed from: protected */
    public void i() {
    }

    public void i(boolean z) {
        if (bX()) {
            d.a("VideoMode", "forceStopVideoRecording, mRecordSig.block");
            this.af.block();
            d.a("VideoMode", "forceStopVideoRecording, mRecordSig.block X");
        }
        if (cR() || bX()) {
            n(z);
        }
    }

    /* access modifiers changed from: protected */
    public void j() {
        d.a("VideoMode", "onDestroy");
        HandlerThread handlerThread = this.ah;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.ah = null;
        }
        Handler handler = this.W;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.W = null;
        }
        synchronized (this.ab) {
            if (this.aa != null) {
                this.aa.release();
                this.aa = null;
            }
        }
        this.Z = null;
        this.az = null;
    }

    public void j(boolean z) {
        this.ap = z;
    }

    /* access modifiers changed from: protected */
    public void k() {
        this.M.a(this.N.getString(R.string.camera_description_video_shutter_button));
    }

    public void k(boolean z) {
        int i;
        Intent intent = new Intent();
        if (z) {
            i = -1;
            intent.setData(this.az);
            intent.addFlags(1);
        } else {
            i = 0;
        }
        this.N.setResult(i, intent);
        this.N.finish();
    }

    public boolean k(String str) {
        if ("type_still_capture".equals(str)) {
            return false;
        }
        if (!"type_still_capture_yuv_main".equals(str) && !"type_video".equals(str)) {
            return super.k(str);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public Size l(String str) {
        int i;
        int i2 = 720;
        if (!"video_size_4kuhd".equals(str) && !"video_size_1080p".equals(str)) {
            if ("video_size_720p".equals(str)) {
                i2 = 1280;
                i = 720;
            } else if ("video_size_480p".equals(str)) {
                i = 480;
            } else if ("video_size_cif".equals(str)) {
                i2 = 352;
                i = 288;
            } else if ("video_size_qcif".equals(str)) {
                i2 = 176;
                i = 144;
            }
            d.a("VideoMode", "getVideoPreviewSize, videoSizeType: " + str + ", width: " + i2 + ", height: " + i);
            return new Size(i2, i);
        }
        i = 1080;
        i2 = 1920;
        d.a("VideoMode", "getVideoPreviewSize, videoSizeType: " + str + ", width: " + i2 + ", height: " + i);
        return new Size(i2, i);
    }

    /* access modifiers changed from: protected */
    public void l() {
    }

    public void l(boolean z) {
        super.l(z);
        if (bY()) {
            this.L.B();
            x(3);
            boolean da = da();
            if (!da && this.ae) {
                cT();
            }
            d.a("VideoMode", "onSyncCommandBeforeFinish, failed: " + da);
        }
    }

    /* access modifiers changed from: protected */
    public void m() {
        dr();
    }

    /* access modifiers changed from: protected */
    public void m(String str) {
        d.a("VideoMode", "deleteVideoFile, fileName: " + str);
        if (str != null && !new File(str).delete()) {
            d.a("VideoMode", "deleteVideoFile, Could not delete " + str);
        }
    }

    /* access modifiers changed from: protected */
    public void n(boolean z) {
        d.a("VideoMode", "onStopVideoRecording, checkRecordTime: " + z);
        this.av = false;
        this.L.B();
        if (this.Y >= 1000 || this.s || this.L.h() || this.ac == null || !z) {
            x(3);
            this.W.removeMessages(6);
            this.aD.cancel();
            if (z) {
                this.af.close();
                this.ag.sendEmptyMessage(2);
                return;
            }
            boolean da = da();
            if (!cp() && k("type_video") && !cE() && this.K != null) {
                this.K.c("type_video");
            }
            if (!da && this.ae) {
                cT();
            }
            this.L.a(1);
            this.L.C();
            df();
            cZ();
            this.L.d(da);
            cI();
            x(2);
            return;
        }
        d.d("VideoMode", "onStopVideoRecording, Record Time less than 1 second.");
        if (d("key_short_video")) {
            this.ag.removeMessages(5);
            this.ag.sendEmptyMessageDelayed(5, 1000 - this.Y);
        }
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        d.a("VideoMode", "onBeforeSnapping");
        if (cR()) {
            return true;
        }
        d.e("VideoMode", "onBeforeSnapping, is not in RECORD_STARTED");
        return false;
    }

    /* access modifiers changed from: protected */
    public void o(boolean z) {
        d.a("VideoMode", "enableVideoRecordingSound, enable: " + z);
        this.as = z;
    }

    public Bitmap t(int i) {
        ParcelFileDescriptor parcelFileDescriptor = this.aB;
        if (parcelFileDescriptor != null) {
            return com.oppo.camera.ui.control.e.a(parcelFileDescriptor.getFileDescriptor(), i);
        }
        String str = this.ai;
        if (str != null) {
            return com.oppo.camera.ui.control.e.a(str, i);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void x(int i) {
        d.a("VideoMode", "setVideoRecordState, mMediaRecorderState: " + this.ao + " => " + i);
        this.ao = i;
    }
}
