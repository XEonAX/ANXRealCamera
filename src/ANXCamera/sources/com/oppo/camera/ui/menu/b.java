package com.oppo.camera.ui.menu;

import java.util.ArrayList;
import java.util.List;

/* compiled from: OptionItemConfig */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f2720a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f2721b;

    public b() {
        this.f2720a = null;
        this.f2721b = null;
        this.f2721b = new ArrayList();
    }

    public String a() {
        return this.f2720a;
    }

    public void a(String str) {
        this.f2720a = str;
    }

    public List<String> b() {
        return this.f2721b;
    }

    public void b(String str) {
        if (!this.f2721b.contains(str)) {
            this.f2721b.add(str);
        }
    }
}
