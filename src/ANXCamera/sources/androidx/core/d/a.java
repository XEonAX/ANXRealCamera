package androidx.core.d;

import android.util.Base64;
import androidx.core.f.e;
import java.util.List;

/* compiled from: FontRequest */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f504a;

    /* renamed from: b  reason: collision with root package name */
    private final String f505b;
    private final String c;
    private final List<List<byte[]>> d;
    private final int e = 0;
    private final String f = (this.f504a + "-" + this.f505b + "-" + this.c);

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f504a = (String) e.a(str);
        this.f505b = (String) e.a(str2);
        this.c = (String) e.a(str3);
        this.d = (List) e.a(list);
    }

    public String a() {
        return this.f504a;
    }

    public String b() {
        return this.f505b;
    }

    public String c() {
        return this.c;
    }

    public List<List<byte[]>> d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f504a + ", mProviderPackage: " + this.f505b + ", mQuery: " + this.c + ", mCertificates:");
        for (int i = 0; i < this.d.size(); i++) {
            sb.append(" [");
            List list = this.d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.e);
        return sb.toString();
    }
}
