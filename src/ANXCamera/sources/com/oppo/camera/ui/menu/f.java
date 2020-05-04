package com.oppo.camera.ui.menu;

import com.oppo.camera.d;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PopUpWindowManager */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static BasicOptionItemList f2749a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2750b;
    private static ArrayList<e> c;

    public static void a(BasicOptionItemList basicOptionItemList) {
        d.a("PopUpWindowManager", "showPopUpWindow");
        if (basicOptionItemList != null) {
            BasicOptionItemList basicOptionItemList2 = f2749a;
            if (basicOptionItemList2 != null && basicOptionItemList2.getPopUpWindowState()) {
                f2750b = true;
                f2749a.e();
            }
            f2749a = basicOptionItemList;
            f2749a.c();
        }
    }

    public static void a(e eVar) {
        if (eVar != null) {
            if (c == null) {
                c = new ArrayList<>();
            }
            if (!c.contains(eVar)) {
                c.add(eVar);
            }
        }
    }

    public static void a(String str) {
        d.a("PopUpWindowManager", "showPopUpWindowBegin, key: " + str);
        f2750b = true;
        ArrayList<e> arrayList = c;
        if (arrayList != null) {
            Iterator<e> it = arrayList.iterator();
            while (it.hasNext()) {
                e next = it.next();
                if (next != null) {
                    next.a(str);
                }
            }
        }
    }

    public static boolean a() {
        BasicOptionItemList basicOptionItemList = f2749a;
        if (basicOptionItemList != null) {
            return basicOptionItemList.getPopUpWindowState() || f2750b;
        }
        return false;
    }

    public static void b(e eVar) {
        if (eVar != null) {
            ArrayList<e> arrayList = c;
            if (arrayList != null && arrayList.contains(eVar)) {
                c.remove(eVar);
            }
        }
    }

    public static void b(String str) {
        d.a("PopUpWindowManager", "showPopUpWindowEnd, key: " + str);
        f2750b = true;
        ArrayList<e> arrayList = c;
        if (arrayList != null) {
            Iterator<e> it = arrayList.iterator();
            while (it.hasNext()) {
                e next = it.next();
                if (next != null) {
                    next.b(str);
                }
            }
        }
    }

    public static boolean b() {
        BasicOptionItemList basicOptionItemList = f2749a;
        if (basicOptionItemList != null) {
            return basicOptionItemList.getPopUpWindowState();
        }
        return false;
    }

    public static void c() {
        d.a("PopUpWindowManager", "hidePopUpWindow");
        BasicOptionItemList basicOptionItemList = f2749a;
        if (basicOptionItemList != null && basicOptionItemList.isShown()) {
            f2749a.d();
        }
    }

    public static void c(String str) {
        d.a("PopUpWindowManager", "hidePopUpWindowBegin, key: " + str);
        ArrayList<e> arrayList = c;
        if (arrayList != null) {
            Iterator<e> it = arrayList.iterator();
            while (it.hasNext()) {
                e next = it.next();
                if (next != null) {
                    next.c(str);
                }
            }
        }
        f2750b = false;
    }

    public static void d() {
        f2749a = null;
    }

    public static void d(String str) {
        d.a("PopUpWindowManager", "hidePopUpWindowEnd, key: " + str);
        ArrayList<e> arrayList = c;
        if (arrayList != null) {
            Iterator<e> it = arrayList.iterator();
            while (it.hasNext()) {
                e next = it.next();
                if (next != null) {
                    next.d(str);
                }
            }
        }
        f2750b = false;
    }

    public static void e() {
        d.a("PopUpWindowManager", "clearListener");
        f2750b = false;
        ArrayList<e> arrayList = c;
        if (arrayList != null) {
            arrayList.clear();
            c = null;
        }
    }
}
