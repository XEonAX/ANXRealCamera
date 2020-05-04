package com.oppo.camera.ui.preview.a;

import android.content.Context;
import android.graphics.Color;
import android.opengl.GLES20;
import android.util.Size;
import com.arcsoft.arcsoftjni.ArcSoftAvatarEngine;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.s;
import com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.g;
import com.oppo.camera.ui.preview.a.n;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: AnimojiTexturePreview */
public class a extends n {
    private ArcSoftAvatarEngine A = null;
    private ArcSoftOffscreen B = null;
    private ArcSoftOffscreen C = null;
    private ArcSoftOffscreen D = null;

    /* renamed from: a  reason: collision with root package name */
    Runnable f2879a = new Runnable() {
        public void run() {
            synchronized (a.this.g) {
                a.this.q();
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    Runnable f2880b = new Runnable() {
        public void run() {
            synchronized (a.this.g) {
                long unused = a.this.a(a.this.s, a.this.h, a.this.i);
            }
        }
    };
    Runnable c = new Runnable() {
        public void run() {
            synchronized (a.this.g) {
                boolean unused = a.this.m = a.this.t();
            }
        }
    };
    /* access modifiers changed from: private */
    public final Object g = new Object();
    /* access modifiers changed from: private */
    public int h = 0;
    /* access modifiers changed from: private */
    public int i = 0;
    private int j = 0;
    private float[] k = new float[3];
    private s l = null;
    /* access modifiers changed from: private */
    public boolean m = false;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;
    private Size q = null;
    private p r = null;
    /* access modifiers changed from: private */
    public Context s = null;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private String x = null;
    private boolean y = false;
    private boolean z = false;

    public a(Context context) {
        super(context);
        this.s = context;
    }

    /* access modifiers changed from: private */
    public long a(Context context, int i2, int i3) {
        long j2;
        synchronized (this.g) {
            d.b("AnimojiTexturePreview", "initAnimojiEngine, start, mbInitialized: " + this.t + ", width: " + i2 + ", height: " + i3);
            if (this.t || this.A != null) {
                j2 = -1;
            } else {
                d.a("Animoji.initAnimojiEngine");
                this.A = new ArcSoftAvatarEngine(context);
                String str = this.s.getExternalCacheDir().getPath() + "/animoji";
                a(this.s, "sticker/material/animoji/data.zip", str, false);
                j2 = this.A.initialize(str.concat("/data/track_data.dat"), str.concat("/data/config.txt"), 1);
                d.b("AnimojiTexturePreview", "initAnimojiEngine, end, mCurrentTemplatePath: " + this.x + ", initResult: " + j2);
                this.v = p();
                this.t = true;
                d.b("Animoji.initAnimojiEngine");
                d.b("AnimojiTexturePreview", "initAnimojiEngine, end, initResult: " + j2 + ", dataPath: " + str);
            }
        }
        return j2;
    }

    private String a(String str) {
        File file = new File(this.s.getExternalCacheDir().getPath() + "/animoji" + File.separator + str);
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                return listFiles[0].getPath();
            }
        }
        return null;
    }

    /* JADX WARNING: type inference failed for: r5v2 */
    /* JADX WARNING: type inference failed for: r5v3, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r5v4, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v5 */
    /* JADX WARNING: type inference failed for: r5v6 */
    /* JADX WARNING: type inference failed for: r5v7 */
    /* JADX WARNING: type inference failed for: r5v8 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00d2  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x001c A[SYNTHETIC] */
    private static void a(File file, String str) throws IOException {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        ZipFile zipFile = new ZipFile(file);
        ArrayList<String> arrayList = new ArrayList<>();
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (!zipEntry.getName().contains("../")) {
                String replaceAll = (str + File.separator + r3).replaceAll("\\*", File.separator);
                File file3 = new File(replaceAll);
                ? r5 = 0;
                try {
                    inputStream = zipFile.getInputStream(zipEntry);
                    try {
                        File file4 = new File(replaceAll.substring(0, replaceAll.lastIndexOf(File.separator)));
                        if (!file4.exists()) {
                            file4.mkdirs();
                        }
                        if (!file3.isDirectory()) {
                            if (file3.getName().toLowerCase().endsWith(".zip")) {
                                arrayList.add(file3.getPath());
                            }
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = inputStream.read(bArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    fileOutputStream2.write(bArr, 0, read);
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                fileOutputStream2.close();
                            } catch (Exception e) {
                                r5 = inputStream;
                                fileOutputStream = fileOutputStream2;
                                e = e;
                                try {
                                    e.printStackTrace();
                                    if (r5 != 0) {
                                    }
                                    if (fileOutputStream != null) {
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    InputStream inputStream2 = r5;
                                    r5 = fileOutputStream;
                                    inputStream = inputStream2;
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (r5 != 0) {
                                        r5.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                r5 = fileOutputStream2;
                                if (inputStream != null) {
                                }
                                if (r5 != 0) {
                                }
                                throw th;
                            }
                        } else if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        r5 = inputStream;
                        fileOutputStream = null;
                        e.printStackTrace();
                        if (r5 != 0) {
                        }
                        if (fileOutputStream != null) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (inputStream != null) {
                        }
                        if (r5 != 0) {
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileOutputStream = null;
                    e.printStackTrace();
                    if (r5 != 0) {
                        r5.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = null;
                    if (inputStream != null) {
                    }
                    if (r5 != 0) {
                    }
                    throw th;
                }
            }
        }
        zipFile.close();
        if (arrayList.size() > 0) {
            for (String file5 : arrayList) {
                File file6 = new File(file5);
                a(file6, file6.getParentFile().getPath());
                file6.delete();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0073 A[SYNTHETIC, Splitter:B:21:0x0073] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x007e A[Catch:{ Exception -> 0x007a }] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x009a A[SYNTHETIC, Splitter:B:40:0x009a] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00a5 A[Catch:{ Exception -> 0x00a1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00b1 A[SYNTHETIC, Splitter:B:50:0x00b1] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00bc A[Catch:{ Exception -> 0x00b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    private boolean a(Context context, String str, String str2, boolean z2) {
        InputStream inputStream;
        Exception e;
        FileOutputStream fileOutputStream;
        String str3;
        File file;
        FileOutputStream fileOutputStream2 = null;
        try {
            if (new File(str2).exists()) {
                if (!z2) {
                    inputStream = null;
                    fileOutputStream = null;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return true;
                        }
                    }
                    if (inputStream != null) {
                        return true;
                    }
                    inputStream.close();
                    return true;
                }
            }
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            inputStream = context.getAssets().open(str);
            try {
                String[] split = str.split(File.separator);
                str3 = str2 + File.separator + split[split.length - 1];
                file = new File(str3);
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e3) {
                e = e3;
                try {
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            return false;
                        }
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    if (fileOutputStream2 != null) {
                    }
                    if (inputStream != null) {
                    }
                    throw th;
                }
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                a(file, str3.substring(0, str3.lastIndexOf(".zip")));
                file.delete();
                if (fileOutputStream != null) {
                }
                if (inputStream != null) {
                }
            } catch (Exception e5) {
                e = e5;
                fileOutputStream2 = fileOutputStream;
                e.printStackTrace();
                if (fileOutputStream2 != null) {
                }
                if (inputStream != null) {
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                        throw th;
                    }
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Exception e7) {
            e = e7;
            inputStream = null;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
            }
            if (inputStream != null) {
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            if (fileOutputStream2 != null) {
            }
            if (inputStream != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0052 A[SYNTHETIC, Splitter:B:26:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x005b A[SYNTHETIC, Splitter:B:30:0x005b] */
    private boolean a(byte[] bArr, String str) {
        boolean z2 = false;
        if (bArr == null || str == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            if (!new File(str).exists()) {
                String concat = str.concat(".zip");
                File file = new File(concat);
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileOutputStream2.write(bArr);
                    a(file, concat.substring(0, concat.lastIndexOf(".zip")));
                    file.delete();
                    fileOutputStream = fileOutputStream2;
                } catch (Exception e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    try {
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                        }
                        return z2;
                    } catch (Throwable th) {
                        th = th;
                        if (fileOutputStream != null) {
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            z2 = true;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e = e4;
            e.printStackTrace();
            if (fileOutputStream != null) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
            return z2;
        }
        return z2;
    }

    private boolean p() {
        a.C0056a a2 = com.oppo.camera.e.a.a();
        a.C0056a b2 = com.oppo.camera.e.a.b();
        if (a2 == null || b2 == null || !a2.a() || !b2.a() || !h.a(1)) {
            StringBuilder sb = new StringBuilder();
            sb.append("setCameraConf, isSupport3DOmoji: ");
            sb.append(h.a(1));
            sb.append(", masterCalibParam valid: ");
            Boolean bool = null;
            sb.append(a2 == null ? null : Boolean.valueOf(a2.a()));
            sb.append(", depthCalibParam valid: ");
            if (b2 != null) {
                bool = Boolean.valueOf(b2.a());
            }
            sb.append(bool);
            d.e("AnimojiTexturePreview", sb.toString());
            return false;
        }
        ArcSoftAvatarEngine.AvatarEngineCamera avatarEngineCamera = new ArcSoftAvatarEngine.AvatarEngineCamera();
        avatarEngineCamera.iFrameWidth = com.oppo.camera.e.a.a().f2021a;
        avatarEngineCamera.iFrameHeight = com.oppo.camera.e.a.a().f2022b;
        avatarEngineCamera.fCameraFx = com.oppo.camera.e.a.a().c;
        avatarEngineCamera.fCameraFy = com.oppo.camera.e.a.a().d;
        avatarEngineCamera.fCameraCx = com.oppo.camera.e.a.a().e;
        avatarEngineCamera.fCameraCy = com.oppo.camera.e.a.a().f;
        ArcSoftAvatarEngine.AvatarEngineCamera avatarEngineCamera2 = new ArcSoftAvatarEngine.AvatarEngineCamera();
        avatarEngineCamera2.iFrameWidth = com.oppo.camera.e.a.b().f2021a;
        avatarEngineCamera2.iFrameHeight = com.oppo.camera.e.a.b().f2022b;
        avatarEngineCamera2.fCameraFx = com.oppo.camera.e.a.b().c;
        avatarEngineCamera2.fCameraFy = com.oppo.camera.e.a.b().d;
        avatarEngineCamera2.fCameraCx = com.oppo.camera.e.a.b().e;
        avatarEngineCamera2.fCameraCy = com.oppo.camera.e.a.b().f;
        long j2 = -1;
        ArcSoftAvatarEngine arcSoftAvatarEngine = this.A;
        if (arcSoftAvatarEngine != null) {
            j2 = arcSoftAvatarEngine.setCamera(avatarEngineCamera, avatarEngineCamera2);
            d.a("AnimojiTexturePreview", "setCameraConf, masterCalibParam: " + a2.toString() + ", depthCalibParam: " + b2.toString() + ", result: " + j2);
        }
        return j2 == 0;
    }

    /* access modifiers changed from: private */
    public void q() {
        d.b("AnimojiTexturePreview", "unInitAnimojiEngine, mbInitialized: " + this.t + ", mAvatarEngineRender: " + this.A);
        if (this.t && this.A != null) {
            d.a("Animoji.unInitAnimojiEngine");
            this.A.uninitialize();
            this.A = null;
            this.B = null;
            this.m = false;
            this.C = null;
            this.t = false;
            this.v = false;
            d.b("Animoji.unInitAnimojiEngine");
        }
    }

    /* access modifiers changed from: private */
    public void s() {
        d.b("AnimojiTexturePreview", "releaseAnimojiRender, mbInitialized: " + this.t + ", mAvatarEngineRender: " + this.A);
        if (this.t && this.A != null) {
            d.a("Animoji.releaseAnimojiRender");
            this.A.releaseRender();
            ArcSoftOffscreen arcSoftOffscreen = this.B;
            if (arcSoftOffscreen != null) {
                arcSoftOffscreen.setData((byte[]) null);
            }
            ArcSoftOffscreen arcSoftOffscreen2 = this.C;
            if (arcSoftOffscreen2 != null) {
                arcSoftOffscreen2.setData((byte[]) null);
            }
            d.b("Animoji.releaseAnimojiRender");
        }
        d.b("AnimojiTexturePreview", "releaseAnimojiEngine, end");
    }

    /* access modifiers changed from: private */
    public boolean t() {
        StickerItem c2 = this.r.c();
        if (c2 == null) {
            d.e("AnimojiTexturePreview", "initTemplateResource, item is null");
            return false;
        }
        d.a("Animoji.initTemplateResource");
        String fileContentUri = c2.getFileContentUri();
        String stickerName = c2.getStickerName();
        AnimojiStickerExtendedInfo b2 = g.b(this.s, c2);
        String backgroundColor = b2 != null ? b2.getBackgroundColor() : "#F5E274";
        boolean a2 = a(h.a(this.s, fileContentUri), this.s.getExternalCacheDir().getPath() + "/animoji" + File.separator + stickerName);
        long j2 = -1;
        d.b("AnimojiTexturePreview", "initTemplateResource, stickerName: " + stickerName + ", unZipResult: " + a2);
        if (a2) {
            this.x = a(stickerName);
            if (backgroundColor != null) {
                int parseColor = Color.parseColor(backgroundColor);
                this.k[0] = ((float) Color.red(parseColor)) / 255.0f;
                this.k[1] = ((float) Color.green(parseColor)) / 255.0f;
                this.k[2] = ((float) Color.blue(parseColor)) / 255.0f;
            }
            ArcSoftAvatarEngine arcSoftAvatarEngine = this.A;
            if (arcSoftAvatarEngine != null) {
                j2 = arcSoftAvatarEngine.setTemplate(this.x);
            }
        }
        d.b("Animoji.initTemplateResource");
        d.b("AnimojiTexturePreview", "initTemplateResource, stickerName: " + stickerName + ", unZipResult: " + a2 + ", templateResult: " + j2);
        return j2 == 0;
    }

    public Object a() {
        ArcSoftOffscreen arcSoftOffscreen;
        synchronized (this.g) {
            arcSoftOffscreen = this.D;
        }
        return arcSoftOffscreen;
    }

    public void a(int i2, int i3) {
        d.b("AnimojiTexturePreview", "setSize, width: " + i2 + ", height: " + i3 + ", mWidth: " + this.h + ", mHeight: " + this.i);
        this.n = (i2 == this.h && i3 == this.i) ? false : true;
        this.h = i2;
        this.i = i3;
        if (this.n && this.e != null) {
            this.e.a((Runnable) new Runnable() {
                public void run() {
                    synchronized (a.this.g) {
                        a.this.s();
                    }
                }
            });
        }
    }

    public void a(Size size, boolean z2) {
        synchronized (this.g) {
            this.o = true;
            this.p = z2;
            this.q = size;
            d.b("AnimojiTexturePreview", "capture, mOutputOffscreen: " + this.D + ", mbMirror: " + this.p);
        }
    }

    public void a(h hVar) {
    }

    public void a(p pVar) {
        d.a("AnimojiTexturePreview", "createEngine, request: " + pVar + ", mbCreateEngine: " + this.w);
        this.r = pVar;
        if (!this.w) {
            d.a("Animoji.createEngine");
            this.w = true;
            this.y = true;
            this.z = false;
            synchronized (this.g) {
                com.oppo.camera.o.d.a(this.f2880b);
            }
            d.b("Animoji.createEngine");
        }
    }

    public void a(byte[] bArr, int i2, int i3) {
        if (this.t) {
            synchronized (this.g) {
                if (!(this.B != null && i2 == this.B.getWidth() && i3 == this.B.getHeight())) {
                    this.B = new ArcSoftOffscreen(i2, i3, ArcSoftOffscreen.ASVL_PAF_NV21);
                    d.a("AnimojiTexturePreview", "onPreviewCallback, new ArcSoftOffscreen, width: " + i2 + ", height: " + i3);
                }
                if (!(this.B == null || this.r == null || bArr == null)) {
                    this.B.setData(bArr);
                }
            }
        }
    }

    public boolean a(int i2) {
        p pVar = this.r;
        if (pVar == null) {
            return false;
        }
        if (pVar.h() > 0 && this.y) {
            this.y = false;
        }
        if (c(i2) && this.u && this.r.d() && this.r.e() && "ANIMOJI".equals(this.r.c().getCategoryId())) {
            return !this.y;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:42:0x013a, code lost:
        if (r5 == -1) goto L_0x013d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:?, code lost:
        return true;
     */
    public boolean a(n.a aVar) {
        n.a aVar2 = aVar;
        if (!(this.r == null || !this.t || this.A == null || this.l == null)) {
            ArcSoftOffscreen arcSoftOffscreen = this.B;
            if (!(arcSoftOffscreen == null || arcSoftOffscreen.getData() == null || aVar2 == null || aVar2.d <= 0 || aVar2.e <= 0)) {
                int i2 = this.j;
                int i3 = this.d;
                int i4 = aVar2.d;
                int i5 = aVar2.e;
                synchronized (this.g) {
                    if (this.A == null) {
                        return false;
                    }
                    if (!this.m) {
                        com.oppo.camera.o.d.a(this.c);
                        d.e("AnimojiTexturePreview", "process, non selected template!");
                        return false;
                    }
                    boolean c2 = com.oppo.camera.e.a.c(this.d);
                    this.A.setDevicesOrientation(i2);
                    int b2 = com.oppo.camera.e.a.b(i3, i2);
                    if (!this.v || this.C == null || this.C.getData() == null) {
                        this.A.process(this.B, (ArcSoftOffscreen) null, 90, b2, c2);
                    } else {
                        this.A.process(this.B, this.C, 90, b2, c2);
                    }
                    float f = this.k[0];
                    float f2 = this.k[1];
                    float f3 = this.k[2];
                    GLES20.glClearColor(f, f2, f3, 1.0f);
                    GLES20.glViewport(0, 0, i4, i5);
                    int[] iArr = new int[1];
                    float f4 = f3;
                    long render = this.A.render(i4, i5, 0, false, iArr, (ArcSoftOffscreen) null);
                    this.l.a(aVar2.f2931a, iArr[0], i4, i5);
                    this.z = true;
                    if (this.o) {
                        d.b("AnimojiTexturePreview", "process, captureRender start");
                        this.o = false;
                        this.D = new ArcSoftOffscreen(this.q.getWidth(), this.q.getHeight(), ArcSoftOffscreen.ASVL_PAF_NV21);
                        this.D.setData(new byte[((int) (((float) (this.q.getWidth() * this.q.getHeight())) * 1.5f))]);
                        GLES20.glClearColor(f, f2, f4, 1.0f);
                        long render2 = this.A.render(this.D.getWidth(), this.D.getHeight(), 270, this.p, (int[]) null, this.D);
                        d.b("AnimojiTexturePreview", "process, captureRender end, captureResult: " + render2);
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("process, something wrong, so return! mRequest: ");
        sb.append(this.r);
        sb.append(", mbInitialized: ");
        sb.append(this.t);
        sb.append(", mAvatarEngineRender: ");
        sb.append(this.A);
        sb.append(", mOutputAnimojiTexture: ");
        sb.append(this.l);
        sb.append(", mPreviewOffscreen: ");
        sb.append(this.B);
        sb.append(", mPreviewOffscreen.data: ");
        ArcSoftOffscreen arcSoftOffscreen2 = this.B;
        sb.append(arcSoftOffscreen2 != null ? arcSoftOffscreen2.getData() : null);
        sb.append(", frameInfo: ");
        sb.append(aVar2);
        sb.append(", outTextureWidth: ");
        sb.append(aVar2 == null ? 0 : aVar2.d);
        sb.append(", outTextureHeight: ");
        sb.append(aVar2 == null ? 0 : aVar2.e);
        d.d("AnimojiTexturePreview", sb.toString());
        return false;
    }

    public void b(int i2) {
        this.j = i2;
    }

    public void b(byte[] bArr, int i2, int i3) {
        if (this.t) {
            synchronized (this.g) {
                if (this.C == null || this.C.getData() == null || !(bArr == null || this.C.getData().length == bArr.length)) {
                    this.C = new ArcSoftOffscreen(i2, i3, ArcSoftOffscreen.ASVL_PAF_DEPTH_U16);
                    d.e("AnimojiTexturePreview", "onDepthCallback, new ArcSoftOffscreen, width: " + i2 + ", height: " + i3);
                }
                if (!(this.C == null || this.r == null || bArr == null)) {
                    this.C.setData(bArr);
                }
            }
        }
    }

    public boolean b() {
        boolean z2;
        synchronized (this.g) {
            z2 = this.z;
        }
        return z2;
    }

    public void c() {
    }

    public void d() {
    }

    public int e() {
        return 16;
    }

    public void f() {
        d.a("AnimojiTexturePreview", "destroyEngine, mRequest: " + this.r);
        if (this.w) {
            this.w = false;
            this.y = false;
            if (this.r != null && this.e != null) {
                this.e.a((Runnable) new Runnable() {
                    public void run() {
                        synchronized (a.this.g) {
                            a.this.s();
                            com.oppo.camera.o.d.a(a.this.f2879a);
                        }
                    }
                });
            }
        }
    }

    public s g() {
        return null;
    }

    public s h() {
        return this.l;
    }

    public boolean i() {
        synchronized (this.g) {
            com.oppo.camera.o.d.b(this.c);
            com.oppo.camera.o.d.a(this.c);
        }
        return true;
    }

    public void j() {
        d.a("AnimojiTexturePreview", "newTextures");
        this.l = new s(this.h, this.i, true);
        this.u = true;
    }

    public void k() {
        d.a("AnimojiTexturePreview", "recycleTextures");
        if (this.u) {
            s sVar = this.l;
            if (sVar != null) {
                sVar.l();
                this.l = null;
            }
            this.u = false;
        }
    }
}
