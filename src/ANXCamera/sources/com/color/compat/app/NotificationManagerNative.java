package com.color.compat.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import com.color.inner.app.NotificationManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.List;

public class NotificationManagerNative {
    private static final String TAG = "NotificationManagerNative";

    private NotificationManagerNative() {
    }

    public static boolean areNotificationsEnabledForPackage(String str, int i) {
        try {
            if (VersionUtils.isQ()) {
                return NotificationManagerWrapper.areNotificationsEnabledForPackage(str, i);
            }
            if (VersionUtils.isN()) {
                return NotificationManager.getService().areNotificationsEnabledForPackage(str, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return false;
        }
    }

    public static void cancelAllNotifications(String str, int i) {
        try {
            NotificationManagerWrapper.cancelAllNotifications(str, i);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
        }
    }

    public static void createNotificationChannelGroups(String str, List list) {
        try {
            NotificationManagerWrapper.createNotificationChannelGroups(str, list);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
        }
    }

    public static void createNotificationChannelsForPackage(String str, int i, List list) {
        try {
            NotificationManagerWrapper.createNotificationChannelsForPackage(str, i, list);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
        }
    }

    public static StatusBarNotification[] getActiveNotifications(String str) {
        try {
            return NotificationManagerWrapper.getActiveNotifications(str);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public static int getDeletedChannelCount(String str, int i) {
        try {
            return NotificationManagerWrapper.getDeletedChannelCount(str, i);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return -1;
        }
    }

    public static NotificationChannel getNotificationChannelForPackage(String str, int i, String str2, boolean z) {
        try {
            return NotificationManagerWrapper.getNotificationChannelForPackage(str, i, str2, z);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public static NotificationChannelGroup getNotificationChannelGroupForPackage(String str, String str2, int i) {
        try {
            return NotificationManagerWrapper.getNotificationChannelGroupForPackage(str, str2, i);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public static List<NotificationChannelGroup> getNotificationChannelGroups(String str) {
        try {
            return NotificationManagerWrapper.getNotificationChannelGroups(str);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public static List<NotificationChannelGroup> getNotificationChannelGroupsForPackage(String str, int i, boolean z) {
        try {
            return NotificationManagerWrapper.getNotificationChannelGroupsForPackage(str, i, z);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public static List<NotificationChannel> getNotificationChannelsForPackage(String str, int i, boolean z) {
        try {
            return NotificationManagerWrapper.getNotificationChannelsForPackage(str, i, z);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public static boolean onlyHasDefaultChannel(String str, int i) {
        try {
            return NotificationManagerWrapper.onlyHasDefaultChannel(str, i);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return false;
        }
    }

    public static void setNotificationListenerAccessGranted(ComponentName componentName, boolean z) {
        try {
            NotificationManagerWrapper.setNotificationListenerAccessGranted(componentName, z);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
        }
    }

    public static void setNotificationsEnabledForPackage(String str, int i, boolean z) {
        try {
            NotificationManagerWrapper.setNotificationsEnabledForPackage(str, i, z);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
        }
    }

    public static void updateNotificationChannelForPackage(String str, int i, NotificationChannel notificationChannel) {
        try {
            NotificationManagerWrapper.updateNotificationChannelForPackage(str, i, notificationChannel);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
        }
    }

    public static void updateNotificationChannelGroupForPackage(String str, int i, NotificationChannelGroup notificationChannelGroup) {
        try {
            NotificationManagerWrapper.updateNotificationChannelGroupForPackage(str, i, notificationChannelGroup);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
        }
    }
}
