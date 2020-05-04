package com.color.compat.content.pm;

import android.content.pm.UserInfo;
import android.os.UserHandle;
import android.util.Log;
import com.color.inner.content.pm.UserInfoWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class UserInfoNative {
    private static final String TAG = "UserInfoNative";
    private UserInfo mUserInfo;
    private UserInfoWrapper mUserInfoWrapper;

    public UserInfoNative(UserInfo userInfo) {
        try {
            if (VersionUtils.isQ()) {
                throw new UnSupportedApiVersionException();
            } else if (VersionUtils.isL()) {
                this.mUserInfo = userInfo;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public UserInfoNative(UserInfoWrapper userInfoWrapper) {
        try {
            if (VersionUtils.isQ()) {
                this.mUserInfoWrapper = userInfoWrapper;
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public int getId() {
        try {
            if (VersionUtils.isQ()) {
                if (this.mUserInfoWrapper != null) {
                    return this.mUserInfoWrapper.getId();
                }
                return -1;
            } else if (!VersionUtils.isL()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mUserInfo != null) {
                return this.mUserInfo.id;
            } else {
                return -1;
            }
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return -1;
        }
    }

    public UserHandle getUserHandle() {
        try {
            if (VersionUtils.isQ()) {
                if (this.mUserInfoWrapper != null) {
                    return this.mUserInfoWrapper.getUserHandle();
                }
                return null;
            } else if (!VersionUtils.isL()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mUserInfo != null) {
                return this.mUserInfo.getUserHandle();
            } else {
                return null;
            }
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }
}
