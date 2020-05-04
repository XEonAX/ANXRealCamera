package com.color.compat.os;

import android.content.Context;
import android.content.pm.UserInfo;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import com.color.compat.content.pm.UserInfoNative;
import com.color.inner.content.pm.UserInfoWrapper;
import com.color.inner.os.UserManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.ArrayList;
import java.util.List;

public class UserManagerNative {
    private static final String TAG = "UserManagerNative";

    private UserManagerNative() {
    }

    public static boolean canShowMultiUserEntry(Context context) {
        try {
            if (VersionUtils.isQ()) {
                return UserManagerWrapper.canShowMultiUserEntry(context);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean canShowMultiUserEntry(Context context, int i) {
        try {
            if (VersionUtils.isQ()) {
                return UserManagerWrapper.canShowMultiUserEntry(context, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static UserInfoNative createUser(UserManager userManager, String str, int i) {
        try {
            UserInfoWrapper createUser = UserManagerWrapper.createUser(userManager, str, i);
            if (createUser != null) {
                return new UserInfoNative(createUser);
            }
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static UserInfoNative getUserInfo(UserManager userManager, int i) {
        try {
            if (VersionUtils.isQ()) {
                UserInfoWrapper userInfo = UserManagerWrapper.getUserInfo(userManager, i);
                if (userInfo != null) {
                    return new UserInfoNative(userInfo);
                }
                return null;
            } else if (VersionUtils.isL()) {
                UserInfo userInfo2 = userManager.getUserInfo(i);
                if (userInfo2 != null) {
                    return new UserInfoNative(userInfo2);
                }
                return null;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static List<UserInfoNative> getUsers(Context context) {
        try {
            List<UserInfoWrapper> users = UserManagerWrapper.getUsers(context);
            ArrayList arrayList = new ArrayList();
            for (UserInfoWrapper userInfoNative : users) {
                arrayList.add(new UserInfoNative(userInfoNative));
            }
            return arrayList;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static boolean isUserIDExist(Context context, int i) {
        try {
            return UserManagerWrapper.isUserIDExist(context, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isUserUnlockingOrUnlocked(Context context, UserHandle userHandle) {
        try {
            if (VersionUtils.isQ()) {
                return UserManagerWrapper.isUserUnlockingOrUnlocked(context, userHandle);
            }
            if (VersionUtils.isN_MR1()) {
                return ((UserManager) context.getSystemService("user")).isUserUnlockingOrUnlocked(userHandle);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
