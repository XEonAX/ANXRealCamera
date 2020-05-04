package com.oppo.camera;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import android.widget.Toast;
import color.support.v7.app.b;
import com.android.providers.downloads.Downloads;
import com.color.compat.app.AppOpsManagerNative;
import com.color.compat.content.pm.PackageManagerNative;
import com.color.compat.os.SystemPropertiesNative;
import com.color.compat.os.UserHandleNative;
import com.color.support.widget.f;
import com.google.protobuf.nano.MessageNano;
import com.oppo.camera.Ipa.ImageProcessService;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.i;
import com.oppo.camera.o.d;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.statistics.model.EnterExitDcsMsgData;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.control.g;
import com.oppo.camera.update.UpdateUtil;
import com.sensetime.stmobile.STCommon;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Camera extends Activity implements SharedPreferences.OnSharedPreferenceChangeListener, c, f {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f1749a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f1750b;
    private static final Uri g = Uri.parse("content://com.color.provider.SafeProvider");
    private static final Uri h = Uri.withAppendedPath(g, "settings");
    private static final Uri i = Uri.withAppendedPath(g, "pp_privacy_protect");
    private static final List<String> j = Arrays.asList(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.CAMERA", "android.permission.RECORD_AUDIO"});
    /* access modifiers changed from: private */
    public static final List<String> k = Arrays.asList(new String[]{"android.permission.READ_PHONE_STATE", "android.permission.ACCESS_FINE_LOCATION"});
    private static int l = 120000;
    /* access modifiers changed from: private */
    public ServiceConnection A = null;
    private long B;
    private boolean C = false;
    /* access modifiers changed from: private */
    public ConditionVariable D = new ConditionVariable();
    private com.oppo.camera.entry.b E = new com.oppo.camera.entry.b();
    /* access modifiers changed from: private */
    public Dialog F = null;
    private Thread G = new Thread(new Runnable() {
        public void run() {
            if (Camera.this.A == null) {
                Intent intent = new Intent(Camera.this, ImageProcessService.class);
                Camera.this.startForegroundService(intent);
                ServiceConnection unused = Camera.this.A = new ServiceConnection() {
                    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        d.b("OppoCamera", "mMediaServiceThread, run, mIpaConnection.onServiceConnected");
                        Camera.this.x.a(componentName, iBinder);
                    }

                    public void onServiceDisconnected(ComponentName componentName) {
                        d.b("OppoCamera", "mMediaServiceThread, run, mIpaConnection.onServiceDisconnected");
                    }
                };
                Camera camera = Camera.this;
                camera.bindService(intent, camera.A, 1);
            }
        }
    });
    private final BroadcastReceiver H = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (!Camera.this.p && Camera.this.x != null) {
                Camera.this.x.a(intent);
            }
        }
    };
    private BroadcastReceiver I = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (!Camera.this.p && Camera.this.x != null) {
                Camera.this.x.a(intent);
            }
        }
    };
    private BroadcastReceiver J = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (Camera.this.x != null) {
                Camera.this.x.a(intent);
            }
        }
    };
    private final BroadcastReceiver K = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            d.b("OppoCamera", "onReceive, action: " + action);
            if ("android.intent.action.PHONE_STATE".equals(action) && Camera.this.x != null) {
                Camera.this.x.a(intent);
            }
        }
    };
    private BroadcastReceiver L = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (!Camera.this.p && Camera.this.x != null) {
                Camera.this.x.a(intent);
            }
        }
    };
    private BroadcastReceiver M = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (Camera.this.x != null) {
                Camera.this.x.a(intent);
            }
        }
    };
    private final Handler m = new a();
    /* access modifiers changed from: private */
    public int n = -1;
    /* access modifiers changed from: private */
    public int o = -1;
    /* access modifiers changed from: private */
    public boolean p;
    private boolean q = true;
    /* access modifiers changed from: private */
    public boolean r = true;
    private boolean s = false;
    private boolean t = false;
    private boolean u = false;
    private String v = null;
    private String w = null;
    /* access modifiers changed from: private */
    public e x;
    private i y = null;
    private b z;

    private class a extends Handler {
        private a() {
        }

        public void handleMessage(Message message) {
            d.a("OppoCamera", "handleMessage, message: " + message.what);
            if (message.what == 1 && Camera.this.x != null && !Camera.this.x.aq()) {
                Camera.this.getWindow().clearFlags(128);
                Camera.this.finish();
            }
            d.a("OppoCamera", "handleMessage, message: " + message.what + " X");
        }
    }

    private class b extends OrientationEventListener {
        public b(Context context) {
            super(context);
        }

        public void onOrientationChanged(int i) {
            if (i != -1) {
                if (Camera.this.o != i) {
                    int unused = Camera.this.o = i;
                    if (Camera.this.x != null) {
                        Camera.this.x.e(i);
                    }
                }
                int a2 = d.a(i, Camera.this.n);
                if (Camera.this.n != a2) {
                    d.d("OppoCamera", "onOrientationChanged, mOrientation: " + Camera.this.n + " -> " + a2);
                    int unused2 = Camera.this.n = a2;
                    if (Camera.this.x != null) {
                        Camera.this.x.d(Camera.this.n);
                    }
                }
            }
        }
    }

    public Camera() {
        MyApplication.a().a(new Runnable() {
            public void run() {
                Camera camera = Camera.this;
                e unused = camera.x = new e(camera, camera);
                Camera.this.D.open();
            }
        }, "CameraManager instance");
    }

    /* access modifiers changed from: private */
    public void a(Context context, String str, boolean z2) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(str, z2);
        edit.commit();
    }

    private void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Toast.makeText(this, str, 0).show();
        }
        d.a("OppoCamera", "finishActivityWithToast, toastMsg: " + str);
        this.p = true;
        MyApplication.c();
    }

    /* access modifiers changed from: private */
    public void a(List<String> list) {
        PackageManager packageManager = getPackageManager();
        AppOpsManager appOpsManager = (AppOpsManager) getApplicationContext().getSystemService(AppOpsManager.class);
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(getPackageName(), 4096);
            for (String next : list) {
                String permissionToOp = AppOpsManager.permissionToOp(next);
                if (checkSelfPermission(next) != 0) {
                    d.a("OppoCamera", "grantRuntimePermissions, permission: " + next);
                    PackageManagerNative.grantRuntimePermission(packageManager, getPackageName(), next, UserHandleNative.createUserHandle(UserHandleNative.myUserId()));
                }
                if (appOpsManager != null) {
                    int checkOp = appOpsManager.checkOp(permissionToOp, packageInfo.applicationInfo.uid, getPackageName());
                    d.a("OppoCamera", "grantRuntimePermissions, permission appOpsResult: " + checkOp);
                    if (1 == checkOp) {
                        AppOpsManagerNative.setUidMode(appOpsManager, permissionToOp, packageInfo.applicationInfo.uid, 0);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    private boolean a(String[] strArr) {
        int length = strArr.length;
        int i2 = 0;
        while (i2 < length) {
            String str = strArr[i2];
            if (!j.contains(str) || checkSelfPermission(str) == 0 || shouldShowRequestPermissionRationale(str)) {
                i2++;
            } else {
                d.a("OppoCamera", "checkShowRequestPermission, permission: " + str);
                return false;
            }
        }
        return true;
    }

    private boolean b(Context context, String str, boolean z2) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, z2);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean b(String str) {
        if (!g() || str == null) {
            return false;
        }
        Cursor query = getContentResolver().query(i, (String[]) null, (String) null, (String[]) null, (String) null);
        if (query != null) {
            try {
                if (query.getCount() != 0) {
                    query.moveToFirst();
                    while (!str.equals(query.getString(query.getColumnIndex("pkg_name")).toString().trim())) {
                        if (!query.moveToNext()) {
                            return false;
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                    return true;
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        if (query != null) {
            query.close();
        }
        return false;
    }

    private boolean b(List<String> list) {
        for (String next : list) {
            if (checkSelfPermission(next) != 0) {
                d.a("OppoCamera", "checkRuntimePermission, ungrant permission: " + next);
                return false;
            }
        }
        return true;
    }

    private void i() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.oppo.gallery3d.action.DELETE_PICTURE");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        registerReceiver(this.J, intentFilter, "oppo.permission.OPPO_COMPONENT_SAFE", (Handler) null);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.heytap.speechassist.intent.action.WINDOW_MANAGER_OCCUPIED");
        intentFilter2.addAction("com.heytap.speechassist.intent.action.FLOAT_ACTIVITY_START");
        registerReceiver(this.M, intentFilter2, "heytap.speechassist.permission.FLOAT_WINDOW_STATUS", (Handler) null);
    }

    private void j() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentFilter.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
        intentFilter.addAction("android.intent.action.MEDIA_SHARED");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addAction("android.intent.action.MEDIA_PRE_SHARED");
        intentFilter.addDataScheme("file");
        registerReceiver(this.H, intentFilter, "oppo.permission.OPPO_COMPONENT_SAFE", (Handler) null);
        IntentFilter intentFilter2 = new IntentFilter();
        if (d.b("oppo.multimedia.record.conflict")) {
            intentFilter2.addAction("android.media.ACTION_AUDIO_RECORD_INVALID");
        }
        registerReceiver(this.I, intentFilter2, "oppo.permission.OPPO_COMPONENT_SAFE", (Handler) null);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.intent.action.PHONE_STATE");
        registerReceiver(this.K, intentFilter3, "oppo.permission.OPPO_COMPONENT_SAFE", (Handler) null);
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction("android.intent.action.BATTERY_CHANGED");
        registerReceiver(this.L, intentFilter4);
    }

    private void k() {
        unregisterReceiver(this.H);
        unregisterReceiver(this.I);
        unregisterReceiver(this.K);
        unregisterReceiver(this.L);
    }

    private void l() {
        try {
            unregisterReceiver(this.J);
            unregisterReceiver(this.M);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:11|12|20) */
    /* JADX WARNING: Code restructure failed: missing block: B:12:?, code lost:
        com.oppo.camera.d.a("OppoCamera", "checkCameraPermission, Failed getting permission info for: " + r7);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0033 */
    private void m() {
        try {
            PackageManager packageManager = getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(getPackageName(), 4096);
            ArrayList arrayList = new ArrayList();
            for (String str : packageInfo.requestedPermissions) {
                PermissionInfo permissionInfo = packageManager.getPermissionInfo(str, 0);
                if (permissionInfo.protectionLevel == 1 && checkSelfPermission(str) != 0) {
                    arrayList.add(permissionInfo.name);
                }
            }
            if (!arrayList.isEmpty()) {
                d.a("OppoCamera", "checkCameraPermission, Requesting permissions: " + arrayList);
                requestPermissions((String[]) arrayList.toArray(new String[arrayList.size()]), 0);
            }
        } catch (PackageManager.NameNotFoundException e) {
            d.d("OppoCamera", "checkCameraPermission, Failed getting package info for package: " + getPackageName(), e);
        }
    }

    @TargetApi(23)
    private void n() {
        if (d.b("oppo.runtime.permission.alert.support")) {
            boolean z2 = true;
            this.r = b(this, "pref_runtime_alert_first_show", true);
            if (this.r) {
                a(j);
                this.q = true;
                com.oppo.camera.e.a.a(getApplicationContext());
                CameraConfig.initialize(com.oppo.camera.e.a.a(0));
                if (!b(k)) {
                    showDialog(102);
                } else {
                    e eVar = this.x;
                    if (eVar != null) {
                        eVar.ar();
                    }
                }
            } else {
                ArrayList arrayList = new ArrayList();
                boolean b2 = b(this, "key_export_permission_requested", false);
                for (String next : j) {
                    if (checkSelfPermission(next) != 0) {
                        arrayList.add(next);
                        z2 = false;
                    }
                }
                this.q = z2;
                for (String next2 : k) {
                    if (checkSelfPermission(next2) != 0 && (!b2 || shouldShowRequestPermissionRationale(next2))) {
                        arrayList.add(next2);
                    }
                }
                if (f()) {
                    e eVar2 = this.x;
                    if (eVar2 != null) {
                        eVar2.ar();
                    }
                }
                if (!arrayList.isEmpty()) {
                    requestPermissions((String[]) arrayList.toArray(new String[arrayList.size()]), 0);
                }
            }
        }
        d.a("OppoCamera", "checkCameraPermissionExp, supportRuntimeAlert: " + r0 + ", mbRuntimeAlertFirstShow: " + this.r + ", mbHasNecessaryPermission: " + this.q);
    }

    private boolean o() {
        return checkSelfPermission("android.permission.CAMERA") == 0;
    }

    private void p() {
        String str;
        String str2;
        String str3;
        d.b("OppoCamera", "showSettingsDialog");
        StringBuilder sb = new StringBuilder();
        String string = getString(R.string.camera_runtime_permission_separator);
        StringBuilder sb2 = new StringBuilder();
        String str4 = "";
        if (checkSelfPermission(j.get(0)) != 0) {
            str = getString(R.string.color_runtime_read_external_storage) + string;
        } else {
            str = str4;
        }
        sb2.append(str);
        if (checkSelfPermission(j.get(1)) != 0) {
            str2 = getString(R.string.color_runtime_write_external_storage) + string;
        } else {
            str2 = str4;
        }
        sb2.append(str2);
        if (checkSelfPermission(j.get(2)) != 0) {
            str3 = getString(R.string.color_runtime_camera) + string;
        } else {
            str3 = str4;
        }
        sb2.append(str3);
        if (checkSelfPermission(j.get(3)) != 0) {
            str4 = getString(R.string.color_runtime_record_audio) + string;
        }
        sb2.append(str4);
        sb.append(sb2.toString());
        int lastIndexOf = sb.lastIndexOf(string);
        new b.a(this).a((DialogInterface.OnKeyListener) new DialogInterface.OnKeyListener() {
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return true;
                }
                Camera.this.finish();
                return true;
            }
        }).a((CharSequence) getString(R.string.color_runtime_warning_dialog_title, new Object[]{getString(R.string.camera_app_name)})).b((CharSequence) getString(R.string.color_runtime_warning_dialog_disc, new Object[]{getString(R.string.camera_app_name), lastIndexOf != -1 ? sb.substring(0, lastIndexOf) : sb.toString()})).a((int) R.string.color_runtime_warning_dialog_ok, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.MANAGE_APP_PERMISSIONS");
                intent.putExtra("android.intent.extra.PACKAGE_NAME", Camera.this.getPackageName());
                Camera.this.startActivityForResult(intent, 101);
                dialogInterface.dismiss();
            }
        }).b((int) R.string.color_runtime_warning_dialog_cancel, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Camera.this.finish();
            }
        }).a(false).b().show();
    }

    private boolean q() {
        e eVar = this.x;
        if (eVar == null || !eVar.T()) {
            return false;
        }
        return !b("com.coloros.gallery3d");
    }

    private void r() {
        EnterExitDcsMsgData enterExitDcsMsgData = new EnterExitDcsMsgData(this, "enter");
        enterExitDcsMsgData.mCameraEnterTimeGap = this.E.s();
        enterExitDcsMsgData.mEnterCallPackage = this.E.m();
        enterExitDcsMsgData.mShortcutType = this.E.q();
        enterExitDcsMsgData.mCameraEnterType = String.valueOf(this.E.r());
        enterExitDcsMsgData.mbFromLock = this.E.n();
        enterExitDcsMsgData.mCaptureMode = this.E.f();
        enterExitDcsMsgData.mCameraId = String.valueOf(this.E.i());
        enterExitDcsMsgData.onResume();
        enterExitDcsMsgData.report();
    }

    private void s() {
        EnterExitDcsMsgData enterExitDcsMsgData = new EnterExitDcsMsgData(this, "exit");
        enterExitDcsMsgData.mExitCallPackage = this.E.m();
        enterExitDcsMsgData.mShortcutType = this.E.q();
        enterExitDcsMsgData.mbToGallery = this.x.T();
        enterExitDcsMsgData.mResumePauseTime = System.currentTimeMillis() - this.B;
        enterExitDcsMsgData.mCameraEnterType = String.valueOf(this.E.r());
        enterExitDcsMsgData.mResumePauseVideoTime = this.x.as();
        enterExitDcsMsgData.onPause();
        enterExitDcsMsgData.report();
    }

    public void a() {
        if (this.x != null && !q()) {
            this.x.a(false, true);
        }
        e eVar = this.x;
        if (eVar != null) {
            eVar.m(false);
        }
        Process.killProcess(Process.myPid());
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(d.g(context));
        d.a(context.getApplicationInfo());
    }

    public void b() {
        String str;
        d.a("OppoCamera", "onPreviewOKMessage");
        try {
            PackageManager packageManager = getPackageManager();
            String packageName = getPackageName();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 128);
            if (!(packageInfo == null || applicationInfo == null)) {
                Object obj = applicationInfo.metaData.get("versionCommit");
                Object obj2 = applicationInfo.metaData.get("versionDate");
                String str2 = null;
                if (obj != null) {
                    str = obj.toString();
                    if (!str.startsWith("_")) {
                        str = "_" + str;
                    }
                } else {
                    str = null;
                }
                if (obj2 != null) {
                    str2 = obj2.toString();
                }
                this.w = packageInfo.versionName + str + "_" + str2;
                d.a("OppoCamera", "onPreviewOKMessage, Camera versionCode: " + packageInfo.versionCode + ", versionInfo: " + this.w);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        Thread thread = this.G;
        if (thread != null) {
            thread.setName("MediaServiceThread");
            this.G.start();
        }
        if (this.t) {
            c();
        }
    }

    public void c() {
    }

    public void d() {
        d.a("OppoCamera", "keepScreenOnAwhile");
        this.m.removeMessages(1);
        getWindow().addFlags(128);
        this.m.sendEmptyMessageDelayed(1, (long) l);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 82) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    break;
            }
        }
        if (d.T()) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.p) {
            return false;
        }
        if (d.y() || this.E.r() == 3 || this.x.G()) {
            this.x.a(motionEvent);
            if (motionEvent.getAction() == 1 || (motionEvent.getX() >= 0.0f && motionEvent.getY() >= 0.0f && motionEvent.getX() <= ((float) d.N()))) {
                this.x.b(motionEvent);
                if (this.x.w()) {
                    d.a("OppoCamera", "dispatchTouchEvent, camera on switching....");
                    return true;
                } else if (!super.dispatchTouchEvent(motionEvent)) {
                    return this.x.c(motionEvent);
                } else {
                    d.a("OppoCamera", "dispatchTouchEvent, consume by super");
                    return true;
                }
            } else {
                d.a("OppoCamera", "dispatchTouchEvent, X: " + motionEvent.getX() + ", Y: " + motionEvent.getY());
                return false;
            }
        } else {
            d.a("OppoCamera", "dispatchTouchEvent, LocationDialog not show");
            return false;
        }
    }

    public void e() {
        d.a("OppoCamera", "keepScreenOn");
        this.m.removeMessages(1);
        getWindow().addFlags(128);
    }

    public boolean f() {
        return checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public void finish() {
        super.finish();
        d.a("OppoCamera", "finish, isFinishing: " + isFinishing());
        boolean z2 = false;
        try {
            z2 = getIntent().getBooleanExtra("open_from_dialog", false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (z2) {
            overridePendingTransition(R.anim.oppo_dialog_open_enter, R.anim.oppo_dialog_open_exit);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x003b, code lost:
        if (r2 != null) goto L_0x003d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003d, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005a, code lost:
        if (r2 == null) goto L_0x005d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x005d, code lost:
        return r1;
     */
    public boolean g() {
        boolean z2 = false;
        Cursor cursor = null;
        try {
            cursor = getContentResolver().query(h, new String[]{Downloads.Impl.RequestHeaders.COLUMN_VALUE}, "key= ?", new String[]{"pp_privacy_protect"}, (String) null);
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            } else if (!cursor.moveToFirst()) {
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            } else if (cursor.getInt(cursor.getColumnIndex(Downloads.Impl.RequestHeaders.COLUMN_VALUE)) == 1) {
                z2 = true;
            }
        } catch (Exception e) {
            d.e("OppoCamera", "isPhoneEncrypted, failed to open cursor error: " + e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i2, int i3, Intent intent) {
        d.a("OppoCamera", "onActivityResult, resultCode: " + i3);
        super.onActivityResult(i2, i3, intent);
        if (i2 != 101) {
            if (i2 == 1000) {
                Intent intent2 = new Intent();
                if (intent != null) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        intent2.putExtras(extras);
                    }
                }
                setResult(i3, intent2);
                finish();
                com.oppo.camera.l.a.c(getFileStreamPath("crop-temp").getAbsolutePath());
            }
        } else if (d.y()) {
            n();
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.t = true;
        d.a("OppoCamera", "onAttachedToWindow");
        e eVar = this.x;
        if (eVar != null) {
            eVar.ac();
        }
    }

    public void onBackPressed() {
        d.a("OppoCamera", "onBackPressed");
        if (this.x.X()) {
            this.s = true;
            super.onBackPressed();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle) {
        d.e("OppoCamera", "onCreate, this: " + this);
        d.a("Camera.onCreate");
        DebugUtil.initDebug(this);
        if (isInMultiWindowMode()) {
            super.onCreate(bundle);
            a(getString(R.string.camera_in_multiwindow_cannot_use));
            return;
        }
        this.y = new i(this);
        this.E.a(getIntent(), this, this.y);
        this.D.block();
        if (d.y()) {
            n();
            this.x.a(this.y, this.E, this.q);
            if (o()) {
                this.u = true;
            }
        } else {
            this.x.a(this.y, this.E, true);
        }
        UpdateUtil.getInstance(this).startUpdateAllPara();
        d.f((Context) this);
        d.a((Context) this);
        DcsMsgData.init(this);
        super.onCreate(bundle);
        setContentView(R.layout.camera);
        this.x.aa();
        if (!d.y()) {
            m();
        }
        try {
            this.v = getIntent().getStringExtra("keyguard_start_timestamp");
        } catch (Exception e) {
            e.printStackTrace();
        }
        i();
        d.a("OppoCamera", "onCreate X, this: " + this);
        d.b("Camera.onCreate");
    }

    public Dialog onCreateDialog(int i2, Bundle bundle) {
        d.a("OppoCamera", "onCreateDialog, id: " + i2 + ", mbRuntimeAlertFirstShow: " + this.r + ", mTermsSecurityDialog: " + this.F);
        if (i2 != 102 || !this.r) {
            return null;
        }
        Dialog dialog = this.F;
        if (dialog == null || !dialog.isShowing()) {
            f.a c = new f.a(this).a((int) R.string.color_runtime_dialog_title).a(false).b(true).a(getString(R.string.color_runtime_dialog_disc, new Object[]{getString(R.string.camera_app_name), getString(R.string.color_runtime_access_fine_location)})).d(R.string.camera_dialog_net_location_positive).c((int) R.string.camera_dialog_net_location_negative);
            c.a((f.b) new f.b() {
                public void a() {
                    d.a("OppoCamera", "onCreateDialog, onLinkTextClick");
                    Intent intent = new Intent("com.coloros.bootreg.activity.statementpage");
                    intent.putExtra("statement_intent_flag", 2);
                    Camera.this.startActivity(intent);
                }
            });
            c.a((f.c) new f.c() {
                public void a(int i, boolean z) {
                    d.a("OppoCamera", "onCreateDialog, whichButton: " + i + ", isCheck: " + z);
                    if (i == -1) {
                        boolean unused = Camera.this.r = false;
                        Camera camera = Camera.this;
                        camera.a(camera, "pref_runtime_alert_first_show", camera.r);
                        Camera.this.a((List<String>) Camera.k);
                        if (Camera.this.x != null) {
                            Camera.this.x.ar();
                        }
                    } else if (i == -2) {
                        boolean unused2 = Camera.this.r = false;
                        Camera camera2 = Camera.this;
                        camera2.a(camera2, "pref_runtime_alert_first_show", camera2.r);
                    }
                    Dialog unused3 = Camera.this.F = null;
                }
            });
            c.b();
            this.F = c.a();
            this.F.setCancelable(true);
            this.F.setCanceledOnTouchOutside(false);
            this.F.setOnKeyListener(new DialogInterface.OnKeyListener() {
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    d.a("OppoCamera", "onCreateDialog, keycode: " + keyEvent.getKeyCode());
                    if (4 == keyEvent.getKeyCode()) {
                        boolean unused = Camera.this.r = false;
                        Camera.this.finish();
                    }
                    return false;
                }
            });
            d.a("OppoCamera", "onCreateDialog, mTermsSecurityDialog init assignment");
            return this.F;
        }
        d.a("OppoCamera", "onCreateDialog, mTermsSecurityDialog already shown, so return");
        return null;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        d.a("OppoCamera", "onDestroy, this: " + this);
        super.onDestroy();
        UpdateUtil.release();
        l();
        this.p = true;
        e eVar = this.x;
        if (eVar != null) {
            eVar.ae();
            this.x = null;
        }
        CameraConfig.release();
        Thread thread = this.G;
        if (thread != null) {
            try {
                thread.join();
                this.G = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        d.g();
        ServiceConnection serviceConnection = this.A;
        if (serviceConnection != null) {
            unbindService(serviceConnection);
            this.A = null;
        }
        i iVar = this.y;
        if (iVar != null) {
            iVar.a((Context) this);
            this.y = null;
        }
        if (this.F != null) {
            this.F = null;
        }
        if (MyApplication.b()) {
            Process.killProcess(Process.myPid());
        }
        d.a("OppoCamera", "onDestroy X, this: " + this);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.t = false;
        d.a("OppoCamera", "onDetachedFromWindow");
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        d.a("OppoCamera", "onKeyDown, keycode: " + i2);
        if (this.p) {
            return false;
        }
        if (this.x.a(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        d.a("OppoCamera", "onKeyUp, keyCode: " + i2);
        if (this.p) {
            return false;
        }
        if (this.x.b(i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public void onMultiWindowModeChanged(boolean z2, Configuration configuration) {
        super.onMultiWindowModeChanged(z2, configuration);
        if (z2) {
            a(getString(R.string.camera_in_multiwindow_cannot_use));
        }
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        d.a("OppoCamera", "onNewIntent");
        if (this.E.a(intent)) {
            try {
                this.v = intent.getStringExtra("keyguard_start_timestamp");
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.x.ab();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        d.a("OppoCamera", "onPause, this: " + this);
        SystemPropertiesNative.set("oppo.camera.switch", MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.y.unregisterOnSharedPreferenceChangeListener(this);
        g.a();
        this.p = true;
        b bVar = this.z;
        if (bVar != null) {
            bVar.disable();
        }
        this.x.s(q());
        k();
        super.onPause();
        if (!this.x.ay()) {
            i iVar = this.y;
            if (iVar != null && iVar.contains("pref_none_sat_ultra_wide_angle_key")) {
                i.a a2 = this.y.edit();
                a2.putString("pref_none_sat_ultra_wide_angle_key", c.a_);
                a2.apply();
            }
        }
        this.m.removeCallbacksAndMessages((Object) null);
        this.E.o();
        d.v();
        d.m();
        UpdateUtil.getInstance(this).onPause();
        s();
        d.a("OppoCamera", "onPause X, this: " + this);
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        boolean z2 = true;
        if (d.y()) {
            a(this, "key_export_permission_requested", true);
            for (int i3 = 0; i3 < iArr.length; i3++) {
                if (iArr[i3] != 0 && j.contains(strArr[i3])) {
                    d.e("OppoCamera", "onRequestPermissionsResult, not granted permission: " + strArr[i3]);
                    z2 = false;
                }
                if (strArr[i3].equalsIgnoreCase("android.permission.ACCESS_FINE_LOCATION") && iArr[i3] == 0) {
                    e eVar = this.x;
                    if (eVar != null) {
                        eVar.ar();
                    }
                }
            }
            this.q = z2;
            d.a("OppoCamera", "onRequestPermissionsResult, mbHasNecesaryPermission: " + this.q);
            if (this.q) {
                com.oppo.camera.e.a.a(getApplicationContext());
                CameraConfig.initialize(com.oppo.camera.e.a.a(0));
            } else if (!a(strArr)) {
                p();
            } else {
                finish();
            }
        } else {
            for (int i4 : iArr) {
                if (i4 != 0) {
                    d.e("OppoCamera", "onRequestPermissionsResult, not granted permission: " + strArr[r0]);
                    z2 = false;
                }
            }
            d.a("OppoCamera", "onRequestPermissionsResult, requestCode: " + i2 + ", lenght: " + iArr.length + ", granted: " + z2);
            if (!z2) {
                finish();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        d.a("OppoCamera", "onResume, this: " + this + ", mbDisplayOnLock: " + this.x.ag() + ", mVersionInfo: " + this.w);
        this.E.p();
        super.onResume();
        if (getResources().getConfiguration().densityDpi != d.f2271a) {
            d.g((Context) this);
        }
        this.B = System.currentTimeMillis();
        this.p = false;
        this.s = false;
        if (this.z == null) {
            this.z = new b(this);
        }
        this.z.enable();
        l = Integer.valueOf(DebugUtil.getDebugProperty("oppo.camera.finish.delay", String.valueOf(l))).intValue();
        this.x.c(this.q, b("com.coloros.gallery3d"));
        r();
        d();
        this.y.registerOnSharedPreferenceChangeListener(this);
        j();
        if (d.y()) {
            Settings.System.putInt(getContentResolver(), "oppo_is_camera_recording", 0);
            if (!this.u) {
                CameraConfig.initialize(com.oppo.camera.e.a.a(0));
            }
        }
        d.l();
        if (!this.C) {
            if (d.x()) {
                getWindow().addFlags(256);
                getWindow().setFlags(-65537, STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD);
                getWindow().addFlags(MessageNano.UNSET_ENUM_VALUE);
                getWindow().setNavigationBarColor(0);
            }
            if (27 < Build.VERSION.SDK_INT && d.U()) {
                getWindow().getDecorView().setSystemUiVisibility(1028);
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                getWindow().setAttributes(attributes);
            }
            this.C = true;
        }
        d.a("OppoCamera", "onResume X, this: " + this + ", mbDisplayOnLock: " + this.x.ag());
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!this.p) {
            e eVar = this.x;
            if (eVar != null) {
                eVar.a(sharedPreferences, str);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        if (MyApplication.b()) {
            finish();
        }
    }

    public void onStop() {
        d.a("OppoCamera", "onStop, this: " + this + ", mbExitCameraUseBackKey: " + this.s + ", mKeyguardStartTimeStamp: " + this.v);
        com.oppo.camera.entry.b bVar = this.E;
        e eVar = this.x;
        bVar.a(eVar != null && !eVar.ay());
        super.onStop();
        e eVar2 = this.x;
        if (eVar2 != null) {
            eVar2.a();
        }
        if (d.y()) {
            Settings.System.putInt(getContentResolver(), "oppo_is_camera_recording", 0);
        }
        String str = this.v;
        String str2 = str == null ? null : new String(str);
        this.v = null;
        d.a("OppoCamera", "onStop X, this: " + this + ", timeStamp: " + str2);
    }

    public void onUserInteraction() {
        super.onUserInteraction();
        d();
    }
}
