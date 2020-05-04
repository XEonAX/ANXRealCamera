package com.oppo.camera.professional;

import android.content.Context;
import android.widget.RelativeLayout;
import com.oppo.camera.d;

/* compiled from: RotateView */
public class g extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2354a = true;

    /* renamed from: b  reason: collision with root package name */
    protected int f2355b = -1;
    private Context c;

    public g(Context context, int i) {
        super(context);
        this.c = context;
        this.f2355b = i;
        d.e("RotateView", "RotateView mOrientation is " + this.f2355b);
        a(this.f2355b, false);
    }

    public void a(int i, boolean z) {
    }

    public void setRotateViewClickable(boolean z) {
        this.f2354a = z;
        setAlpha(this.f2354a ? 1.0f : 0.5f);
    }
}
