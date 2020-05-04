package com.color.support.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;

public abstract class ColorSlideDeleteAnimation {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public View f1634a;

    /* renamed from: com.color.support.widget.ColorSlideDeleteAnimation$1  reason: invalid class name */
    class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ColorSlideDeleteAnimation f1635a;

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f1635a.f1634a.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* renamed from: com.color.support.widget.ColorSlideDeleteAnimation$2  reason: invalid class name */
    class AnonymousClass2 implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ColorSlideDeleteAnimation f1636a;

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            this.f1636a.a();
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }
    }

    private static class ViewWrapper {

        /* renamed from: a  reason: collision with root package name */
        View f1637a;

        public int getHeight() {
            return this.f1637a.getLayoutParams().height;
        }

        public void setHeight(int i) {
            this.f1637a.getLayoutParams().height = i;
            this.f1637a.requestLayout();
        }
    }

    public abstract void a();
}
