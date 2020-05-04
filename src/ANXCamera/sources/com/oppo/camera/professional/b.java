package com.oppo.camera.professional;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.o.d;
import java.util.Locale;

/* compiled from: MainBarItem */
public class b extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private static int f2327a;

    /* renamed from: b  reason: collision with root package name */
    private Context f2328b = null;
    private ImageView c = null;
    private f d = null;
    private Drawable e = null;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;
    private Resources j;
    private int k = 1000;
    private boolean l = true;

    public b(Context context) {
        super(context);
        this.f2328b = context;
        this.j = this.f2328b.getResources();
        this.f = this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_text_size);
        this.g = this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_value_text_size);
        f2327a = this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_value_margin_top);
        ColorStateList colorStateList = this.f2328b.getResources().getColorStateList(R.color.profession_mode_bar_text_color);
        this.i = this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_value_margin_offset);
        this.c = new ImageView(this.f2328b);
        this.c.setId(this.k);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_image_width), this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_image_height)));
        addView(this.c);
        this.d = new f(this.f2328b);
        this.d.setVerticalDraw(true);
        this.d.setIncludeFontPadding(false);
        this.d.setTextSize(0, (float) this.g);
        this.d.setTypeface(d.u());
        this.d.setGravity(17);
        this.d.setTextColor(colorStateList);
        this.e = getResources().getDrawable(R.drawable.pro_ic_tips_auto);
        this.e.setBounds(0, 0, this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_auto_width), this.j.getDimensionPixelSize(R.dimen.main_mode_bar_item_auto_height));
        this.d.setCompoundDrawablePadding(d.a(2.0f));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.k);
        this.d.setLayoutParams(layoutParams);
        addView(this.d);
    }

    public void a(int i2, boolean z) {
        if (this.l) {
            f fVar = this.d;
            if (fVar == null) {
                return;
            }
            if (i2 == 0) {
                if (z) {
                    this.e.setTint(this.j.getColor(R.color.pointer_auto_color));
                } else {
                    this.e.setTint(this.j.getColor(R.color.camera_white));
                }
                this.d.setCompoundDrawables(this.e, (Drawable) null, (Drawable) null, (Drawable) null);
                return;
            }
            fVar.setCompoundDrawables((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public void a(boolean z) {
        this.l = z;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00c8  */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13 = i4 - i2;
        int i14 = i5 - i3;
        f fVar = this.d;
        int i15 = 0;
        if (fVar != null) {
            i7 = fVar.getMeasuredWidth();
            i6 = this.d.getMeasuredHeight();
        } else {
            i7 = 0;
            i6 = 0;
        }
        ImageView imageView = this.c;
        if (imageView != null) {
            int measuredWidth = imageView.getMeasuredWidth();
            int measuredHeight = this.c.getMeasuredHeight();
            int i16 = this.h;
            if (i16 == 90) {
                i12 = (((i13 - i6) - f2327a) - measuredWidth) / 2;
                i8 = (i14 - measuredHeight) / 2;
            } else if (i16 != 270) {
                i12 = (i13 - measuredWidth) / 2;
                i8 = f2327a;
            } else {
                i12 = (((i13 + i6) + f2327a) - measuredWidth) / 2;
                i8 = (i14 - measuredHeight) / 2;
            }
            String country = Locale.getDefault().getCountry();
            if (!"CN".equals(country) && !"TW".equals(country)) {
                i12 = (i13 - measuredWidth) / 2;
                i8 = f2327a;
            }
            this.c.layout(i12, i8, measuredWidth + i12, i8 + measuredHeight);
            i15 = measuredHeight;
        } else {
            i8 = 0;
        }
        if (this.d != null) {
            int i17 = this.h;
            if (i17 == 90) {
                i10 = ((((i13 + i15) + f2327a) - this.i) - i7) / 2;
                i11 = (i14 - i6) / 2;
            } else if (i17 != 270) {
                i9 = (i13 - i7) / 2;
                if (this.c != null) {
                    i8 = (f2327a - this.i) + i15;
                }
                String country2 = Locale.getDefault().getCountry();
                if (!"CN".equals(country2) && !"TW".equals(country2)) {
                    i9 = (i13 - i7) / 2;
                    if (this.c != null) {
                        i8 = (f2327a - this.i) + i15;
                    }
                }
                this.d.layout(i9, i8, i7 + i9, i6 + i8);
            } else {
                i10 = ((((i13 - i15) - f2327a) + this.i) - i7) / 2;
                i11 = (i14 - i6) / 2;
            }
            i9 = i10;
            String country22 = Locale.getDefault().getCountry();
            i9 = (i13 - i7) / 2;
            if (this.c != null) {
            }
            this.d.layout(i9, i8, i7 + i9, i6 + i8);
        }
    }

    public void setItemTitleImage(int i2) {
        ImageView imageView = this.c;
        if (imageView != null) {
            imageView.setImageResource(i2);
            this.c.measure(d.N(), d.M());
        }
    }

    public void setItemValueText(String str) {
        if (str != null && str.length() < f.f2352a) {
            this.d.setVerticalDraw(false);
        }
        this.d.setText(str);
        this.d.setContentDescription(str);
        this.d.measure(d.N(), d.M());
    }
}
