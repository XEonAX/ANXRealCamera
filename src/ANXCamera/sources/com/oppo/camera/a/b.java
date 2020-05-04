package com.oppo.camera.a;

import androidx.core.f.e;
import java.util.HashMap;

/* compiled from: ApsParameters */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, String> f1825a;

    public b() {
        this.f1825a = null;
        this.f1825a = new HashMap<>(128);
    }

    public String a(String str) {
        HashMap<String, String> hashMap = this.f1825a;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    public void a(String str, String str2) {
        e.a(str2, "key: " + str);
        this.f1825a.remove(str);
        this.f1825a.put(str, str2);
    }

    public String[] a() {
        int size = this.f1825a.size();
        if (size == 0) {
            return null;
        }
        String[] strArr = new String[(size * 2)];
        int i = 0;
        for (String next : this.f1825a.keySet()) {
            int i2 = i + 1;
            strArr[i] = next;
            i = i2 + 1;
            strArr[i2] = this.f1825a.get(next);
        }
        return strArr;
    }
}
