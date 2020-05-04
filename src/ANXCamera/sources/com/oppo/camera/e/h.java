package com.oppo.camera.e;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import com.oppo.camera.o.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: OppoCameraCharacteristics */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCharacteristics f2095a;

    /* renamed from: b  reason: collision with root package name */
    private List<Float> f2096b = null;
    private List<Float> c = null;
    private List<Float> d = null;
    private Map<Integer, List<Size>> e = null;
    private List<Size> f = null;
    private List<CaptureRequest.Key<?>> g = null;
    private List<CaptureRequest.Key<?>> h = null;

    public h(CameraCharacteristics cameraCharacteristics) {
        this.f2095a = cameraCharacteristics;
    }

    private float K() {
        float[] g2 = g();
        if (g2 != null) {
            return g2[0];
        }
        return 1.0f;
    }

    private float L() {
        float[] h2 = h();
        if (h2 != null) {
            return h2[0];
        }
        return 1.0f;
    }

    private float M() {
        float[] g2 = g();
        return (g2 == null || g2.length < 4) ? f() : g2[1];
    }

    private float N() {
        float[] h2 = h();
        return (h2 == null || h2.length < 4) ? f() : h2[1];
    }

    public int[] A() {
        return a((CameraCharacteristics.Key<?>) c.e);
    }

    public List<Size> B() {
        ArrayList arrayList = new ArrayList();
        try {
            int[] iArr = (int[]) this.f2095a.get(c.f2028a);
            for (int i = 0; i < iArr.length; i++) {
                if (i % 2 == 0) {
                    int i2 = i + 1;
                    if (i2 < iArr.length) {
                        arrayList.add(new Size(iArr[i], iArr[i2]));
                    }
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002a  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0036 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0033 A[EDGE_INSN: B:26:0x0033->B:20:0x0033 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:29:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    public boolean C() {
        boolean z;
        boolean z2;
        int length;
        int i;
        int[] a2 = a((CameraCharacteristics.Key<?>) c.h);
        int[] a3 = a((CameraCharacteristics.Key<?>) c.i);
        if (a2 != null && a2.length > 0) {
            int length2 = a2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    break;
                } else if (a2[i2] == 1) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (a3 != null && a3.length > 0) {
                length = a3.length;
                i = 0;
                while (true) {
                    if (i < length) {
                        break;
                    } else if (a3[i] == 1) {
                        z2 = true;
                        break;
                    } else {
                        i++;
                    }
                }
                return !z && z2;
            }
            z2 = false;
            if (!z) {
                return false;
            }
        }
        z = false;
        length = a3.length;
        i = 0;
        while (true) {
            if (i < length) {
            }
            i++;
        }
        if (!z) {
        }
    }

    public boolean D() {
        if (d.w()) {
            return true;
        }
        int[] a2 = a((CameraCharacteristics.Key<?>) c.i);
        if (a2 != null && a2.length > 0) {
            for (int i : a2) {
                if (i == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    public CameraCharacteristics E() {
        return this.f2095a;
    }

    public boolean F() {
        return !d.w();
    }

    public boolean G() {
        int[] a2 = a((CameraCharacteristics.Key<?>) c.m);
        if (a2 == null || a2.length <= 0) {
            return false;
        }
        for (int i : a2) {
            if (i == 3) {
                return true;
            }
        }
        return false;
    }

    public boolean H() {
        int[] a2 = a((CameraCharacteristics.Key<?>) c.n);
        if (a2 == null || a2.length <= 0) {
            return false;
        }
        for (int i : a2) {
            if (i == 1) {
                com.oppo.camera.d.b("OppoCameraCharacteristics", "isSupport3Hdr, support3HDR: " + i);
                return true;
            }
        }
        return false;
    }

    public boolean I() {
        try {
            int[] iArr = (int[]) this.f2095a.get(c.t);
            return iArr != null && iArr.length > 0 && iArr[0] == 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public boolean J() {
        try {
            int[] iArr = (int[]) this.f2095a.get(c.u);
            return iArr != null && iArr.length > 0 && iArr[0] == 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public float a(boolean z, boolean z2) {
        float[] g2 = z ? g() : z2 ? h() : null;
        if (g2 != null) {
            return g2[2];
        }
        return 1.0f;
    }

    public Rect a(Size size) {
        Rect d2 = d();
        float width = ((float) d2.width()) / ((float) d2.height());
        float width2 = ((float) size.getWidth()) / ((float) size.getHeight());
        if (width2 - width > -0.015f) {
            int height = (d2.height() - ((int) (((float) d2.width()) / width2))) / 2;
            return new Rect(d2.left, d2.top + height, d2.right, d2.bottom - height);
        }
        int width3 = (d2.width() - ((int) (((float) d2.height()) * width2))) / 2;
        return new Rect(d2.left + width3, d2.top, d2.right - width3, d2.bottom);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r1 = (android.hardware.camera2.params.StreamConfigurationMap) r5.f2095a.get(android.hardware.camera2.CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0015, code lost:
        r2 = new java.util.ArrayList();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001a, code lost:
        if (r1 == null) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001c, code lost:
        r1 = r1.getOutputSizes(android.graphics.SurfaceTexture.class);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0022, code lost:
        if (r1 == null) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0024, code lost:
        r3 = r1.length;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0025, code lost:
        if (r0 >= r3) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0027, code lost:
        r2.add(r1[r0]);
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002f, code lost:
        monitor-enter(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        r5.f = r2;
        r0 = r5.f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0034, code lost:
        monitor-exit(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0035, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0039, code lost:
        com.oppo.camera.d.e("OppoCameraCharacteristics", "Unable to obtain preview sizes");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0045, code lost:
        return new java.util.ArrayList(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x000a, code lost:
        r0 = 0;
     */
    public List<Size> a() {
        synchronized (this) {
            if (this.f != null) {
                List<Size> list = this.f;
                return list;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0028, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        r1 = (android.hardware.camera2.params.StreamConfigurationMap) r7.f2095a.get(android.hardware.camera2.CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
        r2 = new java.util.ArrayList();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0038, code lost:
        if (r1 == null) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003e, code lost:
        if (r1.getOutputSizes(r8) == null) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0040, code lost:
        r3 = r1.getOutputSizes(r8);
        r4 = r3.length;
        r5 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0046, code lost:
        if (r5 >= r4) goto L_0x0050;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0048, code lost:
        r2.add(r3[r5]);
        r5 = r5 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0050, code lost:
        r1 = r1.getHighResolutionOutputSizes(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0054, code lost:
        if (r1 == null) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0056, code lost:
        r3 = r1.length;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0057, code lost:
        if (r0 >= r3) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0059, code lost:
        r2.add(r1[r0]);
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0061, code lost:
        r0 = B();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0065, code lost:
        if (r0 == null) goto L_0x0081;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0067, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x006f, code lost:
        if (r0.hasNext() == false) goto L_0x0081;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0071, code lost:
        r1 = r0.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x007b, code lost:
        if (com.oppo.camera.o.d.a((java.util.List<android.util.Size>) r2, r1) != false) goto L_0x006b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x007d, code lost:
        r2.add(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0081, code lost:
        monitor-enter(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
        r7.e.put(java.lang.Integer.valueOf(r8), r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x008b, code lost:
        monitor-exit(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x008c, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0090, code lost:
        com.oppo.camera.d.e("OppoCameraCharacteristics", "Unable to obtain picture sizes");
        r1 = new java.util.ArrayList(0);
        r7.e.put(java.lang.Integer.valueOf(r8), r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00a5, code lost:
        return r1;
     */
    public List<Size> a(int i) {
        synchronized (this) {
            if (this.e == null) {
                this.e = new HashMap();
            } else if (this.e.containsKey(Integer.valueOf(i))) {
                List<Size> list = this.e.get(Integer.valueOf(i));
                return list;
            }
        }
    }

    public List<CaptureRequest.Key<?>> a(CaptureRequest captureRequest) {
        List<CaptureRequest.Key<?>> list;
        synchronized (this) {
            if (this.h == null) {
                this.h = captureRequest.getKeys();
            }
            list = this.h;
        }
        return list;
    }

    public List<Float> a(boolean z, boolean z2, boolean z3) {
        float f2 = 1.0f;
        if (z2 || z) {
            if (this.c == null) {
                float K = K();
                float M = M();
                if (z) {
                    M = 5.0f;
                    K = 1.0f;
                }
                this.c = new ArrayList();
                while (Float.compare(K, M) <= 0) {
                    float round = ((float) Math.round(K * 10.0f)) / 10.0f;
                    this.c.add(Float.valueOf(round));
                    K = round + 0.1f;
                }
            }
            return this.c;
        } else if (z3) {
            if (this.d == null) {
                float L = L();
                float N = N();
                this.d = new ArrayList();
                while (Float.compare(L, N) <= 0) {
                    float round2 = ((float) Math.round(L * 10.0f)) / 10.0f;
                    this.d.add(Float.valueOf(round2));
                    L = round2 + 0.1f;
                }
            }
            return this.d;
        } else {
            if (this.f2096b == null) {
                float f3 = f();
                this.f2096b = new ArrayList();
                while (Float.compare(f2, f3) <= 0) {
                    float round3 = ((float) Math.round(f2 * 10.0f)) / 10.0f;
                    this.f2096b.add(Float.valueOf(round3));
                    f2 = round3 + 0.1f;
                }
            }
            return this.f2096b;
        }
    }

    public int[] a(CameraCharacteristics.Key<?> key) {
        int[] iArr = null;
        if (key == null) {
            return null;
        }
        try {
            iArr = (int[]) this.f2095a.get(key);
        } catch (Exception e2) {
            com.oppo.camera.d.b("OppoCameraCharacteristics", "getIntArrayConfig, e: " + e2.getMessage());
        }
        com.oppo.camera.d.b("OppoCameraCharacteristics", "getIntArrayConfig, tag: " + key.getName());
        return iArr;
    }

    public int b() {
        return ((Integer) this.f2095a.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
    }

    public String b(CameraCharacteristics.Key<?> key) {
        String str = null;
        if (key == null) {
            return null;
        }
        try {
            Object obj = this.f2095a.get(key);
            if (obj instanceof Byte) {
                str = String.valueOf((Byte) obj);
            } else if (obj instanceof Integer) {
                str = String.valueOf((Integer) obj);
            } else if (obj instanceof Float) {
                str = String.valueOf((Float) obj);
            } else if (obj instanceof Long) {
                str = String.valueOf((Long) obj);
            } else if (obj instanceof Double) {
                str = String.valueOf((Double) obj);
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                if (iArr != null) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < iArr.length; i++) {
                        if (i % 2 == 0) {
                            int i2 = i + 1;
                            if (i2 < iArr.length) {
                                if (i >= 2) {
                                    sb.append(";");
                                }
                                sb.append(iArr[i] + "x" + iArr[i2]);
                            }
                        }
                    }
                    str = sb.toString();
                }
            }
        } catch (Exception e2) {
            com.oppo.camera.d.b("OppoCameraCharacteristics", "getConfig, e: " + e2.getMessage());
        }
        com.oppo.camera.d.b("OppoCameraCharacteristics", "getConfig, tag: " + key.getName() + " ,result: " + str);
        return str;
    }

    public int c() {
        return ((Integer) this.f2095a.get(CameraCharacteristics.LENS_FACING)).intValue();
    }

    /* JADX WARNING: type inference failed for: r6v0, types: [android.hardware.camera2.CameraCharacteristics$Key<int[]>, android.hardware.camera2.CameraCharacteristics$Key] */
    /* JADX WARNING: Unknown variable types count: 1 */
    public List<Size> c(CameraCharacteristics.Key<int[]> r6) {
        ArrayList arrayList = new ArrayList();
        try {
            int[] iArr = (int[]) this.f2095a.get(r6);
            for (int i = 0; i < iArr.length; i++) {
                if (i % 2 == 0) {
                    int i2 = i + 1;
                    if (i2 < iArr.length) {
                        arrayList.add(new Size(iArr[i], iArr[i2]));
                    }
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public Rect d() {
        return (Rect) this.f2095a.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
    }

    public SizeF e() {
        return (SizeF) this.f2095a.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE);
    }

    public float f() {
        return ((Float) this.f2095a.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue();
    }

    public float[] g() {
        try {
            if (this.f2095a != null) {
                return (float[]) this.f2095a.get(c.o);
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public float[] h() {
        try {
            if (this.f2095a != null) {
                return (float[]) this.f2095a.get(c.p);
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public List<CaptureRequest.Key<?>> i() {
        synchronized (this) {
            if (this.g != null) {
                List<CaptureRequest.Key<?>> list = this.g;
                return list;
            }
            if (this.f2095a != null) {
                this.g = this.f2095a.getAvailableCaptureRequestKeys();
            }
            List<CaptureRequest.Key<?>> list2 = this.g;
            return list2;
        }
    }

    public float j() {
        CameraCharacteristics cameraCharacteristics = this.f2095a;
        if (cameraCharacteristics == null) {
            return 0.0f;
        }
        try {
            return ((Float) cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE)).floatValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0.0f;
        }
    }

    public float[] k() {
        return (float[]) this.f2095a.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
    }

    public boolean l() {
        Range range = (Range) this.f2095a.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
        return (((Integer) range.getLower()).intValue() == 0 && ((Integer) range.getUpper()).intValue() == 0) ? false : true;
    }

    public int m() {
        if (!l()) {
            return -1;
        }
        return ((Integer) ((Range) this.f2095a.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE)).getLower()).intValue();
    }

    public int n() {
        if (!l()) {
            return -1;
        }
        return ((Integer) ((Range) this.f2095a.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE)).getUpper()).intValue();
    }

    public float o() {
        if (!l()) {
            return -1.0f;
        }
        Rational rational = (Rational) this.f2095a.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
        return ((float) rational.getNumerator()) / ((float) rational.getDenominator());
    }

    public boolean p() {
        Integer num = (Integer) this.f2095a.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
        return num != null && num.intValue() > 0;
    }

    public boolean q() {
        Integer num = (Integer) this.f2095a.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
        return num != null && num.intValue() > 0;
    }

    public int r() {
        CameraCharacteristics cameraCharacteristics = this.f2095a;
        if (cameraCharacteristics == null) {
            return -1;
        }
        Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE);
        if (range != null) {
            return ((Integer) range.getUpper()).intValue();
        }
        return -1;
    }

    public int s() {
        CameraCharacteristics cameraCharacteristics = this.f2095a;
        if (cameraCharacteristics == null) {
            return -1;
        }
        Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE);
        if (range != null) {
            return ((Integer) range.getUpper()).intValue() + 1;
        }
        return -1;
    }

    public int t() {
        CameraCharacteristics cameraCharacteristics = this.f2095a;
        if (cameraCharacteristics == null) {
            return -1;
        }
        Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE);
        if (range != null) {
            return ((Integer) range.getLower()).intValue();
        }
        return -1;
    }

    public long u() {
        CameraCharacteristics cameraCharacteristics = this.f2095a;
        if (cameraCharacteristics == null) {
            return -1;
        }
        Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE);
        if (range != null) {
            return ((Long) range.getUpper()).longValue();
        }
        return -1;
    }

    public long v() {
        CameraCharacteristics cameraCharacteristics = this.f2095a;
        if (cameraCharacteristics == null) {
            return -1;
        }
        Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE);
        if (range != null) {
            return ((Long) range.getLower()).longValue();
        }
        return -1;
    }

    public Range<Integer>[] w() {
        return (Range[]) this.f2095a.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
    }

    public int[] x() {
        return (int[]) this.f2095a.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
    }

    public int[] y() {
        return d.w() ? a((CameraCharacteristics.Key<?>) c.f2029b) : a((CameraCharacteristics.Key<?>) c.c);
    }

    public int[] z() {
        return a((CameraCharacteristics.Key<?>) c.d);
    }
}
