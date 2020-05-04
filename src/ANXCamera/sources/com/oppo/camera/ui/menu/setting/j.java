package com.oppo.camera.ui.menu.setting;

import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.fragment.app.c;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import com.android.ui.menu.CameraSwitchPreference;
import com.color.support.preference.ColorEditTextPreference;
import com.color.support.preference.ColorPreferenceCategory;
import com.color.support.widget.ColorEditText;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.i;
import com.oppo.camera.statistics.model.MenuClickMsgData;

/* compiled from: CameraSloganSettingFragment */
public class j extends b {
    private CameraSwitchPreference ae = null;
    private ColorEditTextPreference af = null;
    private EditText ag = null;
    private TextWatcher ah = null;
    private boolean ai = false;
    private i e = null;
    private PreferenceScreen f = null;
    private ColorPreferenceCategory g = null;
    private CameraSwitchPreference h = null;
    private CameraSwitchPreference i = null;

    private boolean aA() {
        String a2 = a((int) R.string.camera_slogan_default_value);
        i iVar = this.e;
        if (iVar != null) {
            a2 = iVar.getString("pref_slogan_location_key", a((int) R.string.camera_slogan_default_value));
        }
        return "on".equals(a2);
    }

    private boolean aB() {
        String a2 = a((int) R.string.camera_slogan_default_value);
        i iVar = this.e;
        if (iVar != null) {
            a2 = iVar.getString("pref_slogan_time_key", a((int) R.string.camera_slogan_default_value));
        }
        return "on".equals(a2);
    }

    private void ax() {
        this.e = new i(as());
        this.e.getString("pref_camera_id_key", String.valueOf(0));
        this.e.a(as(), this.d);
        this.f = (PreferenceScreen) a((CharSequence) "camera_setting_slogan_root_preference");
        this.h = (CameraSwitchPreference) a((CharSequence) "pref_slogan_device_key");
        CameraSwitchPreference cameraSwitchPreference = this.h;
        if (cameraSwitchPreference != null) {
            cameraSwitchPreference.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return j.this.onPreferenceChange(preference, obj);
                }
            });
            this.h.a(true);
        }
        this.af = (ColorEditTextPreference) a((CharSequence) "pref_slogan_owner_key");
        ColorEditTextPreference colorEditTextPreference = this.af;
        if (colorEditTextPreference != null) {
            colorEditTextPreference.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return j.this.onPreferenceChange(preference, obj);
                }
            });
            this.af.a((Preference.c) new Preference.c() {
                public final boolean onPreferenceClick(Preference preference) {
                    return j.this.onPreferenceClick(preference);
                }
            });
            this.af.a((EditTextPreference.a) new EditTextPreference.a() {
                public void a(EditText editText) {
                    if (editText instanceof ColorEditText) {
                        ((ColorEditText) editText).setFastDeletable(true);
                    }
                    editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
                }
            });
        }
        this.ae = (CameraSwitchPreference) a((CharSequence) "pref_slogan_time_key");
        CameraSwitchPreference cameraSwitchPreference2 = this.ae;
        if (cameraSwitchPreference2 != null) {
            cameraSwitchPreference2.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return j.this.onPreferenceChange(preference, obj);
                }
            });
            this.ae.a(true);
        }
        this.g = (ColorPreferenceCategory) a((CharSequence) "pref_location_watermark_function");
        this.i = (CameraSwitchPreference) a((CharSequence) "pref_slogan_location_key");
        CameraSwitchPreference cameraSwitchPreference3 = this.i;
        if (cameraSwitchPreference3 != null) {
            cameraSwitchPreference3.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return j.this.onPreferenceChange(preference, obj);
                }
            });
            this.i.a(true);
        }
        ColorPreferenceCategory colorPreferenceCategory = this.g;
        if (colorPreferenceCategory != null) {
            CameraSwitchPreference cameraSwitchPreference4 = this.i;
            if (cameraSwitchPreference4 != null && !this.ai) {
                colorPreferenceCategory.d((Preference) cameraSwitchPreference4);
            }
        }
    }

    private void ay() {
        if (!(this.h == null || this.af == null || this.i == null || this.ae == null)) {
            i iVar = this.e;
            if (iVar != null) {
                b(iVar.getString("pref_slogan_owner_key", ""));
                if (az()) {
                    this.h.e(true);
                    this.af.a(true);
                } else {
                    this.h.e(false);
                    this.af.a(false);
                }
                d.e("CameraSloganSettingFrag", "onResume, getLocationAvailable: " + com.oppo.camera.o.d.i(as()) + ", isLocationSloganEnable: " + aA());
                if (aA()) {
                    this.i.e(true);
                } else {
                    this.i.e(false);
                }
                if (aB()) {
                    this.ae.e(true);
                    return;
                } else {
                    this.ae.e(false);
                    return;
                }
            }
        }
        d.d("CameraSloganSettingFrag", "update preference failed!");
    }

    private boolean az() {
        String a2 = a((int) R.string.camera_slogan_default_value);
        i iVar = this.e;
        if (iVar != null) {
            a2 = iVar.getString("pref_slogan_device_key", a((int) R.string.camera_slogan_default_value));
        }
        return "on".equals(a2);
    }

    private void b(String str) {
        if (this.af != null && this.e != null) {
            if (TextUtils.isEmpty(str)) {
                str = r().getString(R.string.camera_setting_slogan_name_default);
            }
            this.af.c(str);
        }
    }

    public void C() {
        super.C();
        ay();
    }

    public void D() {
        super.D();
        TextWatcher textWatcher = this.ah;
        if (textWatcher != null) {
            this.ag.removeTextChangedListener(textWatcher);
        }
    }

    public void E() {
        super.E();
        i iVar = this.e;
        if (iVar != null) {
            iVar.a(as());
            this.e = null;
        }
        PreferenceScreen preferenceScreen = this.f;
        if (preferenceScreen != null) {
            preferenceScreen.d();
            this.f = null;
        }
        this.ag = null;
        this.ah = null;
        this.h = null;
        this.af = null;
        this.ae = null;
        this.i = null;
        this.af = null;
    }

    public void a(Bundle bundle, String str) {
        super.a(bundle, str);
        e((int) R.xml.camera_setting_slogan_preferences);
        ax();
        ay();
    }

    public String at() {
        c o = o();
        return o != null ? o.getTitle().toString() : "";
    }

    /* access modifiers changed from: protected */
    public void au() {
    }

    /* access modifiers changed from: protected */
    public void av() {
    }

    /* access modifiers changed from: protected */
    public void aw() {
    }

    /* access modifiers changed from: protected */
    public void c(Bundle bundle) {
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String str;
        if (preference == null) {
            return false;
        }
        if (preference instanceof ColorEditTextPreference) {
            b(String.valueOf(obj));
            super.b(preference, TextUtils.isEmpty(String.valueOf(obj)) ? "0" : MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        }
        CameraSwitchPreference cameraSwitchPreference = this.h;
        if (cameraSwitchPreference != null && preference == cameraSwitchPreference) {
            if (!(obj instanceof Boolean) || !((Boolean) obj).booleanValue()) {
                this.af.a(false);
                str = "model_off";
            } else {
                this.af.a(true);
                b(this.e.getString("pref_slogan_owner_key", ""));
                str = "model_on";
            }
            super.b(preference, str);
        }
        CameraSwitchPreference cameraSwitchPreference2 = this.ae;
        if (cameraSwitchPreference2 != null && preference == cameraSwitchPreference2) {
            super.b(preference, (!(obj instanceof Boolean) || !((Boolean) obj).booleanValue()) ? "time_off" : "time_on");
        }
        CameraSwitchPreference cameraSwitchPreference3 = this.i;
        if (cameraSwitchPreference3 != null && preference == cameraSwitchPreference3) {
            super.b(preference, (!(obj instanceof Boolean) || !((Boolean) obj).booleanValue()) ? "location_off" : "location_on");
        }
        if (preference != null && (preference instanceof CameraSwitchPreference)) {
            ((CameraSwitchPreference) preference).onPreferenceChange(preference, obj);
        }
        return true;
    }

    public boolean onPreferenceClick(Preference preference) {
        if (!(preference instanceof ColorEditTextPreference)) {
            return false;
        }
        a("pref_camera_slogan_key", (Object) "author");
        return false;
    }
}
