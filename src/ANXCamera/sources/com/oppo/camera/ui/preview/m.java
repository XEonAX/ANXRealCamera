package com.oppo.camera.ui.preview;

import android.app.Activity;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LayoutAnimationController;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.protobuf.nano.MessageNano;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.statistics.util.TimeInfoUtil;

/* compiled from: VideoRecordingTimeUI */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f2988a = {R.drawable.ic_time_zero, R.drawable.ic_time_one, R.drawable.ic_time_two, R.drawable.ic_time_three, R.drawable.ic_time_four, R.drawable.ic_time_five, R.drawable.ic_time_six, R.drawable.ic_time_seven, R.drawable.ic_time_eight, R.drawable.ic_time_nine};

    /* renamed from: b  reason: collision with root package name */
    private int f2989b = 0;
    private int c = 0;
    private boolean d = true;
    /* access modifiers changed from: private */
    public boolean e = false;
    private Activity f = null;
    private RelativeLayout g = null;
    /* access modifiers changed from: private */
    public LinearLayout h = null;
    private ImageView i = null;
    private ImageView j = null;
    private ImageView k = null;
    private ImageView l = null;
    private ImageView m = null;
    private ImageView n = null;
    private ImageView o = null;
    private ImageView p = null;
    /* access modifiers changed from: private */
    public Float q = null;
    private int r = 0;

    public m(Activity activity, int i2) {
        this.f = activity;
        this.r = i2;
    }

    /* access modifiers changed from: private */
    public AnimationSet a(float f2, float f3) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(new AlphaAnimation(f2, f3));
        animationSet.setDuration(300);
        return animationSet;
    }

    private void a(long j2) {
        ImageView imageView = this.j;
        if (imageView == null || this.k == null || this.l == null || this.m == null || this.n == null || this.o == null || this.p == null) {
            d.e("VideoRecordingTimeUI", "updateNormalRecordTimeView: parameter is invalid");
            return;
        }
        int i2 = (int) (j2 / 3600000);
        int i3 = (int) ((j2 % 3600000) / TimeInfoUtil.MILLISECOND_OF_A_MINUTE);
        int i4 = (int) ((j2 % TimeInfoUtil.MILLISECOND_OF_A_MINUTE) / 1000);
        if (i2 > 0) {
            imageView.setImageResource(f2988a[i2 / 10]);
            this.k.setImageResource(f2988a[i2 % 10]);
            i();
        } else {
            j();
        }
        this.m.setImageResource(f2988a[i3 / 10]);
        this.n.setImageResource(f2988a[i3 % 10]);
        this.o.setImageResource(f2988a[i4 / 10]);
        this.p.setImageResource(f2988a[i4 % 10]);
    }

    private void d() {
        this.g = (RelativeLayout) this.f.findViewById(R.id.camera);
        if (this.g != null && this.h == null) {
            this.f.getLayoutInflater().inflate(R.layout.record_time, this.g);
            this.h = (LinearLayout) this.f.findViewById(R.id.video_record_time_layout);
            this.i = (ImageView) this.h.findViewById(R.id.blink_record_icon);
            this.j = (ImageView) this.h.findViewById(R.id.video_hour_ten);
            this.k = (ImageView) this.h.findViewById(R.id.video_hour_unit);
            this.m = (ImageView) this.h.findViewById(R.id.video_minute_ten);
            this.n = (ImageView) this.h.findViewById(R.id.video_minute_unit);
            this.l = (ImageView) this.h.findViewById(R.id.video_colon);
            this.o = (ImageView) this.h.findViewById(R.id.video_second_ten);
            this.p = (ImageView) this.h.findViewById(R.id.video_second_unit);
        }
    }

    private void e() {
        this.g = (RelativeLayout) this.f.findViewById(R.id.camera);
        RelativeLayout relativeLayout = this.g;
        if (relativeLayout != null) {
            LinearLayout linearLayout = this.h;
            if (linearLayout != null) {
                relativeLayout.removeView(linearLayout);
                this.h = null;
            }
        }
    }

    private int[] f() {
        if (this.h == null) {
            return null;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(536870911, MessageNano.UNSET_ENUM_VALUE);
        this.h.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredWidth = this.h.getMeasuredWidth();
        int measuredHeight = this.h.getMeasuredHeight();
        this.h.layout(0, 0, measuredWidth, measuredHeight);
        return new int[]{measuredWidth, measuredHeight, this.i.getMeasuredWidth() / 2};
    }

    /* access modifiers changed from: private */
    public void g() {
        if (this.h != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            int width = this.g.getWidth();
            int[] f2 = f();
            PreviewFrameLayout previewFrameLayout = (PreviewFrameLayout) this.f.findViewById(R.id.frame_layout);
            int top = previewFrameLayout.getTop();
            int height = previewFrameLayout.getHeight();
            if (f2 != null && f2.length >= 3) {
                int i2 = 0;
                int i3 = f2[0];
                int i4 = f2[1];
                int i5 = f2[2];
                int i6 = this.f2989b;
                if (i6 == 90) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    layoutParams.topMargin = ((top + (height / 2)) + i5) - (i4 / 2);
                    layoutParams.rightMargin = com.oppo.camera.o.d.a(27.5f) - (i3 / 2);
                    i2 = 90;
                } else if (i6 != 270) {
                    layoutParams.addRule(9);
                    layoutParams.addRule(12);
                    layoutParams.leftMargin = (width / 2) - ((i3 / 2) + i5);
                    layoutParams.bottomMargin = this.r;
                } else {
                    layoutParams.addRule(9);
                    layoutParams.addRule(10);
                    layoutParams.topMargin = ((top + (height / 2)) - i5) - (i4 / 2);
                    layoutParams.leftMargin = com.oppo.camera.o.d.a(27.5f) - (i3 / 2);
                    i2 = 270;
                }
                this.h.setLayoutParams(layoutParams);
                this.h.setRotation((float) (-i2));
                this.g.removeView(this.h);
                this.g.addView(this.h);
            }
        }
    }

    private void h() {
        LinearLayout linearLayout = this.h;
        if (linearLayout != null) {
            if (linearLayout.getVisibility() == 0) {
                AnimationSet a2 = a(1.0f, 0.0f);
                a2.setAnimationListener(new Animation.AnimationListener() {
                    public void onAnimationEnd(Animation animation) {
                        m.this.g();
                        LayoutAnimationController layoutAnimationController = new LayoutAnimationController(m.this.a(0.1f, 1.0f));
                        layoutAnimationController.setDelay(0.0f);
                        layoutAnimationController.setOrder(0);
                        m.this.h.setLayoutAnimation(layoutAnimationController);
                        m.this.h.startLayoutAnimation();
                    }

                    public void onAnimationRepeat(Animation animation) {
                    }

                    public void onAnimationStart(Animation animation) {
                    }
                });
                this.h.startAnimation(a2);
                return;
            }
            g();
        }
    }

    private void i() {
        ImageView imageView = this.j;
        if (imageView != null && imageView.getVisibility() != 0) {
            ImageView imageView2 = this.k;
            if (imageView2 != null && imageView2.getVisibility() != 0) {
                ImageView imageView3 = this.l;
                if (imageView3 != null && imageView3.getVisibility() != 0) {
                    this.g.removeView(this.h);
                    this.j.setVisibility(0);
                    this.k.setVisibility(0);
                    this.l.setVisibility(0);
                    g();
                }
            }
        }
    }

    private void j() {
        ImageView imageView = this.j;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = this.k;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
        ImageView imageView3 = this.l;
        if (imageView3 != null) {
            imageView3.setVisibility(8);
        }
    }

    public void a() {
        d.a("VideoRecordingTimeUI", "onPause");
        LinearLayout linearLayout = this.h;
        if (linearLayout != null) {
            linearLayout.clearAnimation();
            this.h.setVisibility(8);
            this.e = false;
        }
        e();
    }

    public void a(int i2) {
        this.c = i2;
        if (this.d && this.f2989b != i2) {
            this.f2989b = i2;
            if (!this.e) {
                h();
            }
        }
    }

    public void a(long j2, boolean z) {
        if (this.h == null || this.i == null || j2 < 0) {
            d.e("VideoRecordingTimeUI", "updateRecordingTime: parameter is invalid");
            return;
        }
        a(j2);
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 4);
        }
    }

    public void a(Float f2, int i2) {
        d.e("VideoRecordingTimeUI", "showTimeUI");
        this.q = f2;
        this.r = i2;
        e();
        d();
        if (this.h != null) {
            g();
            this.h.setVisibility(0);
            this.h.clearAnimation();
            this.e = true;
            LayoutAnimationController layoutAnimationController = new LayoutAnimationController(a(0.1f, 1.0f));
            layoutAnimationController.setDelay(0.0f);
            layoutAnimationController.setOrder(0);
            this.h.setLayoutAnimation(layoutAnimationController);
            this.h.startLayoutAnimation();
            d.e("VideoRecordingTimeUI", "CameraTest Video Shutter Timing Start");
        }
        this.d = false;
    }

    public void a(boolean z) {
        d.e("VideoRecordingTimeUI", "hideTimeUI");
        this.e = false;
        LinearLayout linearLayout = this.h;
        if (linearLayout != null) {
            linearLayout.clearAnimation();
            this.e = true;
            if (z) {
                AnonymousClass1 r7 = new Animation.AnimationListener() {
                    public void onAnimationEnd(Animation animation) {
                        m.this.h.setVisibility(8);
                        Float unused = m.this.q = null;
                        boolean unused2 = m.this.e = false;
                        d.a("VideoRecordingTimeUI", "hideTimeUI, onAnimationEnd");
                    }

                    public void onAnimationRepeat(Animation animation) {
                    }

                    public void onAnimationStart(Animation animation) {
                        d.a("VideoRecordingTimeUI", "hideTimeUI, onAnimationStart");
                    }
                };
                AnimationSet a2 = a(1.0f, 0.0f);
                a2.setDuration(100);
                a2.setAnimationListener(r7);
                LayoutAnimationController layoutAnimationController = new LayoutAnimationController(a2);
                layoutAnimationController.setDelay(0.0f);
                layoutAnimationController.setOrder(0);
                this.h.setLayoutAnimation(layoutAnimationController);
                this.h.startLayoutAnimation();
            } else {
                this.h.setVisibility(8);
                this.q = null;
                this.e = false;
                d.a("VideoRecordingTimeUI", "hideTimeUI, without Animation");
            }
        }
        this.d = true;
        this.f2989b = this.c;
    }

    public void b() {
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    public void b(boolean z) {
        if (z) {
            this.i.setImageResource(R.drawable.ic_recording_indicator);
        } else {
            this.i.setVisibility(4);
        }
    }

    public boolean c() {
        if (this.e) {
            LinearLayout linearLayout = this.h;
            return linearLayout != null && linearLayout.getVisibility() == 0;
        }
    }
}
