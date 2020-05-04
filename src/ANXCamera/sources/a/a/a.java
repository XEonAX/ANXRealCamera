package a.a;

@Deprecated
/* compiled from: Assert */
public class a {
    public static void a(String str) {
        if (str == null) {
            throw new b();
        }
        throw new b(str);
    }

    public static void a(String str, boolean z) {
        if (!z) {
            a(str);
        }
    }

    public static void a(boolean z) {
        a((String) null, z);
    }
}
