package com.color.compat.os;

import android.os.Parcel;
import android.util.ArraySet;
import android.util.Log;
import com.color.inner.os.ParcelWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ParcelNative {
    private static final String TAG = "ParcelNative";

    private ParcelNative() {
    }

    public static ArraySet<? extends Object> readArraySet(Parcel parcel, ClassLoader classLoader) {
        return ParcelWrapper.readArraySet(parcel, classLoader);
    }

    public static final String[] readStringArray(Parcel parcel) {
        try {
            if (VersionUtils.isQ()) {
                return ParcelWrapper.readStringArray(parcel);
            }
            if (VersionUtils.isL()) {
                return parcel.readStringArray();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static String readStringNoHelper(Parcel parcel) {
        try {
            return ParcelWrapper.readStringNoHelper(parcel);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void writeArraySet(Parcel parcel, ArraySet<? extends Object> arraySet) {
        ParcelWrapper.writeArraySet(parcel, arraySet);
    }

    public static void writeStringNoHelper(Parcel parcel, String str) {
        try {
            ParcelWrapper.writeStringNoHelper(parcel, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
