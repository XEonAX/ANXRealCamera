package com.color.compat.media;

import android.media.AudioManager;
import android.util.Log;
import com.color.inner.media.AudioManagerWrapper;

public class AudioManagerNative {
    public static String STREAM_MUTE_CHANGED_ACTION = "android.media.STREAM_MUTE_CHANGED_ACTION";
    public static int STREAM_SYSTEM_ENFORCED = 7;
    private static final String TAG = "AudioManagerNative";
    public static String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";

    private AudioManagerNative() {
    }

    public static int getRingerModeInternal(AudioManager audioManager) {
        try {
            return AudioManagerWrapper.getRingerModeInternal(audioManager);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 2;
        }
    }

    public static void setRingerModeInternal(AudioManager audioManager, int i) {
        try {
            AudioManagerWrapper.setRingerModeInternal(audioManager, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
