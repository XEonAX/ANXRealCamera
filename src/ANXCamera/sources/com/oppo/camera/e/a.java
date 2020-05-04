package com.oppo.camera.e;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import com.oppo.camera.d;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: CameraCharacteristicsUtil */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static CameraManager f2019a;

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<h> f2020b;
    private static String[] c;
    private static ArrayList<String> d;
    private static ArrayList<String> e;
    private static HashMap<Integer, Integer> f;
    private static C0056a g;
    private static C0056a h;

    /* renamed from: com.oppo.camera.e.a$a  reason: collision with other inner class name */
    /* compiled from: CameraCharacteristicsUtil */
    public static class C0056a {

        /* renamed from: a  reason: collision with root package name */
        public int f2021a = 0;

        /* renamed from: b  reason: collision with root package name */
        public int f2022b = 0;
        public float c = 0.0f;
        public float d = 0.0f;
        public float e = 0.0f;
        public float f = 0.0f;

        public boolean a() {
            return (this.f2021a == 0 && this.f2022b == 0 && Float.compare(this.c, 0.0f) == 0 && Float.compare(this.d, 0.0f) == 0 && Float.compare(this.e, 0.0f) == 0 && Float.compare(this.f, 0.0f) == 0) ? false : true;
        }

        public String toString() {
            return "mFrameWidth: " + this.f2021a + ", mFrameHeight: " + this.f2022b + ", mCameraFx: " + this.c + ", mCameraFy: " + this.d + ", mCameraCx: " + this.e + ", mCameraCy: " + this.f;
        }
    }

    public static int a(int i, int i2) {
        h a2 = a(i2);
        return a2.c() == 0 ? (360 - ((a2.b() + i) % 360)) % 360 : ((a2.b() - i) + 360) % 360;
    }

    public static C0056a a() {
        return g;
    }

    public static h a(int i) {
        return i <= c() + -1 ? f2020b.get(i) : f2020b.get(0);
    }

    public static synchronized void a(Context context) {
        synchronized (a.class) {
            d.a("CameraCharacteristicsUtil", "initialize");
            f2019a = (CameraManager) context.getSystemService("camera");
            b(context);
            d.a("CameraCharacteristicsUtil", "initialize, X");
        }
    }

    public static int b(int i) {
        h a2 = a(i);
        if (a2 != null) {
            return a2.b();
        }
        return 0;
    }

    public static int b(int i, int i2) {
        h a2 = a(i);
        int b2 = i2 != -1 ? a2.c() == 0 ? ((a2.b() - i2) + 360) % 360 : (a2.b() + i2) % 360 : a2.b();
        d.a("CameraCharacteristicsUtil", "getJpegOrientation, cameraId: " + i + ", orientation: " + i2 + ", rotation: " + b2);
        return b2;
    }

    public static C0056a b() {
        return h;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002d, code lost:
        if (r8.size() != 0) goto L_0x00d5;
     */
    public static void b(Context context) {
        if (c == null) {
            if (f2019a == null) {
                f2019a = (CameraManager) context.getSystemService("camera");
            }
            try {
                c = f2019a.getCameraIdList();
            } catch (CameraAccessException e2) {
                e2.printStackTrace();
            }
        }
        if (f2020b != null) {
            HashMap<Integer, Integer> hashMap = f;
            if (hashMap != null) {
            }
        }
        String[] strArr = c;
        if (strArr != null && strArr.length > 0) {
            d = new ArrayList<>();
            e = new ArrayList<>();
            f2020b = new ArrayList<>();
            int i = 0;
            while (true) {
                String[] strArr2 = c;
                if (i >= strArr2.length) {
                    break;
                }
                h hVar = null;
                try {
                    hVar = new h(f2019a.getCameraCharacteristics(strArr2[i]));
                } catch (CameraAccessException e3) {
                    e3.printStackTrace();
                }
                if (hVar != null) {
                    try {
                        int parseInt = Integer.parseInt(c[i]);
                        int[] z = hVar.z();
                        int i2 = z != null ? z[0] : -1;
                        d.a("CameraCharacteristicsUtil", "initCameraInfo, cameraType: " + i2 + ", cameraId: " + parseInt);
                        if (f == null) {
                            f = new HashMap<>();
                        }
                        if (i2 > -1) {
                            f.put(Integer.valueOf(i2), Integer.valueOf(parseInt));
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                }
                f2020b.add(hVar);
                if (hVar == null || hVar.c() != 0) {
                    d.add(c[i]);
                } else {
                    e.add(c[i]);
                }
                i++;
            }
        }
        o();
        d.b("CameraCharacteristicsUtil", "initCameraInfo, sAllCameraIds.length: " + c.length);
    }

    public static int c() {
        String[] strArr = c;
        if (strArr != null) {
            return strArr.length;
        }
        return 0;
    }

    public static boolean c(int i) {
        return a(i).c() == 0;
    }

    public static int d() {
        h hVar = null;
        try {
            if (f2019a != null) {
                hVar = new h(f2019a.getCameraCharacteristics("0"));
            }
        } catch (CameraAccessException e2) {
            e2.printStackTrace();
        }
        if (hVar == null) {
            return -1;
        }
        int[] A = hVar.A();
        if (A != null) {
            return A[0];
        }
        return -1;
    }

    public static int d(int i) {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap == null || hashMap.size() <= 0 || !f.containsKey(Integer.valueOf(i))) {
            return 0;
        }
        return f.get(Integer.valueOf(i)).intValue();
    }

    public static boolean e() {
        ArrayList<String> arrayList = d;
        return arrayList != null && arrayList.size() >= 3;
    }

    public static boolean f() {
        ArrayList<String> arrayList = e;
        return arrayList != null && arrayList.size() >= 3;
    }

    public static boolean g() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap == null || !hashMap.containsKey(12)) {
            return false;
        }
        ArrayList<String> arrayList = d;
        return arrayList != null && arrayList.contains(String.valueOf(f.get(12)));
    }

    public static int h() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap == null || hashMap.size() <= 0 || !f.containsKey(12)) {
            return 0;
        }
        return f.get(12).intValue();
    }

    public static int i() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap != null && hashMap.size() > 0 && f.containsKey(0)) {
            return f.get(0).intValue();
        }
        ArrayList<String> arrayList = d;
        if (arrayList == null || arrayList.size() <= 0) {
            return 0;
        }
        return Integer.parseInt(d.get(0));
    }

    public static int j() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap != null && hashMap.size() > 0 && f.containsKey(1)) {
            return f.get(1).intValue();
        }
        ArrayList<String> arrayList = e;
        if (arrayList == null || arrayList.size() <= 0) {
            return 0;
        }
        return Integer.parseInt(e.get(0));
    }

    public static int k() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap != null && hashMap.size() > 0 && f.containsKey(2)) {
            return f.get(2).intValue();
        }
        ArrayList<String> arrayList = d;
        if (arrayList == null || arrayList.size() <= 2) {
            return 0;
        }
        ArrayList<String> arrayList2 = d;
        return Integer.parseInt(arrayList2.get(arrayList2.size() - 2));
    }

    public static int l() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap != null && hashMap.size() > 0 && f.containsKey(8)) {
            return f.get(8).intValue();
        }
        ArrayList<String> arrayList = d;
        if (arrayList == null || arrayList.size() <= 1) {
            return 0;
        }
        ArrayList<String> arrayList2 = d;
        return Integer.parseInt(arrayList2.get(arrayList2.size() - 1));
    }

    public static int m() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap != null && hashMap.size() > 0 && f.containsKey(10)) {
            return f.get(10).intValue();
        }
        ArrayList<String> arrayList = e;
        if (arrayList == null || arrayList.size() <= 1) {
            return 0;
        }
        ArrayList<String> arrayList2 = e;
        return Integer.parseInt(arrayList2.get(arrayList2.size() - 1));
    }

    public static int n() {
        HashMap<Integer, Integer> hashMap = f;
        if (hashMap == null || hashMap.size() <= 0 || !f.containsKey(6)) {
            return 0;
        }
        return f.get(6).intValue();
    }

    private static void o() {
        if (g == null || h == null) {
            byte[] a2 = com.oppo.camera.o.d.a(new File("/persist/camera/stereoParams.bin"));
            if (g == null) {
                g = new C0056a();
            }
            g.f2022b = com.oppo.camera.o.d.g(a2, 4130, 4133);
            g.f2021a = com.oppo.camera.o.d.g(a2, 4134, 4137);
            g.c = com.oppo.camera.o.d.b(a2, 4138);
            g.d = com.oppo.camera.o.d.b(a2, 4142);
            g.e = com.oppo.camera.o.d.b(a2, 4146);
            g.f = com.oppo.camera.o.d.b(a2, 4150);
            if (h == null) {
                h = new C0056a();
            }
            h.f2022b = com.oppo.camera.o.d.g(a2, 17, 20);
            h.f2021a = com.oppo.camera.o.d.g(a2, 21, 24);
            h.c = com.oppo.camera.o.d.b(a2, 25);
            h.d = com.oppo.camera.o.d.b(a2, 29);
            h.e = com.oppo.camera.o.d.b(a2, 33);
            h.f = com.oppo.camera.o.d.b(a2, 37);
            d.a("CameraCharacteristicsUtil", "fillBokehParam, sMasterCalibParam: " + g.toString() + ", sDepthCalibParam: " + h.toString());
        }
    }
}
