package com.color.compat.content.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageParser;
import android.content.pm.Signature;
import android.util.Log;
import com.color.inner.content.pm.PackageParserWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.io.File;

public class PackageParserNative {
    private static final String TAG = "PackageParserNative";

    public static class PackageNative {
        private PackageParser.Package mPackage;
        /* access modifiers changed from: private */
        public PackageParserWrapper.PackageWrapper mPackageWrapper;

        private PackageNative(PackageParser.Package packageR) {
            try {
                if (VersionUtils.isQ()) {
                    throw new UnSupportedApiVersionException();
                } else if (VersionUtils.isL()) {
                    this.mPackage = packageR;
                } else {
                    throw new UnSupportedApiVersionException();
                }
            } catch (Throwable th) {
                Log.e(PackageParserNative.TAG, th.toString());
            }
        }

        private PackageNative(PackageParserWrapper.PackageWrapper packageWrapper) {
            try {
                if (VersionUtils.isQ()) {
                    this.mPackageWrapper = packageWrapper;
                    return;
                }
                throw new UnSupportedApiVersionException();
            } catch (Throwable th) {
                Log.e(PackageParserNative.TAG, th.toString());
            }
        }

        public ApplicationInfo getApplicationInfo() {
            try {
                if (VersionUtils.isQ()) {
                    if (this.mPackageWrapper != null) {
                        return this.mPackageWrapper.getApplicationInfo();
                    }
                    return null;
                } else if (!VersionUtils.isL()) {
                    throw new UnSupportedApiVersionException();
                } else if (this.mPackage != null) {
                    return this.mPackage.applicationInfo;
                } else {
                    return null;
                }
            } catch (Throwable th) {
                Log.e(PackageParserNative.TAG, th.toString());
                return null;
            }
        }

        public String getPackageName() {
            try {
                if (VersionUtils.isQ()) {
                    if (this.mPackageWrapper != null) {
                        return this.mPackageWrapper.getPackageName();
                    }
                    return null;
                } else if (!VersionUtils.isL()) {
                    throw new UnSupportedApiVersionException();
                } else if (this.mPackage != null) {
                    return this.mPackage.packageName;
                } else {
                    return null;
                }
            } catch (Throwable th) {
                Log.e(PackageParserNative.TAG, th.toString());
                return null;
            }
        }

        public Signature[] getSignatures() {
            try {
                if (VersionUtils.isQ()) {
                    if (this.mPackageWrapper != null) {
                        return this.mPackageWrapper.getSignatures();
                    }
                } else if (!VersionUtils.isP()) {
                    throw new UnSupportedApiVersionException();
                } else if (this.mPackage == null || this.mPackage.mSigningDetails == null) {
                    return null;
                } else {
                    return this.mPackage.mSigningDetails.signatures;
                }
            } catch (Throwable th) {
                Log.e(PackageParserNative.TAG, th.toString());
            }
            return null;
        }

        public int getVersionCode() {
            try {
                if (VersionUtils.isQ()) {
                    if (this.mPackageWrapper != null) {
                        return this.mPackageWrapper.getVersionCode();
                    }
                    return -1;
                } else if (!VersionUtils.isL()) {
                    throw new UnSupportedApiVersionException();
                } else if (this.mPackage != null) {
                    return this.mPackage.mVersionCode;
                } else {
                    return -1;
                }
            } catch (Throwable th) {
                Log.e(PackageParserNative.TAG, th.toString());
                return -1;
            }
        }

        public String getVersionName() {
            try {
                if (VersionUtils.isQ()) {
                    if (this.mPackageWrapper != null) {
                        return this.mPackageWrapper.getVersionName();
                    }
                    return null;
                } else if (!VersionUtils.isL()) {
                    throw new UnSupportedApiVersionException();
                } else if (this.mPackage != null) {
                    return this.mPackage.mVersionName;
                } else {
                    return null;
                }
            } catch (Throwable th) {
                Log.e(PackageParserNative.TAG, th.toString());
                return null;
            }
        }
    }

    private PackageParserNative() {
    }

    public static void collectCertificates(PackageNative packageNative, boolean z) {
        if (packageNative != null && packageNative.mPackageWrapper != null) {
            try {
                PackageParserWrapper.collectCertificates(packageNative.mPackageWrapper, z);
            } catch (Exception e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    public static PackageNative parsePackage(File file, int i) {
        PackageParserWrapper.PackageWrapper packageWrapper;
        try {
            packageWrapper = PackageParserWrapper.parsePackage(file, i);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            packageWrapper = null;
        }
        return new PackageNative(packageWrapper);
    }
}
