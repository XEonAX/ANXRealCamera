package com.color.compat.internal.widget;

import android.os.AsyncTask;
import android.util.Log;
import com.android.internal.widget.LockPatternChecker;
import com.android.internal.widget.LockPatternUtils;
import com.color.inner.internal.widget.LockPatternCheckerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class LockPatternCheckerNative {
    private static final String TAG = "LockPatternCheckerNative";

    public interface OnCheckCallbackNative {
        void onCancelled() {
        }

        void onChecked(boolean z, int i);

        void onEarlyMatched() {
        }
    }

    public interface OnVerifyCallbackNative {
        void onVerified(byte[] bArr, int i);
    }

    private LockPatternCheckerNative() {
    }

    public static AsyncTask<?, ?, ?> checkPassword(LockPatternUtilsNative lockPatternUtilsNative, String str, int i, final OnCheckCallbackNative onCheckCallbackNative) {
        try {
            if (VersionUtils.isQ()) {
                return checkPassword(lockPatternUtilsNative, str != null ? str.getBytes() : null, i, onCheckCallbackNative);
            } else if (VersionUtils.isM()) {
                return LockPatternChecker.checkPassword(lockPatternUtilsNative.getLockPatternUtils(), str, i, new LockPatternChecker.OnCheckCallback() {
                    public void onCancelled() {
                        onCheckCallbackNative.onCancelled();
                    }

                    public void onChecked(boolean z, int i) {
                        onCheckCallbackNative.onChecked(z, i);
                    }

                    public void onEarlyMatched() {
                        onCheckCallbackNative.onEarlyMatched();
                    }
                });
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static AsyncTask<?, ?, ?> checkPassword(LockPatternUtilsNative lockPatternUtilsNative, byte[] bArr, int i, final OnCheckCallbackNative onCheckCallbackNative) {
        try {
            if (VersionUtils.isQ()) {
                return LockPatternCheckerWrapper.checkPassword(lockPatternUtilsNative.getLockPatternUtilsWrapper(), bArr, i, new LockPatternCheckerWrapper.OnCheckCallbackWrapper() {
                    public void onCancelled() {
                        onCheckCallbackNative.onCancelled();
                    }

                    public void onChecked(boolean z, int i) {
                        onCheckCallbackNative.onChecked(z, i);
                    }

                    public void onEarlyMatched() {
                        onCheckCallbackNative.onEarlyMatched();
                    }
                });
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static AsyncTask<?, ?, ?> checkPattern(LockPatternUtilsNative lockPatternUtilsNative, byte[] bArr, int i, final OnCheckCallbackNative onCheckCallbackNative) {
        try {
            if (VersionUtils.isQ()) {
                return LockPatternCheckerWrapper.checkPattern(lockPatternUtilsNative.getLockPatternUtilsWrapper(), bArr, i, new LockPatternCheckerWrapper.OnCheckCallbackWrapper() {
                    public void onCancelled() {
                        onCheckCallbackNative.onCancelled();
                    }

                    public void onChecked(boolean z, int i) {
                        onCheckCallbackNative.onChecked(z, i);
                    }

                    public void onEarlyMatched() {
                        onCheckCallbackNative.onEarlyMatched();
                    }
                });
            }
            if (VersionUtils.isM()) {
                return LockPatternChecker.checkPattern(lockPatternUtilsNative.getLockPatternUtils(), LockPatternUtils.byteArrayToPattern(bArr), i, new LockPatternChecker.OnCheckCallback() {
                    public void onCancelled() {
                        onCheckCallbackNative.onCancelled();
                    }

                    public void onChecked(boolean z, int i) {
                        onCheckCallbackNative.onChecked(z, i);
                    }

                    public void onEarlyMatched() {
                        onCheckCallbackNative.onEarlyMatched();
                    }
                });
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static AsyncTask<?, ?, ?> verifyPattern(LockPatternUtilsNative lockPatternUtilsNative, byte[] bArr, long j, int i, final OnVerifyCallbackNative onVerifyCallbackNative) {
        try {
            if (VersionUtils.isQ()) {
                return LockPatternCheckerWrapper.verifyPattern(lockPatternUtilsNative.getLockPatternUtilsWrapper(), bArr, j, i, new LockPatternCheckerWrapper.OnVerifyCallbackWrapper() {
                    public void onVerified(byte[] bArr, int i) {
                        onVerifyCallbackNative.onVerified(bArr, i);
                    }
                });
            } else if (VersionUtils.isM()) {
                return LockPatternChecker.verifyPattern(lockPatternUtilsNative.getLockPatternUtils(), LockPatternUtils.byteArrayToPattern(bArr), j, i, new LockPatternChecker.OnVerifyCallback() {
                    public void onVerified(byte[] bArr, int i) {
                        onVerifyCallbackNative.onVerified(bArr, i);
                    }
                });
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static AsyncTask<?, ?, ?> verifyTiedProfileChallenge(LockPatternUtilsNative lockPatternUtilsNative, byte[] bArr, boolean z, long j, int i, final OnVerifyCallbackNative onVerifyCallbackNative) {
        try {
            if (VersionUtils.isQ()) {
                return LockPatternCheckerWrapper.verifyTiedProfileChallenge(lockPatternUtilsNative.getLockPatternUtilsWrapper(), bArr, z, j, i, new LockPatternCheckerWrapper.OnVerifyCallbackWrapper() {
                    public void onVerified(byte[] bArr, int i) {
                        onVerifyCallbackNative.onVerified(bArr, i);
                    }
                });
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
