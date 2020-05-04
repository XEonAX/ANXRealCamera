package com.oppo.camera.d;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.CamcorderProfile;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Range;
import android.util.Size;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.animation.Animation;
import com.oppo.camera.R;
import com.oppo.camera.b;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.d;
import com.oppo.camera.e.f;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.sticker.data.StickerCategoryItem;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.ui.c;
import com.oppo.camera.sticker.ui.h;
import com.oppo.camera.sticker.ui.i;
import com.oppo.camera.sticker.ui.l;
import com.oppo.camera.ui.menu.levelcontrol.e;
import com.oppo.camera.ui.preview.a.g;
import com.oppo.camera.ui.preview.a.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: StickerMode */
public class k extends m {
    private static final int[] af = {15, 30, 30, 0, 30, 30, 30, 30};
    private g aA = new g() {
        public void a(e eVar) {
        }

        public void a(final ArrayList<h.a> arrayList, final int i, StickerItem stickerItem, final boolean z) {
            d.a("StickerMode", "updateAdapter, stickerItem: " + stickerItem + ", updateCategoryIndex: " + z + ", stickerCategoryIndex: " + i);
            if (k.this.ah != null && k.this.N != null) {
                k.this.ah.a(stickerItem, true);
                k.this.ah.a(stickerItem);
                k.this.N.runOnUiThread(new Runnable() {
                    public void run() {
                        k.this.ah.a((ArrayList<h.a>) arrayList, i, z);
                    }
                });
            }
        }
    };
    private i aB = new i() {
        public void a() {
            d.a("StickerMode", "afterEnterAnimator");
            k.this.M.e(true, true);
            CameraStatisticsUtil.onCommon(k.this.N, CameraStatisticsUtil.EVENT_MENU_CLICK, CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_MODE_CLICK_STICKER_MENU, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST), false);
        }

        public void a(String str) {
            k.this.b(CameraStatisticsUtil.STICKER_MENU_CATERGORY_FLING, str);
        }

        public void a(boolean z) {
            d.a("StickerMode", "beforeEnterAnimator");
            k.this.M.d(false, false);
            k.this.M.a(true, false);
            k.this.M.a(4, false);
            k.this.M.a(true, true, false, false);
            if (z) {
                k.this.M.f(true, true);
            } else {
                k.this.M.f(false, false);
            }
            if (k.this.L != null) {
                k.this.L.a((Animation.AnimationListener) null);
            }
            if (k.this.i("key_bubble_sticker")) {
                k.this.M.c(3, true);
            }
            k.this.p(false);
        }

        public boolean a(View view, StickerItem stickerItem, int i) {
            return k.this.a(view, stickerItem, i);
        }

        public boolean a(StickerItem stickerItem, int i) {
            return k.this.a(stickerItem, i);
        }

        public void b() {
            k.this.M.g(true, true);
            if (k.this.L != null && !k.this.M.m()) {
                k.this.L.w();
            }
            k.this.M.d(false, false);
        }

        public void b(String str) {
            k.this.b(CameraStatisticsUtil.STICKER_MENU_CATERGORY_CLICK, str);
        }

        public void b(boolean z) {
            if (z) {
                k.this.M.d(0);
            } else {
                k.this.M.g(true, true);
                if (k.this.L != null && !k.this.M.m()) {
                    k.this.L.w();
                    k.this.L.c(true);
                }
            }
            k.this.M.d(true, true);
        }

        public void c() {
            if (!k.this.aB() || k.this.bq()) {
                k.this.M.d(true, true);
            }
            if (k.this.L != null && !k.this.M.m()) {
                k.this.L.c(true);
            }
        }

        public void d() {
        }

        public StickerItem e() {
            if (k.this.P != null) {
                return k.this.P.i();
            }
            return null;
        }

        public void f() {
            if (k.this.ah != null) {
                StickerItem stickerItem = null;
                if (k.this.P != null) {
                    stickerItem = k.this.P.i();
                }
                if (stickerItem != null) {
                    com.oppo.camera.ui.preview.a.h b2 = com.oppo.camera.ui.preview.a.h.b((Context) k.this.N);
                    String stickerUUID = stickerItem.getStickerUUID();
                    boolean a2 = b2.a(stickerUUID);
                    if (k.this.P != null) {
                        if (a2) {
                            k.this.P.c();
                        } else {
                            k.this.P.b();
                        }
                    }
                    b2.a(stickerUUID, !a2);
                    k.this.ah.b(stickerUUID);
                    return;
                }
                d.e("StickerMode", "onMusicButtonClick, non selected stickerItem!");
            }
        }

        public boolean g() {
            if (k.this.L == null) {
                return false;
            }
            if (!k.this.L.s() && !k.this.L.v() && !k.this.L.u() && !k.this.M.n() && !k.this.q && k.this.bZ()) {
                return true;
            }
            d.e("StickerMode", "canItemClick, !mCameraInterface.isDoubleFinger: " + (!k.this.L.s()) + ", !mCameraInterface.getCaptureModeChangeState: " + (!k.this.L.v()) + ", !mCameraUIInterface.isAnimationRunning: " + (!k.this.M.n()) + ", isVideoRecordStopped: " + k.this.bZ() + ", !mbInCapturing: " + (!k.this.q) + ", !mCameraInterface.getSwitchingCameraState: " + (true ^ k.this.L.u()));
            return false;
        }
    };
    private ImageReader.OnImageAvailableListener aC = new ImageReader.OnImageAvailableListener() {
        public void onImageAvailable(ImageReader imageReader) {
            if (k.this.s || k.this.L.v()) {
                imageReader.acquireNextImage().close();
                return;
            }
            Image acquireNextImage = imageReader.acquireNextImage();
            byte[] bArr = new byte[acquireNextImage.getPlanes()[0].getBuffer().remaining()];
            acquireNextImage.getPlanes()[0].getBuffer().get(bArr);
            if (k.this.P != null) {
                k.this.P.a(bArr, imageReader.getWidth(), imageReader.getHeight());
            }
            if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_PREVIEW_DEPTH, DebugUtil.DEBUG_DISABLE)) {
                com.oppo.camera.o.d.a(bArr, DebugUtil.DUMP_DIR_PREVIEW_DEPTH, "depth_" + acquireNextImage.getTimestamp() + ".raw");
                d.a("StickerMode", "onImageAvailable, TYPE_DEPTH_PREVIEW, reader.size: " + imageReader.getWidth() + "x" + imageReader.getHeight() + ", format: " + imageReader.getImageFormat() + ", imageData.size: " + bArr.length + ", file: depth_" + acquireNextImage.getTimestamp() + ".raw");
            }
            acquireNextImage.close();
        }
    };
    private final Object ag = new Object();
    /* access modifiers changed from: private */
    public h ah = null;
    /* access modifiers changed from: private */
    public l ai = null;
    private com.oppo.camera.ui.preview.a.l aj = new a();
    private Float ak = null;
    private Float al = null;
    private Integer am = null;
    private Integer an = null;
    private Long ao = null;
    private ImageReader ap = null;
    private ImageReader aq = null;
    private b ar = null;
    private int as = 0;
    /* access modifiers changed from: private */
    public int at = 0;
    private String au = null;
    private HashMap<String, Long> av = null;
    private HashMap<String, Integer> aw = null;
    private c ax = null;
    private int ay = 0;
    private long az = 0;

    /* compiled from: StickerMode */
    private class a implements com.oppo.camera.ui.preview.a.l {
        private a() {
        }

        public void a() {
            k.this.p(true);
        }

        public void a(int i) {
            if (i == 0) {
                return;
            }
            if (i == 1) {
                k.this.p(false);
            } else if (i == 2) {
                if (k.this.L.G()) {
                    k.this.p(false);
                } else {
                    k.this.p(true);
                }
            }
        }

        public void a(StickerItem stickerItem) {
            d.b("StickerMode", "onStickerDownloadStarted, item: " + stickerItem.toString());
            k.this.ah.a(stickerItem.getCategoryId(), com.oppo.camera.ui.preview.a.h.b((Context) k.this.N).a().c(stickerItem.getStickerUUID()), stickerItem.getDownloadState(), stickerItem.getThumbnailFileUri(), k.this.s ^ true, stickerItem);
        }

        public void a(StickerItem stickerItem, int i) {
            k.this.ah.a(stickerItem.getCategoryId(), com.oppo.camera.ui.preview.a.h.b((Context) k.this.N).a().c(stickerItem.getStickerUUID()), 16, stickerItem.getThumbnailFileUri(), !k.this.s, stickerItem);
        }

        public void b(final StickerItem stickerItem) {
            if (!k.this.bY() && !k.this.L.G() && !k.this.aB()) {
                k.this.a(stickerItem);
                if (k.this.M != null) {
                    k.this.M.a().a((Runnable) new Runnable() {
                        public void run() {
                            k.this.c(stickerItem);
                        }
                    });
                }
            }
            k.this.p(false);
        }

        public void c(final StickerItem stickerItem) {
            k.this.N.runOnUiThread(new Runnable() {
                public void run() {
                    if (stickerItem != null) {
                        if (!(k.this.P == null || k.this.P.i() == null || !TextUtils.equals(stickerItem.getStickerUUID(), k.this.P.i().getStickerUUID()))) {
                            k.this.b(stickerItem);
                            if (com.oppo.camera.ui.preview.a.h.c(stickerItem)) {
                                k.this.cX();
                            }
                        }
                        k.this.b(CameraStatisticsUtil.STICKER_RECYCLEBIN_ITEM_DELETE, stickerItem.getStickerUUID());
                    }
                    if (k.this.ai != null && k.this.ai.isShowing()) {
                        k.this.ai.a(stickerItem);
                    }
                }
            });
        }

        public void d(StickerItem stickerItem) {
            k.this.p(false);
        }
    }

    public k(Activity activity, b bVar, com.oppo.camera.ui.c cVar, com.oppo.camera.ui.preview.a.i iVar) {
        super(activity, bVar, cVar, iVar);
        com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.aj);
    }

    private void a(HashMap<String, Integer> hashMap, StringBuilder sb) {
        if (hashMap != null) {
            for (String next : hashMap.keySet()) {
                sb.append(CameraStatisticsUtil.format(next, String.valueOf(hashMap.get(next))));
            }
            hashMap.clear();
        }
    }

    /* access modifiers changed from: private */
    public boolean a(View view, StickerItem stickerItem, int i) {
        if (stickerItem == null) {
            d.d("StickerMode", "onStickwerItemLongClick, item: " + stickerItem);
        }
        return false;
    }

    /* access modifiers changed from: private */
    public boolean a(StickerItem stickerItem, int i) {
        if (this.L == null) {
            return false;
        }
        if (stickerItem == null || this.L.G() || y()) {
            d.e("StickerMode", "onStickerItemClick, item: " + stickerItem + ", isBlurAnimRunning: " + this.L.G() + ", isAnyModeAnimationRunning: " + y());
            return false;
        } else if (stickerItem.isRecycleBin()) {
            d.b("StickerMode", "onStickerItemClick, recycle_bin_sticker_id");
            l lVar = this.ai;
            if (lVar == null || !lVar.isShowing()) {
                this.as++;
                this.ai = new l(this.N);
                this.ai.show();
                this.ai.setOnDismissListener(new DialogInterface.OnDismissListener() {
                    public void onDismiss(DialogInterface dialogInterface) {
                        d.b("StickerMode", "onStickerItemClick, onDismiss");
                        com.oppo.camera.ui.preview.a.h.b((Context) k.this.N).a(1, true);
                    }
                });
                this.ai.a((l.a) new l.a() {
                    public void a() {
                        int unused = k.this.at = k.this.at + 1;
                    }
                });
            }
            return true;
        } else if (com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(stickerItem)) {
            return true;
        } else {
            a(stickerItem);
            return false;
        }
    }

    /* access modifiers changed from: private */
    public void b(StickerItem stickerItem) {
        SharedPreferences.Editor edit = this.O.edit();
        edit.putString("pref_current_sticker_uuid", "unselected_uuid");
        edit.apply();
        if (this.P != null) {
            StickerItem i = this.P.i();
            if (i != null) {
                c(CameraStatisticsUtil.STICKER_MENU_ITEM_USETIME, i.getStickerUUID());
            }
            this.P.a((StickerItem) null);
        }
        if (com.oppo.camera.ui.preview.a.h.c(stickerItem)) {
            cK();
            this.K.g(aW());
            this.K.a((f.c) null);
            bK();
        }
        if (stickerItem != null) {
            if (stickerItem.hasMusic()) {
                this.ah.g();
                if (this.P != null) {
                    this.P.b();
                }
            }
            b(CameraStatisticsUtil.STICKER_MENU_ITEM_UNSELECTED, stickerItem.getStickerUUID());
        }
        this.M.a().a((Runnable) new Runnable() {
            public void run() {
                d.a("StickerMode", "unselectedStickerItem");
                if (k.this.P != null) {
                    k.this.P.d();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void b(String str, String str2) {
        if (this.aw == null) {
            this.aw = new HashMap<>();
        }
        String str3 = str + "_" + str2;
        if (this.aw.containsKey(str3)) {
            HashMap<String, Integer> hashMap = this.aw;
            hashMap.put(str3, Integer.valueOf(hashMap.get(str3).intValue() + 1));
            return;
        }
        this.aw.put(str3, 1);
    }

    private void b(HashMap<String, Long> hashMap, StringBuilder sb) {
        if (hashMap != null) {
            for (String next : hashMap.keySet()) {
                sb.append(CameraStatisticsUtil.format(next, String.valueOf(hashMap.get(next))));
            }
            hashMap.clear();
        }
    }

    /* access modifiers changed from: private */
    public void c(StickerItem stickerItem) {
        if (this.P != null && stickerItem != null && com.oppo.camera.ui.preview.a.h.b((Context) this.N).a().d(stickerItem.getStickerUUID()) && this.P.b(stickerItem)) {
            this.P.d();
        }
    }

    private void c(String str, String str2) {
        if (this.av == null) {
            this.av = new HashMap<>();
        }
        String str3 = this.au;
        if (str3 != null) {
            String[] split = str3.split("\\.");
            if (split.length > 1) {
                String str4 = str + "_" + split[0];
                long currentTimeMillis = System.currentTimeMillis() - Long.parseLong(split[1]);
                if (this.av.containsKey(str4)) {
                    HashMap<String, Long> hashMap = this.av;
                    hashMap.put(str4, Long.valueOf(hashMap.get(str4).longValue() + currentTimeMillis));
                } else {
                    this.av.put(str4, Long.valueOf(currentTimeMillis));
                }
            }
        }
        this.au = str2 + "." + System.currentTimeMillis();
    }

    /* access modifiers changed from: private */
    public void cX() {
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                if (com.oppo.camera.ui.menu.f.b()) {
                    com.oppo.camera.ui.menu.f.c();
                }
                k.this.M.g(k.this.d("pref_camera_assistant_line_key"));
                k.this.M.f();
                k.this.M.f("pref_filter_menu");
                if (com.oppo.camera.ui.preview.a.h.c(com.oppo.camera.ui.preview.a.h.b((Context) k.this.N).a(k.this.O)) && k.this.M.m()) {
                    k.this.M.h(true, true);
                }
            }
        });
    }

    private void cY() {
        int i = this.O.getInt("pref_location_checkbox_key", 0);
        d.a("StickerMode", "initStickerMediator , internetPermission: " + i);
        com.oppo.camera.ui.preview.a.h.b((Context) this.N).a((Context) this.N);
        com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(2, true);
        com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.aj);
        if (i == 1) {
            com.oppo.camera.ui.preview.a.h.b((Context) this.N).e();
        }
    }

    private CamcorderProfile cZ() {
        try {
            return com.oppo.camera.o.d.w() ? CamcorderProfile.get(this.j, 5) : com.oppo.camera.e.e.c(this.j, 5) ? com.oppo.camera.e.e.a(this.j, 5) : com.oppo.camera.e.e.a(this.j, 4);
        } catch (Exception e) {
            e.printStackTrace();
            d.e("StickerMode", "getCamcorderProfile, get CamcorderProfile fail");
            return null;
        }
    }

    private void e(boolean z, boolean z2) {
        d.a("StickerMode", "hideStickerMenu, includePanle: " + z2);
        this.ah.a(8, z, z2);
        this.ah.a(false);
    }

    /* access modifiers changed from: private */
    public void f(boolean z, boolean z2) {
        d.a("StickerMode", "showStickerMenu, needAnim: " + z + ", includePanel: " + z2);
        if (!bY()) {
            this.ah.a(0, z, z2);
            this.ah.a(true);
        }
    }

    /* access modifiers changed from: private */
    public void p(boolean z) {
        d.a("StickerMode", "updateStickerImageResource");
        com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.aA, com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.O), z);
    }

    private int y(int i) {
        if (i == 3) {
            return this.N.getResources().getDimensionPixelSize(R.dimen.bubble_type_sticker_offset_x);
        }
        if (i != 4) {
            return 0;
        }
        return this.N.getResources().getDimensionPixelSize(R.dimen.bubble_type_short_video_offset_x);
    }

    private int z(int i) {
        if (i == 3) {
            return this.N.getResources().getDimensionPixelSize(R.dimen.bubble_type_sticker_offset_y);
        }
        if (i != 4) {
            return 0;
        }
        int dimensionPixelSize = com.oppo.camera.o.d.S() ? this.N.getResources().getDimensionPixelSize(R.dimen.bubble_type_short_video_offset_y_virtual_key) : this.N.getResources().getDimensionPixelSize(R.dimen.bubble_type_short_video_offset_y);
        return ch() ? dimensionPixelSize - this.N.getResources().getDimensionPixelSize(R.dimen.sticker_shutter_button_translate_y) : dimensionPixelSize;
    }

    public String D() {
        return "16_9";
    }

    public void J() {
        d.b("StickerMode", "closeImageReader");
        ImageReader imageReader = this.ap;
        if (imageReader != null) {
            imageReader.close();
            this.ap = null;
        }
        ImageReader imageReader2 = this.aq;
        if (imageReader2 != null) {
            imageReader2.close();
            this.aq = null;
        }
    }

    public boolean P() {
        d.a("StickerMode", "onBackPressed");
        super.P();
        return cL();
    }

    /* access modifiers changed from: protected */
    public void W() {
        if (com.oppo.camera.e.a.c(this.j) && this.K != null) {
            this.K.c(false);
            this.K.a((f.c) null);
        }
    }

    public void X() {
        d.a("StickerMode", "onAfterStartPreview");
        if (!this.M.m()) {
            this.ah.a(true);
            this.ah.b(true);
        }
        super.X();
    }

    public boolean Z() {
        return true;
    }

    public String a() {
        return "sticker";
    }

    public void a(int i, boolean z) {
        super.a(i, z);
        if (i != 1) {
            if (i == 3) {
                this.ah.a((!z || !this.q) ? z : false);
                if (z) {
                    f(true, true);
                    if (i("key_bubble_sticker")) {
                        this.M.a((View) null, 3, y(3), z(3));
                        return;
                    }
                    return;
                }
                if (this.ah.f()) {
                    this.ah.b(true, true, false);
                } else {
                    e(false, true);
                }
                if (i("key_bubble_sticker")) {
                    this.M.c(3, false);
                }
            }
        } else if (z) {
            f(true, false);
        } else {
            e(true, true);
        }
    }

    public void a(TotalCaptureResult totalCaptureResult, CaptureRequest captureRequest) {
        super.a(totalCaptureResult, captureRequest);
        synchronized (this.ag) {
            this.ak = (Float) totalCaptureResult.get(CaptureResult.LENS_FOCAL_LENGTH);
            this.al = (Float) totalCaptureResult.get(CaptureResult.LENS_APERTURE);
            this.am = (Integer) totalCaptureResult.get(CaptureResult.SENSOR_SENSITIVITY);
            this.an = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AWB_MODE);
            this.ao = (Long) totalCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
            d.a("StickerMode", "onCaptureCompleted, mCurrentFocalLength: " + this.ak + ", mCurrentAperture: " + this.al + ", mCurrentISO: " + this.am + ", mCurrentWhiteBalanceMode: " + this.an + ", mCurrentExposureTime: " + this.ao);
        }
    }

    /* access modifiers changed from: protected */
    public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
        if (d.a.PREVIEW == dVar.a() && ((bC() || bi()) && hashMap.containsKey("type_preview_frame"))) {
            builder.addTarget(hashMap.get("type_preview_frame"));
        }
        super.a(dVar, builder, hashMap);
    }

    public void a(HashMap<String, Surface> hashMap) {
        if (com.oppo.camera.ui.preview.a.h.a(com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.O), this.j)) {
            if (this.ap == null) {
                Size parseSize = Size.parseSize(DebugUtil.getDebugProperty("oppo.rawsensor.test", "640x480"));
                this.ap = ImageReader.newInstance(parseSize.getWidth(), parseSize.getHeight(), 32, 3);
                this.ap.setOnImageAvailableListener(this.aC, this.K.i());
            }
            hashMap.put("type_depth_preview", this.ap.getSurface());
            Size b2 = b(this.K.c());
            ImageReader imageReader = this.aq;
            if (!(imageReader != null && imageReader.getWidth() == b2.getWidth() && this.aq.getHeight() == b2.getHeight())) {
                this.aq = ImageReader.newInstance(b2.getWidth(), b2.getHeight(), 256, 1);
                this.aq.setOnImageAvailableListener((ImageReader.OnImageAvailableListener) null, (Handler) null);
            }
            hashMap.put("type_depth_jpeg", this.aq.getSurface());
            com.oppo.camera.d.a("StickerMode", "configSessionSurface, DepthJpegImageReader.size: " + this.aq.getWidth() + "x" + this.aq.getHeight() + ", format: " + this.aq.getImageFormat() + ", DepthImageReader.size: " + this.ap.getWidth() + "x" + this.ap.getHeight() + ", format: " + this.ap.getImageFormat());
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        com.oppo.camera.d.a("StickerMode", "onResume");
        super.a(z);
        this.az = System.currentTimeMillis();
        this.P.f();
        this.ah.a(z, z());
        if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER)) {
            com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(0, true);
            cY();
        }
        this.M.a(0, true);
        if (i("key_bubble_sticker")) {
            this.M.a((View) null, 3, y(3), z(3));
        } else {
            this.M.c(3, false);
        }
        if (i("key_bubble_short_video")) {
            this.M.a((View) null, 4, y(4), z(4));
        } else {
            this.M.c(4, false);
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2) {
        super.a(z, z2);
        if (z2) {
            this.L.a(0);
            this.L.f();
        }
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr, boolean z) {
        com.oppo.camera.d.a("StickerMode", "onAfterPictureTaken");
        if (this.L.g()) {
            this.L.i();
            this.M.d(true, false);
        }
        if (!this.M.m()) {
            this.ah.a(true);
            this.ah.b(true);
        }
        if (!j("key_bubble_short_video") && !z()) {
            a("key_bubble_short_video", true);
            this.M.a((View) null, 4, y(4), z(4));
        }
    }

    public boolean a(int i, MotionEvent motionEvent) {
        return false;
    }

    public boolean a(MotionEvent motionEvent) {
        return super.a(motionEvent);
    }

    /* access modifiers changed from: protected */
    public boolean a(final StickerItem stickerItem) {
        if (stickerItem == null || this.L.G()) {
            com.oppo.camera.d.e("StickerMode", "onStickerItemChange, item: " + stickerItem + ", isBlurAnimRunning: " + this.L.G());
            return false;
        }
        com.oppo.camera.d.b("StickerMode", "onStickerItemChange, item: " + stickerItem);
        if (d("pref_sticker_process_key")) {
            if (this.P == null || this.P.b(stickerItem)) {
                this.N.runOnUiThread(new Runnable() {
                    public void run() {
                        if (k.this.ah != null) {
                            k.this.ah.c(false);
                        }
                    }
                });
                b(stickerItem);
            } else {
                SharedPreferences.Editor edit = this.O.edit();
                edit.putString("pref_current_sticker_uuid", stickerItem.getStickerUUID());
                edit.apply();
                StickerItem i = this.P.i();
                if (i != null) {
                    c(CameraStatisticsUtil.STICKER_MENU_ITEM_USETIME, i.getStickerUUID());
                }
                this.P.a(stickerItem);
                if (com.oppo.camera.ui.preview.a.h.c(stickerItem)) {
                    this.N.runOnUiThread(new Runnable() {
                        public void run() {
                            if (k.this.ch()) {
                                return;
                            }
                            if (k.this.M.w()) {
                                k.this.M.a(true, true, false, !com.oppo.camera.e.a.c(k.this.j));
                                k.this.M.a(0, true);
                                k.this.f(true, false);
                                return;
                            }
                            k.this.M.a(true, true, false, !com.oppo.camera.e.a.c(k.this.j));
                        }
                    });
                    this.K.g(0);
                    this.K.a((f.c) null);
                    bK();
                    cJ();
                } else {
                    this.N.runOnUiThread(new Runnable() {
                        public void run() {
                            if (!k.this.ch() && !k.this.s) {
                                k.this.M.m(true);
                                k.this.M.o(true);
                            }
                        }
                    });
                    cK();
                    this.K.g(aW());
                    this.K.a((f.c) null);
                    bK();
                }
                if (this.ah != null) {
                    if (!(i == null || i.getCategoryId() == null || i.getCategoryId().equals(stickerItem.getCategoryId()))) {
                        this.ah.a(i.getCategoryId());
                    }
                    if (stickerItem.hasMusic()) {
                        this.ah.c(stickerItem.getStickerUUID());
                        if (this.P != null) {
                            this.P.c();
                        }
                    } else {
                        this.ah.g();
                        this.P.b();
                    }
                    if (stickerItem.getDownloadTime() == 0 && com.oppo.camera.ui.preview.a.h.c(stickerItem.getCategoryId()) && !StickerCategoryItem.MY_CATEGORY_ID.equals(stickerItem.getCategoryId()) && !stickerItem.isRecycleBin()) {
                        com.oppo.camera.sticker.h.a((Context) this.N).a(stickerItem);
                    }
                }
                b(CameraStatisticsUtil.STICKER_MENU_ITEM_SELECTED, stickerItem.getStickerUUID());
                this.M.a().a((Runnable) new Runnable() {
                    public void run() {
                        com.oppo.camera.d.a("StickerMode", "onStickerItemChange, success, categoryId: " + stickerItem.getCategoryId());
                        k.this.P.d();
                    }
                });
                this.N.runOnUiThread(new Runnable() {
                    public void run() {
                        if (k.this.ah != null) {
                            k.this.ah.c(true);
                        }
                    }
                });
            }
            cX();
            return true;
        }
        com.oppo.camera.d.a("StickerMode", "onStickerItemChange, failed, index, categoryId: " + stickerItem.getCategoryId());
        return true;
    }

    public boolean aK() {
        com.oppo.camera.d.a("StickerMode", "updateViewByEnterCameraType, mStickerMenu: " + this.ah);
        h hVar = this.ah;
        if (hVar == null) {
            return false;
        }
        hVar.d(false);
        return true;
    }

    public void aL() {
        if (i("key_bubble_sticker")) {
            this.M.c(3, false);
        }
    }

    public void aM() {
        if (!this.L.q() && i("key_bubble_sticker")) {
            this.M.a((View) null, 3, y(3), z(3));
        }
    }

    /* access modifiers changed from: protected */
    public String aX() {
        return "pref_sticker_facebeauty_level_menu";
    }

    public boolean aa() {
        return bu();
    }

    public int ab() {
        return 35;
    }

    /* access modifiers changed from: protected */
    public void aj() {
        com.oppo.camera.d.a("StickerMode", "startShortVideoRecording");
        if (!this.L.s() && bZ()) {
            h hVar = this.ah;
            if (hVar != null && !hVar.h()) {
                this.W.removeMessages(9);
                try {
                    this.Z = cZ();
                } catch (Exception e) {
                    this.Z = null;
                    com.oppo.camera.d.a("StickerMode", "startShortVideoRecording, CamcorderProfile.get fail! ", (Throwable) e);
                }
                if (this.Z != null) {
                    Size c = c(this.K.c());
                    com.oppo.camera.d.a("StickerMode", "startShortVideoRecording, preview width: " + c.getWidth() + ", preview heigth: " + c.getHeight());
                    if (com.oppo.camera.o.d.w() || (c.getWidth() <= 1920 && c.getHeight() <= 1088)) {
                        this.Z.videoFrameWidth = c.getWidth();
                        this.Z.videoFrameHeight = c.getHeight();
                    } else {
                        this.Z.videoFrameWidth = 1920;
                        this.Z.videoFrameHeight = 912;
                    }
                }
                bT();
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("startShortVideoRecording, isDoubleFinger: ");
        sb.append(this.L.s());
        sb.append(", isVideoRecordStopped: ");
        sb.append(bZ());
        sb.append(", isAnimation: ");
        h hVar2 = this.ah;
        Object obj = "null";
        sb.append(hVar2 == null ? obj : Boolean.valueOf(hVar2.h()));
        sb.append(", MenuOpen: ");
        h hVar3 = this.ah;
        if (hVar3 != null) {
            obj = Boolean.valueOf(hVar3.f());
        }
        sb.append(obj);
        com.oppo.camera.d.a("StickerMode", sb.toString());
    }

    /* access modifiers changed from: protected */
    public void ak() {
        com.oppo.camera.d.a("StickerMode", "stopShortVideoRecording, isVideoRecordStarted: " + cR());
        if (cR()) {
            bT();
            return;
        }
        this.W.removeMessages(9);
        this.W.sendEmptyMessage(9);
    }

    public void an() {
        e(false, true);
        if (this.M.w()) {
            this.M.b(false, false, false);
        }
        this.L.a((Animation.AnimationListener) null);
        this.L.c(false);
        this.M.h(4);
        if (i("key_bubble_sticker")) {
            this.M.c(3, false);
        }
        if (i("key_bubble_short_video")) {
            this.M.c(4, true);
        }
        if (!j("key_bubble_short_video")) {
            a("key_bubble_short_video", false);
        }
        super.an();
    }

    public void ap() {
        if (this.ah.f()) {
            f(true, true);
            this.M.h(0);
            return;
        }
        f(true, false);
        this.L.w();
        this.L.c(true);
        this.M.h(0);
        this.M.m(true);
        if (i("key_bubble_sticker")) {
            this.M.a((View) null, 3, y(3), z(3));
        }
        super.ap();
    }

    public boolean as() {
        if (z()) {
            return false;
        }
        return super.as();
    }

    public boolean at() {
        if ((this.L == null || this.L.g()) && !com.oppo.camera.o.d.w()) {
            return super.at();
        }
        return true;
    }

    public int b() {
        return 32782;
    }

    public Size b(com.oppo.camera.e.h hVar) {
        String string = this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value));
        List<Size> a2 = hVar.a(ab());
        String a3 = "full".equals(string) ? com.oppo.camera.o.d.a(a2, 5000000, 1) : com.oppo.camera.o.d.a(a2, 5000000, com.oppo.camera.o.d.a(string));
        return a3 != null ? new Size(Integer.parseInt(a3.split("x")[0]), Integer.parseInt(a3.split("x")[1])) : super.b(hVar);
    }

    public void b(int i) {
        super.b(i);
    }

    /* access modifiers changed from: protected */
    public void b(byte[] bArr, boolean z) {
        com.oppo.camera.d.a("StickerMode", "onBeforePictureTaken");
    }

    public boolean b(MotionEvent motionEvent) {
        com.oppo.camera.d.a("StickerMode", "onSingleTapUp");
        Rect rect = new Rect();
        this.M.e().getHitRect(rect);
        if (!rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
            return false;
        }
        if (cL()) {
            return true;
        }
        return z();
    }

    public boolean b(String str) {
        if ("pref_camera_timer_shutter_key".equals(str)) {
            return true;
        }
        if ("pref_video_size_key".equals(str)) {
            return false;
        }
        if ("pref_camera_hdr_mode_key".equals(str) || "pref_camera_vivid_effect_key".equals(str)) {
            return d(str);
        }
        if ((!"pref_filter_menu".equals(str) || (!bi() && !z())) && !"pref_video_filter_menu".equals(str)) {
            return super.b(str);
        }
        return false;
    }

    public void bH() {
        super.bH();
        this.M.d("pref_video_size_key");
    }

    /* access modifiers changed from: protected */
    public String[] bL() {
        return com.oppo.camera.ui.c.f2594a;
    }

    /* access modifiers changed from: protected */
    public int bM() {
        return 15;
    }

    /* access modifiers changed from: protected */
    public int[] bN() {
        return af;
    }

    public int bc() {
        int i = this.O.getInt(be(), 0);
        if (z()) {
            i = 0;
        }
        return com.oppo.camera.o.d.a(i, 0, e(this.j).length - 1);
    }

    public boolean bi() {
        StickerItem i = this.P != null ? this.P.i() : null;
        if (i == null) {
            i = com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.O);
        }
        return d("pref_omoji_process_key") && com.oppo.camera.ui.preview.a.h.c(i);
    }

    public void bp() {
        StringBuilder sb = new StringBuilder();
        int i = this.ay;
        if (i > 0) {
            String format = CameraStatisticsUtil.format(CameraStatisticsUtil.OMOJI_HUMAN_GENERATE_GIF, String.valueOf(i));
            this.ay = 0;
            sb.append(format);
        }
        int i2 = this.as;
        if (i2 > 0) {
            String format2 = CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_RECYCLEBIN_CLICK, String.valueOf(i2));
            this.as = 0;
            sb.append(format2);
        }
        int i3 = this.at;
        if (i3 > 0) {
            String format3 = CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_RECYCLEBIN_DELETEALL, String.valueOf(i3));
            this.at = 0;
            sb.append(format3);
        }
        a(this.aw, sb);
        b(this.av, sb);
        this.au = null;
        if (sb.length() > 0) {
            CameraStatisticsUtil.onCommon(this.N, CameraStatisticsUtil.EVENT_MENU_CLICK, sb.toString(), false);
        }
        this.az = System.currentTimeMillis() - this.az;
        long j = this.az;
        if (j > 0) {
            CameraStatisticsUtil.onCommon(this.N, CameraStatisticsUtil.EVENT_ENTER_STICKER, CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_MODE_USE_TIME, String.valueOf(j)), false);
        }
        this.az = 0;
    }

    public boolean bq() {
        return true;
    }

    public Size c(com.oppo.camera.e.h hVar) {
        Size b2 = b(hVar);
        List<Size> a2 = hVar.a();
        Size a3 = "standard".equals(com.oppo.camera.o.d.a(b2)) ? com.oppo.camera.o.d.a(1080, a2, 1.3333333333333333d) : "full".equals(com.oppo.camera.o.d.a(b2)) ? com.oppo.camera.o.d.a(1080, a2, 1.7777777777777777d) : "square".equals(com.oppo.camera.o.d.a(b2)) ? com.oppo.camera.o.d.a(960, a2, 1.0d) : null;
        return a3 != null ? a3 : super.c(hVar);
    }

    public void c(int i) {
        this.g = i;
        this.ah.b(this.g);
    }

    public boolean c(String str) {
        if (!"pref_face_detection_key".equals(str) || !bY()) {
            return super.c(str);
        }
        return false;
    }

    public boolean cB() {
        return com.oppo.camera.ui.preview.a.h.d(this.P != null ? this.P.i() : null);
    }

    /* access modifiers changed from: protected */
    public boolean cE() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void cH() {
        if (this.M != null) {
            this.M.i(60000);
            com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
            cVar.a(13);
            this.M.a(cVar);
        }
        super.cH();
    }

    /* access modifiers changed from: protected */
    public void cI() {
        this.M.a(new com.oppo.camera.ui.control.c(1, "button_color_inside_none"));
        super.cI();
    }

    public synchronized void cJ() {
        if (this.ar == null) {
            this.ar = new b();
            int[] omojiPerformanceConfigList = CameraConfig.getOmojiPerformanceConfigList();
            int a2 = this.ar.a(0, omojiPerformanceConfigList);
            com.oppo.camera.d.e("StickerMode", "perfLockAcquireForOmoji, ret: " + a2 + ", performConfig: " + omojiPerformanceConfigList.length);
        }
    }

    public synchronized void cK() {
        if (this.ar != null) {
            int a2 = this.ar.a();
            this.ar = null;
            com.oppo.camera.d.b("StickerMode", "perfLockReleaseForOmoji, ret: " + a2);
        }
    }

    public boolean cL() {
        if (!bZ() || this.ah.h() || this.M.n()) {
            return true;
        }
        if (!ch()) {
            return false;
        }
        this.M.a(0, true);
        this.M.m(true);
        this.ah.a(false, false, true);
        return true;
    }

    public void ce() {
        String aO = aO();
        if (ch()) {
            this.ah.a(true, false, false);
        } else if (com.oppo.camera.e.a.c(this.j) || this.M.m()) {
            e(false, true);
        }
        if (i("key_bubble_sticker")) {
            this.M.c(3, false);
        }
        if ("beauty".equals(aO)) {
            CameraStatisticsUtil.onCommon(this.N, CameraStatisticsUtil.EVENT_MENU_CLICK, CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_MODE_CLICK_SMOOTH_MENU, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST), false);
        } else if ("filter".equals(aO)) {
            CameraStatisticsUtil.onCommon(this.N, CameraStatisticsUtil.EVENT_MENU_CLICK, CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_MODE_CLICK_FILTER_MENU, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST), false);
        }
    }

    public void cf() {
        f(true, false);
        if (i("key_bubble_sticker")) {
            this.M.a((View) null, 3, y(3), z(3));
        }
    }

    public boolean cg() {
        return !this.ah.f();
    }

    public boolean ch() {
        h hVar = this.ah;
        if (hVar == null) {
            return false;
        }
        return hVar.f();
    }

    public void ci() {
        if (i("key_bubble_sticker")) {
            this.M.a((View) null, 3, y(3), z(3));
        }
        if (i("key_bubble_short_video")) {
            this.M.a((View) null, 4, y(4), z(4));
        }
    }

    public void cn() {
        super.cn();
        if (this.L.G()) {
            this.M.v();
        }
    }

    /* access modifiers changed from: protected */
    public boolean co() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void cr() {
        CameraStatisticsUtil.onCommon(this.N, CameraStatisticsUtil.EVENT_MENU_CLICK, CameraStatisticsUtil.format(CameraStatisticsUtil.STICKER_MODE_SWITCH_CAMERA, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST), false);
    }

    /* access modifiers changed from: protected */
    public void cs() {
        e(false, true);
    }

    public Range<Integer> d() {
        Range<Integer>[] w = com.oppo.camera.e.a.a(this.j).w();
        if (w == null || w.length == 0) {
            return super.d();
        }
        int i = -1;
        int i2 = 300;
        for (int i3 = 0; i3 < w.length; i3++) {
            if (i2 > w[i3].getLower().intValue() && w[i3].getUpper().intValue() == 30) {
                i2 = w[i3].getLower().intValue();
                i = i3;
            }
        }
        return i >= 0 ? w[i] : super.d();
    }

    public boolean d(MotionEvent motionEvent) {
        if (this.P != null) {
            return false;
        }
        this.M.e().getHitRect(new Rect());
        return super.d(motionEvent);
    }

    public boolean d(String str) {
        if ("pref_video_size_key".equals(str) || "pref_support_recording_capture".equals(str) || "key_filter_index".equals(str) || "pref_camera_vivid_effect_key".equals(str) || "pref_burst_shot_key".equals(str) || "pref_camera_hdr_mode_key".equals(str) || "pref_video_filter_menu".equals(str) || CameraFunction.FILTER_VIGNETTE.equals(str) || "pref_save_jpg_after_pause_key".equals(str) || "pref_camera_slogan_key".equals(str)) {
            return false;
        }
        if ("pref_filter_menu".equals(str)) {
            return d("pref_filter_process_key");
        }
        if ("pref_expand_popbar_key".equals(str)) {
            return this.M.m();
        }
        if ("pref_camera_videoflashmode_key".equals(str)) {
            return !com.oppo.camera.e.a.c(this.j);
        }
        if ("pref_zoom_key".equals(str)) {
            return !com.oppo.camera.e.a.c(this.j) && !bY() && !z();
        }
        if ("pref_support_thumbnail".equals(str)) {
            return !z();
        }
        if ("pref_dual_camera".equals(str)) {
            return com.oppo.camera.ui.preview.a.h.a(com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.O), this.j);
        }
        if ("key_short_video".equals(str) || "pref_filter_process_key".equals(str)) {
            return true;
        }
        if ("pref_sticker_process_key".equals(str)) {
            return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER);
        }
        if ("pref_omoji_process_key".equals(str)) {
            return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_ANIMOJI);
        }
        if ("pref_support_switch_camera".equals(str)) {
            return super.d(str);
        }
        if ("pref_support_capture_preview".equals(str)) {
            return this.L != null && this.L.g();
        }
        if ("pref_support_ipa_process".equals(str)) {
            return true;
        }
        if ("pref_auto_night_scence_key".equals(str)) {
            if (this.L == null) {
                return false;
            }
            return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_COMMON_AUTO_NIGHT_SCENCE);
        } else if ("pref_camera_torch_mode_key".equals(str)) {
            return d(CameraFunction.TORCH_SOFT_LIGHT) && !z();
        } else {
            if (CameraFunction.FACE_BEAUTY_PROCESS.equals(str)) {
                return !bi();
            }
            if (CameraFunction.TORCH_SOFT_LIGHT.equals(str)) {
                return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_TORCH_SOFT_LIGHT) && com.oppo.camera.e.a.c(this.j);
            }
            if (CameraFunction.FACE_BEAUTY_CUSTOM.equals(str)) {
                return d(CameraFunction.FACE_BEAUTY_PROCESS) && com.oppo.camera.e.a.c(this.j);
            }
            if (CameraFunction.FACE_BEAUTY_COMMON.equals(str)) {
                return d(CameraFunction.FACE_BEAUTY_PROCESS) && !com.oppo.camera.e.a.c(this.j);
            }
            if ("pref_camera_assistant_line_key".equals(str)) {
                return !z() && !bi() && !cB();
            }
            if ("pref_time_lapse_key".equals(str) || "pref_camera_tap_shutter_key".equals(str)) {
                return !z();
            }
            if ("pref_camera_gesture_shutter_key".equals(str)) {
                return com.oppo.camera.e.a.c(this.j) && !z();
            }
            if (CameraFunction.FACE_SLENDER_PROCESS.equals(str)) {
                return com.oppo.camera.e.a.c(this.j) && !A();
            }
            if ("pref_filter_menu".equals(str) && (bi() || z())) {
                return false;
            }
            if ("key_support_show_no_face".equals(str)) {
                return bi() && !z();
            }
            if ("pref_camera_photo_ratio_key".equals(str)) {
                return true;
            }
            return super.d(str);
        }
    }

    /* access modifiers changed from: protected */
    public int[] d(int i) {
        return com.oppo.camera.e.a.c(i) ? com.oppo.camera.ui.preview.a.d.c : com.oppo.camera.ui.preview.a.d.d;
    }

    public void e(boolean z) {
        super.e(z);
        o(true);
    }

    /* access modifiers changed from: protected */
    public String[] e(int i) {
        return com.oppo.camera.e.a.c(i) ? com.oppo.camera.ui.preview.a.d.f2892a : com.oppo.camera.ui.preview.a.d.f2893b;
    }

    public boolean f() {
        return true;
    }

    public boolean f(String str) {
        if ("pref_camera_timer_shutter_key".equals(str) || "pref_camera_photo_ratio_key".equals(str)) {
            return true;
        }
        return super.f(str);
    }

    public com.oppo.camera.ui.control.c g() {
        return new com.oppo.camera.ui.control.c(1, "button_color_inside_none");
    }

    /* access modifiers changed from: protected */
    public void h() {
        com.oppo.camera.d.a("StickerMode", "onPause");
        l lVar = this.ai;
        if (lVar != null && lVar.isShowing()) {
            this.ai.dismiss();
        }
        this.ah.b();
        cK();
        this.K.g(aW());
        this.K.a((f.c) null);
        bK();
        if (i("key_bubble_sticker")) {
            this.M.c(3, true);
        }
        if (i("key_bubble_short_video")) {
            this.M.c(4, true);
        }
        super.h();
    }

    /* access modifiers changed from: protected */
    public void j() {
        if (i("key_bubble_sticker")) {
            this.M.c(3, true);
        }
        if (i("key_bubble_short_video")) {
            this.M.c(4, true);
        }
        c cVar = this.ax;
        if (cVar != null) {
            cVar.a();
            c.b();
        }
        super.j();
    }

    /* access modifiers changed from: protected */
    public void k() {
        com.oppo.camera.d.a("StickerMode", "onInitCameraMode");
        this.az = System.currentTimeMillis();
        this.P.f();
        if (this.ah == null) {
            this.ax = new c(this.N, R.drawable.sticker_undownload);
            this.ah = new h(this.N, this.g, com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.O) != null);
            this.ah.a(this.aB);
            this.ah.a(this.ax);
        }
        this.ah.a();
        this.ah.d();
        this.ah.b(this.g);
        if (i("key_bubble_sticker")) {
            this.M.a((View) null, 3, y(3), z(3));
        }
        if (i("key_bubble_short_video")) {
            this.M.a((View) null, 4, y(4), z(4));
        }
        this.M.a(this.N.getString(R.string.camera_description_common_shutter_button));
    }

    public boolean k(String str) {
        if ("type_video".equals(str)) {
            return false;
        }
        if ("type_preview_frame".equals(str)) {
            return d("pref_omoji_process_key") || d("pref_camera_gesture_shutter_key");
        }
        if ("type_still_capture".equals(str)) {
            return false;
        }
        return "type_still_capture_yuv_main".equals(str) ? this.J != null : super.k(str);
    }

    /* access modifiers changed from: protected */
    public void l() {
        com.oppo.camera.d.a("StickerMode", "onDeinitCameraMode");
        super.l();
        this.M.o();
        if (this.ah.f()) {
            this.ah.b(true, false, true);
        }
        this.ah.e();
        this.M.a("pref_camera_photo_ratio_key", "full", (int) R.string.camera_picture_size_full, (int) R.drawable.menu_picture_size_full_dark);
        j(0);
        if (this.P != null) {
            this.P.g(0);
        }
        if (i("key_bubble_sticker")) {
            this.M.c(3, false);
        }
        if (i("key_bubble_short_video")) {
            this.M.c(4, false);
        }
    }

    public void l(int i) {
        if (this.P != null) {
            this.P.a(o(i));
            this.P.b(false);
        }
        super.l(i);
    }

    /* access modifiers changed from: protected */
    public void m() {
        super.m();
        com.oppo.camera.d.a("StickerMode.onBeforePreview");
        StickerItem a2 = com.oppo.camera.ui.preview.a.h.b((Context) this.N).a(this.O);
        if (a2 != null) {
            c(CameraStatisticsUtil.STICKER_MENU_ITEM_USETIME, a2.getStickerUUID());
        }
        if (this.P != null) {
            this.P.a(a2);
            if (com.oppo.camera.ui.preview.a.h.c(a2)) {
                cJ();
                this.K.g(0);
                this.K.a((f.c) null);
            }
            if (com.oppo.camera.ui.preview.a.h.a(a2, this.j) && this.K != null) {
                this.K.o(1);
            }
        } else {
            com.oppo.camera.d.e("StickerMode", "updateStickerIndex, mPreferences: " + this.O);
        }
        bK();
        com.oppo.camera.d.b("StickerMode.onBeforePreview");
    }

    public void m(boolean z) {
        if (i("key_bubble_sticker")) {
            this.M.c(3, false);
        }
        if (i("key_bubble_short_video")) {
            this.M.c(4, false);
        }
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        com.oppo.camera.d.a("StickerMode", "onBeforeSnapping");
        if (bi()) {
            n h = this.P.h(16);
            if (h.a(16) && !h.b()) {
                return false;
            }
        }
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                k.this.ah.a(false);
                k.this.ah.b(false);
            }
        });
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return !bZ();
    }

    public int p() {
        return 1;
    }

    public boolean q() {
        return false;
    }

    public com.oppo.camera.e.d t() {
        com.oppo.camera.e.d t = super.t();
        t.l = true;
        t.n = true;
        t.m = bi();
        if (com.oppo.camera.e.a.c(this.j) && TextUtils.equals(az(), com.oppo.camera.c.a_)) {
            t.o = true;
        }
        return t;
    }

    public Object w() {
        if (!bi()) {
            return this.P.h(8).a();
        }
        n h = this.P.h(16);
        if (h.a(16)) {
            return h.a();
        }
        return null;
    }

    public boolean y() {
        h hVar = this.ah;
        if (hVar != null) {
            return hVar.h();
        }
        return false;
    }
}
