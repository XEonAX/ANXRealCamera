package com.oppo.camera.professional;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Size;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.e.h;
import com.oppo.camera.professional.LevelPanel;
import com.oppo.exif.OppoExifInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: PanelContainer */
public class c extends RelativeLayout implements d {

    /* renamed from: a  reason: collision with root package name */
    private String f2329a = "PanelContainer";

    /* renamed from: b  reason: collision with root package name */
    private Activity f2330b = null;
    private Handler c = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.d.b d = null;
    /* access modifiers changed from: private */
    public b e = null;
    private h f = null;
    /* access modifiers changed from: private */
    public a g = null;
    /* access modifiers changed from: private */
    public boolean h = false;
    private List<LevelPanel> i = new ArrayList();

    /* compiled from: PanelContainer */
    public interface a {
        void a(int i, String str, boolean z);
    }

    /* compiled from: PanelContainer */
    public interface b {
        void a(int i);

        void a(int i, String str, boolean z);
    }

    public c(Context context) {
        super(context);
        this.f2330b = (Activity) context;
    }

    private int a(h hVar) {
        return hVar.e();
    }

    private void a(RelativeLayout.LayoutParams layoutParams, final int i2, boolean z, h hVar, int i3) {
        if (this.i.size() > i2) {
            String str = this.f2329a;
            d.e(str, "addControllerPanel, return, size: " + this.i.size());
            return;
        }
        final LevelPanel levelPanel = new LevelPanel(this.f2330b, true, this.c, z, hVar, this.d);
        levelPanel.setLayoutParams(layoutParams);
        levelPanel.setAlign(i3);
        addView(levelPanel);
        levelPanel.setValueChangeListener(new LevelPanel.ValueChangeListener() {
            public void onActionUp() {
                if (!c.this.h) {
                    c.this.g.a(i2, levelPanel.a(c.this.d.j()), false);
                }
            }

            public void onAutoValueChange(int i) {
                c.this.e.a(i2, levelPanel.a(c.this.d.j()), true);
            }

            public void onBarScrolling(boolean z) {
                if (c.this.h && !z) {
                    c.this.g.a(i2, levelPanel.a(c.this.d.j()), false);
                }
                boolean unused = c.this.h = z;
            }

            public void onManualValueChange(int i) {
                c cVar = c.this;
                int i2 = i2;
                cVar.a(i2, cVar.j(i2), i);
                c.this.e.a(i2, levelPanel.a(c.this.d.j()), false);
                if (4 == i2) {
                    c.this.e(0);
                    c.this.e(1);
                }
                if (3 == i2) {
                    c.this.e.a(i2);
                }
            }
        });
        this.i.add(levelPanel);
    }

    private void b(h hVar) {
        int m = this.f.m();
        int n = this.f.n();
        float o = this.f.o();
        String str = this.f2329a;
        d.a(str, "generateExposureCompensationValues, minIndex: " + m + ", maxValue: " + n + ", step: " + o);
        if ((m == -1 && n == -1) || m > n || Float.compare(o, 0.0f) == 0) {
            String str2 = this.f2329a;
            d.e(str2, "generateExposureCompensationValues, return, minIndex: " + m + ", maxIndex: " + n);
            return;
        }
        ArrayList<String> b2 = hVar.b();
        ArrayList<String> c2 = hVar.c();
        b2.clear();
        c2.clear();
        while (m <= n) {
            b2.add(String.valueOf(m));
            c2.add(a(m, o));
            m++;
        }
    }

    private void c(h hVar) {
        ArrayList<String> b2 = hVar.b();
        ArrayList<String> c2 = hVar.c();
        int[] y = this.f.y();
        if (y == null || y.length < 2) {
            String str = this.f2329a;
            d.e(str, "generateWhiteBalanceValues, return, range: " + y);
            return;
        }
        String str2 = this.f2329a;
        StringBuilder sb = new StringBuilder();
        sb.append("generateWhiteBalanceValues, min: ");
        sb.append(y[0]);
        sb.append(", max: ");
        sb.append(y[1]);
        d.b(str2, sb.toString());
        int i2 = y[0];
        int i3 = (y[1] - i2) / 100;
        if (i3 <= 0) {
            String str3 = this.f2329a;
            d.e(str3, "generateWhiteBalanceValues, return, valueNum: " + i3);
            return;
        }
        b2.clear();
        c2.clear();
        for (int i4 = 0; i4 <= i3; i4++) {
            int i5 = (100 * i4) + i2;
            b2.add(Integer.toString(i5));
            c2.add(i5 + OppoExifInterface.GpsSpeedRef.KILOMETERS);
        }
    }

    private void d(h hVar) {
        double parseDouble;
        ArrayList<String> b2 = hVar.b();
        ArrayList<String> c2 = hVar.c();
        long u = this.f.u();
        long v = this.f.v();
        String str = this.f2329a;
        d.b(str, "generateShutterValues, max: " + u + ", min: " + v);
        if (c2 != null && Math.abs(1.0f - (((float) getMaxPictureSize()) / 8000000.0f)) <= 0.1f) {
            c2.remove(c2.size() - 1);
            b2.remove(b2.size() - 1);
        }
        String str2 = this.f2329a;
        d.b(str2, "generateShutterValues, before filtering, parameterNamesList: " + c2);
        if (c2 != null) {
            Iterator<String> it = c2.iterator();
            long j = -1;
            while (it.hasNext()) {
                String[] split = it.next().split("/");
                if (split.length > 1) {
                    parseDouble = Double.parseDouble(split[0]) / Double.parseDouble(split[1].split("s")[0]);
                } else {
                    if (split.length == 1) {
                        parseDouble = Double.parseDouble(split[0].split("s")[0]);
                    }
                    if (j >= v || j > u) {
                        it.remove();
                    } else {
                        b2.add(String.valueOf(j));
                    }
                }
                j = (long) (parseDouble * 1.0E9d);
                if (j >= v) {
                }
                it.remove();
            }
            if (Long.parseLong(b2.get(b2.size() - 1)) < u) {
                b2.add(String.valueOf(u));
                c2.add((u / 1000000000) + "s");
            }
            String str3 = this.f2329a;
            d.b(str3, "generateShutterValues, after filtering, parameterValuesList: " + b2 + ", parameterNamesList: " + c2);
        }
    }

    private void e(h hVar) {
        float j = this.f.j();
        if (j <= 0.0f) {
            String str = this.f2329a;
            d.e(str, "generateFocusValues, return, minFocusDistance: " + j);
            return;
        }
        float f2 = 1.0f / j;
        float f3 = (j - f2) / 50.0f;
        String str2 = this.f2329a;
        d.a(str2, "generateFocusValues, farFocus: " + f2 + ", nearFocus: " + j);
        ArrayList<String> b2 = hVar.b();
        ArrayList<String> c2 = hVar.c();
        b2.clear();
        c2.clear();
        for (int i2 = 0; i2 <= 50; i2++) {
            float f4 = (float) i2;
            b2.add(Float.toString(j - (f3 * f4)));
            c2.add(String.format(Locale.US, "%.2f", new Object[]{Float.valueOf(f4 * 0.02f)}));
        }
    }

    private void f(h hVar) {
        ArrayList<String> b2 = hVar.b();
        ArrayList<String> c2 = hVar.c();
        int r = this.f.r();
        int s = this.f.s();
        if (s > r) {
            r = s;
        }
        int t = this.f.t();
        if (r <= 0 || t <= 0 || r == t) {
            String str = this.f2329a;
            d.e(str, "generateIsoValues, return null, maxISOValue: " + r + ", minISOValue: " + t + ", maxISOValue: " + r);
            return;
        }
        b2.clear();
        c2.clear();
        while (t <= r) {
            b2.add(Integer.toString(t));
            c2.add(Integer.toString(t));
            t += 100;
        }
    }

    private h g() {
        h d2 = new h(this.f2330b).a((int) R.string.camera_whitebalance_professional_title).b((int) R.drawable.profession_wb_selector).c(R.id.awb_controller).a("awb_mode_key").b("pref_professional_whitebalance_key").d(R.string.camera_whitebalance_default_value);
        c(d2);
        return d2;
    }

    private h h() {
        h d2 = new h(this.f2330b).a((int) R.string.camera_exposure_compensation_professional_title).b((int) R.drawable.profession_ev_selector).c(R.id.exposure_controller).a("iso_mode_key").b("pref_professional_exposure_compensation_key").d(R.string.camera_exposure_compensation_default_value);
        b(d2);
        return d2;
    }

    private h i() {
        h d2 = new h(this.f2330b).a((int) R.string.camera_iso_professional_title).b((int) R.drawable.profession_iso_selector).c(R.id.iso_controller).a("exposure_mode_key").b("pref_professional_iso_key").d(R.string.camera_iso_default_value);
        f(d2);
        return d2;
    }

    private h j() {
        h f2 = new h(this.f2330b).a((int) R.string.camera_exposure_time_title).b((int) R.drawable.profession_shutter_selector).c(R.id.shutter_controller).a("shutter_mode_key").b("pref_professional_exposure_time_key").d(R.string.camera_exposure_time_default_value).e(R.array.professional_exposure_time_values).f(R.array.professional_exposure_time_names);
        d(f2);
        return f2;
    }

    /* access modifiers changed from: private */
    public String j(int i2) {
        return new String[]{"pref_professional_iso_key", "pref_professional_exposure_time_key", "pref_professional_whitebalance_key", "pref_professional_focus_mode_key", "pref_professional_exposure_compensation_key"}[i2];
    }

    private h k() {
        h d2 = new h(this.f2330b).a((int) R.string.camera_focus_mode_title).b((int) R.drawable.profession_af_selector).c(R.id.manual_focus_controller).a("manual_focus_mode_key").b("pref_professional_focus_mode_key").d(R.string.camera_focus_mode_default_value);
        e(d2);
        return d2;
    }

    public int a(String str) {
        SharedPreferences j = this.d.j();
        return j.getInt(str + "_manual", -1);
    }

    /* access modifiers changed from: package-private */
    public String a(int i2) {
        return this.f2330b.getString(new int[]{R.string.camera_iso_default_value, R.string.camera_exposure_time_default_value, R.string.camera_whitebalance_default_value, R.string.camera_focus_mode_default_value, R.string.camera_exposure_compensation_default_value}[i2]);
    }

    /* access modifiers changed from: package-private */
    public String a(int i2, float f2) {
        float f3 = ((float) i2) * f2;
        if (f3 > 0.0f) {
            return "+" + String.format(Locale.US, "%.2f", new Object[]{Float.valueOf(f3)});
        }
        return String.format(Locale.US, "%.2f", new Object[]{Float.valueOf(f3)});
    }

    public String a(int i2, String str) {
        int a2 = a(str);
        if (a2 < 0) {
            return null;
        }
        ArrayList<String> parameterNamesList = this.i.get(i2).getParameterNamesList();
        if (a2 > parameterNamesList.size() - 1) {
            return null;
        }
        return parameterNamesList.get(a2);
    }

    public void a() {
        for (LevelPanel next : this.i) {
            next.b(next.b(this.d.j()));
        }
    }

    public void a(int i2, int i3, String str) {
        this.i.get(i2).a(i3, this.f2330b, str);
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, String str, int i3) {
        if (i2 < this.i.size()) {
            SharedPreferences.Editor edit = this.d.j().edit();
            edit.putString(str, this.i.get(i2).getParameterValueList().get(i3));
            edit.putInt(str + "_manual", i3);
            edit.apply();
        }
    }

    public void a(com.oppo.camera.d.b bVar, h hVar, Handler handler) {
        this.d = bVar;
        this.f = hVar;
        this.c = handler;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        RelativeLayout.LayoutParams layoutParams2 = layoutParams;
        a(layoutParams2, 0, false, i(), 1);
        a(layoutParams2, 1, false, j(), 1);
        a(layoutParams2, 2, false, g(), 1);
        a(layoutParams2, 3, false, k(), 1);
        a(layoutParams2, 4, false, h(), 2);
        c();
    }

    public void a(boolean z) {
        List<LevelPanel> list = this.i;
        if (list != null && list.size() != 0) {
            h hVar = this.i.get(3).getmSubModeBarData();
            if (z) {
                hVar.b((int) R.drawable.profession_af_selector);
            } else {
                hVar.b((int) R.drawable.profession_mf_selector);
            }
        }
    }

    public void a(boolean z, int i2) {
        if (z) {
            setAuto(i2);
            if (3 == i2) {
                this.e.a(i2);
                return;
            }
            return;
        }
        setManual(i2);
    }

    public boolean a(int i2, int i3) {
        return this.i.get(i2).a(i3);
    }

    public ArrayList<String> b(int i2) {
        return this.i.get(i2).getParameterValueList();
    }

    public void b() {
        List<LevelPanel> list = this.i;
        if (list != null && list.size() != 0) {
            SharedPreferences.Editor edit = this.d.j().edit();
            for (int i2 = 0; i2 < this.i.size(); i2++) {
                edit.putInt(j(i2) + "_manual", -1);
            }
            edit.apply();
        }
    }

    public void b(int i2, int i3) {
        List<LevelPanel> list = this.i;
        if (list != null && list.get(i2) != null) {
            String str = this.f2329a;
            d.a(str, "onValueChange, index: " + i2 + ", value: " + i3);
            this.i.get(i2).onValueChange(i3);
        }
    }

    public ArrayList<String> c(int i2) {
        return this.i.get(i2).getParameterNamesList();
    }

    public void c() {
        for (LevelPanel visibility : this.i) {
            visibility.setVisibility(4);
        }
    }

    public void clearAnimation() {
    }

    /* access modifiers changed from: package-private */
    public String d(int i2) {
        return this.d.j().getString(j(i2), a(i2));
    }

    public void d() {
        for (LevelPanel valueChangeListener : this.i) {
            valueChangeListener.setValueChangeListener((LevelPanel.ValueChangeListener) null);
        }
    }

    public void e(int i2) {
        if (!g(i2)) {
            setAuto(i2);
        }
        if (3 == i2) {
            this.e.a(i2);
        }
    }

    public boolean e() {
        return this.h;
    }

    public void f() {
        this.h = false;
    }

    public void f(int i2) {
        c();
        this.i.get(i2).setVisibility(0);
    }

    /* access modifiers changed from: package-private */
    public boolean g(int i2) {
        if (i2 < 0 || i2 > this.i.size() - 1) {
            return false;
        }
        SharedPreferences j = this.d.j();
        StringBuilder sb = new StringBuilder();
        sb.append(j(i2));
        sb.append("_manual_state");
        return d(i2).equals(a(i2)) && !j.getBoolean(sb.toString(), false);
    }

    public String getFocusValue() {
        if (g(3)) {
            return a(3);
        }
        return this.i.get(3).a(this.d.j());
    }

    public ArrayList<HashMap<String, Object>> getMainModeBarData() {
        ArrayList<HashMap<String, Object>> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            HashMap hashMap = new HashMap();
            hashMap.put("mainTitle", Integer.valueOf(a(this.i.get(i2).getmSubModeBarData())));
            hashMap.put("main_item_key", this.i.get(i2).a(this.d.j()));
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    public long getMaxPictureSize() {
        long j = 0;
        for (Size next : this.f.a(256)) {
            if (((long) next.getWidth()) * ((long) next.getHeight()) > j) {
                j = ((long) next.getWidth()) * ((long) next.getHeight());
            }
        }
        String str = this.f2329a;
        d.a(str, "getMaxPictureSize, max: " + j);
        return j;
    }

    /* access modifiers changed from: package-private */
    public String getShutterAndIsoValue() {
        SharedPreferences j = this.d.j();
        return this.i.get(0).a(j) + "  " + this.i.get(1).a(j);
    }

    public boolean h(int i2) {
        if (g(i2)) {
            this.i.get(i2).setBarAuto(true);
            return true;
        }
        this.i.get(i2).setBarAuto(false);
        return false;
    }

    public boolean i(int i2) {
        return g(i2);
    }

    public void scrollTo(int i2, int i3) {
        this.i.get(i2).a(i3, this.f2330b);
    }

    public void setAuto(int i2) {
        SharedPreferences.Editor edit = this.d.j().edit();
        edit.putString(j(i2), a(i2));
        edit.putBoolean(j(i2) + "_manual_state", false);
        edit.apply();
        this.i.get(i2).setBarAuto(true);
    }

    public void setManual(int i2) {
        SharedPreferences.Editor edit = this.d.j().edit();
        edit.putBoolean(j(i2) + "_manual_state", true);
        edit.apply();
        int a2 = a(j(i2));
        if (a2 >= 0) {
            a(i2, a2, a(i2, j(i2)));
        } else {
            int currentIndex = this.i.get(i2).getCurrentIndex();
            if (3 != i2) {
                a(i2, currentIndex, this.i.get(i2).getParameterNamesList().get(currentIndex));
            }
        }
        this.i.get(i2).setBarAuto(false);
    }

    public void setMotionListener(a aVar) {
        this.g = aVar;
    }

    public void setSettleListener(b bVar) {
        this.e = bVar;
    }
}
