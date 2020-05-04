package co.polarr.renderer.b;

import com.google.gson.Gson;

public class k {

    /* renamed from: a  reason: collision with root package name */
    private static Gson f1131a = new Gson();

    public static <T> T a(String str, Class<T> cls) {
        return f1131a.fromJson(str, cls);
    }

    public static String a(Object obj) {
        return f1131a.toJson(obj);
    }
}
