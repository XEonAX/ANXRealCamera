package com.oppo.camera.Ipa;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.camera2.params.Face;
import android.location.Location;
import android.net.Uri;
import co.polarr.renderer.FilterPackageUtil;
import com.oppo.camera.e.d;
import com.oppo.camera.jni.NativeBufferProducer;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.ui.control.e;
import java.util.Arrays;

/* compiled from: ImageCategory */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public a f1797a = null;

    /* renamed from: b  reason: collision with root package name */
    public C0052b f1798b = null;
    public c c = null;
    public CaptureMsgData d = null;
    private boolean e = false;

    /* compiled from: ImageCategory */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f1799a = null;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f1800b = null;
        public byte[] c = null;
        public NativeBufferProducer.NativeBufferInfo d = null;
        public int e = 0;
        public int f = 0;
        public int g = 0;
        public int h = 0;
        public int i = 0;
        public int j = 0;
        public long k = 0;
        public boolean l = false;
        public long m = -1;
        public String n = "";
        public int o = -1;
        public long p = 0;
        public boolean q = false;
    }

    /* renamed from: com.oppo.camera.Ipa.b$b  reason: collision with other inner class name */
    /* compiled from: ImageCategory */
    public static class C0052b {
        public int[] A = new int[8];
        public boolean B = false;
        public boolean C = false;
        public String D = " ";
        public boolean E = false;
        public boolean F = false;
        public boolean G = false;
        public boolean H = false;
        public boolean I = false;
        public int J = -1;
        public int[] K = new int[8];
        public int L = 0;
        public int M = 0;
        public String N = null;
        public String O = FilterPackageUtil.F_DEFAULT;
        public boolean P = false;
        public String Q = "";
        public int R = -1;
        public String S = null;
        public boolean T = false;
        public String U = "";
        public String V = "";
        public String W = "";
        public String X = "";
        public int Y = 0;
        public String Z = "";

        /* renamed from: a  reason: collision with root package name */
        public Face[] f1801a = null;
        public int aa = 0;
        public int ab = 0;
        public int ac = 0;
        public int ad = 0;
        public int ae = 0;
        public int af = 0;
        public int ag = 0;
        public int ah = 0;
        public int ai = 0;
        public int aj = 0;
        public boolean ak = false;
        public int[] al = null;
        public byte[] am = null;
        public boolean an = false;
        public Rect ao = null;
        public int ap = 0;
        public String aq = null;
        public boolean ar = false;
        public Object as = null;
        public int at = 0;
        public d au = null;

        /* renamed from: b  reason: collision with root package name */
        public long f1802b = 0;
        public boolean c = false;
        public boolean d = false;
        public boolean e = false;
        public long f = 0;
        public int g = 1;
        public String h = null;
        public int i = 0;
        public float j = 0.0f;
        public int k = 0;
        public int l = 0;
        public Location m = null;
        public double n = 0.0d;
        public double o = 0.0d;
        public String p = null;
        public long q = 0;
        public String r = null;
        public long s = 0;
        public long t = 0;
        public float u = 0.0f;
        public int v = 0;
        public int w = 0;
        public float x = 0.0f;
        public byte[] y = new byte[24];
        public int z = 0;

        public String toString() {
            StringBuilder sb = new StringBuilder("MetaItemInfo: ");
            sb.append("faceSize: ");
            Face[] faceArr = this.f1801a;
            sb.append(faceArr != null ? faceArr.length : 0);
            sb.append("\n timeStamp: ");
            sb.append(this.f1802b);
            sb.append("\n iso:");
            sb.append(this.i);
            sb.append("\n aperture: ");
            sb.append(this.j);
            sb.append("\n whiteBalanceMode: ");
            sb.append(this.k);
            sb.append("\n flashValue: ");
            sb.append(this.l);
            sb.append("\n latitude: ");
            sb.append(this.n);
            sb.append("\n longitude: ");
            sb.append(this.o);
            sb.append("\n mExposureTime: ");
            sb.append(this.t);
            sb.append("\n mFocalLength: ");
            sb.append(this.u);
            sb.append("\n mManufacture: ");
            sb.append(this.r);
            sb.append("\n jpegOrientation: ");
            sb.append(this.v);
            sb.append("\n mJpegQuality: ");
            sb.append(this.w);
            sb.append("\n mBeautyLevel: ");
            sb.append(this.z);
            sb.append("\n mCustomBeautyParam: ");
            sb.append(Arrays.toString(this.A));
            sb.append("\n mbVideoMode: ");
            sb.append(this.B);
            sb.append("\n mbFlashSnapshot: ");
            sb.append(this.C);
            sb.append("\n mProjectName: ");
            sb.append(this.D);
            sb.append("\n mbFrontCamera: ");
            sb.append(this.E);
            sb.append("\n mbPortrait: ");
            sb.append(this.F);
            sb.append("\n mbSuperNight: ");
            sb.append(this.G);
            sb.append("\n mbForbidBeauty: ");
            sb.append(this.H);
            sb.append("\n mbHighResolution: ");
            sb.append(this.I);
            sb.append("\n mPreviewWidth: ");
            sb.append(this.L);
            sb.append("\n mPreviewHeight: ");
            sb.append(this.M);
            sb.append("\n mWatermarkPath: ");
            sb.append(this.N);
            sb.append("\n mFilterType: ");
            sb.append(this.O);
            sb.append("\n mInputWidth: ");
            sb.append(this.ac);
            sb.append("\n mInputHeight: ");
            sb.append(this.ad);
            sb.append("\n mInputStride: ");
            sb.append(this.ae);
            sb.append("\n mInputScanline: ");
            sb.append(this.af);
            sb.append("\n mOutputWidth: ");
            sb.append(this.ag);
            sb.append("\n mOutputHeight: ");
            sb.append(this.ah);
            sb.append("\n mOutputStride: ");
            sb.append(this.ai);
            sb.append("\n mOutputScanline: ");
            sb.append(this.aj);
            sb.append("\n mbMirror: ");
            sb.append(this.e);
            sb.append("\n mAlgoFlag: ");
            sb.append(this.f);
            sb.append("\n mMergeNum: ");
            sb.append(this.g);
            sb.append("\n mUserComment: ");
            sb.append(this.aq);
            return sb.toString();
        }
    }

    /* compiled from: ImageCategory */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public Uri f1803a;

        /* renamed from: b  reason: collision with root package name */
        public ContentResolver f1804b;
        public String c;
        public String d;
        public Bitmap e;
        public Bitmap f;
        public int g;
        public long h = 0;
        public boolean i = false;
        public c j = null;
        public long k = 0;
        public long l = 0;
        public int m = 0;
        public boolean n = false;
        public e.a o = null;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public boolean a() {
        return this.e;
    }

    public boolean b() {
        a aVar = this.f1797a;
        return aVar != null && this.f1798b != null && this.c != null && aVar.k == this.c.h && this.c.h == this.f1798b.f1802b && this.f1797a.k == this.f1798b.f1802b;
    }
}
