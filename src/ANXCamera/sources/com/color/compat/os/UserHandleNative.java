package com.color.compat.os;

import android.os.UserHandle;
import android.util.Log;
import com.color.inner.os.UserHandleWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class UserHandleNative {
    public static UserHandle CURRENT = null;
    public static UserHandle OWNER = null;
    private static String TAG = "UserHandleNative";
    public static int USER_ALL;
    public static int USER_CURRENT;
    public static int USER_SYSTEM;

    static {
        try {
            if (VersionUtils.isQ()) {
                OWNER = UserHandleWrapper.OWNER;
                USER_CURRENT = -2;
                USER_ALL = -1;
                CURRENT = UserHandleWrapper.CURRENT;
                USER_SYSTEM = 0;
            } else if (VersionUtils.isP()) {
                USER_CURRENT = -2;
                USER_ALL = -1;
                CURRENT = UserHandle.CURRENT;
                OWNER = UserHandle.OWNER;
            } else if (VersionUtils.isN()) {
                USER_SYSTEM = 0;
            } else if (VersionUtils.isL()) {
                USER_CURRENT = -2;
                CURRENT = UserHandle.CURRENT;
                OWNER = UserHandle.OWNER;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private UserHandleNative() {
    }

    public static UserHandle createUserHandle(int i) {
        try {
            if (VersionUtils.isQ()) {
                return UserHandleWrapper.createUserHandle(i);
            }
            if (VersionUtils.isP()) {
                return new UserHandle(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static int getIdentifier(UserHandle userHandle) {
        try {
            if (VersionUtils.isQ()) {
                return UserHandleWrapper.getIdentifier(userHandle);
            }
            if (VersionUtils.isP()) {
                return userHandle.getIdentifier();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getUserId(int i) {
        try {
            if (VersionUtils.isQ()) {
                return UserHandleWrapper.getUserId(i);
            }
            if (VersionUtils.isP()) {
                return UserHandle.getUserId(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int myUserId() {
        try {
            if (VersionUtils.isQ()) {
                return UserHandleWrapper.myUserId();
            }
            if (VersionUtils.isL()) {
                return UserHandle.myUserId();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }
}
