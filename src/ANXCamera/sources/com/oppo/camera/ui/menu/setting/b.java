package com.oppo.camera.ui.menu.setting;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.g.u;
import androidx.preference.Preference;
import color.support.design.widget.ColorAppBarLayout;
import color.support.v7.widget.Toolbar;
import com.color.support.preference.e;
import com.oppo.camera.R;
import com.oppo.camera.c;
import com.oppo.camera.d;
import com.oppo.camera.statistics.model.MenuClickMsgData;

/* compiled from: BasePreferenceFragment */
public abstract class b extends e implements Preference.b, Preference.c {

    /* renamed from: b  reason: collision with root package name */
    String f2817b = null;
    int c = 2;
    int d = 0;
    private Toolbar e;
    private ColorAppBarLayout f;
    private Context g;

    static Object a(Preference preference, Object obj) {
        String B = preference.B();
        return (B.equals("pref_camera_tap_shutter_key") || B.equals("pref_camera_gesture_shutter_key") || B.equals("pref_camera_sound_key") || B.equals("pref_camera_recordlocation_key") || B.equals("pref_camera_slogan_key") || B.equals("pref_camera_fingerprint_shutter_key")) ? (!(obj instanceof Boolean) || !((Boolean) obj).booleanValue()) ? c.a_ : "on" : obj;
    }

    public void C() {
        av();
        au();
        super.C();
    }

    public void D() {
        aw();
        super.D();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a2 = super.a(layoutInflater, viewGroup, bundle);
        this.e = (Toolbar) a2.findViewById(R.id.toolbar);
        Toolbar toolbar = this.e;
        if (toolbar == null) {
            return a2;
        }
        toolbar.setNavigationIcon((int) R.drawable.color_back_arrow);
        this.e.setNavigationOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                b.this.o().onBackPressed();
            }
        });
        u.a((View) ap(), true);
        ap().setBackgroundColor(r().getColor(R.color.color_list_overscroll_background_color));
        this.e.setTitle((CharSequence) at());
        this.f = (ColorAppBarLayout) a2.findViewById(R.id.appBarLayout);
        this.f.setPadding(0, com.oppo.camera.o.e.a(o()), 0, 0);
        return a2;
    }

    public void a(Context context) {
        super.a(context);
        this.g = context.getApplicationContext();
    }

    public void a(Bundle bundle, String str) {
        super.a(bundle, str);
        Bundle j = j();
        if (j != null) {
            this.f2817b = j.getString("pref_camera_mode_key", (String) null);
            this.c = j.getInt("camera_enter_type");
            this.d = j.getInt("pref_camera_id_key");
        }
        c(j);
    }

    /* access modifiers changed from: package-private */
    public void a(String str, Object obj) {
        MenuClickMsgData menuClickMsgData = new MenuClickMsgData(as());
        menuClickMsgData.mCaptureMode = this.f2817b;
        menuClickMsgData.mCaptureType = 0;
        menuClickMsgData.mCameraEnterType = String.valueOf(this.c);
        menuClickMsgData.mCameraId = String.valueOf(this.d);
        menuClickMsgData.buildSettingMenuItem(str, obj);
        menuClickMsgData.report();
    }

    public Context as() {
        return this.g;
    }

    public abstract String at();

    /* access modifiers changed from: protected */
    public abstract void au();

    /* access modifiers changed from: protected */
    public abstract void av();

    /* access modifiers changed from: protected */
    public abstract void aw();

    /* access modifiers changed from: package-private */
    public void b(Preference preference, Object obj) {
        if (this.f2817b == null) {
            d.e("BasePreferenceFragment", "report Msg data failed, current mode is null!");
            return;
        }
        a(preference.B(), a(preference, obj));
    }

    /* access modifiers changed from: protected */
    public abstract void c(Bundle bundle);

    public void d() {
        super.d();
    }
}
