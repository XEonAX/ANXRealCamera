package com.color.compat.net;

import android.util.Log;
import com.color.inner.net.NetworkStatsWrapper;

public class NetworkStatsNative {
    private static final String TAG = "NetworkStatsNative";
    private NetworkStatsWrapper mNetworkStatsWrapper;

    public static class EntryNative {
        private static final String TAG_Entry = "EntryNative";
        /* access modifiers changed from: private */
        public NetworkStatsWrapper.EntryWrapper mEntryWrapper;

        private EntryNative(NetworkStatsWrapper.EntryWrapper entryWrapper) {
            this.mEntryWrapper = entryWrapper;
        }

        public long getRxBytes() {
            try {
                return this.mEntryWrapper.getRxBytes();
            } catch (Throwable th) {
                Log.e(TAG_Entry, th.toString());
                return 0;
            }
        }

        public long getTxBytes() {
            try {
                return this.mEntryWrapper.getTxBytes();
            } catch (Throwable th) {
                Log.e(TAG_Entry, th.toString());
                return 0;
            }
        }
    }

    NetworkStatsNative(NetworkStatsWrapper networkStatsWrapper) {
        this.mNetworkStatsWrapper = networkStatsWrapper;
    }

    public long getTotalBytes() {
        try {
            return this.mNetworkStatsWrapper.getTotalBytes();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public EntryNative getValues(int i, EntryNative entryNative) {
        try {
            return new EntryNative(this.mNetworkStatsWrapper.getValues(i, entryNative == null ? null : entryNative.mEntryWrapper));
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public int size() {
        try {
            return this.mNetworkStatsWrapper.size();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }
}
