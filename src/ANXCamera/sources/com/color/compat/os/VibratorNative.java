package com.color.compat.os;

import android.media.AudioAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import com.color.inner.os.VibratorWrapper;

public class VibratorNative {
    public static long LONG_MIDDLE_ONESHOT_TIME = 150;
    public static long LONG_STRONG_ONESHOT_TIME = 400;
    public static int MIDDLE_AMPLITUDE = 175;
    public static long RAPID_MIDDLE_ONESHOT_TIME = 50;
    public static int[] RAPID_MIDDLE_WAVEFORM_AMPLITUDE = VibratorWrapper.RAPID_MIDDLE_WAVEFORM_AMPLITUDE;
    public static long[] RAPID_MIDDLE_WAVEFORM_TIME = VibratorWrapper.RAPID_MIDDLE_WAVEFORM_TIME;
    public static int[] RAPID_STRONG_WAVEFORM_AMPLITUDE = VibratorWrapper.RAPID_STRONG_WAVEFORM_AMPLITUDE;
    public static long[] RAPID_STRONG_WAVEFORM_TIME = VibratorWrapper.RAPID_STRONG_WAVEFORM_TIME;
    public static long RAPID_WEAK_ONESHOT_TIME = 25;
    public static int STRONG_AMPLITUDE = 250;
    private static final String TAG = "VibratorNative";
    public static int WEAK_AMPLITUDE = 100;

    private VibratorNative() {
    }

    public static void linerMotorVibrate(Vibrator vibrator, VibrationEffect vibrationEffect) {
        VibratorWrapper.linerMotorVibrate(vibrator, vibrationEffect, (AudioAttributes) null);
    }

    public static void linerMotorVibrate(Vibrator vibrator, VibrationEffect vibrationEffect, AudioAttributes audioAttributes) {
        VibratorWrapper.linerMotorVibrate(vibrator, vibrationEffect, audioAttributes);
    }
}
