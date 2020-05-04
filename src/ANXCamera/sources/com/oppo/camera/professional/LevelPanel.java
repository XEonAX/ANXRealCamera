package com.oppo.camera.professional;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.d.b;
import com.oppo.camera.o.d;
import com.oppo.camera.ui.CommonComponent.ScaleBar;
import com.oppo.camera.ui.menu.OppoTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;

public class LevelPanel extends RelativeLayout implements ScaleBar.ScaleBarValueChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private static String f2315a = "LevelPanel";

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<String, String> f2316b = new HashMap<>();
    private String c = "[一-龥]";
    private int d = 0;
    private Context e;
    /* access modifiers changed from: private */
    public ValueChangeListener f = null;
    private ArrayList<OppoTextView> g = new ArrayList<>();
    private boolean h = false;
    /* access modifiers changed from: private */
    public h i = null;
    private b j = null;
    private Pattern k = Pattern.compile(this.c);
    /* access modifiers changed from: private */
    public f l = null;
    private boolean m = true;
    /* access modifiers changed from: private */
    public ScaleBar n = null;
    private boolean o = true;

    public interface ValueChangeListener {
        void onActionUp();

        void onAutoValueChange(int i);

        void onBarScrolling(boolean z);

        void onManualValueChange(int i);
    }

    public LevelPanel(Context context, boolean z, Handler handler, boolean z2, h hVar, b bVar) {
        super(context);
        this.e = context;
        this.j = bVar;
        this.i = hVar;
        this.o = z;
        this.h = z2;
        a(handler);
    }

    private String a(h hVar, String str) {
        if (hVar == null) {
            return null;
        }
        return hVar.b().indexOf(str) < 0 ? "" : hVar.c().get(hVar.b().indexOf(str));
    }

    /* access modifiers changed from: private */
    public String a(String str) {
        return f2316b.get(str);
    }

    public static void a() {
        f2316b.put("pref_professional_whitebalance_key", "2000");
        f2316b.put("pref_professional_iso_key", "100");
        f2316b.put("pref_professional_exposure_compensation_key", "0.00");
        f2316b.put("pref_professional_exposure_time_key", "1/50s");
        f2316b.put("pref_professional_focus_mode_key", "0.00");
    }

    private void a(Handler handler) {
        this.l = new f(this.e);
        int i2 = 1;
        this.l.setVerticalDraw(true);
        this.l.setIncludeFontPadding(false);
        this.l.setTextSize(0, (float) this.e.getResources().getDimensionPixelSize(R.dimen.main_mode_bar_item_text_size));
        this.l.setTypeface(d.u());
        this.l.setGravity(17);
        this.l.setTextColor(this.e.getResources().getColor(R.color.main_item_title_text_color));
        this.l.setText(a(this.j.j()));
        this.l.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        layoutParams.topMargin = this.e.getResources().getDimensionPixelSize(R.dimen.professional_mode_text_top_margin);
        layoutParams.bottomMargin = this.e.getResources().getDimensionPixelSize(R.dimen.professional_mode_text_bottom_margin);
        this.l.setLayoutParams(layoutParams);
        addView(this.l);
        this.n = new ScaleBar(this.e, this.i.c().size(), handler);
        int N = d.N();
        if (this.h) {
            i2 = 2;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(N / i2, -2);
        layoutParams2.addRule(3, this.l.getId());
        this.n.setScaleBarValueChangeListener(this);
        this.n.setAuto(this.o);
        addView(this.n, layoutParams2);
    }

    public static void a(String str, String str2) {
        f2316b.put(str, str2);
    }

    public String a(SharedPreferences sharedPreferences) {
        String str;
        String str2;
        String a2 = this.i.a();
        String string = sharedPreferences.getString(a2, this.i.d());
        if (string.equals(this.i.d()) && !"pref_professional_exposure_compensation_key".equals(a2)) {
            return a(a2);
        }
        String a3 = a(this.i, string);
        if (!"".equals(a3)) {
            return a3;
        }
        if ("pref_professional_exposure_compensation_key".equals(a2)) {
            str2 = getDefaultValue();
            str = a(this.i, str2);
        } else {
            str2 = this.i.d();
            str = a(a2);
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(a2, str2);
        edit.apply();
        return str;
    }

    public void a(final int i2, Activity activity) {
        if (this.n.getCurrentIndex() != i2) {
            this.n.setCurrentIndex(i2);
            if (activity != null) {
                activity.runOnUiThread(new Runnable() {
                    public void run() {
                        LevelPanel.this.n.scrollTo(i2);
                        f c = LevelPanel.this.l;
                        LevelPanel levelPanel = LevelPanel.this;
                        c.setText(levelPanel.a(levelPanel.i.a()));
                        if (LevelPanel.this.f != null) {
                            LevelPanel.this.f.onAutoValueChange(i2);
                        }
                    }
                });
            }
        }
    }

    public void a(final int i2, Activity activity, final String str) {
        this.n.setCurrentIndex(i2);
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    LevelPanel.this.n.scrollTo(i2);
                    if (str != null) {
                        LevelPanel.this.l.setText(str);
                    }
                    if (LevelPanel.this.f != null) {
                        LevelPanel.this.f.onManualValueChange(i2);
                    }
                }
            });
        }
    }

    public boolean a(int i2) {
        return this.n.getCurrentIndex() == i2;
    }

    public int b(SharedPreferences sharedPreferences) {
        String a2 = this.i.a();
        ArrayList<String> b2 = this.i.b();
        String d2 = this.i.d();
        if (sharedPreferences != null) {
            d2 = sharedPreferences.getString(a2, this.i.d());
        }
        return b2.indexOf(d2);
    }

    public void b(int i2) {
        ScaleBar scaleBar = this.n;
        if (scaleBar != null) {
            scaleBar.initDataIndex(i2);
        }
    }

    public int getCurrentIndex() {
        return this.n.getCurrentIndex();
    }

    public String getDefaultValue() {
        return this.i.d();
    }

    public ArrayList<String> getParameterNamesList() {
        return this.i.c();
    }

    public ArrayList<String> getParameterValueList() {
        return this.i.b();
    }

    public h getmSubModeBarData() {
        return this.i;
    }

    public void invalidate() {
        super.invalidate();
        ScaleBar scaleBar = this.n;
        if (scaleBar != null) {
            scaleBar.invalidate();
        }
    }

    public void onActionUp() {
        ValueChangeListener valueChangeListener = this.f;
        if (valueChangeListener != null) {
            valueChangeListener.onActionUp();
        }
    }

    public void onBarMoving() {
        if (this.o) {
            setBarAuto(false);
        }
    }

    public void onBarScrolling(boolean z) {
        ValueChangeListener valueChangeListener = this.f;
        if (valueChangeListener != null) {
            valueChangeListener.onBarScrolling(z);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.m) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void onValueChange(int i2) {
        com.oppo.camera.d.a(f2315a, "onValueChange");
        ValueChangeListener valueChangeListener = this.f;
        if (valueChangeListener != null) {
            valueChangeListener.onManualValueChange(i2);
            this.l.setText(a(this.j.j()));
        }
    }

    public void setAlign(int i2) {
        ScaleBar scaleBar = this.n;
        if (scaleBar != null) {
            scaleBar.setAlign(i2);
        }
    }

    public void setBarAuto(boolean z) {
        this.o = z;
        ScaleBar scaleBar = this.n;
        if (scaleBar != null) {
            scaleBar.setAuto(this.o);
        }
    }

    public void setValueChangeListener(ValueChangeListener valueChangeListener) {
        this.f = valueChangeListener;
    }
}
