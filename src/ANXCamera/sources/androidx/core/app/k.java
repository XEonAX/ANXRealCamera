package androidx.core.app;

import android.app.RemoteInput;
import android.os.Bundle;
import java.util.Set;

/* compiled from: RemoteInput */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final String f500a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f501b;
    private final CharSequence[] c;
    private final boolean d;
    private final Bundle e;
    private final Set<String> f;

    static RemoteInput a(k kVar) {
        return new RemoteInput.Builder(kVar.a()).setLabel(kVar.b()).setChoices(kVar.c()).setAllowFreeFormInput(kVar.e()).addExtras(kVar.f()).build();
    }

    static RemoteInput[] a(k[] kVarArr) {
        if (kVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[kVarArr.length];
        for (int i = 0; i < kVarArr.length; i++) {
            remoteInputArr[i] = a(kVarArr[i]);
        }
        return remoteInputArr;
    }

    public String a() {
        return this.f500a;
    }

    public CharSequence b() {
        return this.f501b;
    }

    public CharSequence[] c() {
        return this.c;
    }

    public Set<String> d() {
        return this.f;
    }

    public boolean e() {
        return this.d;
    }

    public Bundle f() {
        return this.e;
    }
}
