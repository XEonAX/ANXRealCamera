package com.oppo.camera.e;

import co.polarr.renderer.FilterPackageUtil;

/* compiled from: CameraRequestTag */
public class d {
    public boolean A = false;
    public int B = 0;
    public int C = 0;
    private a D = a.PREVIEW;

    /* renamed from: a  reason: collision with root package name */
    public boolean f2031a = false;

    /* renamed from: b  reason: collision with root package name */
    public String f2032b = FilterPackageUtil.F_DEFAULT;
    public boolean c = false;
    public boolean d = false;
    public boolean e = false;
    public boolean f = false;
    public boolean g = false;
    public int h = 1;
    public int i = 0;
    public boolean j = false;
    public boolean k = false;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;
    public boolean o = false;
    public String p = "";
    public int q = 0;
    public String r = "";
    public boolean s = false;
    public String t = "";
    public String u = "";
    public String v = "";
    public String w = "";
    public int x = 0;
    public String y = "";
    public int z = -1;

    /* compiled from: CameraRequestTag */
    public enum a {
        PREVIEW,
        CAPTURE,
        CAPTURE_RAW,
        CAPTURE_REPROCESS
    }

    public d() {
    }

    public d(a aVar) {
        this.D = aVar;
    }

    public a a() {
        return this.D;
    }

    public void a(a aVar) {
        this.D = aVar;
    }
}
