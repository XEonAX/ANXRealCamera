package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R;
import androidx.appcompat.widget.ak;
import androidx.core.graphics.a;

/* compiled from: AppCompatDrawableManager */
public final class i {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final PorterDuff.Mode f384a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    private static i f385b;
    private ak c;

    public static synchronized PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (i.class) {
            a2 = ak.a(i, mode);
        }
        return a2;
    }

    public static synchronized void a() {
        synchronized (i.class) {
            if (f385b == null) {
                f385b = new i();
                f385b.c = ak.a();
                f385b.c.a((ak.e) new ak.e() {

                    /* renamed from: a  reason: collision with root package name */
                    private final int[] f386a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

                    /* renamed from: b  reason: collision with root package name */
                    private final int[] f387b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                    private final int[] c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light};
                    private final int[] d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                    private final int[] e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                    private final int[] f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

                    private ColorStateList a(Context context) {
                        return b(context, ap.a(context, R.attr.colorButtonNormal));
                    }

                    private void a(Drawable drawable, int i, PorterDuff.Mode mode) {
                        if (ac.c(drawable)) {
                            drawable = drawable.mutate();
                        }
                        if (mode == null) {
                            mode = i.f384a;
                        }
                        drawable.setColorFilter(i.a(i, mode));
                    }

                    private boolean a(int[] iArr, int i) {
                        for (int i2 : iArr) {
                            if (i2 == i) {
                                return true;
                            }
                        }
                        return false;
                    }

                    private ColorStateList b(Context context) {
                        return b(context, 0);
                    }

                    private ColorStateList b(Context context, int i) {
                        int a2 = ap.a(context, R.attr.colorControlHighlight);
                        int c2 = ap.c(context, R.attr.colorButtonNormal);
                        return new ColorStateList(new int[][]{ap.f342a, ap.d, ap.f343b, ap.h}, new int[]{c2, a.a(a2, i), a.a(a2, i), i});
                    }

                    private ColorStateList c(Context context) {
                        return b(context, ap.a(context, R.attr.colorAccent));
                    }

                    private ColorStateList d(Context context) {
                        int[][] iArr = new int[3][];
                        int[] iArr2 = new int[3];
                        ColorStateList b2 = ap.b(context, R.attr.colorSwitchThumbNormal);
                        if (b2 == null || !b2.isStateful()) {
                            iArr[0] = ap.f342a;
                            iArr2[0] = ap.c(context, R.attr.colorSwitchThumbNormal);
                            iArr[1] = ap.e;
                            iArr2[1] = ap.a(context, R.attr.colorControlActivated);
                            iArr[2] = ap.h;
                            iArr2[2] = ap.a(context, R.attr.colorSwitchThumbNormal);
                        } else {
                            iArr[0] = ap.f342a;
                            iArr2[0] = b2.getColorForState(iArr[0], 0);
                            iArr[1] = ap.e;
                            iArr2[1] = ap.a(context, R.attr.colorControlActivated);
                            iArr[2] = ap.h;
                            iArr2[2] = b2.getDefaultColor();
                        }
                        return new ColorStateList(iArr, iArr2);
                    }

                    public ColorStateList a(Context context, int i) {
                        if (i == R.drawable.abc_edit_text_material) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_edittext);
                        }
                        if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_switch_track);
                        }
                        if (i == R.drawable.abc_switch_thumb_material) {
                            return d(context);
                        }
                        if (i == R.drawable.abc_btn_default_mtrl_shape) {
                            return a(context);
                        }
                        if (i == R.drawable.abc_btn_borderless_material) {
                            return b(context);
                        }
                        if (i == R.drawable.abc_btn_colored_material) {
                            return c(context);
                        }
                        if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_spinner);
                        }
                        if (a(this.f387b, i)) {
                            return ap.b(context, R.attr.colorControlNormal);
                        }
                        if (a(this.e, i)) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_default);
                        }
                        if (a(this.f, i)) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_btn_checkable);
                        }
                        if (i == R.drawable.abc_seekbar_thumb_material) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_seek_thumb);
                        }
                        return null;
                    }

                    public PorterDuff.Mode a(int i) {
                        if (i == R.drawable.abc_switch_thumb_material) {
                            return PorterDuff.Mode.MULTIPLY;
                        }
                        return null;
                    }

                    public Drawable a(ak akVar, Context context, int i) {
                        if (i != R.drawable.abc_cab_background_top_material) {
                            return null;
                        }
                        return new LayerDrawable(new Drawable[]{akVar.a(context, R.drawable.abc_cab_background_internal_bg), akVar.a(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
                    }

                    public boolean a(Context context, int i, Drawable drawable) {
                        if (i == R.drawable.abc_seekbar_track_material) {
                            LayerDrawable layerDrawable = (LayerDrawable) drawable;
                            a(layerDrawable.findDrawableByLayerId(16908288), ap.a(context, R.attr.colorControlNormal), i.f384a);
                            a(layerDrawable.findDrawableByLayerId(16908303), ap.a(context, R.attr.colorControlNormal), i.f384a);
                            a(layerDrawable.findDrawableByLayerId(16908301), ap.a(context, R.attr.colorControlActivated), i.f384a);
                            return true;
                        } else if (i != R.drawable.abc_ratingbar_material && i != R.drawable.abc_ratingbar_indicator_material && i != R.drawable.abc_ratingbar_small_material) {
                            return false;
                        } else {
                            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                            a(layerDrawable2.findDrawableByLayerId(16908288), ap.c(context, R.attr.colorControlNormal), i.f384a);
                            a(layerDrawable2.findDrawableByLayerId(16908303), ap.a(context, R.attr.colorControlActivated), i.f384a);
                            a(layerDrawable2.findDrawableByLayerId(16908301), ap.a(context, R.attr.colorControlActivated), i.f384a);
                            return true;
                        }
                    }

                    /* JADX WARNING: Removed duplicated region for block: B:18:0x004a  */
                    /* JADX WARNING: Removed duplicated region for block: B:25:0x0065 A[RETURN] */
                    public boolean b(Context context, int i, Drawable drawable) {
                        boolean z;
                        PorterDuff.Mode mode;
                        int i2;
                        PorterDuff.Mode c2 = i.f384a;
                        int i3 = 16842801;
                        if (a(this.f386a, i)) {
                            i3 = R.attr.colorControlNormal;
                        } else if (a(this.c, i)) {
                            i3 = R.attr.colorControlActivated;
                        } else if (a(this.d, i)) {
                            c2 = PorterDuff.Mode.MULTIPLY;
                        } else if (i == R.drawable.abc_list_divider_mtrl_alpha) {
                            i3 = 16842800;
                            mode = c2;
                            i2 = Math.round(40.8f);
                            z = true;
                            if (!z) {
                                return false;
                            }
                            if (ac.c(drawable)) {
                                drawable = drawable.mutate();
                            }
                            drawable.setColorFilter(i.a(ap.a(context, i3), mode));
                            if (i2 != -1) {
                                drawable.setAlpha(i2);
                            }
                            return true;
                        } else if (i != R.drawable.abc_dialog_material_background) {
                            mode = c2;
                            i2 = -1;
                            z = false;
                            i3 = 0;
                            if (!z) {
                            }
                        }
                        mode = c2;
                        i2 = -1;
                        z = true;
                        if (!z) {
                        }
                    }
                });
            }
        }
    }

    static void a(Drawable drawable, as asVar, int[] iArr) {
        ak.a(drawable, asVar, iArr);
    }

    public static synchronized i b() {
        i iVar;
        synchronized (i.class) {
            if (f385b == null) {
                a();
            }
            iVar = f385b;
        }
        return iVar;
    }

    public synchronized Drawable a(Context context, int i) {
        return this.c.a(context, i);
    }

    /* access modifiers changed from: package-private */
    public synchronized Drawable a(Context context, int i, boolean z) {
        return this.c.a(context, i, z);
    }

    public synchronized void a(Context context) {
        this.c.a(context);
    }

    /* access modifiers changed from: package-private */
    public synchronized ColorStateList b(Context context, int i) {
        return this.c.b(context, i);
    }
}
