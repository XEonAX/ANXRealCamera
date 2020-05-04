package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.h;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* compiled from: NotificationCompatJellybean */
class j {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f498a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static Field f499b;
    private static boolean c;
    private static final Object d = new Object();

    public static Bundle a(Notification.Builder builder, h.a aVar) {
        builder.addAction(aVar.a(), aVar.b(), aVar.c());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(aVar.f()));
        }
        if (aVar.h() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(aVar.h()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
        return bundle;
    }

    public static Bundle a(Notification notification) {
        synchronized (f498a) {
            if (c) {
                return null;
            }
            try {
                if (f499b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f499b = declaredField;
                }
                Bundle bundle = (Bundle) f499b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f499b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                c = true;
                return null;
            }
        }
    }

    static Bundle a(h.a aVar) {
        Bundle bundle = new Bundle();
        bundle.putInt("icon", aVar.a());
        bundle.putCharSequence("title", aVar.b());
        bundle.putParcelable("actionIntent", aVar.c());
        Bundle bundle2 = aVar.d() != null ? new Bundle(aVar.d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", aVar.e());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", a(aVar.f()));
        bundle.putBoolean("showsUserInterface", aVar.i());
        bundle.putInt("semanticAction", aVar.g());
        return bundle;
    }

    private static Bundle a(k kVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", kVar.a());
        bundle.putCharSequence("label", kVar.b());
        bundle.putCharSequenceArray("choices", kVar.c());
        bundle.putBoolean("allowFreeFormInput", kVar.e());
        bundle.putBundle("extras", kVar.f());
        Set<String> d2 = kVar.d();
        if (d2 != null && !d2.isEmpty()) {
            ArrayList arrayList = new ArrayList(d2.size());
            for (String add : d2) {
                arrayList.add(add);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    private static Bundle[] a(k[] kVarArr) {
        if (kVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[kVarArr.length];
        for (int i = 0; i < kVarArr.length; i++) {
            bundleArr[i] = a(kVarArr[i]);
        }
        return bundleArr;
    }
}
