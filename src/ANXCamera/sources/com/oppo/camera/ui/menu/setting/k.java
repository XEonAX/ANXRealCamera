package com.oppo.camera.ui.menu.setting;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.i;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.FixedListView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CameraVideoRatioSettingFragment */
public class k extends Fragment {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public int f2829a = 0;
    /* access modifiers changed from: private */
    public List<String> ae = null;
    /* access modifiers changed from: private */
    public a af = null;
    /* access modifiers changed from: private */
    public boolean ag = false;
    /* access modifiers changed from: private */
    public boolean ah = false;
    /* access modifiers changed from: private */
    public boolean ai = false;
    /* access modifiers changed from: private */
    public boolean aj = false;
    /* access modifiers changed from: private */
    public boolean ak = false;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public int f2830b = 0;
    private int c = 0;
    private int d = 2;
    private String e = null;
    /* access modifiers changed from: private */
    public i f = null;
    private LinearLayout g = null;
    private FixedListView h = null;
    private View i = null;

    /* compiled from: CameraVideoRatioSettingFragment */
    private class a extends ArrayAdapter {
        a(Context context, int i, int i2, List list) {
            super(context, i, i2, list);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public boolean hasStableIds() {
            return true;
        }

        public boolean isEnabled(int i) {
            return super.isEnabled(i);
        }
    }

    /* access modifiers changed from: private */
    public String a(int i2, boolean z) {
        return i2 != 0 ? i2 != 1 ? a((int) R.string.camera_video_default_fps) : String.valueOf(30) : z ? String.valueOf(60) : String.valueOf(30);
    }

    private void a(String str, Object obj) {
        MenuClickMsgData menuClickMsgData = new MenuClickMsgData(o());
        menuClickMsgData.mCaptureMode = this.e;
        menuClickMsgData.mCameraEnterType = String.valueOf(this.d);
        menuClickMsgData.mCameraId = String.valueOf(this.c);
        menuClickMsgData.buildSettingMenuItem(str, obj);
        menuClickMsgData.report();
    }

    /* access modifiers changed from: private */
    public void a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        } else {
            sb.append(this.f.getString("pref_video_size_key", CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", this.c)));
        }
        sb.append("/");
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
        } else {
            sb.append(this.f.getString("pref_video_fps_key", String.valueOf(30)));
        }
        a("pref_video_ratio_key", (Object) sb.toString());
    }

    private void a(String str, boolean z) {
        int intValue = Integer.valueOf(str).intValue();
        if (intValue == 30) {
            this.f2830b = z ? 1 : 0;
        } else if (intValue != 60) {
            this.f2830b = z;
        } else {
            this.f2830b = 0;
        }
    }

    private void b(View view) {
        final FixedListView fixedListView = (FixedListView) view.findViewById(R.id.list_video_resolution);
        fixedListView.setNestedScrollingEnabled(true);
        ArrayList arrayList = new ArrayList();
        if (this.aj) {
            arrayList.add(a((int) R.string.camera_video_size_4kuhd));
            arrayList.add(a((int) R.string.camera_video_size_1080p));
            arrayList.add(a((int) R.string.camera_video_size_720p));
        } else {
            arrayList.add(a((int) R.string.camera_video_size_1080p));
            arrayList.add(a((int) R.string.camera_video_size_720p));
        }
        final FixedListView fixedListView2 = fixedListView;
        final AnonymousClass1 r0 = new a(o(), R.layout.oppo_preference_select_layout, R.id.pref_title, arrayList) {
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                CheckBox checkBox = (CheckBox) view2.findViewById(R.id.pref_checkbox);
                TextView textView = (TextView) view2.findViewById(R.id.pref_summary);
                if (k.this.aj && i == 0) {
                    if (k.this.ak) {
                        textView.setText(k.this.r().getString(R.string.camera_video_size_4kuhd_summary_realme));
                    } else {
                        textView.setText(k.this.r().getString(R.string.camera_video_size_4kuhd_tips_realme));
                    }
                    textView.setVisibility(0);
                }
                if (i == k.this.f2829a) {
                    FixedListView fixedListView = fixedListView2;
                    fixedListView.setItemChecked(fixedListView.getHeaderViewsCount() + i, true);
                    checkBox.setChecked(true);
                } else {
                    checkBox.setChecked(false);
                }
                if (!isEnabled(i)) {
                    ((TextView) view2.findViewById(R.id.pref_title)).setTextColor(k.this.r().getColor(R.color.setting_pref_text_disable_color));
                }
                return view2;
            }
        };
        fixedListView.setAdapter(r0);
        fixedListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                int unused = k.this.f2829a = i - fixedListView.getHeaderViewsCount();
                String b2 = k.this.d(i);
                String string = k.this.f.getString("pref_video_fps_key", k.this.a((int) R.string.camera_video_default_fps));
                i.a a2 = k.this.f.edit();
                a2.putString("pref_video_size_key", b2);
                a2.putString("pref_lasted_video_size", "");
                if (!String.valueOf(30).equals(string) && ((!k.this.ai && "video_size_4kuhd".equals(b2)) || ((!k.this.ah && "video_size_1080p".equals(b2)) || (!k.this.ag && "video_size_720p".equals(b2))))) {
                    a2.putString("pref_video_fps_key", String.valueOf(30));
                    string = String.valueOf(30);
                }
                a2.apply();
                r0.notifyDataSetChanged();
                k.this.b(b2);
                k.this.a(b2, string);
            }
        });
        fixedListView.setChoiceMode(1);
    }

    /* access modifiers changed from: private */
    public void b(String str) {
        c(str);
        a aVar = this.af;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    private void c(View view) {
        final FixedListView fixedListView = (FixedListView) view.findViewById(R.id.list_video_frame);
        fixedListView.setNestedScrollingEnabled(true);
        final FixedListView fixedListView2 = fixedListView;
        AnonymousClass3 r0 = new a(o(), R.layout.oppo_preference_select_layout, R.id.pref_title, this.ae) {
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                CheckBox checkBox = (CheckBox) view2.findViewById(R.id.pref_checkbox);
                TextView textView = (TextView) view2.findViewById(R.id.pref_summary);
                if ((k.this.ag || k.this.ah || k.this.ai) && k.this.ak && i == 0) {
                    textView.setText(k.this.r().getString(R.string.camera_video_fps_60_summary_realme));
                    textView.setVisibility(0);
                }
                if (i == k.this.f2830b) {
                    FixedListView fixedListView = fixedListView2;
                    fixedListView.setItemChecked(fixedListView.getHeaderViewsCount() + i, true);
                    checkBox.setChecked(true);
                } else {
                    checkBox.setChecked(false);
                }
                if (!isEnabled(i)) {
                    ((TextView) view2.findViewById(R.id.pref_title)).setTextColor(k.this.r().getColor(R.color.setting_pref_text_disable_color));
                }
                return view2;
            }
        };
        this.af = r0;
        fixedListView.setAdapter(this.af);
        fixedListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                int unused = k.this.f2830b = i - fixedListView.getHeaderViewsCount();
                k kVar = k.this;
                boolean z = true;
                if (kVar.ae.size() <= 1) {
                    z = false;
                }
                String a2 = kVar.a(i, z);
                i.a a3 = k.this.f.edit();
                a3.putString("pref_video_fps_key", a2);
                a3.putString("pref_lasted_video_fps", "");
                a3.apply();
                k.this.af.notifyDataSetChanged();
                k.this.a((String) null, a2);
            }
        });
        fixedListView.setChoiceMode(1);
    }

    private void c(String str) {
        boolean d2 = d(str);
        a(this.f.getString("pref_video_fps_key", a((int) R.string.camera_video_default_fps)), d2);
        i(d2);
    }

    /* access modifiers changed from: private */
    public String d(int i2) {
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", this.c) : "video_size_720p" : this.aj ? "video_size_1080p" : "video_size_720p" : this.aj ? "video_size_4kuhd" : "video_size_1080p";
    }

    private boolean d(String str) {
        if ("video_size_720p".equals(str)) {
            return this.ag;
        }
        if ("video_size_1080p".equals(str)) {
            return this.ah;
        }
        if ("video_size_4kuhd".equals(str)) {
            return this.ai;
        }
        return false;
    }

    private void e(String str) {
        if (str == null) {
            str = "video_size_1080p";
        }
        char c2 = 65535;
        int hashCode = str.hashCode();
        int i2 = 2;
        if (hashCode != -1756797675) {
            if (hashCode != 1368252031) {
                if (hashCode == 1372840608 && str.equals("video_size_4kuhd")) {
                    c2 = 0;
                }
            } else if (str.equals("video_size_1080p")) {
                c2 = 1;
            }
        } else if (str.equals("video_size_720p")) {
            c2 = 2;
        }
        if (c2 == 0) {
            this.f2829a = 0;
        } else if (c2 == 1) {
            this.f2829a = this.aj ? 1 : 0;
        } else if (c2 != 2) {
            this.f2829a = this.aj ? 1 : 0;
        } else {
            if (!this.aj) {
                i2 = 1;
            }
            this.f2829a = i2;
        }
    }

    private void i(boolean z) {
        List<String> list = this.ae;
        if (list == null) {
            this.ae = new ArrayList();
        } else {
            list.clear();
        }
        if (z) {
            this.ae.add(a((int) R.string.camera_video_fps_60));
            this.ae.add(a((int) R.string.camera_video_fps_30));
        } else {
            this.ae.add(a((int) R.string.camera_video_fps_30));
        }
        if (2 > this.ae.size()) {
            this.i.setVisibility(8);
            this.h.setVisibility(8);
            this.g.setVisibility(8);
            return;
        }
        this.g.setVisibility(0);
        this.h.setVisibility(0);
        this.i.setVisibility(0);
    }

    public void E() {
        super.E();
        this.g = null;
        this.i = null;
        this.h = null;
        this.f = null;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.video_resolution_main, viewGroup, false);
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        this.f = new i(o());
        if ("oppo.intent.action.APP_VIDEO_RATIO_SETTING".equals(o().getIntent().getAction())) {
            Bundle j = j();
            if (j != null) {
                this.c = j.getInt("pref_camera_id_key");
                this.e = j.getString("pref_camera_mode_key", (String) null);
                this.d = j.getInt("camera_enter_type");
                this.ak = j.getBoolean("camera_support_video_ultra_wide_angel", false);
            }
        }
        this.ag = !com.oppo.camera.e.a.c(this.c) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_720_60_FPS);
        this.ah = !com.oppo.camera.e.a.c(this.c) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_1080_60_FPS);
        this.ai = !com.oppo.camera.e.a.c(this.c) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_4K_60_FPS);
        List<String> supportedList = CameraConfig.getSupportedList("pref_video_size_key", this.c);
        if (supportedList != null) {
            for (String equals : supportedList) {
                if ("video_size_4kuhd".equals(equals)) {
                    this.aj = true;
                }
            }
        } else {
            this.aj = false;
        }
        d.b("VideoRatioSettingAct", "onCreate, mCameraId: " + this.c + ", mbSupport720pFps60: " + this.ag + ", mbSupport1080pFps60: " + this.ah + ", mbSupport4kFps60: " + this.ai + ", mbSupportVideoRatio4K: " + this.aj);
        this.f.a(o(), this.c);
    }

    public void a(View view, Bundle bundle) {
        super.a(view, bundle);
        this.g = (LinearLayout) A().findViewById(R.id.text_video_frame);
        this.h = (FixedListView) A().findViewById(R.id.list_video_frame);
        this.i = A().findViewById(R.id.view_line_second);
        String string = this.f.getString("pref_video_size_key", CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", this.c));
        e(string);
        b(view);
        c(string);
        c(view);
    }
}
