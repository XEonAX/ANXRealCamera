package com.oppo.camera.ui.menu.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.ui.OppoNumAISeekBar;
import com.oppo.camera.ui.OppoNumSeekBar;

/* compiled from: FaceBeautyCommonMenu */
class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private int f2708a = -2;

    /* renamed from: b  reason: collision with root package name */
    private int f2709b = -2;
    private int c = 0;
    private OppoNumAISeekBar d = null;
    private RelativeLayout.LayoutParams e = null;

    public d(Activity activity, OppoNumSeekBar.b bVar) {
        int dimensionPixelSize = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_common_seekbar_margin_left);
        int dimensionPixelSize2 = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_common_seekbar_margin_right);
        int dimensionPixelSize3 = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_seekbar_padding_bottom);
        this.f2708a = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_custom_seekbar_height);
        this.f2709b = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_custom_seekbar_width);
        this.c = activity.getResources().getDimensionPixelSize(R.dimen.control_panel_layout_height);
        this.d = new OppoNumAISeekBar(activity);
        this.d.setPadding(dimensionPixelSize, 0, dimensionPixelSize2, dimensionPixelSize3);
        this.d.setOnProgressChangedListener(bVar);
    }

    public void a() {
        ViewGroup viewGroup = (ViewGroup) this.d.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.d);
        }
    }

    public void a(int i, boolean z, int i2) {
        if (i == -100000) {
            i = 0;
        }
        if (z) {
            this.d.b(0).a(100).d(i2).c(i).postInvalidate();
        } else {
            this.d.b(0).a(100).d(0).c(i).postInvalidate();
        }
    }

    public View b() {
        return this.d;
    }

    public ViewGroup.LayoutParams c() {
        if (this.e == null) {
            this.e = new RelativeLayout.LayoutParams(this.f2709b, this.f2708a);
            this.e.addRule(12);
            this.e.addRule(16, R.id.face_beauty_enter_button);
            this.e.setMargins(0, 0, 0, this.c);
        }
        return this.e;
    }
}
