package com.oppo.camera.professional;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.oppo.camera.o.d;

/* compiled from: ImageItem */
public class a extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public static int f2325a = 198;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f2326b;
    private f c;
    private int d;
    private int e;
    private int f;

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i3 - i;
        int i11 = i4 - i2;
        f fVar = this.c;
        int i12 = 0;
        if (fVar != null) {
            i6 = fVar.getMeasuredWidth();
            i5 = this.c.getMeasuredHeight();
        } else {
            i6 = 0;
            i5 = 0;
        }
        ImageView imageView = this.f2326b;
        if (imageView != null) {
            int measuredWidth = imageView.getMeasuredWidth();
            int measuredHeight = this.f2326b.getMeasuredHeight();
            int i13 = this.f;
            if (i13 == 90) {
                i9 = (((i10 - i5) - this.d) - measuredWidth) / 2;
                i7 = (i11 - measuredHeight) / 2;
            } else if (i13 != 270) {
                i9 = (i10 - measuredWidth) / 2;
                i7 = this.e;
            } else {
                i9 = (((i10 + i5) + this.d) - measuredWidth) / 2;
                i7 = (i11 - measuredHeight) / 2;
            }
            this.f2326b.layout(i9, i7, measuredWidth + i9, i7 + measuredHeight);
            i12 = measuredHeight;
        } else {
            i7 = 0;
        }
        if (this.c != null) {
            int i14 = this.f;
            if (i14 == 90) {
                i8 = (((i10 + i12) + this.d) - i6) / 2;
                i7 = (i11 - i5) / 2;
            } else if (i14 != 270) {
                i8 = (i10 - i6) / 2;
                ImageView imageView2 = this.f2326b;
                if (imageView2 != null) {
                    i7 = imageView2.getBottom() + this.d;
                }
            } else {
                i8 = (((i10 - i12) - this.d) - i6) / 2;
                i7 = (i11 - i5) / 2;
            }
            this.c.layout(i8, i7, i6 + i8, i5 + i7);
        }
    }

    public void setItemValueText(String str) {
        this.c.setText(str);
        this.c.setTypeface(d.u());
        this.c.setContentDescription(str);
        this.c.measure(d.N(), d.M());
    }

    public void setItemViewDrawable(Drawable drawable) {
        this.f2326b.setImageDrawable(drawable);
        this.f2326b.measure(d.N(), d.M());
    }
}
