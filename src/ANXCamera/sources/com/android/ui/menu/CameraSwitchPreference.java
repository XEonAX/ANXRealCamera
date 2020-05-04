package com.android.ui.menu;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import androidx.preference.Preference;
import color.support.v7.app.b;
import com.color.support.preference.ColorSwitchPreference;
import com.oppo.camera.R;
import com.oppo.camera.d;

public class CameraSwitchPreference extends ColorSwitchPreference implements Preference.b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f1477b = "on";
    private static final String c = "off";
    /* access modifiers changed from: private */
    public Context d = null;
    /* access modifiers changed from: private */
    public Preference e = null;
    private final DialogInterface.OnClickListener f = new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                CameraSwitchPreference.this.d.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private final DialogInterface.OnClickListener g = new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialogInterface, int i) {
            if (CameraSwitchPreference.this.e == null) {
                d.e("CameraSwitchPreference", "Exception: null == mPreference");
            }
            synchronized (CameraSwitchPreference.this.e) {
                SharedPreferences.Editor edit = CameraSwitchPreference.this.e.K().edit();
                edit.putString(CameraSwitchPreference.this.e.B(), "off");
                edit.apply();
                CameraSwitchPreference.this.e(false);
            }
        }
    };
    private final DialogInterface.OnClickListener h = new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialogInterface, int i) {
            CameraSwitchPreference.this.e(true);
        }
    };
    private final DialogInterface.OnClickListener i = new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialogInterface, int i) {
            CameraSwitchPreference.this.e();
        }
    };

    public CameraSwitchPreference(Context context) {
        super(context);
        this.d = context;
        a((Preference.b) this);
    }

    public CameraSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = context;
        a((Preference.b) this);
    }

    public CameraSwitchPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.d = context;
        a((Preference.b) this);
    }

    private void d() {
        b.a aVar = new b.a(this.d, R.style.DialogAlert);
        aVar.a((int) R.string.camera_storage_sdcard_title);
        aVar.b((int) R.string.camera_storage_footer_summary);
        aVar.a((int) R.string.camera_storage_confirm, this.h);
        aVar.b((int) R.string.camera_storage_cancel, this.i);
        aVar.b().show();
    }

    /* access modifiers changed from: private */
    public void e() {
        Preference preference = this.e;
        if (preference == null) {
            d.e("CameraSwitchPreference", "Exception: null == mPreference");
            return;
        }
        synchronized (preference) {
            SharedPreferences.Editor edit = this.e.K().edit();
            edit.putString(this.e.B(), "off");
            edit.apply();
            e(false);
        }
    }

    /* access modifiers changed from: protected */
    public boolean c(boolean z) {
        d.a("CameraSwitchPreference", "persistBoolean, key: " + B() + ", value: " + z);
        return d(z ? f1477b : c);
    }

    /* access modifiers changed from: protected */
    public boolean d(boolean z) {
        return f1477b.equals(e(z ? f1477b : c));
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if ("pref_camera_recordlocation_key".equals(preference.B()) && "off".equals(preference.K().getString(preference.B(), "off")) && !com.oppo.camera.o.d.i(this.d)) {
            this.e = preference;
            b.a aVar = new b.a(this.d, R.style.DialogAlert);
            aVar.a((int) R.string.camera_location_content);
            aVar.a((int) R.string.camera_location_setting, this.f);
            aVar.b((int) R.string.camera_location_cancle, this.g);
            aVar.b().show();
        }
        if ("pref_slogan_location_key".equals(preference.B()) && "off".equals(preference.K().getString(preference.B(), "off")) && !com.oppo.camera.o.d.i(this.d)) {
            this.e = preference;
            b.a aVar2 = new b.a(this.d, R.style.DialogAlert);
            aVar2.a((int) R.string.camera_location_content);
            aVar2.a((int) R.string.camera_location_setting, this.f);
            aVar2.b((int) R.string.camera_location_cancle, this.g);
            aVar2.b().show();
        }
        if (!"pref_camera_storage_key".equals(preference.B()) || !"off".equals(preference.K().getString(preference.B(), "off"))) {
            return true;
        }
        this.e = preference;
        d();
        return true;
    }
}
