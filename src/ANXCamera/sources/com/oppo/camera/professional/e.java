package com.oppo.camera.professional;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.DngCreator;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Size;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.a.a.f;
import com.a.a.g;
import com.a.a.h;
import com.a.a.j;
import com.color.compat.os.SystemPropertiesNative;
import com.oppo.camera.Ipa.ImageProcessService;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.d;
import com.oppo.camera.e.f;
import com.oppo.camera.professional.ListProfessionalModeBar;
import com.oppo.camera.professional.c;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.menu.levelcontrol.b;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.v;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ProfessionalCapMode */
public class e extends com.oppo.camera.d.a implements View.OnClickListener, ListProfessionalModeBar.ModeBarStateListener, ListProfessionalModeBar.OnItemClickListener {
    /* access modifiers changed from: private */
    public boolean W = false;
    /* access modifiers changed from: private */
    public boolean X = false;
    private boolean Y = false;
    private boolean Z = false;
    private boolean aa = true;
    private boolean ab = false;
    private boolean ac = false;
    private Thread ad = null;
    /* access modifiers changed from: private */
    public ListProfessionalModeBar ae = null;
    /* access modifiers changed from: private */
    public c af = null;
    private Handler ag = null;
    /* access modifiers changed from: private */
    public a ah = null;
    private Image ai = null;
    private TotalCaptureResult aj = null;
    /* access modifiers changed from: private */
    public b ak = null;
    private String[] al = {"ALGO_SUPERPHOTO"};
    /* access modifiers changed from: private */
    public boolean am = true;
    /* access modifiers changed from: private */
    public c.a an = new c.a() {
        public void a(int i, String str, boolean z) {
            e.this.a(i, str, z);
        }
    };

    /* compiled from: ProfessionalCapMode */
    private class a extends RelativeLayout {

        /* renamed from: b  reason: collision with root package name */
        private boolean f2351b = true;

        public a(Context context) {
            super(context);
        }

        public void a(boolean z) {
            this.f2351b = z;
        }

        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (!e.this.t || !this.f2351b || e.this.L == null || e.this.X) {
                if (!this.f2351b) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.setAction(3);
                    super.dispatchTouchEvent(obtain);
                }
                return false;
            } else if (!e.this.L.s()) {
                return super.dispatchTouchEvent(motionEvent);
            } else {
                MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                obtain2.setAction(3);
                super.dispatchTouchEvent(obtain2);
                return false;
            }
        }
    }

    public e(Activity activity, com.oppo.camera.d.b bVar, com.oppo.camera.ui.c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
    }

    private int a(float f, ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return -1;
        }
        float abs = Math.abs(Float.valueOf(arrayList.get(0)).floatValue() - f);
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            float floatValue = Float.valueOf(arrayList.get(i2)).floatValue() - f;
            if (Math.abs(floatValue) < abs) {
                abs = Math.abs(floatValue);
                i = i2;
            }
        }
        return i;
    }

    private int a(int i, ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return -1;
        }
        int abs = Math.abs(Integer.valueOf(arrayList.get(0)).intValue() - i);
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            int intValue = Integer.valueOf(arrayList.get(i3)).intValue() - i;
            if (Math.abs(intValue) < abs) {
                abs = Math.abs(intValue);
                i2 = i3;
            }
        }
        return i2;
    }

    private int a(long j, ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return -1;
        }
        long abs = Math.abs(Long.valueOf(arrayList.get(0)).longValue() - j);
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            long longValue = Long.valueOf(arrayList.get(i2)).longValue() - j;
            if (Math.abs(longValue) < abs) {
                abs = Math.abs(longValue);
                i = i2;
            }
        }
        return i;
    }

    /* access modifiers changed from: private */
    public void a(int i, String str, boolean z) {
        MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.N);
        menuClickMsgData.buildEvent(true);
        if (i == 0) {
            menuClickMsgData.mFuncKeyId = 28;
            menuClickMsgData.mItem = MenuClickMsgData.KEY_PROFESSION_ISO_VALUE;
        } else if (i == 1) {
            menuClickMsgData.mFuncKeyId = 27;
            menuClickMsgData.mItem = MenuClickMsgData.KEY_PROFESSION_EXPOSURE_TIME;
        } else if (i == 2) {
            menuClickMsgData.mFuncKeyId = 13;
            menuClickMsgData.mItem = MenuClickMsgData.KEY_PROFESSION_WHITE_BALANCE;
        } else if (i == 3) {
            menuClickMsgData.mFuncKeyId = 14;
            menuClickMsgData.mItem = MenuClickMsgData.KEY_PROFESSION_FOCUS_VALUE;
        } else if (i == 4) {
            menuClickMsgData.mFuncKeyId = 15;
            menuClickMsgData.mItem = MenuClickMsgData.KEY_PROFESSION_EXPOSURE_COMPENSATION;
        }
        menuClickMsgData.mCaptureMode = a();
        menuClickMsgData.mCameraId = String.valueOf(this.j);
        menuClickMsgData.mOrientation = this.g;
        menuClickMsgData.mItemValue = str;
        menuClickMsgData.report();
    }

    private void a(ListProfessionalModeBar listProfessionalModeBar, int i, ListModeBarAdapter listModeBarAdapter, ListProfessionalModeBar.OnItemClickListener onItemClickListener) {
        if (listProfessionalModeBar != null) {
            listProfessionalModeBar.setId(i);
            listProfessionalModeBar.setAdapter(listModeBarAdapter);
            listProfessionalModeBar.setOnItemClickListener(onItemClickListener);
        }
    }

    private void b(int i, boolean z) {
        MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.N);
        menuClickMsgData.buildEvent(false);
        int i2 = 2;
        if (i == 0) {
            menuClickMsgData.mFuncKeyId = 28;
        } else if (i == 1) {
            menuClickMsgData.mFuncKeyId = 27;
        } else if (i == 2) {
            menuClickMsgData.mFuncKeyId = 13;
        } else if (i == 3) {
            menuClickMsgData.mFuncKeyId = 14;
        } else if (i == 4) {
            menuClickMsgData.mFuncKeyId = 15;
        }
        if (z) {
            i2 = 1;
        }
        menuClickMsgData.mFuncKeyResult = i2;
        menuClickMsgData.mCaptureMode = a();
        menuClickMsgData.mCameraId = String.valueOf(this.j);
        menuClickMsgData.mOrientation = this.g;
        menuClickMsgData.report();
    }

    private void b(final String str, boolean z) {
        final Boolean valueOf = Boolean.valueOf(z);
        d.a("ProfessionalCapMode", "setFlashModeMenuEnable, exposureTime: " + str + ", mDisPlayFlashIcon: " + valueOf);
        if (!TextUtils.isEmpty(str)) {
            try {
                if (Integer.parseInt(str) == 0) {
                    if (this.M != null) {
                        this.M.b("pref_camera_flashmode_key", (String) null);
                        e(true, z);
                    }
                } else if (this.M != null) {
                    e(false, z);
                    this.M.a("pref_camera_flashmode_key", com.oppo.camera.c.a_);
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (this.N != null) {
                    this.N.runOnUiThread(new Runnable() {
                        public void run() {
                            if (Integer.parseInt(str) == 0) {
                                if (e.this.M != null) {
                                    e.this.e(true, valueOf.booleanValue());
                                    e.this.M.b("pref_camera_flashmode_key", (String) null);
                                }
                            } else if (e.this.M != null) {
                                e.this.e(false, valueOf.booleanValue());
                                e.this.M.a("pref_camera_flashmode_key", com.oppo.camera.c.a_);
                            }
                        }
                    });
                }
            }
        }
    }

    private void cH() {
        if (this.ak == null) {
            this.ak = new b(this.N.getApplicationContext());
            this.ak.setEnabled(true);
            this.ak.setFocusable(false);
            this.ak.setClickable(true);
            this.ak.setNormalShape(true);
            this.ak.setVisibility(4);
            this.ak.setContentDescription(this.N.getResources().getString(R.string.camera_description_professional_auto));
            Drawable drawable = this.N.getResources().getDrawable(R.drawable.pro_btn_mode_change_light_a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            layoutParams.addRule(21);
            layoutParams.addRule(11);
            layoutParams.addRule(15);
            layoutParams.setMarginEnd(this.N.getResources().getDimensionPixelSize(R.dimen.control_button_margin_edge));
            this.ak.setLayoutParams(layoutParams);
            ((RelativeLayout) this.N.findViewById(R.id.control_panel_button_layout)).addView(this.ak);
            this.ak.a(this.L.k(), false);
            cI();
        }
    }

    private void cI() {
        f b2 = j.c().b();
        b2.a(g.b(10.0d, 20.0d));
        final f a2 = b2.a((h) new com.a.a.e() {
            public void a(f fVar) {
                float c = (float) fVar.c();
                e.this.ak.setScaleX(c);
                e.this.ak.setScaleY(c);
            }
        });
        final f a3 = b2.a((h) new com.a.a.e() {
            public void a(f fVar) {
                e.this.ak.setAlpha((float) fVar.c());
            }
        });
        a2.a(1.0d);
        a3.a(1.0d);
        this.ak.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    a2.b(0.8999999761581421d);
                    a3.b(0.6000000238418579d);
                } else if (action == 1 || action == 3) {
                    a2.b(1.0d);
                    a3.b(1.0d);
                    if (!e.this.q && !e.this.af.e() && e.this.ae.isSelected()) {
                        int selectedPosition = e.this.ae.getSelectedPosition();
                        View childAt = e.this.ae.getChildAt(selectedPosition);
                        if (e.this.am) {
                            e.this.af.a(false, selectedPosition);
                            e.this.n(false);
                            if (3 == selectedPosition) {
                                e.this.o(false);
                            }
                            e.this.an.a(selectedPosition, MenuClickMsgData.VALUE_PROFESSION_AUTO_OFF, false);
                            if (childAt != null) {
                                e.this.ae.getAdapter().a(childAt, 8, false);
                            }
                        } else {
                            e.this.af.a(true, selectedPosition);
                            e.this.n(true);
                            if (3 == selectedPosition) {
                                e.this.o(true);
                            }
                            e.this.an.a(selectedPosition, MenuClickMsgData.VALUE_PROFESSION_AUTO, true);
                            if (childAt != null) {
                                e.this.ae.getAdapter().a(childAt, 0, true);
                            }
                        }
                    }
                }
                return false;
            }
        });
    }

    /* access modifiers changed from: private */
    public String cJ() {
        return this.O.getString("pref_professional_exposure_time_key", this.N.getResources().getString(R.string.camera_exposure_time_default_value));
    }

    private void cK() {
        if (this.K != null) {
            if (this.W) {
                this.K.a(Long.parseLong(this.N.getResources().getString(R.string.camera_exposure_time_default_value)));
                this.K.t(1);
            } else {
                String a2 = this.af.a(2);
                if (this.O.getString("pref_professional_whitebalance_key", a2).equals(a2)) {
                    cE();
                } else {
                    cD();
                }
                cF();
                l((String) null);
                this.K.t(0);
                x(5);
            }
            if (this.K.m() != 0) {
                x(4);
            }
            x(3);
        }
    }

    private void cL() {
        if (this.W) {
            p(false);
        }
        if (this.K != null) {
            this.K.k(0);
            this.K.t(0);
            l(this.N.getResources().getString(R.string.camera_iso_default_value));
            this.K.a(Long.valueOf(this.N.getResources().getString(R.string.camera_exposure_time_default_value)).longValue());
            cV();
            this.K.c(Integer.valueOf(this.N.getResources().getString(R.string.camera_exposure_compensation_default_value)).intValue());
            this.K.o();
            cT();
            cU();
            cM();
            this.af.b();
        }
    }

    private void cM() {
        this.af.scrollTo(0, 0);
        this.af.scrollTo(1, 0);
        this.af.scrollTo(2, 0);
        this.af.scrollTo(3, 0);
    }

    private void cN() {
        if (this.ae == null) {
            this.ae = new ListProfessionalModeBar(this.N, cC());
            this.ae.setModeBarStateListener(this);
            this.ae.setPanelInterface(this.af);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.N.getResources().getDimensionPixelSize(R.dimen.main_mode_bar_height));
            layoutParams.addRule(2, this.af.getId());
            layoutParams.addRule(14);
            this.ae.setLayoutParams(layoutParams);
            this.ae.setBackground(this.N.getResources().getDrawable(R.drawable.professionalmode_mode_bar_background));
            ListModeBarAdapter listModeBarAdapter = new ListModeBarAdapter(this.N, this.af.getMainModeBarData());
            listModeBarAdapter.a((d) this.af);
            a(this.ae, (int) R.id.main_bar_id, listModeBarAdapter, (ListProfessionalModeBar.OnItemClickListener) this);
            this.ah.addView(this.ae);
        }
    }

    private void cO() {
        if (this.af == null) {
            this.af = new c(this.N);
            this.af.setGravity(17);
            this.af.setId(View.generateViewId());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(com.oppo.camera.o.d.N(), this.N.getResources().getDimensionPixelSize(R.dimen.sub_mode_bar_height));
            layoutParams.addRule(14);
            layoutParams.addRule(12);
            this.ah.addView(this.af, layoutParams);
        }
    }

    private void cP() {
        this.ad = Thread.currentThread();
        d.a("ProfessionalCapMode", "addViewToRoot, mUiThread: " + this.ad);
        this.ab = false;
        cQ();
        cO();
        this.af.a(this.L, com.oppo.camera.e.a.a(this.j), this.ag);
        cN();
        this.af.setSettleListener(this.ae);
        this.af.setMotionListener(this.an);
        x(1);
    }

    private void cQ() {
        if (this.ah == null) {
            this.ah = new a(this.N);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, com.oppo.camera.o.d.N());
            layoutParams.addRule(12);
            layoutParams.addRule(14);
            if (this.L != null) {
                layoutParams.bottomMargin = this.M.g() - this.N.getResources().getDimensionPixelSize(R.dimen.sub_mode_bar_height);
            } else {
                layoutParams.bottomMargin = 0;
            }
            this.ah.setLayoutParams(layoutParams);
            this.ah.setVisibility(8);
            this.ah.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() {
                public void onWindowFocusChanged(boolean z) {
                    if (e.this.ae != null) {
                        d.a("ProfessionalCapMode", "onWindowFocusChanged, SelectedPosition: " + e.this.ae.getSelectedPosition() + ", hasFocus: " + z);
                        e.this.ae.a(e.this.ae.getSelectedPosition(), true);
                    }
                }
            });
        }
        this.M.a((View) this.ah, "professional", 1);
        a aVar = this.ah;
        if (aVar != null) {
            aVar.a(true);
        }
    }

    private void cR() {
        b bVar = this.ak;
        if (bVar != null) {
            bVar.setVisibility(4);
        }
        a aVar = this.ah;
        if (aVar != null) {
            aVar.a(false);
            ListProfessionalModeBar listProfessionalModeBar = this.ae;
            if (listProfessionalModeBar != null) {
                this.ah.removeView(listProfessionalModeBar);
                this.ae = null;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006d A[SYNTHETIC, Splitter:B:27:0x006d] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x007c  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0088 A[SYNTHETIC, Splitter:B:37:0x0088] */
    /* JADX WARNING: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    private boolean cS() {
        ByteArrayOutputStream byteArrayOutputStream;
        Image image;
        Image image2;
        if (this.ai == null || this.aj == null) {
            return false;
        }
        d.a("ProfessionalCapMode", "saveResultToDng");
        DngCreator dngCreator = new DngCreator(this.K.c().E(), this.aj);
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                dngCreator.writeImage(byteArrayOutputStream, this.ai);
                final byte[] byteArray = byteArrayOutputStream.toByteArray();
                final int format = this.ai.getFormat();
                this.ag.post(new Runnable() {
                    public void run() {
                        e.this.a(byteArray, 0, 0, com.oppo.camera.o.d.a(format), true, false);
                    }
                });
                Image image3 = this.ai;
                if (image3 != null) {
                    image3.close();
                    this.ai = null;
                }
                dngCreator.close();
                this.aj = null;
                try {
                    byteArrayOutputStream.close();
                    return true;
                } catch (IOException e) {
                    e.printStackTrace();
                    return true;
                }
            } catch (IOException e2) {
                e = e2;
                try {
                    e.printStackTrace();
                    image2 = this.ai;
                    if (image2 != null) {
                        image2.close();
                        this.ai = null;
                    }
                    dngCreator.close();
                    this.aj = null;
                    if (byteArrayOutputStream != null) {
                        return true;
                    }
                    byteArrayOutputStream.close();
                    return true;
                } catch (Throwable th) {
                    th = th;
                    image = this.ai;
                    if (image != null) {
                        image.close();
                        this.ai = null;
                    }
                    dngCreator.close();
                    this.aj = null;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e4) {
            e = e4;
            byteArrayOutputStream = null;
            e.printStackTrace();
            image2 = this.ai;
            if (image2 != null) {
            }
            dngCreator.close();
            this.aj = null;
            if (byteArrayOutputStream != null) {
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
            image = this.ai;
            if (image != null) {
            }
            dngCreator.close();
            this.aj = null;
            if (byteArrayOutputStream != null) {
            }
            throw th;
        }
    }

    private void cT() {
        ListProfessionalModeBar listProfessionalModeBar = this.ae;
        if (listProfessionalModeBar != null && this.af != null) {
            if (listProfessionalModeBar.getSelectedPosition() == 3) {
                n(true);
            }
            o(true);
            this.af.setAuto(3);
        }
    }

    private void cU() {
        if (this.ae != null) {
            c cVar = this.af;
            if (cVar != null) {
                cVar.setAuto(2);
            }
        }
    }

    private void cV() {
        if (this.ae != null) {
            c cVar = this.af;
            if (cVar != null) {
                cVar.setAuto(0);
                this.af.setAuto(1);
            }
        }
    }

    private void cW() {
        d.a("ProfessionalCapMode", "restoreFocusMode");
        if (this.K != null) {
            this.K.a(au(), com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
            this.K.c(com.oppo.camera.a.b());
            this.K.a((f.c) null);
        }
    }

    private void cX() {
        this.ae.setVisibility(8);
        this.ae.setItemPressed(false);
        this.af.setVisibility(4);
    }

    private void cY() {
        c cVar = this.af;
        if (cVar != null) {
            cVar.clearAnimation();
        }
    }

    private void cZ() {
        if (!com.oppo.camera.c.a_.equals(this.O.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value)))) {
            String string = this.O.getString("pref_professional_exposure_time_key", this.N.getResources().getString(R.string.camera_exposure_time_default_value));
            String string2 = this.O.getString("pref_professional_iso_key", this.N.getResources().getString(R.string.camera_iso_default_value));
            if (Long.parseLong(string) != -1) {
                this.af.setAuto(1);
                if (this.ae.isSelected()) {
                    View childAt = this.ae.getChildAt(1);
                    if (1 == this.ae.getSelectedPosition()) {
                        this.ae.getAdapter().a(childAt, 0, true);
                    } else {
                        this.ae.getAdapter().a(childAt, 0, false);
                    }
                }
            }
            if (!this.N.getResources().getString(R.string.camera_exposure_time_default_value).equals(string2)) {
                this.af.setAuto(0);
                if (this.ae.isSelected()) {
                    View childAt2 = this.ae.getChildAt(0);
                    if (this.ae.getSelectedPosition() == 0) {
                        this.ae.getAdapter().a(childAt2, 0, true);
                    } else {
                        this.ae.getAdapter().a(childAt2, 0, false);
                    }
                }
            }
        }
    }

    private void da() {
        d.a("ProfessionalCapMode", "updateHighResolutionMode");
        this.W = "on".equals(this.O.getString("pref_high_resolution_key", this.N.getResources().getString(R.string.camera_high_resolution_default_value)));
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c(1);
        cVar.a("button_color_inside_none");
        this.K.h(at());
        this.K.t(this.W ? 1 : 0);
        if (this.W) {
            db();
            dc();
            this.af.setAuto(0);
            this.af.setAuto(1);
            this.af.setAuto(2);
            this.af.setAuto(3);
            c cVar2 = this.af;
            cVar2.a(4, "pref_professional_exposure_compensation_key", cVar2.b(4).indexOf(this.af.a(4)));
            x(1);
            x(6);
            this.M.a(cVar);
            if (this.K.m() == 0) {
                this.K.a(au(), com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
                this.K.c(com.oppo.camera.a.b());
                this.K.a((f.c) null);
            }
            if (1 == this.K.m() || 4 == this.K.m()) {
                cT();
            }
            this.M.a(R.string.camera_toast_high_resolution_on, -1, true, false, false);
            return;
        }
        this.M.a(R.string.camera_toast_high_resolution_off, -1, true, false, false);
        x(1);
        this.M.a(cVar);
    }

    private void db() {
        if (!com.oppo.camera.c.a_.equals(this.O.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value)))) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_camera_flashmode_key", com.oppo.camera.c.a_);
            edit.apply();
            this.M.d("pref_camera_flashmode_key");
        }
    }

    private void dc() {
        if (!com.oppo.camera.c.a_.equals(this.O.getString("pref_raw_key", com.oppo.camera.c.a_))) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_raw_key", com.oppo.camera.c.a_);
            edit.apply();
        }
    }

    /* access modifiers changed from: private */
    public boolean dd() {
        return this.ae.isSelected() && this.ae.getSelectedPosition() != 4 && !this.W;
    }

    private void e(MotionEvent motionEvent) {
        Rect rect = new Rect();
        this.M.e().getHitRect(rect);
        if (rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
            if (1 == au() || 4 == au()) {
                cT();
                a_(3);
            }
        }
    }

    /* access modifiers changed from: private */
    public void e(boolean z, boolean z2) {
        if (z2) {
            d.a("ProfessionalCapMode", "showOrHideFlashIcon, enable: " + z + ", isOpenFlash: " + bx());
            if (z) {
                bD();
            } else {
                this.M.a(false, true, false);
            }
        }
    }

    private boolean f(MotionEvent motionEvent) {
        Rect rect = new Rect();
        this.M.e().getHitRect(rect);
        return rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
    }

    /* access modifiers changed from: private */
    public void n(boolean z) {
        b bVar = this.ak;
        if (bVar == null) {
            return;
        }
        if (z) {
            bVar.a(true, (String) null, this.N.getResources().getDrawable(R.drawable.pro_btn_mode_change_light_a));
            this.am = true;
            return;
        }
        bVar.a(false, (String) null, this.N.getResources().getDrawable(R.drawable.pro_btn_mode_change_a));
        this.am = false;
    }

    /* access modifiers changed from: private */
    public boolean n(String str) {
        return str != null && Long.valueOf(str).longValue() >= 1000000000;
    }

    /* access modifiers changed from: private */
    public void o(boolean z) {
        ListProfessionalModeBar listProfessionalModeBar = this.ae;
        if (listProfessionalModeBar != null && listProfessionalModeBar.getAdapter() != null) {
            c cVar = this.af;
            if (cVar != null) {
                cVar.a(z);
                this.ae.getAdapter().a((List<? extends Map<String, ?>>) this.af.getMainModeBarData());
                this.ae.b(3);
            }
        }
    }

    private void p(boolean z) {
        d.a("ProfessionalCapMode", "turnOffHighResolution");
        boolean z2 = true;
        if (z) {
            z2 = true ^ com.oppo.camera.c.a_.equals(this.O.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value)));
        }
        if (this.W && z2) {
            this.M.b("pref_high_resolution_key", com.oppo.camera.c.a_);
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_high_resolution_key", com.oppo.camera.c.a_);
            edit.apply();
        }
    }

    /* access modifiers changed from: private */
    public void y(int i) {
        d.a("ProfessionalCapMode", "setCameraMenuControlViewVisibility, visibility: " + i);
        if (this.M != null) {
            this.M.h(i);
            this.M.f(i);
            this.M.d(i);
        }
    }

    public void C() {
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c(10, "button_color_inside_none");
        cVar.b(0);
        this.M.a(cVar);
    }

    public void J() {
        d.a("ProfessionalCapMode", "closeImageReader");
        Image image = this.ai;
        if (image != null) {
            image.close();
            this.ai = null;
        }
        this.aj = null;
        this.aa = true;
    }

    public int K() {
        return this.W ? super.K() : this.N.getResources().getDimensionPixelSize(R.dimen.professional_zoom_offset_value);
    }

    public boolean P() {
        d.c("ProfessionalCapMode", "onBackPressed, mbInCapturing: " + this.q);
        super.P();
        if (!this.ae.isSelected()) {
            return false;
        }
        com.oppo.camera.o.d.a((View) this.ak, 4, (Animation.AnimationListener) null, 300);
        this.M.a(0, true);
        this.af.c();
        this.ae.a();
        this.K.q();
        return true;
    }

    public void X() {
        d.b("ProfessionalCapMode", "onAfterStartPreview");
        a aVar = this.ah;
        if (aVar != null) {
            aVar.a(true);
        }
        SystemPropertiesNative.set("oppo.cam.slow_shutter", this.W ? DebugUtil.DEBUG_DISABLE : DebugUtil.DEBUG_ENABLE);
        super.X();
    }

    public boolean Z() {
        d.a("ProfessionalCapMode", "onAfterSnapping");
        if (at() || !this.L.g() || Long.parseLong(cJ()) < 1000000000) {
            d.a("ProfessionalCapMode", "onAfterSnapping is ZSL mode, do nothing");
        } else {
            this.L.a(1);
        }
        if (n(cJ())) {
            this.M.a(true, false);
            com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
            if (this.M.h() == 9) {
                cVar.a(3);
                cVar.a("button_color_inside_none");
            } else {
                cVar.a(7);
                cVar.a("button_color_inside_none");
            }
            this.M.a(cVar);
        }
        d.a("ProfessionalCapMode", "onAfterSnapping X");
        return true;
    }

    public String a() {
        return "professional";
    }

    public List<String> a(String str, int i) {
        if ("pref_camera_timer_shutter_key".equals(str)) {
            List<String> b2 = b(str, i);
            ArrayList arrayList = new ArrayList();
            if (b2 != null) {
                for (String add : b2) {
                    arrayList.add(add);
                }
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } else if (!"pref_camera_photo_ratio_key".equals(str)) {
            return super.a(str, i);
        } else {
            List<String> supportedList = CameraConfig.getSupportedList("pref_camera_photo_ratio_key", i);
            ArrayList arrayList2 = new ArrayList();
            if (supportedList != null && supportedList.contains("standard")) {
                arrayList2.add("standard");
            }
            if (arrayList2.size() > 0) {
                return arrayList2;
            }
            return null;
        }
    }

    public void a(int i, Message message) {
        d.a("ProfessionalCapMode", "choiceUiMsg, msgId: " + i + ", mbOnDeInitCameraMode: " + this.ac);
        switch (i) {
            case 1:
                if (!this.ac) {
                    if (this.ae.isSelected()) {
                        int selectedPosition = this.ae.getSelectedPosition();
                        this.ae.a(selectedPosition, true);
                        View childAt = this.ae.getChildAt(selectedPosition);
                        if (childAt != null && this.af.g(selectedPosition) && this.ak.getVisibility() == 0) {
                            this.ae.getAdapter().a(childAt, 0, true);
                        }
                    }
                    this.af.a();
                    if (this.W) {
                        this.M.a(0, true);
                        this.ae.setVisibility(8);
                        this.af.setVisibility(8);
                        this.ak.setVisibility(8);
                    } else {
                        if (this.ae.isSelected()) {
                            this.M.a(8, true);
                        } else {
                            this.M.a(0, true);
                        }
                        this.ag.postDelayed(new Runnable() {
                            public void run() {
                                e.this.ae.setVisibility(0);
                            }
                        }, 50);
                        this.af.setVisibility(0);
                        if (dd()) {
                            this.ak.setVisibility(0);
                        } else {
                            this.ak.setVisibility(8);
                        }
                    }
                    this.M.A();
                    return;
                }
                return;
            case 2:
                Float valueOf = Float.valueOf(0.0f);
                if (message != null) {
                    valueOf = (Float) message.obj;
                }
                this.L.M();
                if (this.K != null) {
                    if (this.L.p()) {
                        this.L.a(false, false);
                    }
                    this.K.a(valueOf.floatValue());
                    return;
                }
                return;
            case 3:
                this.af.h(2);
                this.af.h(0);
                this.af.h(1);
                this.af.h(4);
                this.af.h(3);
                a_(3);
                return;
            case 4:
                cT();
                return;
            case 5:
                cG();
                return;
            case 6:
                int a2 = a(Integer.valueOf(this.O.getString("pref_professional_exposure_compensation_key", this.N.getResources().getString(R.string.camera_exposure_compensation_default_value))).intValue(), this.af.b(4));
                this.af.scrollTo(4, a2);
                this.af.b(4, a2);
                return;
            default:
                return;
        }
    }

    public void a(int i, boolean z) {
        super.a(i, z);
        int i2 = 0;
        if (i == 3) {
            this.ah.a((!z || !this.q) ? z : false);
            if (!z) {
                i2 = 8;
            }
            com.oppo.camera.o.d.a((View) this.ah, i2, (Animation.AnimationListener) null, 300);
            if (dd()) {
                com.oppo.camera.o.d.a((View) this.ak, i2, (Animation.AnimationListener) null, 300);
            }
        } else if (i == 5) {
            if (z) {
                ListProfessionalModeBar listProfessionalModeBar = this.ae;
                if (listProfessionalModeBar != null) {
                    listProfessionalModeBar.setVisibility(0);
                }
            } else if (this.ae != null) {
                cX();
            }
        }
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        d.a("ProfessionalCapMode", "onSharedPreferenceChanged, key: " + str);
        boolean z = false;
        if ("pref_professional_whitebalance_key".equals(str)) {
            if (!this.af.h(2) && this.ak != null) {
                n(false);
            }
            cD();
        } else if ("pref_professional_iso_key".equals(str)) {
            if (this.af.h(0) && this.ak != null) {
                z = true;
            }
            n(z);
            l((String) null);
        } else if ("pref_professional_exposure_compensation_key".equals(str)) {
            cF();
        } else if ("pref_professional_exposure_time_key".equals(str)) {
            if (this.ak != null) {
                if (!this.af.g(1)) {
                    n(false);
                } else if (this.af.g(0)) {
                    n(true);
                }
            }
            cG();
        } else {
            if ("pref_high_resolution_key".equals(str)) {
                da();
            } else if ("pref_professional_focus_mode_key".equals(str)) {
                this.af.h(3);
                if (!this.af.g(3)) {
                    m((String) null);
                    n(false);
                    o(false);
                } else {
                    if (4 != this.K.m()) {
                        this.K.a(4, com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
                        this.K.c(com.oppo.camera.a.b());
                        this.K.a((f.c) null);
                    }
                    if (4 == this.K.m() || 1 == this.K.m()) {
                        cT();
                    }
                }
            } else if ("pref_camera_flashmode_key".equals(str)) {
                if (!this.N.getString(R.string.camera_flash_mode_default_value).equals(sharedPreferences.getString("pref_camera_flashmode_key", this.N.getString(R.string.camera_flash_mode_default_value)))) {
                    cZ();
                }
                p(true);
            }
            super.a(sharedPreferences, str);
        }
    }

    public void a(TotalCaptureResult totalCaptureResult) {
        super.a(totalCaptureResult);
        if (this.t) {
            this.K.n();
            Integer num = (Integer) totalCaptureResult.get(CaptureResult.SENSOR_SENSITIVITY);
            Long l = (Long) totalCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
            Float f = (Float) totalCaptureResult.get(CaptureResult.LENS_FOCUS_DISTANCE);
            if (num != null && this.af.g(0)) {
                int a2 = a(num.intValue(), this.af.b(0));
                if (a2 > -1 && (!this.af.a(0, a2) || !this.ab)) {
                    d.b("ProfessionalCapMode", "onPreviewCaptureResult, iso: " + num);
                    LevelPanel.a("pref_professional_iso_key", this.af.c(0).get(a2));
                    this.af.scrollTo(0, a2);
                }
            }
            if (l != null && this.af.g(1)) {
                int a3 = a(l.longValue(), this.af.b(1));
                if (a3 > -1 && (!this.af.a(1, a3) || !this.ab)) {
                    d.b("ProfessionalCapMode", "onPreviewCaptureResult, exposureTime: " + l);
                    LevelPanel.a("pref_professional_exposure_time_key", this.af.c(1).get(a3));
                    this.af.scrollTo(1, a3);
                }
            }
            if (this.af.g(2)) {
                int a4 = a(this.T, this.af.b(2));
                if (a4 > -1 && (!this.af.a(2, a4) || !this.ab)) {
                    d.b("ProfessionalCapMode", "onPreviewCaptureResult, cct: " + this.T);
                    LevelPanel.a("pref_professional_whitebalance_key", this.af.c(2).get(a4));
                    this.af.scrollTo(2, a4);
                }
            }
            if (f != null && this.af.g(3)) {
                int a5 = a(f.floatValue(), this.af.b(3));
                if (a5 > -1 && (!this.af.a(3, a5) || !this.ab)) {
                    d.b("ProfessionalCapMode", "onPreviewCaptureResult, focusDistance: " + f);
                    LevelPanel.a("pref_professional_focus_mode_key", this.af.c(3).get(a5));
                    this.af.scrollTo(3, a5);
                }
            }
            this.ab = true;
        }
    }

    public void a(TotalCaptureResult totalCaptureResult, CaptureRequest captureRequest) {
        super.a(totalCaptureResult, captureRequest);
        d.a("ProfessionalCapMode", "onCaptureCompleted");
        if (d.a.CAPTURE == ((com.oppo.camera.e.d) totalCaptureResult.getRequest().getTag()).a() && cB()) {
            this.aj = totalCaptureResult;
            cS();
        }
    }

    public void a(ImageReader imageReader, boolean z) {
        com.oppo.camera.d.a("ProfessionalCapMode", "onRawImageReceived");
        Image image = this.ai;
        if (image != null) {
            image.close();
            this.ai = null;
        }
        this.ai = imageReader.acquireNextImage();
        cS();
    }

    public void a(View view, View view2, int i, long j) {
        if (this.L != null && !this.L.q()) {
            if (ListProfessionalModeBar.ModePressState.NO_PRESSED != this.ae.getModePressState() || !this.ae.isSelected()) {
                this.L.x();
                cY();
                com.oppo.camera.d.e("ProfessionalCapMode", "onItemClick, position: " + i + ", id: " + j);
                b(i, true);
                if (i == 4) {
                    this.ak.setVisibility(4);
                } else {
                    c(this.g);
                    this.ak.setVisibility(0);
                }
                this.M.a(4, true);
                this.af.f(i);
                if (!this.af.g(i) || this.ak.getVisibility() != 0) {
                    n(false);
                    this.ae.getAdapter().a(view2, 8, false);
                    return;
                }
                n(true);
                this.ae.getAdapter().a(view2, 0, true);
                return;
            }
            P();
            b(i, false);
        }
    }

    /* access modifiers changed from: protected */
    public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
        if (d.a.CAPTURE == dVar.a() && hashMap.containsKey("type_preview")) {
            Long valueOf = Long.valueOf(this.O.getString("pref_professional_exposure_time_key", this.N.getResources().getString(R.string.camera_exposure_time_default_value)));
            if (valueOf.longValue() >= 40000000) {
                com.oppo.camera.d.a("ProfessionalCapMode", "onRequestBuilderCreated, setSlowShutter, exposureTime: " + valueOf);
                builder.removeTarget(hashMap.get("type_preview"));
                builder.set(CaptureRequest.FLASH_MODE, 0);
                builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
                builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, valueOf);
            } else {
                com.oppo.camera.d.a("ProfessionalCapMode", "onRequestBuilderCreated, exposureTime not slow shutter");
            }
            if (hashMap.get("type_still_capture_raw") != null && cB()) {
                builder.addTarget(hashMap.get("type_still_capture_raw"));
                builder.set(CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE, 1);
            }
        }
        super.a(dVar, builder, hashMap);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        com.oppo.camera.d.a("ProfessionalCapMode", "onResume");
        if (this.O != null) {
            this.W = "on".equals(this.O.getString("pref_high_resolution_key", this.N.getResources().getString(R.string.camera_high_resolution_default_value)));
        }
        a aVar = this.ah;
        if (aVar != null) {
            aVar.setVisibility(0);
            if (dd()) {
                this.ak.setVisibility(0);
            }
            if (!this.ae.isSelected()) {
                this.M.a(0, true);
            } else {
                this.M.a(4, false);
            }
        }
        this.L.c(true);
        x(1);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2) {
        super.a(z, z2);
        if (z2) {
            if (!at() && this.L.g() && Long.parseLong(cJ()) >= 1000000000) {
                this.L.a(1);
            } else if (z2) {
                this.L.a(0);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr, boolean z) {
        com.oppo.camera.d.a("ProfessionalCapMode", "onAfterPictureTaken");
        if (this.aa || !cB()) {
            if (n(cJ())) {
                this.M.a(new com.oppo.camera.ui.control.c(11, "button_color_inside_none"));
                y(0);
                com.oppo.camera.o.d.a((View) this.ah, 0, (Animation.AnimationListener) null, 300);
                this.L.w();
                if (!this.ae.isSelected()) {
                    this.M.a(0, true);
                } else if (dd()) {
                    com.oppo.camera.o.d.a((View) this.ak, 0, (Animation.AnimationListener) null, 300);
                }
            }
            this.M.d(true, false);
            if (this.Y) {
                com.oppo.camera.o.d.a((View) this.ah, 0, (Animation.AnimationListener) null, 300);
                this.Y = false;
            }
            this.ah.a(true);
            return;
        }
        this.aa = true;
    }

    public boolean a(int i, MotionEvent motionEvent) {
        if ((this.L != null && this.L.q()) || !f(motionEvent)) {
            return false;
        }
        if (i == 1) {
            this.ae.b();
        } else if (i == 2) {
            this.ae.c();
        }
        return true;
    }

    public boolean a(String str) {
        if ("pref_camera_high_resolution_key".equals(str) || "pref_camera_photo_ratio_key".equals(str)) {
            return false;
        }
        return super.a(str);
    }

    public boolean a(String str, List<String> list) {
        return list != null && list.indexOf(str) >= 0;
    }

    public void aL() {
        this.ah.setEnabled(false);
        P();
    }

    public void aM() {
        if (this.L.q() || this.q) {
            this.Y = true;
        } else {
            this.ah.setEnabled(true);
        }
    }

    public void a_(int i) {
        ListProfessionalModeBar listProfessionalModeBar = this.ae;
        if (listProfessionalModeBar != null && listProfessionalModeBar.getAdapter() != null && this.af != null) {
            com.oppo.camera.d.a("ProfessionalCapMode", "onStateChange, index: " + i);
            this.ae.getAdapter().a((List<? extends Map<String, ?>>) this.af.getMainModeBarData());
            this.ae.b(i);
        }
    }

    public void a_(boolean z) {
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
        if (!this.W || !z) {
            cVar.a(11);
            cVar.a("button_color_inside_none");
        } else {
            cVar.a(8);
            cVar.a("button_color_inside_none");
            this.M.a(0, true);
        }
        this.M.a(cVar);
    }

    public boolean at() {
        this.W = "on".equals(this.O.getString("pref_high_resolution_key", this.N.getResources().getString(R.string.camera_high_resolution_default_value)));
        return this.W;
    }

    public int au() {
        return (!aB() || !ae()) ? super.au() : this.K.m();
    }

    public String av() {
        if (this.O == null) {
            return com.oppo.camera.c.a_;
        }
        String string = this.N.getResources().getString(R.string.camera_exposure_time_default_value);
        String string2 = this.O.getString("pref_professional_exposure_time_key", string);
        return (TextUtils.isEmpty(string2) || !string2.equals(string)) ? com.oppo.camera.c.a_ : super.av();
    }

    public int b() {
        return 32777;
    }

    public Size b(com.oppo.camera.e.h hVar) {
        return com.oppo.camera.o.d.b(hVar.a(256), 1.3333333333333333d);
    }

    public DcsMsgData b(DcsMsgData dcsMsgData) {
        CaptureMsgData captureMsgData = (dcsMsgData == null || !(dcsMsgData instanceof CaptureMsgData)) ? null : (CaptureMsgData) dcsMsgData;
        if (captureMsgData == null) {
            return null;
        }
        String d = this.af.d(2);
        String a2 = this.af.a(Integer.valueOf(this.af.d(4)).intValue(), this.K.c().o());
        String d2 = this.af.d(1);
        String d3 = this.af.d(0);
        String focusValue = this.af.getFocusValue();
        if (TextUtils.equals(d2, this.N.getString(R.string.camera_exposure_time_default_value))) {
            d2 = MenuClickMsgData.VALUE_PROFESSION_AUTO;
        }
        captureMsgData.mProfessionWbValue = d;
        captureMsgData.mProfessionEvValue = a2;
        captureMsgData.mProfessionExpValue = d2;
        captureMsgData.mProfessionISOValue = d3;
        captureMsgData.mProfessionFocusValue = focusValue;
        captureMsgData.mProfessionHighResolution = String.valueOf(this.W);
        captureMsgData.mCCT = String.valueOf(this.T);
        captureMsgData.mLux = this.U;
        return captureMsgData;
    }

    public DcsMsgData b(DcsMsgData dcsMsgData, v.a aVar) {
        CaptureMsgData captureMsgData;
        if (dcsMsgData == null || !(dcsMsgData instanceof CaptureMsgData)) {
            captureMsgData = null;
        } else {
            captureMsgData = (CaptureMsgData) dcsMsgData;
            Size a2 = v.a(com.oppo.camera.o.d.a(aVar.d));
            if (a2 != null) {
                captureMsgData.mWidth = String.valueOf(a2.getWidth());
                captureMsgData.mHeight = String.valueOf(a2.getHeight());
            }
        }
        return super.b((DcsMsgData) captureMsgData, aVar);
    }

    public void b(int i) {
        super.b(i);
        if (1 == au() || 4 == au()) {
            cT();
        }
    }

    /* access modifiers changed from: protected */
    public void b(byte[] bArr, boolean z) {
        com.oppo.camera.d.c("ProfessionalCapMode", "onBeforePictureTaken");
        if (this.W) {
            this.M.a(g(), false);
        }
    }

    public boolean b(MotionEvent motionEvent) {
        com.oppo.camera.d.a("ProfessionalCapMode", "onSingleTapUp");
        if (this.L.q()) {
            return true;
        }
        if (f(motionEvent) && this.ae.isSelected() && !this.L.q()) {
            P();
        }
        e(motionEvent);
        return false;
    }

    public boolean b(String str) {
        if ("pref_camera_flashmode_key".equals(str)) {
            return true;
        }
        return ("pref_switch_dual_camera_key".equals(str) || "pref_raw_key".equals(str) || "pref_high_resolution_key".equals(str) || "pref_switch_camera_key".equals(str)) ? d(str) : super.b(str);
    }

    public boolean bF() {
        String string = this.O.getString("pref_professional_exposure_time_key", this.N.getResources().getString(R.string.camera_exposure_time_default_value));
        return TextUtils.isEmpty(string) || Long.valueOf(string).longValue() >= 1000000000;
    }

    public boolean br() {
        return false;
    }

    public void c(int i) {
        b bVar = this.ak;
        if (bVar != null) {
            bVar.a(i, true);
        }
        if (this.g != i) {
            this.g = i;
        }
    }

    public boolean c() {
        return false;
    }

    public boolean c(MotionEvent motionEvent) {
        com.oppo.camera.d.a("ProfessionalCapMode", "onLongPress");
        e(motionEvent);
        return super.c(motionEvent);
    }

    public boolean cB() {
        return d("pref_raw_key") && "on".equals(this.O.getString("pref_raw_key", com.oppo.camera.c.a_));
    }

    public int cC() {
        return this.L.k();
    }

    public void cD() {
        String string = this.O.getString("pref_professional_whitebalance_key", this.N.getResources().getString(R.string.camera_whitebalance_default_value));
        if (a(string, (List<String>) this.af.b(2))) {
            try {
                this.K.h(Integer.parseInt(string));
            } catch (NumberFormatException unused) {
                this.K.o();
            }
        } else {
            this.K.o();
        }
        com.oppo.camera.d.a("ProfessionalCapMode", "setWhiteBalance, whiteBalance: " + string);
    }

    public void cE() {
        this.K.o();
    }

    public void cF() {
        try {
            int intValue = Integer.valueOf(this.O.getString("pref_professional_exposure_compensation_key", this.N.getResources().getString(R.string.camera_exposure_compensation_default_value))).intValue();
            this.K.c(intValue);
            com.oppo.camera.d.a("ProfessionalCapMode", "setExposureCompensation, evValue: " + intValue);
        } catch (Exception e) {
            com.oppo.camera.d.e("ProfessionalCapMode", "setExposureCompensation, e: " + e);
        }
    }

    public void cG() {
        String string = this.O.getString("pref_professional_exposure_time_key", this.N.getResources().getString(R.string.camera_exposure_time_default_value));
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c(1, "button_color_inside_none");
        final long longValue = Long.valueOf(this.N.getResources().getString(R.string.camera_exposure_time_default_value)).longValue();
        final long parseLong = Long.parseLong(string);
        if (parseLong != longValue) {
            db();
        }
        Handler i = this.K.i();
        AnonymousClass3 r3 = new Runnable() {
            public void run() {
                if (parseLong < 40000000) {
                    e.this.K.g(false);
                    if (com.oppo.camera.e.a.c(e.this.j)) {
                        e.this.K.a(longValue);
                        return;
                    }
                    com.oppo.camera.d.a("ProfessionalCapMode", "setExposureTime, back exposureTimeValue: " + parseLong);
                    e.this.K.a(parseLong);
                    return;
                }
                com.oppo.camera.d.a("ProfessionalCapMode", "setExposureTime, slow shutter");
                e.this.K.g(true);
                e.this.K.a(40000000);
            }
        };
        i.post(r3);
        if (!this.Z) {
            this.M.a(cVar);
        }
    }

    /* access modifiers changed from: protected */
    public void cs() {
        a aVar = this.ah;
        if (aVar != null) {
            aVar.setVisibility(4);
        }
    }

    /* access modifiers changed from: protected */
    public String ct() {
        return this.N.getString(R.string.camera_picture_size_standard);
    }

    public int cw() {
        return this.W ? 2 : 0;
    }

    /* access modifiers changed from: protected */
    public int cx() {
        if (this.O == null) {
            return -1;
        }
        String string = this.O.getString("pref_switch_camera_key", "camera_main");
        if ("camera_main".equals(string)) {
            return R.string.camera_switch_main;
        }
        if ("camera_ultra_wide".equals(string)) {
            return R.string.camera_switch_ultra_wide;
        }
        if ("camera_tele".equals(string)) {
            return R.string.camera_switch_tele;
        }
        return -1;
    }

    public Size d(com.oppo.camera.e.h hVar) {
        Size b2 = com.oppo.camera.o.d.b(hVar.a(32), 1.3333333333333333d);
        if (b2 == null) {
            return super.d(hVar);
        }
        com.oppo.camera.d.b("ProfessionalCapMode", "getRawSize, optimalSize: " + b2);
        return b2;
    }

    public boolean d(String str) {
        if ("pref_camera_gesture_shutter_key".equals(str) || "pref_manual_exposure_key".equals(str) || "pref_support_switch_camera".equals(str) || "pref_camera_tap_shutter_key".equals(str)) {
            return false;
        }
        if ("pref_switch_dual_camera_key".equals(str)) {
            if (this.D) {
                return false;
            }
            return !com.oppo.camera.e.a.c(this.j);
        } else if ("pref_support_post_view".equals(str)) {
            return false;
        } else {
            if ("pref_professional_exposure_time_key".equals(str) && this.O != null) {
                return !this.W && Long.valueOf(this.O.getString("pref_professional_exposure_time_key", this.N.getResources().getString(R.string.camera_exposure_time_default_value))).longValue() >= 1000000000;
            } else if ("pref_camera_flashmode_key".equals(str)) {
                return !com.oppo.camera.e.a.c(this.j);
            } else {
                if ("pref_expand_popbar_key".equals(str)) {
                    return false;
                }
                if ("pref_raw_key".equals(str)) {
                    return CameraConfig.getSupportSettingMenuKey("pref_raw_key");
                }
                if ("pref_camera_gradienter_key".equals(str)) {
                    return false;
                }
                if ("pref_headline_control_by_mode".equals(str)) {
                    ListProfessionalModeBar listProfessionalModeBar = this.ae;
                    if (listProfessionalModeBar != null) {
                        return listProfessionalModeBar.isSelected();
                    }
                }
                if ("pref_high_resolution_key".equals(str)) {
                    return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_HIGH_RESOLUTION);
                }
                if ("pref_support_ipa_process".equals(str)) {
                    return com.oppo.camera.o.d.w();
                }
                if ("pref_support_capture_preview".equals(str) && this.L != null && this.L.g() && !d(CameraFunction.POST_THUMBNAIL)) {
                    return true;
                }
                if (!CameraFunction.POST_THUMBNAIL.equals(str)) {
                    return "pref_switch_camera_key".equals(str) ? com.oppo.camera.e.a.g() : super.d(str);
                }
                if (this.L == null || !this.L.g()) {
                    return false;
                }
                c cVar = this.af;
                return cVar != null && !cVar.g(1);
            }
        }
    }

    public boolean f(String str) {
        return !"pref_camera_photo_ratio_key".equals(str);
    }

    /* access modifiers changed from: protected */
    public void h() {
        com.oppo.camera.d.a("ProfessionalCapMode", "onPause");
        this.M.i(false);
        a aVar = this.ah;
        if (aVar != null) {
            aVar.a(false);
        }
        this.Y = false;
        Handler handler = this.ag;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        c cVar = this.af;
        if (cVar != null) {
            cVar.f();
        }
        y(0);
        this.M.d(true, false);
        if (this.ae.getSelectedPosition() == 3) {
            n(true);
        }
        c cVar2 = this.af;
        if (cVar2 != null) {
            cVar2.setAuto(3);
        }
        cW();
    }

    /* access modifiers changed from: protected */
    public void i() {
    }

    /* access modifiers changed from: protected */
    public void j() {
        com.oppo.camera.d.a("ProfessionalCapMode", "onDestroy");
        if (this.W) {
            cL();
        }
        c cVar = this.af;
        if (cVar != null) {
            cVar.d();
        }
    }

    /* access modifiers changed from: protected */
    public void k() {
        com.oppo.camera.d.a("ProfessionalCapMode", "onInitCameraMode, Start");
        this.ac = false;
        cH();
        LevelPanel.a();
        this.W = "on".equals(this.O.getString("pref_high_resolution_key", this.N.getResources().getString(R.string.camera_high_resolution_default_value)));
        if (!this.W) {
            this.M.b("pref_high_resolution_key", com.oppo.camera.c.a_);
        }
        if (this.ag == null) {
            this.ag = new Handler() {
                public void handleMessage(Message message) {
                    e.this.a(message.what, message);
                }
            };
        }
        if (Long.valueOf(cJ()).longValue() >= 1000000000) {
            this.M.a(new com.oppo.camera.ui.control.c(1, "button_color_inside_none"));
        }
        this.M.a(this.N.getString(R.string.camera_description_common_shutter_button));
        cP();
        this.V.put(a(), this.al);
        c cVar = this.af;
        if (cVar != null) {
            cVar.setVisibility(0);
        }
        ListProfessionalModeBar listProfessionalModeBar = this.ae;
        if (listProfessionalModeBar != null) {
            listProfessionalModeBar.setVisibility(0);
        }
        this.M.A();
    }

    public boolean k(String str) {
        if ("type_still_capture_raw".equals(str)) {
            return cB();
        }
        if ("type_still_capture".equals(str)) {
            return false;
        }
        if ("type_still_capture_yuv_main".equals(str)) {
            return true;
        }
        return super.k(str);
    }

    /* access modifiers changed from: protected */
    public void l() {
        com.oppo.camera.d.c("ProfessionalCapMode", "onDeInitCameraMode");
        this.ac = true;
        Handler handler = this.ag;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        c cVar = this.af;
        if (cVar != null) {
            cVar.f();
        }
        cX();
        SystemPropertiesNative.set("oppo.cam.slow_shutter", DebugUtil.DEBUG_DISABLE);
        cL();
        cR();
        b("0", false);
    }

    public void l(String str) {
        if (str == null) {
            str = this.O.getString("pref_professional_iso_key", this.N.getResources().getString(R.string.camera_iso_default_value));
        }
        if (!this.O.getString("pref_professional_iso_key", this.N.getResources().getString(R.string.camera_iso_default_value)).equals(str)) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_professional_iso_key", this.af.a(0));
            edit.apply();
        }
        if (this.N.getResources().getString(R.string.camera_iso_default_value).equals(str)) {
            this.K.j(-1);
        } else {
            db();
            this.K.p();
            this.K.j(Integer.valueOf(str).intValue());
        }
        com.oppo.camera.d.a("ProfessionalCapMode", "setISOValue, iso: " + str);
    }

    /* access modifiers changed from: protected */
    public void m() {
        com.oppo.camera.d.a("ProfessionalCapMode", "onBeforePreview()");
        if (this.t) {
            cK();
        }
    }

    public void m(String str) {
        if (str == null) {
            str = this.O.getString("pref_professional_focus_mode_key", "0");
        }
        com.oppo.camera.d.a("ProfessionalCapMode", "setFocusValue, focusValue: " + str);
        this.ag.removeMessages(2);
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.obj = Float.valueOf(Float.parseFloat(str));
        this.ag.sendMessage(obtain);
        if (this.W) {
            p(false);
        }
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        c cVar = this.af;
        if (cVar != null && cVar.e()) {
            com.oppo.camera.d.c("ProfessionalCapMode", "onBeforeSnapping, levelPanelScrolling");
            return false;
        } else if (this.M == null || !this.W || this.L.a(ImageProcessService.a.CHECK_QUEUE_TYPE_SUPER_PHOTO)) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    e eVar = e.this;
                    if (eVar.n(eVar.cJ())) {
                        if (e.this.M != null) {
                            e.this.M.h(4);
                            e.this.M.f(4);
                            e.this.M.a(4, true);
                            e.this.L.a((Animation.AnimationListener) null);
                        }
                        com.oppo.camera.o.d.a((View) e.this.ak, 4, (Animation.AnimationListener) null, 300);
                        com.oppo.camera.o.d.a((View) e.this.ah, 4, (Animation.AnimationListener) null, 300);
                        if (e.this.M != null) {
                            e.this.M.i((int) (Long.valueOf(e.this.cJ()).longValue() / 1000000));
                        }
                    }
                    e.this.ah.a(false);
                    if (e.this.W && e.this.M != null && e.this.M.h() != 2) {
                        e.this.M.a(new com.oppo.camera.ui.control.c(4, "button_color_inside_none"));
                    }
                }
            });
            if (cB()) {
                this.aa = false;
            }
            if (this.K == null) {
                return true;
            }
            this.K.q();
            return true;
        } else {
            com.oppo.camera.d.d("ProfessionalCapMode", "onBeforeSnapping, memory or storage is not enough");
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    e.this.H();
                }
            });
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        if (this.M.h() != 3) {
            return false;
        }
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                e eVar = e.this;
                if (eVar.n(eVar.cJ())) {
                    e.this.L.J();
                    if (e.this.dd()) {
                        e.this.ak.setVisibility(0);
                    }
                    if (!e.this.ae.isSelected()) {
                        e.this.M.a(0, true);
                    }
                }
                e.this.M.a(new com.oppo.camera.ui.control.c(11, "button_color_inside_none"));
                e.this.M.d(true, false);
                com.oppo.camera.o.d.a((View) e.this.ah, 0, (Animation.AnimationListener) null, 300);
                e.this.y(0);
            }
        });
        this.q = false;
        this.ah.a(true);
        v();
        this.M.a(true, false);
        return true;
    }

    public void onClick(View view) {
    }

    public void x(int i) {
        if (Thread.currentThread() != this.ad) {
            Handler handler = this.ag;
            if (handler != null) {
                handler.sendEmptyMessage(i);
                return;
            }
            return;
        }
        a(i, (Message) null);
    }
}
