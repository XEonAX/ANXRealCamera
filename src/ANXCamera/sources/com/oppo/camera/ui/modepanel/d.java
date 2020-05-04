package com.oppo.camera.ui.modepanel;

import android.app.Activity;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.oppo.camera.R;

/* compiled from: ModeTitle */
public class d implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Activity f2848a = null;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f2849b = null;
    private TextView c = null;
    private a d = null;
    private int e = 8;
    private Typeface f = null;

    /* compiled from: ModeTitle */
    public interface a {
        void a();
    }

    public d(Activity activity, ViewGroup viewGroup) {
        this.f2848a = activity;
        a(viewGroup);
    }

    private AnimationSet a(float f2, float f3) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(new AlphaAnimation(f2, f3));
        return animationSet;
    }

    private void a(ViewGroup viewGroup) {
        this.f2848a.getLayoutInflater().inflate(R.layout.mode_title, viewGroup);
        this.f2849b = (RelativeLayout) this.f2848a.findViewById(R.id.mode_title_layout);
        this.c = (TextView) this.f2849b.findViewById(R.id.mode_name);
        this.c.setTypeface(b());
        this.f2849b.setOnClickListener(this);
    }

    private Typeface b() {
        Typeface typeface = this.f;
        if (typeface != null) {
            return typeface;
        }
        try {
            this.f = Typeface.createFromFile("/system/fonts/ColorOSUI-Medium.ttf");
        } catch (Exception unused) {
            this.f = Typeface.DEFAULT;
            com.oppo.camera.d.e("ModeTitle", "getFontTypeface, create special typeface fail");
        }
        return this.f;
    }

    private void c() {
        AnimationSet a2 = a(0.0f, 1.0f);
        a2.setDuration(160);
        a2.setInterpolator(AnimationUtils.loadInterpolator(this.f2848a, R.anim.mode_title_interpolator));
        this.f2849b.setVisibility(0);
        this.f2849b.clearAnimation();
        this.f2849b.startAnimation(a2);
    }

    private void d() {
        AnimationSet a2 = a(1.0f, 0.0f);
        a2.setDuration(80);
        a2.setInterpolator(AnimationUtils.loadInterpolator(this.f2848a, R.anim.mode_title_interpolator));
        this.f2849b.setVisibility(8);
        this.f2849b.clearAnimation();
        this.f2849b.startAnimation(a2);
    }

    public void a(int i, boolean z) {
        com.oppo.camera.d.a("ModeTitle", "setVisibility, visibility: " + i);
        if (this.e != i) {
            this.e = i;
            if (!z) {
                this.f2849b.setVisibility(i);
            } else if (i == 0) {
                c();
            } else {
                d();
            }
        }
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public void a(String str) {
        this.c.setText(str);
        this.f2849b.setContentDescription(str);
    }

    public boolean a() {
        return this.e == 0;
    }

    public void onClick(View view) {
        a aVar = this.d;
        if (aVar != null) {
            aVar.a();
        }
    }
}
