package com.oppo.camera.e;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import com.color.compat.hardware.camera2.CaptureRequestNative;
import com.oppo.camera.d;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* compiled from: CameraMetadataKey */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final CameraCharacteristics.Key<int[]> f2028a = new CameraCharacteristics.Key<>("com.oppo.custom.jpeg.size", int[].class);

    /* renamed from: b  reason: collision with root package name */
    public static final CameraCharacteristics.Key<int[]> f2029b = new CameraCharacteristics.Key<>("org.codeaurora.qcamera3.manualWB.color_temperature_range", int[].class);
    public static final CameraCharacteristics.Key<int[]> c = new CameraCharacteristics.Key<>("com.oppo.manualWB.color_temperature_range", int[].class);
    public static final CameraCharacteristics.Key<int[]> d = new CameraCharacteristics.Key<>("com.oppo.supported.cameraid.type", int[].class);
    public static final CameraCharacteristics.Key<int[]> e = new CameraCharacteristics.Key<>("com.oppo.camera.rear.num", int[].class);
    public static final CameraCharacteristics.Key<int[]> f = new CameraCharacteristics.Key<>("com.oppo.camera.dual.calibration.size", int[].class);
    public static final CameraCharacteristics.Key<byte[]> g = new CameraCharacteristics.Key<>("com.oppo.camera.dual.calibration.data", byte[].class);
    public static final CameraCharacteristics.Key<int[]> h = new CameraCharacteristics.Key<>("com.mediatek.cshotfeature.availableCShotModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> i = new CameraCharacteristics.Key<>("com.mediatek.control.capture.early.notification.support", int[].class);
    public static final CameraCharacteristics.Key<int[]> j = new CameraCharacteristics.Key<>("com.mediatek.bgservicefeature.availableprereleasemodes", int[].class);
    public static final CameraCharacteristics.Key<int[]> k = new CameraCharacteristics.Key<>("com.oppo.bokeh.picture.size", int[].class);
    public static final CaptureRequest.Key<int[]> l = CaptureRequestNative.captureRequestKey("com.mediatek.configure.setting.initrequest", int[].class);
    public static final CameraCharacteristics.Key<int[]> m = new CameraCharacteristics.Key<>("com.mediatek.hdrfeature.availableHdrModesVideo", int[].class);
    public static final CameraCharacteristics.Key<int[]> n = new CameraCharacteristics.Key<>("com.oppo.feature.3hdr.support", int[].class);
    public static final CameraCharacteristics.Key<float[]> o = new CameraCharacteristics.Key<>("com.oppo.custom.zoom.range", float[].class);
    public static final CameraCharacteristics.Key<float[]> p = new CameraCharacteristics.Key<>("com.oppo.expert.zoom.range", float[].class);
    public static final CameraCharacteristics.Key<int[]> q = new CameraCharacteristics.Key<>("com.oppo.sat.ultra.support.imagesizes", int[].class);
    public static final CameraCharacteristics.Key<int[]> r = new CameraCharacteristics.Key<>("com.oppo.sat.tele.support.imagesizes", int[].class);
    public static final CaptureRequest.Key<int[]> s = CaptureRequestNative.captureRequestKey("com.oppo.app.support.feature", int[].class);
    public static final CameraCharacteristics.Key<int[]> t = new CameraCharacteristics.Key<>("com.oppo.ultra.wide.angel.support", int[].class);
    public static final CameraCharacteristics.Key<int[]> u = new CameraCharacteristics.Key<>("com.oppo.ultra.wide.angel.video.support", int[].class);
    private HashMap<String, CaptureRequest.Key<?>> v;
    private HashMap<String, CaptureResult.Key<?>> w;
    private boolean x;
    private boolean y;

    public c() {
        this.v = null;
        this.w = null;
        this.x = false;
        this.y = false;
        this.v = new HashMap<>();
        this.w = new HashMap<>();
    }

    public CaptureRequest.Key<?> a(String str) {
        return this.v.get(str);
    }

    public void a(String str, CaptureRequest.Key<?> key) {
        this.v.put(str, key);
    }

    public void a(String str, CaptureResult.Key<?> key) {
        this.w.put(str, key);
    }

    public void a(List<CaptureResult.Key<?>> list) {
        if (list == null || list.size() == 0) {
            d.e("CameraMetadataKey", "loadResultKey, keys: " + list);
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            CaptureResult.Key key = list.get(i2);
            a(key.getName(), (CaptureResult.Key<?>) key);
        }
        this.y = true;
    }

    public void a(Set<CaptureRequest.Key<?>> set) {
        if (set == null || set.size() == 0) {
            d.e("CameraMetadataKey", "loadRequestKey, keys: " + set);
            return;
        }
        for (CaptureRequest.Key next : set) {
            a(next.getName(), (CaptureRequest.Key<?>) next);
        }
        this.x = true;
    }

    public boolean a() {
        return this.x;
    }

    public CaptureResult.Key<?> b(String str) {
        return this.w.get(str);
    }

    public boolean b() {
        return this.y;
    }
}
