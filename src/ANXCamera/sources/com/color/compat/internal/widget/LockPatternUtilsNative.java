package com.color.compat.internal.widget;

import android.content.Context;
import android.util.Log;
import com.android.internal.widget.LockPatternUtils;
import com.color.inner.internal.widget.LockPatternUtilsWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class LockPatternUtilsNative {
    private static final long INVALID_VALUE = -1;
    public static int MIN_LOCK_PATTERN_SIZE = 0;
    public static String PASSWORD_TYPE_KEY = null;
    private static final String TAG = "LockPatternUtilsNative";
    private LockPatternUtils mLockPatternUtils;
    private LockPatternUtilsWrapper mLockPatternUtilsWrapper;

    public static final class RequestThrottledExceptionNative extends Exception {
        private final LockPatternUtilsWrapper.RequestThrottledExceptionWrapper mCauseWrapper;

        private RequestThrottledExceptionNative(LockPatternUtilsWrapper.RequestThrottledExceptionWrapper requestThrottledExceptionWrapper) {
            super(requestThrottledExceptionWrapper);
            this.mCauseWrapper = requestThrottledExceptionWrapper;
        }

        public int getTimeoutMs() {
            try {
                if (VersionUtils.isQ()) {
                    return this.mCauseWrapper.getTimeoutMs();
                }
                throw new UnSupportedApiVersionException();
            } catch (Throwable th) {
                Log.e(LockPatternUtilsNative.TAG, th.toString());
                return 0;
            }
        }
    }

    static {
        try {
            if (VersionUtils.isQ()) {
                PASSWORD_TYPE_KEY = "lockscreen.password_type";
                MIN_LOCK_PATTERN_SIZE = 4;
            } else if (VersionUtils.isL()) {
                PASSWORD_TYPE_KEY = "lockscreen.password_type";
                MIN_LOCK_PATTERN_SIZE = 4;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private LockPatternUtilsNative() {
    }

    public LockPatternUtilsNative(Context context) {
        try {
            if (VersionUtils.isQ()) {
                this.mLockPatternUtilsWrapper = new LockPatternUtilsWrapper(context);
            } else if (VersionUtils.isL()) {
                this.mLockPatternUtils = new LockPatternUtils(context);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private boolean clearLock(byte[] bArr, int i, boolean z) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.clearLock(bArr, i, z);
                }
                throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private boolean saveLockPassword(byte[] bArr, byte[] bArr2, int i, int i2, boolean z) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.saveLockPassword(bArr, bArr2, i, i2, z);
                }
                throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public boolean clearLock(byte[] bArr, int i) {
        return clearLock(bArr, i, false);
    }

    public int getKeyguardStoredPasswordQuality(int i) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.getKeyguardStoredPasswordQuality(i);
                }
            } else if (!VersionUtils.isL()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.getKeyguardStoredPasswordQuality(i);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
    }

    /* access modifiers changed from: package-private */
    public LockPatternUtils getLockPatternUtils() {
        try {
            if (VersionUtils.isQ()) {
                throw new UnSupportedApiVersionException();
            } else if (VersionUtils.isL()) {
                return this.mLockPatternUtils;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
        }
    }

    /* access modifiers changed from: package-private */
    public LockPatternUtilsWrapper getLockPatternUtilsWrapper() {
        try {
            if (VersionUtils.isQ()) {
                return this.mLockPatternUtilsWrapper;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
        }
    }

    public long getLockoutAttemptDeadline(int i) {
        try {
            if (VersionUtils.isQ()) {
                return this.mLockPatternUtilsWrapper.getLockoutAttemptDeadline(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public boolean isLockPasswordEnabled(int i) {
        try {
            if (VersionUtils.isQ()) {
                return this.mLockPatternUtilsWrapper.isLockPasswordEnabled(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public boolean isLockScreenDisabled(int i) {
        try {
            if (VersionUtils.isQ()) {
                return this.mLockPatternUtilsWrapper.isLockScreenDisabled(i);
            }
            if (VersionUtils.isM()) {
                return this.mLockPatternUtils.isLockScreenDisabled(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
        }
    }

    public boolean isSecure(int i) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.isSecure(i);
                }
            } else if (!VersionUtils.isL_MR1()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.isSecure(i);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
    }

    public boolean isTactileFeedbackEnabled() {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.isTactileFeedbackEnabled();
                }
            } else if (!VersionUtils.isL()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.isTactileFeedbackEnabled();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
    }

    public boolean isVisiblePatternEnabled(int i) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.isVisiblePatternEnabled(i);
                }
            } else if (!VersionUtils.isM()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.isVisiblePatternEnabled(i);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
    }

    public void reportSuccessfulPasswordAttempt(int i) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    this.mLockPatternUtilsWrapper.reportSuccessfulPasswordAttempt(i);
                    return;
                }
            } else if (!VersionUtils.isM()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mLockPatternUtils != null) {
                this.mLockPatternUtils.reportSuccessfulPasswordAttempt(i);
                return;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
    }

    public boolean saveLockPassword(String str, String str2, int i, int i2) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.saveLockPassword(str, str2, i, i2);
                }
                throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public boolean saveLockPassword(byte[] bArr, byte[] bArr2, int i, int i2) {
        return saveLockPassword(bArr, bArr2, i, i2, false);
    }

    public boolean saveLockPattern(byte[] bArr, byte[] bArr2, int i) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.saveLockPattern(bArr, bArr2, i);
                }
                throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public void setLockScreenDisabled(boolean z, int i) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    this.mLockPatternUtilsWrapper.setLockScreenDisabled(z, i);
                    return;
                }
            } else if (!VersionUtils.isM()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mLockPatternUtils != null) {
                this.mLockPatternUtils.setLockScreenDisabled(z, i);
                return;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
    }

    public long setLockoutAttemptDeadline(int i, int i2) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.setLockoutAttemptDeadline(i, i2);
                }
            } else if (!VersionUtils.isM()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.setLockoutAttemptDeadline(i, i2);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
    }

    public byte[] verifyPattern(byte[] bArr, long j, int i) throws RequestThrottledExceptionNative {
        try {
            if (VersionUtils.isQ()) {
                if (this.mLockPatternUtilsWrapper != null) {
                    return this.mLockPatternUtilsWrapper.verifyPattern(bArr, j, i);
                }
                throw new RuntimeException("have construct LockPatternUtilsNative with context parameter");
            }
            throw new UnSupportedApiVersionException();
        } catch (LockPatternUtilsWrapper.RequestThrottledExceptionWrapper e) {
            throw new RequestThrottledExceptionNative(e);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
