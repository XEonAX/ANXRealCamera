package com.oppo.camera.ui.CommonComponent;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.oppo.camera.R;
import com.oppo.camera.d;

public class ScaleBar extends View {
    public static final int CENTER_ALIGN = 2;
    private static final float FIRST_CONTROL_POINT_X = 0.0f;
    private static final float FIRST_CONTROL_POINT_Y = 0.0f;
    private static final int FLING_VELOCITY_THRESHOLD = 1000;
    public static final int LEFT_ALIGN = 1;
    private static final int SECOND = 1000;
    private static final float SECOND_CONTROL_POINT_X = 0.58f;
    private static final float SECOND_CONTROL_POINT_Y = 1.0f;
    private static final String TAG = "ScaleBar";
    private static final int TEN_SMALL_SCALE_BETWEEN_BIG_SCALE = 10;
    private static int sBigScaleAlpha = 255;
    private static int sBigScaleColor;
    private static int sPointerAutoColor;
    private static int sPointerScaleColor;
    private static int sSmallScaleAlpha = ((int) (((double) sBigScaleAlpha) * 0.5d));
    private int mAlign = 1;
    private int mBigScaleStrokeWidth;
    private int mCenterIndex;
    private int mCenterY;
    private Context mContext;
    private int mCountBetweenBigScale = 10;
    private int mCurrentIndex = 0;
    private float mDownX = 0.0f;
    private FlingRunnable mFlingRunnable;
    private int mLayoutWidth;
    private int mLevelNum;
    private int mMaxFlingVelocity;
    /* access modifiers changed from: private */
    public Handler mMyHandler;
    private Paint mPaint;
    /* access modifiers changed from: private */
    public ScaleBarValueChangeListener mScaleBarValueChangeListener;
    private int mScaleHeight;
    private int mScaleMargin = 30;
    private int mScalePointerHeight;
    private int mScalePointerX;
    private int mSmallScaleStrokeWidth;
    private int mStartDistanceX = 0;
    private VelocityTracker mVelocityTracker;
    private boolean mbAuto;
    private boolean mbInitIndex;
    private boolean mbInitScalePointerX;
    private boolean mbValid = true;

    private class FlingInterpolator extends PathInterpolator {
        FlingInterpolator() {
            super(0.0f, 0.0f, ScaleBar.SECOND_CONTROL_POINT_X, ScaleBar.SECOND_CONTROL_POINT_Y);
        }
    }

    private class FlingRunnable implements Runnable {
        private static final int DEFAULT_DURATION = 400;
        private int mDuration = 400;
        private float mDurationReciprocal;
        private int mFrameDuration = 16;
        private Interpolator mInterpolator = new FlingInterpolator();
        private float mLastX;
        private float mMagicVelocityPx = 0.15f;
        private long mStartTime;
        private float mTotalDistance;
        private float mVelocityX;
        private boolean mbFinish = false;

        public FlingRunnable(float f) {
            if (ScaleBar.this.mScaleBarValueChangeListener != null) {
                ScaleBar.this.mScaleBarValueChangeListener.onBarScrolling(!this.mbFinish);
            }
            this.mLastX = 0.0f;
            int i = this.mDuration;
            this.mDurationReciprocal = ScaleBar.SECOND_CONTROL_POINT_Y / ((float) i);
            this.mVelocityX = f;
            this.mTotalDistance = ((((float) i) * this.mVelocityX) / 1000.0f) * this.mMagicVelocityPx;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        }

        public void cancelFling() {
            this.mbFinish = true;
            if (ScaleBar.this.mScaleBarValueChangeListener != null) {
                ScaleBar.this.mScaleBarValueChangeListener.onBarScrolling(true ^ this.mbFinish);
            }
        }

        public void run() {
            if (!this.mbFinish) {
                int currentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.mStartTime);
                float interpolation = this.mInterpolator.getInterpolation(((float) currentAnimationTimeMillis) * this.mDurationReciprocal);
                float f = (interpolation - this.mLastX) * this.mTotalDistance;
                this.mLastX = interpolation;
                int i = this.mDuration;
                if (currentAnimationTimeMillis < i) {
                    ScaleBar.this.onMove(f);
                    ScaleBar.this.mMyHandler.postDelayed(this, (long) this.mFrameDuration);
                } else if (currentAnimationTimeMillis >= i) {
                    this.mLastX = 0.0f;
                    ScaleBar.this.scrollNearbyScale();
                    this.mbFinish = true;
                    if (ScaleBar.this.mScaleBarValueChangeListener != null) {
                        ScaleBar.this.mScaleBarValueChangeListener.onBarScrolling(true ^ this.mbFinish);
                    }
                }
            }
        }
    }

    public interface ScaleBarValueChangeListener {
        void onActionUp();

        void onBarMoving();

        void onBarScrolling(boolean z);

        void onValueChange(int i);
    }

    public ScaleBar(Context context, int i, Handler handler) {
        super(context);
        this.mMyHandler = handler;
        this.mLevelNum = i;
        this.mContext = context;
        init();
    }

    public ScaleBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        init();
    }

    private void init() {
        if (this.mLevelNum <= 0) {
            this.mbValid = false;
            return;
        }
        Resources resources = this.mContext.getResources();
        this.mBigScaleStrokeWidth = resources.getDimensionPixelSize(R.dimen.professional_mode_scale_bar_big_scale_stroke_width);
        this.mSmallScaleStrokeWidth = resources.getDimensionPixelSize(R.dimen.professional_mode_scale_bar_small_scale_stroke_width);
        this.mCenterY = resources.getDimensionPixelSize(R.dimen.professional_mode_level_panel_height) / 2;
        this.mScaleMargin = resources.getDimensionPixelSize(R.dimen.professional_mode_scale_bar_scale_margin);
        this.mScaleHeight = resources.getDimensionPixelSize(R.dimen.professional_mode_scale_bar_scale_height);
        this.mScalePointerHeight = resources.getDimensionPixelSize(R.dimen.professional_mode_scale_bar_scale_pointer_height);
        this.mBigScaleStrokeWidth = resources.getDimensionPixelSize(R.dimen.professional_mode_scale_bar_big_scale_stroke_width);
        this.mSmallScaleStrokeWidth = resources.getDimensionPixelSize(R.dimen.professional_mode_scale_bar_small_scale_stroke_width);
        sBigScaleColor = this.mContext.getColor(R.color.camera_white);
        sPointerScaleColor = resources.getColor(R.color.pointer_scale_color);
        sPointerAutoColor = resources.getColor(R.color.pointer_auto_color);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(sBigScaleColor);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth((float) this.mSmallScaleStrokeWidth);
        this.mMaxFlingVelocity = ViewConfiguration.getMaximumFlingVelocity();
        int i = this.mLevelNum;
        this.mCenterIndex = i % 2 == 0 ? (i / 2) - 1 : i / 2;
        if (this.mCenterIndex < 0) {
            this.mCenterIndex = 0;
        }
    }

    /* access modifiers changed from: private */
    public void onMove(float f) {
        if (!this.mbValid) {
            d.e(TAG, "onMove return, is not valid");
            return;
        }
        this.mStartDistanceX += (int) f;
        int i = this.mStartDistanceX;
        int i2 = this.mScalePointerX;
        if (i >= i2) {
            this.mStartDistanceX = i2;
        } else {
            int i3 = this.mScaleMargin;
            int i4 = this.mLevelNum;
            if (i + ((i4 - 1) * i3) <= i2) {
                this.mStartDistanceX = i2 - (i3 * (i4 - 1));
            }
        }
        updateIndex();
        invalidate();
    }

    /* access modifiers changed from: private */
    public void scrollNearbyScale() {
        int i = this.mStartDistanceX % this.mScaleMargin;
        if (i != 0) {
            int abs = Math.abs(i);
            int i2 = this.mScaleMargin;
            if (abs < i2 / 2) {
                this.mStartDistanceX -= i;
            } else if (i > 0) {
                this.mStartDistanceX = (this.mStartDistanceX - i) + i2;
            } else {
                this.mStartDistanceX = (this.mStartDistanceX - i) - i2;
            }
            updateIndex();
            postInvalidate();
        }
    }

    private void updateIndex() {
        if (this.mScaleMargin <= 0) {
            this.mScaleMargin = 30;
        }
        if (this.mLevelNum != 0) {
            int abs = Math.abs((this.mScalePointerX - this.mStartDistanceX) / this.mScaleMargin) % this.mLevelNum;
            ScaleBarValueChangeListener scaleBarValueChangeListener = this.mScaleBarValueChangeListener;
            if (!(scaleBarValueChangeListener == null || abs == this.mCurrentIndex)) {
                scaleBarValueChangeListener.onBarMoving();
                this.mScaleBarValueChangeListener.onValueChange(abs);
            }
            setCurrentIndex(abs);
        }
    }

    public int getCurrentIndex() {
        return this.mCurrentIndex;
    }

    public void initDataIndex(int i) {
        if (i >= 0 && i < this.mLevelNum) {
            this.mCurrentIndex = i;
            if (this.mbInitScalePointerX) {
                this.mStartDistanceX = this.mScalePointerX - (this.mScaleMargin * i);
                this.mbInitIndex = true;
                invalidate();
            }
        }
    }

    public boolean needChangeValue() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.mbValid) {
            if (1 == getLayoutDirection()) {
                canvas.scale(-1.0f, SECOND_CONTROL_POINT_Y, (float) (getWidth() / 2), (float) (getHeight() / 2));
            } else {
                Canvas canvas2 = canvas;
            }
            this.mPaint.setColor(sBigScaleColor);
            int i = this.mCenterY;
            int i2 = (this.mScaleHeight / 2) + i;
            int i3 = this.mAlign == 2 ? this.mCenterIndex % this.mCountBetweenBigScale : 0;
            for (int i4 = 0; i4 < this.mLevelNum; i4++) {
                float max = ((float) Math.max((this.mLayoutWidth / 2) - ((Math.abs(this.mCurrentIndex - i4) + 1) * this.mScaleMargin), 0)) / ((float) (this.mLayoutWidth / 2));
                if (i4 % this.mCountBetweenBigScale == i3) {
                    this.mPaint.setStrokeWidth((float) this.mSmallScaleStrokeWidth);
                    this.mPaint.setAlpha((int) (((float) sBigScaleAlpha) * max));
                } else {
                    this.mPaint.setStrokeWidth((float) this.mSmallScaleStrokeWidth);
                    this.mPaint.setAlpha((int) (((float) sSmallScaleAlpha) * max));
                }
                int i5 = this.mStartDistanceX;
                int i6 = this.mScaleMargin;
                canvas.drawLine((float) ((i6 * i4) + i5), (float) i2, (float) (i5 + (i6 * i4)), (float) i, this.mPaint);
            }
            int i7 = this.mCenterY;
            int i8 = this.mScaleHeight;
            int i9 = (i8 / 2) + i7;
            int i10 = (i7 + (i8 / 2)) - i8;
            if (this.mbAuto) {
                this.mPaint.setColor(sPointerAutoColor);
            } else {
                this.mPaint.setColor(sPointerScaleColor);
            }
            this.mPaint.setAlpha(sBigScaleAlpha);
            this.mPaint.setStrokeWidth((float) this.mBigScaleStrokeWidth);
            int i11 = this.mScalePointerX;
            canvas.drawLine((float) i11, (float) i9, (float) i11, (float) i10, this.mPaint);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mLayoutWidth <= 0) {
            this.mLayoutWidth = getMeasuredWidth();
            int i3 = this.mLayoutWidth / 2;
            this.mScalePointerX = i3 - (i3 % this.mScaleMargin);
            this.mbInitScalePointerX = true;
            if (!this.mbInitIndex) {
                this.mStartDistanceX = 0;
            }
            int i4 = this.mCurrentIndex;
            if (i4 >= 0) {
                initDataIndex(i4);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mDownX = motionEvent.getX();
            this.mVelocityTracker = VelocityTracker.obtain();
            FlingRunnable flingRunnable = this.mFlingRunnable;
            if (flingRunnable != null) {
                flingRunnable.cancelFling();
                this.mFlingRunnable = null;
            }
        } else if (action == 1) {
            float f = 0.0f;
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
                this.mVelocityTracker.computeCurrentVelocity(1000, (float) this.mMaxFlingVelocity);
                f = this.mVelocityTracker.getXVelocity();
                this.mVelocityTracker.clear();
            }
            if (Math.abs(f) >= 1000.0f) {
                if (1 == getLayoutDirection()) {
                    f = -f;
                }
                this.mFlingRunnable = new FlingRunnable(f);
                this.mMyHandler.post(this.mFlingRunnable);
            } else {
                scrollNearbyScale();
                ScaleBarValueChangeListener scaleBarValueChangeListener = this.mScaleBarValueChangeListener;
                if (scaleBarValueChangeListener != null) {
                    scaleBarValueChangeListener.onActionUp();
                }
            }
        } else if (action == 2) {
            float x = motionEvent.getX() - this.mDownX;
            this.mDownX = motionEvent.getX();
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            if (1 == getLayoutDirection()) {
                onMove(-x);
            } else {
                onMove(x);
            }
        } else if (action == 3) {
            VelocityTracker velocityTracker3 = this.mVelocityTracker;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.mVelocityTracker = null;
            }
            scrollNearbyScale();
        }
        return true;
    }

    public void scrollTo(int i) {
        if (i >= 0 && i < this.mLevelNum) {
            this.mStartDistanceX = this.mScalePointerX - (this.mScaleMargin * i);
            invalidate();
        }
    }

    public void setAlign(int i) {
        if (i == 1 || i == 2) {
            this.mAlign = i;
        }
    }

    public void setAuto(boolean z) {
        this.mbAuto = z;
        invalidate();
    }

    public void setCurrentIndex(int i) {
        if (i >= 0 && i < this.mLevelNum) {
            this.mCurrentIndex = i;
        }
    }

    public void setScaleBarValueChangeListener(ScaleBarValueChangeListener scaleBarValueChangeListener) {
        this.mScaleBarValueChangeListener = scaleBarValueChangeListener;
    }

    public void sliderLeft() {
        onMove((float) (-this.mScaleMargin));
    }

    public void sliderRight() {
        onMove((float) this.mScaleMargin);
    }
}
