package com.oppo.camera.ui.menu.a;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.oppo.camera.R;
import com.oppo.camera.o.d;
import com.oppo.camera.ui.OppoNumAISeekBar;
import com.oppo.camera.ui.OppoNumSeekBar;
import com.oppo.camera.ui.menu.a.c;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FaceBeautyCustomMenu */
class e implements a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f2710a = {0, 0, 0, 0, -50, 0, 0, 0};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2711b = {100, 100, 100, 100, 50, 100, 100, 100};
    private int c = -2;
    private int d = 0;
    private c e = null;
    private View f = null;
    private View g = null;
    private OppoNumAISeekBar h = null;
    private View i = null;
    private View j = null;
    private RecyclerView k = null;
    private LinearLayoutManager l = null;
    private ArrayList<b> m = null;
    private RelativeLayout.LayoutParams n = null;

    public e(Activity activity, View.OnClickListener onClickListener, c.b bVar, OppoNumSeekBar.b bVar2) {
        int dimensionPixelSize = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_item_margin_left);
        int dimensionPixelSize2 = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_custom_seekbar_margin_left);
        int dimensionPixelSize3 = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_custom_seekbar_margin_right);
        int dimensionPixelSize4 = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_seekbar_padding_bottom);
        int dimensionPixelSize5 = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_item_space);
        this.d = d.F() - activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_menu_bottom_margin_panel);
        this.c = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_custom_height);
        this.e = new c(activity) {
            public int a(int i) {
                return R.layout.face_beauty_menu_item;
            }
        };
        this.e.a(i());
        this.e.a(bVar);
        this.f = activity.getLayoutInflater().inflate(R.layout.face_beauty_custom, (ViewGroup) null);
        this.i = this.f.findViewById(R.id.face_beauty_none);
        this.j = this.f.findViewById(R.id.face_beauty_reset);
        this.g = this.f.findViewById(R.id.face_beauty_custom_list);
        this.h = (OppoNumAISeekBar) this.f.findViewById(R.id.face_beauty_seekbar);
        this.h.setPadding(dimensionPixelSize2, 0, dimensionPixelSize3, dimensionPixelSize4);
        this.h.setOnProgressChangedListener(bVar2);
        this.j.setOnClickListener(onClickListener);
        this.i.setOnClickListener(onClickListener);
        this.k = (RecyclerView) this.f.findViewById(R.id.face_beauty_custom_recycler);
        this.l = new LinearLayoutManager(activity, 0, false);
        this.k.setAdapter(this.e);
        this.k.setLayoutManager(this.l);
        this.k.setFadingEdgeLength(activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_custom_recycler_fadding));
        this.k.setHorizontalFadingEdgeEnabled(true);
        f fVar = new f(this.e.b(), dimensionPixelSize5, dimensionPixelSize);
        fVar.a(0, dimensionPixelSize);
        this.k.a((RecyclerView.h) fVar);
        a((TextView) this.i.findViewById(R.id.tv_face_beauty_custom_none), activity.getString(R.string.camera_face_beauty_menu_level_none));
        a((TextView) this.j.findViewById(R.id.tv_face_beauty_custom_reset), activity.getString(R.string.camera_face_beauty_menu_reset));
    }

    private void a(TextView textView, String str) {
        if (textView != null && str != null) {
            Rect rect = new Rect();
            textView.getPaint().getTextBounds(str, 0, str.length(), rect);
            if (textView.getTextSize() < ((float) rect.height())) {
                textView.setMaxLines(1);
            } else {
                textView.setMaxLines(2);
            }
        }
    }

    private List<b> i() {
        if (this.m == null) {
            this.m = new ArrayList<>();
            this.m.add(new b(R.string.camera_beauty_custom_exfoliating, R.drawable.face_beauty_custom_exfoliating_dark, R.drawable.face_beauty_custom_exfoliating_light));
            this.m.add(new b(R.string.camera_beauty_custom_thin_face, R.drawable.face_beauty_custom_thin_face_dark, R.drawable.face_beauty_custom_thin_face_light));
            this.m.add(new b(R.string.camera_beauty_custom_big_eye, R.drawable.face_beauty_custom_big_eye_dark, R.drawable.face_beauty_custom_big_eye_light));
            this.m.add(new b(R.string.camera_beauty_custom_thin_nasal, R.drawable.face_beauty_custom_thin_nasal_dark, R.drawable.face_beauty_custom_thin_nasal_light));
            this.m.add(new b(R.string.camera_beauty_custom_chin, R.drawable.face_beauty_custom_chin_dark, R.drawable.face_beauty_custom_chin_light));
            this.m.add(new b(R.string.camera_beauty_custom_little_face, R.drawable.face_beauty_custom_little_face_dark, R.drawable.face_beauty_custom_little_face_light));
            this.m.add(new b(R.string.camera_beauty_custom_makeup, R.drawable.face_beauty_custom_makeup_dark, R.drawable.face_beauty_custom_makeup_light));
            this.m.add(new b(R.string.camera_beauty_custom_3d, R.drawable.face_beauty_custom_3d_dark, R.drawable.face_beauty_custom_3d_light));
        }
        return this.m;
    }

    public void a() {
        ViewGroup viewGroup = (ViewGroup) this.f.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f);
        }
    }

    public void a(int i2, boolean z) {
        this.e.e(i2);
        if (i2 >= 0) {
            a(true);
            if (z && i2 >= 0) {
                try {
                    if (this.l.J() <= 0) {
                        return;
                    }
                    if (i2 < this.l.p() || i2 > this.l.r()) {
                        this.k.b(i2);
                    }
                } catch (Exception unused) {
                    this.k.b(i2);
                }
            }
        } else {
            this.k.b(0);
        }
    }

    public void a(int i2, int[] iArr) {
        int e2 = e();
        if (e2 >= 0 && e2 < f2711b.length) {
            if (i2 == -100000) {
                i2 = iArr[e2];
            }
            this.h.b(f2710a[e2]).a(f2711b[e2]).d(iArr[e2]).c(i2).postInvalidate();
        }
    }

    public void a(boolean z) {
        View view = this.i;
        if (view != null) {
            view.setSelected(!z);
        }
    }

    public View b() {
        return this.f;
    }

    public void b(boolean z) {
        View view = this.j;
        if (view != null) {
            view.setSelected(z);
        }
    }

    public void c() {
        OppoNumAISeekBar oppoNumAISeekBar = this.h;
        if (oppoNumAISeekBar != null) {
            oppoNumAISeekBar.setVisibility(4);
        }
    }

    public void d() {
        OppoNumAISeekBar oppoNumAISeekBar = this.h;
        if (oppoNumAISeekBar != null) {
            oppoNumAISeekBar.setVisibility(0);
            this.h.setAlpha(1.0f);
        }
    }

    public int e() {
        return this.e.a();
    }

    public ViewGroup.LayoutParams f() {
        if (this.n == null) {
            this.n = new RelativeLayout.LayoutParams(-1, this.c);
            this.n.addRule(12);
            this.n.setMargins(0, 0, 0, this.d);
        }
        return this.n;
    }

    public View g() {
        return this.g;
    }

    public View h() {
        return this.h;
    }
}
