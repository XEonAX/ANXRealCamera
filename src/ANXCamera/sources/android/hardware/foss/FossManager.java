package android.hardware.foss;

import android.util.Log;

public class FossManager {
    private static String TAG = "FossManager";
    private static FossManager sInstance;

    private FossManager() {
    }

    public static FossManager getInstance() {
        if (sInstance == null) {
            sInstance = new FossManager();
        }
        return sInstance;
    }

    public boolean disableFoss() {
        Log.d(TAG, "disableFoss()");
        return true;
    }

    public boolean enableFoss() {
        Log.d(TAG, "enableFoss()");
        return true;
    }

    public boolean queryFossState() {
        return false;
    }
}
