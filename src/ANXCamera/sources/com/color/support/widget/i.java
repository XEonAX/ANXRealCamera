package com.color.support.widget;

import java.util.ArrayList;

/* compiled from: ExpandableRecyclerPosition */
class i {
    private static ArrayList<i> e = new ArrayList<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1703a;

    /* renamed from: b  reason: collision with root package name */
    public int f1704b;
    int c;
    public int d;

    private i() {
    }

    static i a(int i, int i2, int i3, int i4) {
        i c2 = c();
        c2.d = i;
        c2.f1703a = i2;
        c2.f1704b = i3;
        c2.c = i4;
        return c2;
    }

    private void b() {
        this.f1703a = 0;
        this.f1704b = 0;
        this.c = 0;
        this.d = 0;
    }

    private static i c() {
        synchronized (e) {
            if (e.size() > 0) {
                i remove = e.remove(0);
                remove.b();
                return remove;
            }
            i iVar = new i();
            return iVar;
        }
    }

    public void a() {
        synchronized (e) {
            if (e.size() < 5) {
                e.add(this);
            }
        }
    }
}
