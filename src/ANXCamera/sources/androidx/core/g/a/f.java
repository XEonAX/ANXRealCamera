package androidx.core.g.a;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;

/* compiled from: AccessibilityRecordCompat */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final AccessibilityRecord f552a;

    public static void a(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    public static void a(AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }

    public static void b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }

    @Deprecated
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        AccessibilityRecord accessibilityRecord = this.f552a;
        if (accessibilityRecord == null) {
            if (fVar.f552a != null) {
                return false;
            }
        } else if (!accessibilityRecord.equals(fVar.f552a)) {
            return false;
        }
        return true;
    }

    @Deprecated
    public int hashCode() {
        AccessibilityRecord accessibilityRecord = this.f552a;
        if (accessibilityRecord == null) {
            return 0;
        }
        return accessibilityRecord.hashCode();
    }
}
