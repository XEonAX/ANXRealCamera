package com.color.compat.app.job;

import android.app.job.JobInfo;
import android.util.Log;
import com.color.inner.app.job.JobInfoWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class JobInfoNative {
    private static final String TAG = "JobInfoNative";
    public static int TYPE_PROTECT_FORE_FRAME = 0;
    public static int TYPE_PROTECT_FORE_NET = 1;

    public static final class BuilderNative {
        private BuilderNative() {
        }

        public static String getColorExtraStr(JobInfo.Builder builder) {
            try {
                return JobInfoWrapper.BuilderWrapper.getColorExtraStr(builder);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
                return null;
            }
        }

        public static boolean getColorJob(JobInfo.Builder builder) {
            try {
                return JobInfoWrapper.BuilderWrapper.getColorJob(builder);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
                return false;
            }
        }

        public static boolean getHasCpuConstraint(JobInfo.Builder builder) {
            try {
                return JobInfoWrapper.BuilderWrapper.getHasCpuConstraint(builder);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
                return false;
            }
        }

        public static boolean getRequiresBattIdle(JobInfo.Builder builder) {
            try {
                return JobInfoWrapper.BuilderWrapper.getRequiresBattIdle(builder);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
                return false;
            }
        }

        public static boolean getRequiresProtectFore(JobInfo.Builder builder) {
            try {
                return JobInfoWrapper.BuilderWrapper.getRequiresProtectFore(builder);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
                return false;
            }
        }

        public static void setColorExtraStr(JobInfo.Builder builder, String str) {
            try {
                JobInfoWrapper.BuilderWrapper.setColorExtraStr(builder, str);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
            }
        }

        public static void setColorJob(JobInfo.Builder builder, boolean z) {
            try {
                JobInfoWrapper.BuilderWrapper.setColorJob(builder, z);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
            }
        }

        public static void setHasCpuConstraint(JobInfo.Builder builder, boolean z) {
            try {
                JobInfoWrapper.BuilderWrapper.setHasCpuConstraint(builder, z);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
            }
        }

        public static void setRequiresBattIdle(JobInfo.Builder builder, boolean z, int i) {
            try {
                if (VersionUtils.isQ()) {
                    JobInfoWrapper.BuilderWrapper.setRequiresBattIdle(builder, z, i);
                } else if (VersionUtils.isN_MR1()) {
                    builder.getClass().getMethod("setRequiresBattIdle", new Class[]{Boolean.TYPE, Integer.TYPE}).invoke(builder, new Object[]{Boolean.valueOf(z), Integer.valueOf(i)});
                } else {
                    throw new UnSupportedApiVersionException();
                }
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
            }
        }

        public static void setRequiresProtectFore(JobInfo.Builder builder, boolean z) {
            try {
                JobInfoWrapper.BuilderWrapper.setRequiresProtectFore(builder, z);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
            }
        }

        public static void setRequiresProtectFore(JobInfo.Builder builder, boolean z, int i) {
            try {
                JobInfoWrapper.BuilderWrapper.setRequiresProtectFore(builder, z, i);
            } catch (Throwable th) {
                Log.d(JobInfoNative.TAG, th.toString());
            }
        }
    }

    private JobInfoNative() {
    }
}
