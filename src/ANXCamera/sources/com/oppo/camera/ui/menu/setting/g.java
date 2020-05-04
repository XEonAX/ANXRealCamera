package com.oppo.camera.ui.menu.setting;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.h;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import androidx.preference.j;
import color.support.v7.app.b;
import com.android.ui.menu.CameraSwitchPreference;
import com.color.support.preference.ColorJumpPreference;
import com.color.support.preference.ColorListPreference;
import com.color.support.preference.ColorPreferenceCategory;
import com.oppo.camera.R;
import com.oppo.camera.c;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.i;
import com.oppo.camera.o.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.v;

/* compiled from: CameraSettingActivityFragment */
public class g extends b {
    private static final boolean e = d.b("oppo.multimedia.surround.record.support");
    private boolean aA = true;
    private boolean aB = true;
    private boolean aC = true;
    private boolean aD = true;
    private boolean aE = false;
    private boolean aF = true;
    private boolean aG = true;
    private boolean aH = true;
    private boolean aI = true;
    private boolean aJ = true;
    private boolean aK = true;
    private boolean aL = true;
    private boolean aM = true;
    private boolean aN = true;
    private boolean aO = true;
    private boolean aP = true;
    private boolean aQ = true;
    private boolean aR = false;
    private boolean aS = false;
    private boolean aT = false;
    private boolean aU = false;
    private BroadcastReceiver aV = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            com.oppo.camera.d.b("SettingActivityFragment", "onReceive(), action: " + action);
            if ("android.intent.action.MEDIA_MOUNTED".equals(action) || "android.intent.action.MEDIA_UNMOUNTED".equals(action)) {
                g.this.aI();
            }
        }
    };
    private CameraSwitchPreference ae = null;
    private CameraSwitchPreference af = null;
    private CameraSwitchPreference ag = null;
    private CameraSwitchPreference ah = null;
    private CameraSwitchPreference ai = null;
    private ColorPreferenceCategory aj = null;
    private CameraSwitchPreference ak = null;
    private CameraSwitchPreference al = null;
    private CameraSwitchPreference am = null;
    private CameraSwitchPreference an = null;
    private ColorJumpPreference ao = null;
    private CameraSwitchPreference ap = null;
    private ColorPreferenceCategory aq = null;
    private ColorJumpPreference ar = null;
    private CameraCustomListPreference as = null;
    private CameraCustomListPreference at = null;
    private Preference au = null;
    private ColorPreferenceCategory av = null;
    private int aw = 0;
    private String ax = null;
    private String ay = null;
    private String az = null;
    private i f = null;
    private PreferenceScreen g = null;
    private ColorPreferenceCategory h = null;
    private ColorListPreference i = null;

    private void a(SharedPreferences sharedPreferences, String str, String str2) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("pref_lasted_video_size", "");
        edit.putString("pref_lasted_video_fps", "");
        edit.putString("pref_video_size_key", str);
        edit.putString("pref_video_fps_key", str2);
        edit.apply();
    }

    private void a(ColorPreferenceCategory colorPreferenceCategory) {
        if (colorPreferenceCategory != null) {
            int i2 = 0;
            while (i2 < colorPreferenceCategory.c()) {
                Preference h2 = colorPreferenceCategory.h(i2);
                if (h2 != null && !CameraConfig.getSupportSettingMenuKey(h2.B())) {
                    colorPreferenceCategory.d(h2);
                    i2--;
                }
                i2++;
            }
        }
    }

    private void aA() {
        this.aq = (ColorPreferenceCategory) a((CharSequence) "pref_video_function");
        this.ar = (ColorJumpPreference) a((CharSequence) "pref_video_ratio_key");
        this.as = (CameraCustomListPreference) a((CharSequence) "pref_video_codec_key");
        this.at = (CameraCustomListPreference) a((CharSequence) "pref_sound_types_key");
        ColorJumpPreference colorJumpPreference = this.ar;
        if (colorJumpPreference != null) {
            colorJumpPreference.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
            this.ar.a((Preference.c) new Preference.c() {
                public final boolean onPreferenceClick(Preference preference) {
                    return g.this.onPreferenceClick(preference);
                }
            });
            if ((this.aN || this.aD || !this.aE) && this.aO) {
                this.ar.a(true);
            } else {
                this.ar.a(false);
            }
        }
        CameraCustomListPreference cameraCustomListPreference = this.as;
        if (cameraCustomListPreference != null) {
            cameraCustomListPreference.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
            this.as.a(this.aP);
        }
        if (e) {
            CameraCustomListPreference cameraCustomListPreference2 = this.at;
            if (cameraCustomListPreference2 != null) {
                cameraCustomListPreference2.a((Preference.b) new Preference.b() {
                    public final boolean onPreferenceChange(Preference preference, Object obj) {
                        return g.this.onPreferenceChange(preference, obj);
                    }
                });
            }
        }
    }

    private void aB() {
        ColorListPreference colorListPreference = this.i;
        if (colorListPreference != null) {
            String string = colorListPreference.K().getString(this.i.B(), a((int) R.string.camera_volume_key_function_default_value));
            this.i.c(c(this.i, string));
            this.i.a(string);
        }
        CameraSwitchPreference cameraSwitchPreference = this.ae;
        if (cameraSwitchPreference != null) {
            this.ae.e("on".equals(cameraSwitchPreference.K().getString(this.ae.B(), c.a_)));
        }
        CameraSwitchPreference cameraSwitchPreference2 = this.af;
        if (cameraSwitchPreference2 != null) {
            this.af.e("on".equals(cameraSwitchPreference2.K().getString(this.af.B(), c.a_)));
        }
        CameraSwitchPreference cameraSwitchPreference3 = this.ag;
        if (cameraSwitchPreference3 != null) {
            this.ag.e("on".equals(cameraSwitchPreference3.K().getString(this.ag.B(), c.a_)));
        }
        CameraSwitchPreference cameraSwitchPreference4 = this.ah;
        if (cameraSwitchPreference4 != null) {
            this.ah.e("on".equals(cameraSwitchPreference4.K().getString(this.ah.B(), c.a_)));
        }
        aI();
    }

    private void aC() {
        aG();
        aQ();
        aP();
        aN();
        aO();
        aJ();
        aM();
    }

    private void aD() {
        aL();
        aE();
        aH();
    }

    private void aE() {
        if (this.as != null) {
            String string = this.f.getString("pref_video_codec_key", "H264");
            this.as.c(c(this.as, string));
            this.as.a(string);
        }
    }

    private void aF() {
    }

    private void aG() {
        CameraSwitchPreference cameraSwitchPreference = this.ak;
        if (cameraSwitchPreference != null) {
            this.ak.e("on".equals(cameraSwitchPreference.K().getString(this.ak.B(), c.a_)));
            this.ak.a(this.aA && (((CameraSettingActivity) o()).n() || (this.aD && this.aE)));
        }
    }

    private void aH() {
        CameraCustomListPreference cameraCustomListPreference = this.at;
        if (cameraCustomListPreference != null) {
            cameraCustomListPreference.c(cameraCustomListPreference.p());
            if (this.d != 0 || !this.aQ) {
                this.at.a(false);
                this.at.c(a((int) R.string.camera_video_normal_sound));
                return;
            }
            this.at.a(true);
        }
    }

    /* access modifiers changed from: private */
    public void aI() {
        com.oppo.camera.d.b("SettingActivityFragment", "updateStoragePreference()");
        if (this.ai != null) {
            if (this.h != null) {
                if (!v.b(false)) {
                    this.h.d((Preference) this.ai);
                    return;
                } else if (this.h.c((CharSequence) "pref_camera_storage_key") == null) {
                    this.h.c((Preference) this.ai);
                }
            }
            if (!v.b(true) || v.g() > 8.0d) {
                this.ai.c((Object) false);
            } else {
                this.ai.c((Object) true);
            }
            if (c.a_.equals(this.ai.K().getString(this.ai.B(), c.a_))) {
                this.ai.e(false);
            } else {
                this.ai.e(true);
            }
        }
    }

    private void aJ() {
        if (this.ao != null) {
            boolean z = true;
            this.ao.a(this.aH && (((CameraSettingActivity) o()).n() || (this.aD && this.aE)));
            String a2 = a((int) R.string.camera_slogan_default_value);
            String string = this.f.getString("pref_slogan_device_key", a2);
            String string2 = this.f.getString("pref_slogan_time_key", a2);
            String string3 = this.f.getString("pref_slogan_location_key", a2);
            if (!"on".equals(string) && !"on".equals(string2) && !"on".equals(string3)) {
                z = false;
            }
            com.oppo.camera.d.b("SettingActivityFragment", "updateSloganOwnerPreference, isWatermarkOptionOpened: " + z);
            if (z) {
                this.ao.d(a((int) R.string.camera_setting_slogan_on));
            } else {
                this.ao.d(a((int) R.string.camera_setting_slogan_off));
            }
        }
    }

    private void aK() {
        com.oppo.camera.d.b("SettingActivityFragment", "addOrRemoveCameraPreference()");
        if (!(this.h == null || this.ai == null)) {
            if (!v.b(false)) {
                this.h.d((Preference) this.ai);
            } else if (this.h.c((CharSequence) "pref_camera_storage_key") == null) {
                this.h.c((Preference) this.ai);
            }
        }
        if (!e) {
            ColorPreferenceCategory colorPreferenceCategory = this.aq;
            if (colorPreferenceCategory != null) {
                CameraCustomListPreference cameraCustomListPreference = this.at;
                if (cameraCustomListPreference != null) {
                    colorPreferenceCategory.d((Preference) cameraCustomListPreference);
                }
            }
        }
        a(this.h);
        a(this.aj);
        a(this.aq);
        a(this.av);
    }

    private void aL() {
        i iVar = this.f;
        if (iVar != null) {
            String string = iVar.getString("pref_video_size_key", CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", this.d));
            String string2 = this.f.getString("pref_video_fps_key", a((int) R.string.camera_video_default_fps));
            if (!this.aO) {
                String str = this.az;
                if (str != null) {
                    string = str;
                }
                int i2 = this.aw;
                if (i2 != 0) {
                    string2 = String.valueOf(i2);
                }
            }
            String str2 = "/" + d(string2);
            this.ar.d(c(string) + str2);
            if ((this.aN || this.aD || !this.aE) && this.aO) {
                this.ar.a(true);
            } else {
                this.ar.a(false);
            }
        }
    }

    private void aM() {
    }

    private void aN() {
        CameraSwitchPreference cameraSwitchPreference = this.an;
        if (cameraSwitchPreference != null) {
            this.an.e("on".equals(cameraSwitchPreference.K().getString(this.an.B(), c.a_)));
            this.an.a(this.aF && (((CameraSettingActivity) o()).n() || (this.aD && this.aE)));
        }
    }

    private void aO() {
        CameraSwitchPreference cameraSwitchPreference = this.ah;
        if (cameraSwitchPreference != null) {
            this.ah.e("on".equals(cameraSwitchPreference.K().getString(this.ah.B(), c.a_)));
            this.ah.a(this.aG);
        }
    }

    private void aP() {
        CameraSwitchPreference cameraSwitchPreference = this.am;
        if (cameraSwitchPreference != null) {
            this.am.e("on".equals(cameraSwitchPreference.K().getString(this.am.B(), c.a_)));
            this.am.a(this.aC && (((CameraSettingActivity) o()).n() || (this.aD && this.aE)));
        }
    }

    private void aQ() {
        CameraSwitchPreference cameraSwitchPreference = this.al;
        if (cameraSwitchPreference != null) {
            this.al.e("on".equals(cameraSwitchPreference.K().getString(this.al.B(), c.a_)));
            this.al.a(this.aB && (((CameraSettingActivity) o()).n() || (this.aD && this.aE)));
        }
    }

    private void aR() {
        ColorPreferenceCategory colorPreferenceCategory = this.h;
        if (colorPreferenceCategory != null) {
            colorPreferenceCategory.d();
            this.h = null;
        }
        this.i = null;
        this.af = null;
        this.ag = null;
        this.ah = null;
        this.ai = null;
        ColorPreferenceCategory colorPreferenceCategory2 = this.aj;
        if (colorPreferenceCategory2 != null) {
            colorPreferenceCategory2.d();
            this.aj = null;
        }
        this.ak = null;
        this.al = null;
        this.am = null;
        this.an = null;
        this.ao = null;
        this.ap = null;
        ColorPreferenceCategory colorPreferenceCategory3 = this.aq;
        if (colorPreferenceCategory3 != null) {
            colorPreferenceCategory3.d();
            this.aq = null;
        }
        this.ar = null;
        this.as = null;
        this.at = null;
        PreferenceScreen preferenceScreen = this.g;
        if (preferenceScreen != null) {
            preferenceScreen.d();
            this.g = null;
        }
        i iVar = this.f;
        if (iVar != null) {
            iVar.a(as());
            this.f = null;
        }
        this.au = null;
        this.av = null;
    }

    /* access modifiers changed from: private */
    public void aS() {
        androidx.fragment.app.c o = o();
        if (o != null) {
            aT();
            aU();
            aV();
            j.a((Context) o, (int) R.xml.camera_setting_preferences, true);
            au();
            return;
        }
        com.oppo.camera.d.e("SettingActivityFragment", "restore Camera settings failed, due to activity is null!");
    }

    private void aT() {
        i.a a2 = this.f.edit();
        a2.remove("pref_volume_key_function_key");
        a2.remove("pref_camera_sound_key");
        a2.remove("pref_camera_fingerprint_shutter_key");
        a2.remove("pref_camera_recordlocation_key");
        a2.remove("pref_mirror_key");
        a2.remove("pref_camera_storage_key");
        a2.remove("pref_camera_tap_shutter_key");
        a2.remove("pref_camera_gesture_shutter_key");
        a2.remove("pref_camera_assistant_line_key");
        a2.remove("pref_ai_scene_key");
        a2.remove("pref_camera_slogan_key");
        a2.remove("pref_photo_slogan_key");
        a2.remove("pref_slogan_owner_key");
        a2.remove("pref_slogan_device_key");
        a2.remove("pref_slogan_time_key");
        a2.remove("pref_slogan_location_key");
        a2.remove("pref_raw_key");
        a2.remove("pref_video_codec_key");
        a2.remove("pref_sound_types_key");
        a2.apply();
    }

    private void aU() {
        a(this.f.b(o(), 0), CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", 0), a((int) R.string.camera_video_default_fps));
    }

    private void aV() {
        a(this.f.b(o(), 1), CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", 1), a((int) R.string.camera_video_default_fps));
    }

    private void ax() {
        this.f = new i(as());
        this.f.a(as(), this.d);
        this.g = (PreferenceScreen) a((CharSequence) "camera_setting_menu_root_preference");
        ay();
        az();
        aA();
        this.au = a((CharSequence) "pref_restore_key");
        Preference preference = this.au;
        if (preference != null) {
            preference.a((Preference.c) new Preference.c() {
                public final boolean onPreferenceClick(Preference preference) {
                    return g.this.onPreferenceClick(preference);
                }
            });
            this.au.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
        }
    }

    private void ay() {
        this.h = (ColorPreferenceCategory) a((CharSequence) "pref_common_function");
        this.i = (ColorListPreference) a((CharSequence) "pref_volume_key_function_key");
        this.ae = (CameraSwitchPreference) a((CharSequence) "pref_camera_fingerprint_shutter_key");
        this.af = (CameraSwitchPreference) a((CharSequence) "pref_camera_sound_key");
        this.ag = (CameraSwitchPreference) a((CharSequence) "pref_camera_recordlocation_key");
        this.ah = (CameraSwitchPreference) a((CharSequence) "pref_mirror_key");
        this.ai = (CameraSwitchPreference) a((CharSequence) "pref_camera_storage_key");
        this.i.a((Preference.b) new Preference.b() {
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                return g.this.onPreferenceChange(preference, obj);
            }
        });
        this.ae.a((Preference.b) new Preference.b() {
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                return g.this.onPreferenceChange(preference, obj);
            }
        });
        this.af.a((Preference.b) new Preference.b() {
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                return g.this.onPreferenceChange(preference, obj);
            }
        });
        this.ag.a((Preference.b) new Preference.b() {
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                return g.this.onPreferenceChange(preference, obj);
            }
        });
        this.ah.a((Preference.b) new Preference.b() {
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                return g.this.onPreferenceChange(preference, obj);
            }
        });
    }

    private void az() {
        this.aj = (ColorPreferenceCategory) a((CharSequence) "pref_capture_function");
        this.ak = (CameraSwitchPreference) a((CharSequence) "pref_camera_tap_shutter_key");
        this.al = (CameraSwitchPreference) a((CharSequence) "pref_camera_gesture_shutter_key");
        this.am = (CameraSwitchPreference) a((CharSequence) "pref_camera_assistant_line_key");
        this.an = (CameraSwitchPreference) a((CharSequence) "pref_ai_scene_key");
        this.ao = (ColorJumpPreference) a((CharSequence) "pref_photo_slogan_key");
        this.ap = (CameraSwitchPreference) a((CharSequence) "pref_raw_key");
        CameraSwitchPreference cameraSwitchPreference = this.ak;
        if (cameraSwitchPreference != null) {
            cameraSwitchPreference.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
        }
        CameraSwitchPreference cameraSwitchPreference2 = this.al;
        if (cameraSwitchPreference2 != null) {
            cameraSwitchPreference2.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
        }
        CameraSwitchPreference cameraSwitchPreference3 = this.an;
        if (cameraSwitchPreference3 != null) {
            cameraSwitchPreference3.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
        }
        CameraSwitchPreference cameraSwitchPreference4 = this.ap;
        if (cameraSwitchPreference4 != null) {
            cameraSwitchPreference4.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
            this.ap.a(this.aI);
        }
        ColorJumpPreference colorJumpPreference = this.ao;
        if (colorJumpPreference != null) {
            colorJumpPreference.a((Preference.c) new Preference.c() {
                public final boolean onPreferenceClick(Preference preference) {
                    return g.this.onPreferenceClick(preference);
                }
            });
        }
        CameraSwitchPreference cameraSwitchPreference5 = this.am;
        if (cameraSwitchPreference5 != null) {
            cameraSwitchPreference5.a((Preference.b) new Preference.b() {
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return g.this.onPreferenceChange(preference, obj);
                }
            });
        }
    }

    private void b(String str) {
        Intent intent = new Intent(str);
        Bundle bundle = new Bundle();
        bundle.putInt("pref_camera_id_key", this.d);
        bundle.putInt("camera_enter_type", this.c);
        bundle.putBoolean("camera_enter_form_lock_screen", this.aU);
        bundle.putBoolean("camera_support_video_ultra_wide_angel", this.aR);
        bundle.putString("pref_camera_mode_key", this.f2817b);
        intent.putExtra("camera_intent_data", bundle);
        a(intent);
    }

    private static CharSequence c(Preference preference, Object obj) {
        String obj2 = obj.toString();
        if (!(preference instanceof ListPreference)) {
            return obj2;
        }
        ListPreference listPreference = (ListPreference) preference;
        int b2 = listPreference.b(obj2);
        return b2 >= 0 ? listPreference.l()[b2] : "";
    }

    private String c(String str) {
        return "video_size_4kuhd".equals(str) ? a((int) R.string.camera_video_size_4kuhd) : "video_size_1080p".equals(str) ? a((int) R.string.camera_video_size_1080p) : "video_size_720p".equals(str) ? a((int) R.string.camera_video_size_720p) : a((int) R.string.camera_video_size_1080p);
    }

    private String d(String str) {
        return String.valueOf(60).equals(str) ? a((int) R.string.camera_video_fps_60) : String.valueOf(30).equals(str) ? a((int) R.string.camera_video_fps_30) : a((int) R.string.camera_video_fps_30);
    }

    public void a(Bundle bundle, String str) {
        super.a(bundle, str);
        com.oppo.camera.d.b("SettingActivityFragment", "onCreatePreferences start");
        e((int) R.xml.camera_setting_preferences);
        ax();
        aK();
    }

    public String at() {
        androidx.fragment.app.c o = o();
        return o != null ? o.getTitle().toString() : "";
    }

    /* access modifiers changed from: protected */
    public void au() {
        aB();
        aC();
        aD();
        aF();
    }

    /* access modifiers changed from: protected */
    public void av() {
        com.oppo.camera.d.b("SettingActivityFragment", "installIntentFilterIfNeeded");
        androidx.fragment.app.c o = o();
        if (!this.aT && o != null) {
            this.aT = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
            intentFilter.addDataScheme("file");
            o.getApplicationContext().registerReceiver(this.aV, intentFilter, "oppo.permission.OPPO_COMPONENT_SAFE", (Handler) null);
        }
    }

    /* access modifiers changed from: protected */
    public void aw() {
        androidx.fragment.app.c o = o();
        if (this.aT && o != null) {
            this.aT = false;
            o.getApplicationContext().unregisterReceiver(this.aV);
        }
    }

    public void b(Preference preference) {
        c cVar;
        if (preference instanceof CameraCustomListPreference) {
            cVar = c.b(preference.B());
        } else {
            super.b(preference);
            cVar = null;
        }
        h s = s();
        if (cVar != null && s != null) {
            cVar.a((Fragment) this, 0);
            cVar.a(s, "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    /* access modifiers changed from: protected */
    public void c(Bundle bundle) {
        com.oppo.camera.d.b("SettingActivityFragment", "parseActivityArguments start");
        if (bundle != null) {
            boolean z = true;
            this.aA = bundle.getBoolean("pref_camera_tap_shutter_key", true);
            this.aB = bundle.getBoolean("pref_camera_gesture_shutter_key", true);
            this.aC = bundle.getBoolean("pref_camera_assistant_line_key", true);
            this.ax = bundle.getString("pref_camera_photo_ratio_key", (String) null);
            this.aD = bundle.getBoolean("key_is_capture_mode", true);
            this.aE = !TextUtils.isEmpty(bundle.getString("pref_camera_mode_key", (String) null));
            this.aF = bundle.getBoolean("pref_ai_scene_key", true);
            this.aG = bundle.getBoolean("pref_mirror_key", true);
            this.aI = bundle.getBoolean("pref_raw_key", true);
            this.aJ = bundle.getBoolean("pref_camera_gradienter_key", true);
            this.aH = bundle.getBoolean("pref_camera_slogan_key", true);
            this.ay = bundle.getString("key_full_pic_size_type");
            this.aK = bundle.getBoolean("pref_time_lapse_key");
            this.aL = bundle.getBoolean("key_high_picture_size");
            this.aw = bundle.getInt("pref_video_fps_key", 0);
            this.aM = bundle.getBoolean("key_support_video_high_fps");
            if (this.c != 1) {
                z = false;
            }
            this.aN = z;
            this.aU = bundle.getBoolean("camera_enter_form_lock_screen", false);
            this.aO = bundle.getBoolean("pref_video_ratio_key");
            this.aR = bundle.getBoolean("key_support_video_ultra_wide_angel");
            this.aP = bundle.getBoolean("pref_video_codec_key");
            this.aQ = bundle.getBoolean("pref_sound_types_key");
            this.az = bundle.getString("pref_video_size_key", (String) null);
        }
    }

    public void h() {
        aR();
        super.h();
    }

    @SuppressLint({"ApplySharedPref"})
    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (preference == null) {
            return false;
        }
        super.b(preference, obj);
        if (preference instanceof ColorListPreference) {
            ((ColorListPreference) preference).c(c(preference, obj));
        }
        if (preference != this.at || !e) {
            return true;
        }
        CameraStatisticsUtil.onCommon(as(), CameraStatisticsUtil.EVENT_MENU_CLICK, CameraStatisticsUtil.format(CameraStatisticsUtil.VIDEO_RECORDER_SOUND, String.valueOf(obj)), false);
        return true;
    }

    public boolean onPreferenceClick(Preference preference) {
        com.oppo.camera.d.b("SettingActivityFragment", "pref_restore_key click");
        CameraSettingActivity cameraSettingActivity = (CameraSettingActivity) o();
        if (cameraSettingActivity == null) {
            return false;
        }
        if ("pref_restore_key".equals(preference.B())) {
            new b.a(cameraSettingActivity).d(1).e(a((int) R.string.camera_setting_restore_default), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    g.this.aS();
                    g.this.a("pref_restore_key", (Object) true);
                }
            }).b(17039360, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    g.this.a("pref_restore_key", (Object) false);
                }
            }).b().show();
        } else if ("pref_video_ratio_key".equals(preference.B())) {
            cameraSettingActivity.a(true);
            b("oppo.intent.action.APP_VIDEO_RATIO_SETTING");
        } else if ("pref_photo_slogan_key".equals(preference.B())) {
            cameraSettingActivity.a(true);
            b("oppo.intent.action.APP_SLOGAN_SETTING");
        }
        return false;
    }
}
