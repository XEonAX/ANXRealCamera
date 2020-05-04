package com.oppo.camera.ui.modepanel;

import android.app.Activity;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.a;
import java.util.ArrayList;

/* compiled from: ModePanelData */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<a> f2844a = null;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<a> f2845b = null;
    private Activity c = null;
    private boolean d = false;

    public b(Activity activity) {
        this.c = activity;
        a();
    }

    public void a() {
        d.a("ModePanelData", "init");
        this.f2844a = new ArrayList<>();
        this.f2845b = new ArrayList<>();
        if (DebugUtil.isVideoHighFrameRateEnabled()) {
            this.f2845b.add(new a(this.c, 2, R.drawable.ic_mode_slomo));
        }
        this.f2845b.add(new a(this.c, 3, R.drawable.ic_mode_pro));
        this.f2845b.add(new a(this.c, 0, R.drawable.ic_mode_panorama));
        this.f2845b.add(new a(this.c, 1, R.drawable.ic_mode_timelapse));
        if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER)) {
            this.f2845b.add(new a(this.c, 6, R.drawable.ic_mode_qshot));
        }
        this.f2844a.add(new a(this.c, 0, R.drawable.ic_mode_panorama));
        this.f2844a.add(new a(this.c, 1, R.drawable.ic_mode_timelapse));
        if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER)) {
            this.f2844a.add(new a(this.c, 6, R.drawable.ic_mode_qshot));
        }
        if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPER_MACRO)) {
            this.f2845b.add(new a(this.c, 7, R.drawable.ic_mode_macro));
        }
        this.d = true;
    }

    public void a(int i) {
        if (-1 == c(i)) {
            if (i == 5) {
                this.f2845b.add(new a(this.c, i, R.drawable.ic_mode_googlelens));
            } else {
                this.f2845b.add(new a(this.c, i));
            }
        }
    }

    public void b(int i) {
        int c2 = c(i);
        if (-1 != c2) {
            this.f2845b.remove(c2);
        }
    }

    public int c(int i) {
        for (int i2 = 0; i2 < this.f2845b.size(); i2++) {
            if (this.f2845b.get(i2).b() == i) {
                return i2;
            }
        }
        return -1;
    }

    public ArrayList<a> d(int i) {
        return a.c(i) ? this.f2844a : this.f2845b;
    }
}
