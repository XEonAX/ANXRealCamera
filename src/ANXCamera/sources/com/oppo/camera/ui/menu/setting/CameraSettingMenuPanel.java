package com.oppo.camera.ui.menu.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.i;
import com.oppo.camera.ui.d;
import com.oppo.camera.ui.menu.f;
import com.oppo.camera.ui.menu.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class CameraSettingMenuPanel extends LinearLayout implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2808a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private int f2809b = 0;
    private int c = 0;
    private int d = 0;
    private boolean e = false;
    private boolean f = true;
    private boolean g = false;
    private boolean h = true;
    private boolean i = false;
    private CopyOnWriteArrayList<CameraMenuOption> j = null;
    private d k = null;
    private i l = null;
    private Context m = null;
    private List<a> n = null;

    private class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2812a;

        /* renamed from: b  reason: collision with root package name */
        public String f2813b;
        public String c;
        public List<String> d;
        public String[] e;

        private a() {
            this.f2812a = -1;
            this.c = null;
            this.d = null;
            this.e = null;
        }
    }

    public CameraSettingMenuPanel(Context context) {
        super(context);
        this.m = context;
        this.f2809b = this.m.getResources().getDimensionPixelSize(R.dimen.menu_panel_padding_left_right);
    }

    public CameraSettingMenuPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = context;
        this.f2809b = this.m.getResources().getDimensionPixelSize(R.dimen.menu_panel_padding_left_right);
    }

    private void a(Drawable drawable) {
        if (drawable == null) {
            com.oppo.camera.d.b("CameraSettingMenuPanel", "showCameraSubSettingMenuWithAnimation null == bitmap");
        } else if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }

    private a b(String str, int i2) {
        if (!TextUtils.isEmpty(str)) {
            List<a> list = this.n;
            if (list == null || list.isEmpty()) {
                return null;
            }
            for (a next : this.n) {
                if (str.equals(next.f2813b) && next.f2812a == i2) {
                    return next;
                }
            }
        }
        return null;
    }

    private boolean b(CameraMenuOption cameraMenuOption, int i2) {
        if (cameraMenuOption.M() == 0 && i2 == 0) {
            return true;
        }
        return cameraMenuOption.M() != 0 && 8 == i2;
    }

    private void e(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            d dVar = this.k;
            if (dVar == null || dVar.b(str)) {
                CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
                if (copyOnWriteArrayList == null) {
                    return;
                }
                if (this.h) {
                    Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        CameraMenuOption next = it.next();
                        if (next != null) {
                            if (next.a(str, CameraConfig.getOptionKeyDefaultValue(next.a(), getCameraId()), getVisibility(), !str.equals(next.a()) || 1 != next.L() || !a(next, 1))) {
                                if (z) {
                                    requestLayout();
                                    return;
                                }
                                return;
                            }
                        }
                    }
                    return;
                }
                if (this.n == null) {
                    this.n = new ArrayList();
                }
                synchronized (this.f2808a) {
                    a b2 = b(str, 1);
                    if (b2 == null) {
                        b2 = b(str, 0);
                    }
                    if (b2 == null) {
                        a aVar = new a();
                        aVar.f2813b = str;
                        aVar.f2812a = 1;
                        this.n.add(aVar);
                    } else if (b2.f2812a != 1) {
                        this.n.remove(b2);
                        b2.f2813b = str;
                        b2.f2812a = 1;
                        this.n.add(b2);
                    }
                }
                return;
            }
            com.oppo.camera.d.a("CameraSettingMenuPanel", "addContainMenuOption(), the current mode can not add option: " + str);
        }
    }

    private boolean f(String str, boolean z) {
        return z ? e(str) : d(str);
    }

    private boolean g(String str, boolean z) {
        return z ? d(str) : e(str);
    }

    private void h() {
        List<a> list = this.n;
        if (list != null && !list.isEmpty()) {
            synchronized (this.f2808a) {
                com.oppo.camera.d.a("CameraSettingMenuPanel", "executeOptions(), length: " + this.n.size());
                for (a next : this.n) {
                    if (next != null) {
                        int i2 = next.f2812a;
                        if (i2 == 0) {
                            c(next.f2813b, false);
                        } else if (i2 == 1) {
                            e(next.f2813b, false);
                        }
                    }
                }
                for (a next2 : this.n) {
                    if (next2 != null) {
                        int i3 = next2.f2812a;
                        if (i3 == 2) {
                            a(next2.f2813b, next2.d);
                        } else if (i3 == 5) {
                            b(next2.f2813b, next2.e);
                        } else if (i3 == 6) {
                            a(next2.f2813b, next2.e);
                        }
                    }
                }
                for (a next3 : this.n) {
                    if (next3 != null) {
                        int i4 = next3.f2812a;
                        if (i4 == 3) {
                            b(next3.f2813b, next3.c);
                        } else if (i4 == 4) {
                            a(next3.f2813b, next3.c);
                        }
                    }
                }
                this.n.clear();
            }
        }
    }

    private void i() {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().l();
            }
            this.j.clear();
            this.j = null;
        }
    }

    public String a(String str, int i2, int i3) {
        d dVar = this.k;
        if (dVar != null) {
            return dVar.a(str, i2, i3);
        }
        return null;
    }

    public void a() {
        com.oppo.camera.d.a("CameraSettingMenuPanel", "updateAfterCameraResume(), mMenuList: " + this.j);
        setCameraMenuLayout(true);
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null) {
                    next.c();
                }
            }
        }
    }

    public void a(float f2) {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<CameraMenuOption> it = this.j.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null && !next.g()) {
                    next.a(f2);
                }
            }
        }
    }

    public void a(i iVar, d dVar, g gVar, int i2, boolean z) {
        com.oppo.camera.d.a("CameraSettingMenuPanel", "initialize, sizeRatioType: " + i2);
        this.i = z;
        this.l = iVar;
        i();
        this.j = new CopyOnWriteArrayList<>();
        this.k = dVar;
        this.d = i2;
        List<String> menuPanelOptionList = CameraConfig.getMenuPanelOptionList();
        if (this.i) {
            this.f2809b = this.m.getResources().getDimensionPixelSize(R.dimen.submenu_panel_padding_left_right);
        }
        if (menuPanelOptionList != null && menuPanelOptionList.size() > 0) {
            for (String next : menuPanelOptionList) {
                com.oppo.camera.ui.menu.a a2 = gVar.a(next);
                if (a2 != null) {
                    com.oppo.camera.ui.menu.a aVar = a2;
                    d dVar2 = new d(this.m, aVar, this, this.k, this.d, CameraConfig.getOptionKeyDefaultValue(next, getCameraId()), z);
                    dVar2.b();
                    this.j.add(dVar2);
                    dVar2.a((ViewGroup) this);
                    dVar2.A().setContentDescription(a2.getOptionTitle());
                }
            }
        }
    }

    public void a(String str, int i2) {
        if (!TextUtils.isEmpty(str)) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList != null) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null && str.equals(next.a()) && b(next, i2)) {
                        a(next.B());
                        return;
                    }
                }
            }
        }
    }

    public void a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList == null) {
                return;
            }
            if (this.h) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null && next.a(str, str2)) {
                        return;
                    }
                }
                return;
            }
            if (this.n == null) {
                this.n = new ArrayList();
            }
            synchronized (this.f2808a) {
                a b2 = b(str, 4);
                if (b2 == null) {
                    b2 = b(str, 3);
                }
                if (b2 == null) {
                    b2 = new a();
                } else {
                    this.n.remove(b2);
                }
                b2.f2813b = str;
                b2.f2812a = 4;
                b2.c = str2;
                this.n.add(b2);
            }
        }
    }

    public void a(String str, String str2, int i2, int i3) {
        if (!TextUtils.isEmpty(str) && str2 != null) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList != null) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null && next.a(str, str2, i2, i3)) {
                        return;
                    }
                }
            }
        }
    }

    public void a(String str, List<String> list) {
        if (!TextUtils.isEmpty(str) && list != null) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList == null) {
                return;
            }
            if (this.h) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null && next.a(str, CameraConfig.getOptionKeyDefaultValue(next.a(), getCameraId()), list)) {
                        return;
                    }
                }
                return;
            }
            if (this.n == null) {
                this.n = new ArrayList();
            }
            synchronized (this.f2808a) {
                a b2 = b(str, 2);
                if (b2 == null) {
                    b2 = new a();
                } else {
                    this.n.remove(b2);
                }
                b2.f2813b = str;
                b2.f2812a = 2;
                b2.d = list;
                this.n.add(b2);
            }
        }
    }

    public void a(String str, boolean z, boolean z2) {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null && str.equals(next.a())) {
                    if (z2 || z != next.M()) {
                        next.g(z ? 1 : 0);
                        next.a(next.c(z));
                    }
                }
            }
        }
    }

    public void a(String str, String... strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0 || this.j == null) {
            return;
        }
        if (this.h || this.n == null) {
            Iterator<CameraMenuOption> it = this.j.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null && next.a(str, strArr)) {
                    return;
                }
            }
            return;
        }
        synchronized (this.f2808a) {
            a aVar = new a();
            aVar.f2813b = str;
            aVar.e = strArr;
            aVar.f2812a = 6;
            this.n.add(aVar);
        }
    }

    public void a(boolean z, boolean z2) {
        this.f = z;
        this.g = z2;
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null && (!z || !next.g())) {
                    next.a(z, z2);
                }
            }
        }
    }

    public boolean a(CameraMenuOption cameraMenuOption, int i2) {
        Iterator<CameraMenuOption> it = this.j.iterator();
        while (it.hasNext()) {
            CameraMenuOption next = it.next();
            if (next != null && next.L() == i2 && next.x() == 0 && !cameraMenuOption.a().equals(next.a())) {
                return true;
            }
        }
        return false;
    }

    public boolean a(String str) {
        d dVar = this.k;
        if (dVar != null) {
            return dVar.b(str);
        }
        return false;
    }

    public boolean a(String str, boolean z) {
        d dVar = this.k;
        if (dVar != null) {
            return dVar.a(str, z, this.i);
        }
        return true;
    }

    public void b() {
        com.oppo.camera.d.a("CameraSettingMenuPanel", "updateAfterCameraPause(), mMenuList: " + this.j);
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null) {
                    next.d();
                }
            }
        }
    }

    public void b(String str) {
        e(str, true);
    }

    public void b(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            d dVar = this.k;
            if (dVar == null || dVar.a(str)) {
                CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
                if (copyOnWriteArrayList == null) {
                    return;
                }
                if (this.h) {
                    Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        CameraMenuOption next = it.next();
                        if (next != null && !next.g() && next.a(str, CameraConfig.getOptionKeyDefaultValue(next.a(), getCameraId()), str2)) {
                            return;
                        }
                    }
                    return;
                }
                if (this.n == null) {
                    this.n = new ArrayList();
                }
                synchronized (this.f2808a) {
                    a b2 = b(str, 3);
                    if (b2 == null) {
                        b2 = b(str, 4);
                    }
                    if (b2 == null) {
                        b2 = new a();
                    } else {
                        this.n.remove(b2);
                    }
                    b2.f2813b = str;
                    b2.f2812a = 3;
                    b2.c = str2;
                    this.n.add(b2);
                }
                return;
            }
            com.oppo.camera.d.a("CameraSettingMenuPanel", "enableCameraSettingMenuOption(), this cap mod can not enable key : " + str);
        }
    }

    public void b(String str, String... strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0 || this.j == null) {
            return;
        }
        if (this.h || this.n == null) {
            Iterator<CameraMenuOption> it = this.j.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null && next.b(str, strArr)) {
                    return;
                }
            }
            return;
        }
        synchronized (this.f2808a) {
            a aVar = new a();
            aVar.f2813b = str;
            aVar.e = strArr;
            aVar.f2812a = 5;
            this.n.add(aVar);
        }
    }

    public void b(boolean z, boolean z2) {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null) {
                    next.b(z, z2);
                }
            }
        }
    }

    public boolean b(String str, boolean z) {
        d dVar = this.k;
        if (dVar != null) {
            return dVar.a(str, z);
        }
        return false;
    }

    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList != null) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null && str.equals(next.a())) {
                        next.e(CameraConfig.getOptionKeyDefaultValue(next.a(), getCameraId()));
                        return;
                    }
                }
            }
        }
    }

    public void c(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList == null) {
                return;
            }
            if (this.h) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null) {
                        if (next.a(str, this.e && !this.i)) {
                            if (z) {
                                requestLayout();
                                return;
                            }
                            return;
                        }
                    }
                }
                return;
            }
            if (this.n == null) {
                this.n = new ArrayList();
            }
            synchronized (this.f2808a) {
                a b2 = b(str, 0);
                if (b2 == null) {
                    b2 = b(str, 1);
                }
                if (b2 == null) {
                    a aVar = new a();
                    aVar.f2813b = str;
                    aVar.f2812a = 0;
                    this.n.add(aVar);
                } else if (b2.f2812a != 0) {
                    this.n.remove(b2);
                    b2.f2813b = str;
                    b2.f2812a = 0;
                    this.n.add(b2);
                }
            }
        }
    }

    public void c(boolean z, final boolean z2) {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                final CameraMenuOption next = it.next();
                if (next != null && 1 == next.w()) {
                    if (z) {
                        com.oppo.camera.o.d.a(next.A(), 8, (Animation.AnimationListener) new Animation.AnimationListener() {
                            public void onAnimationEnd(Animation animation) {
                                if (z2) {
                                    CameraMenuOption cameraMenuOption = next;
                                    if (cameraMenuOption != null) {
                                        cameraMenuOption.b(cameraMenuOption.q());
                                    }
                                }
                            }

                            public void onAnimationRepeat(Animation animation) {
                            }

                            public void onAnimationStart(Animation animation) {
                            }
                        }, 300);
                        next.a(8);
                    } else {
                        next.a(8);
                        if (z2) {
                            next.b(next.q());
                        }
                    }
                }
            }
        }
    }

    public boolean c() {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return false;
        }
        Iterator<CameraMenuOption> it = this.j.iterator();
        while (it.hasNext()) {
            CameraMenuOption next = it.next();
            if (next != null && next.e()) {
                return true;
            }
        }
        return false;
    }

    public void d() {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<CameraMenuOption> it = this.j.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null && !next.g()) {
                    if (this.k.g("pref_camera_videoflashmode_key") && "pref_camera_videoflashmode_key".equals(next.a())) {
                        next.d(0);
                    } else if (!this.k.g("pref_camera_torch_mode_key") || !"pref_camera_torch_mode_key".equals(next.a())) {
                        if (1 == next.w()) {
                            next.a(4);
                        } else {
                            if (next.u()) {
                                next.v();
                            }
                            next.d(4);
                        }
                        next.a(false, false);
                        if (3 == next.w()) {
                            next.c(0);
                        }
                    } else {
                        next.d(0);
                    }
                }
            }
        }
    }

    public void d(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList != null) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null && str.equals(next.a())) {
                        next.b(z);
                        return;
                    }
                }
            }
        }
    }

    public boolean d(String str) {
        return "pref_camera_flashmode_key".equals(str) || "pref_camera_videoflashmode_key".equals(str) || "pref_camera_torch_mode_key".equals(str);
    }

    public void e() {
        Iterator<CameraMenuOption> it = this.j.iterator();
        while (it.hasNext()) {
            CameraMenuOption next = it.next();
            if (next != null) {
                if (next.g()) {
                    next.a(8);
                } else {
                    next.d(0);
                }
            }
        }
    }

    public boolean e(String str) {
        return "pref_setting_key".equals(str) || "pref_subsetting_key".equals(str);
    }

    public void f() {
        if (this.h) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList != null) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null) {
                        next.e(CameraConfig.getOptionKeyDefaultValue(next.a(), getCameraId()));
                    }
                }
            }
        }
    }

    public void g() {
        clearAnimation();
        i();
        removeAllViews();
        if (this.n != null) {
            synchronized (this.f2808a) {
                this.n.clear();
            }
            this.n = null;
        }
        this.m = null;
        this.k = null;
    }

    public int getCameraId() {
        d dVar = this.k;
        if (dVar != null) {
            return dVar.p();
        }
        return 0;
    }

    public CopyOnWriteArrayList<CameraMenuOption> getMenuList() {
        return this.j;
    }

    public boolean getMenuPanelAshed() {
        return this.g;
    }

    public boolean getMenuPanelEnable() {
        return this.f;
    }

    public int getOrientation() {
        return this.c;
    }

    public SharedPreferences getSharedPreferences() {
        return this.l;
    }

    public int getUnremovedMenuNum() {
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        int i2 = 0;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<CameraMenuOption> it = this.j.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null && !next.g()) {
                    i2++;
                }
            }
        }
        return i2;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        CameraMenuOption cameraMenuOption;
        int i6;
        if (this.e) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0 && this.h) {
                int i7 = i4 - i2;
                int i8 = this.f2809b;
                int i9 = i7 - (i8 * 2);
                int i10 = i5 - i3;
                float f2 = 0.0f;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                for (int i14 = 0; i14 < this.j.size(); i14++) {
                    CameraMenuOption cameraMenuOption2 = this.j.get(i14);
                    if (!cameraMenuOption2.g()) {
                        i12 += cameraMenuOption2.s();
                        i13++;
                    }
                }
                if (i9 > i12 && i13 > 1) {
                    f2 = ((float) (i9 - i12)) / ((float) (i13 - 1));
                }
                boolean z2 = 1 == getLayoutDirection();
                int i15 = i8;
                int i16 = 0;
                int i17 = 0;
                while (i16 < this.j.size()) {
                    if (z2) {
                        int size = (this.j.size() - i16) - 1;
                        cameraMenuOption = (CameraMenuOption) (size >= 0 ? this.j.get(size) : this.j.get(i11));
                    } else {
                        cameraMenuOption = this.j.get(i16);
                    }
                    if (cameraMenuOption == null || cameraMenuOption.x() == 8) {
                        i6 = i10;
                        i15 = i15;
                    } else {
                        int s = cameraMenuOption.s();
                        int measuredHeight = getMeasuredHeight();
                        int i18 = (i10 - measuredHeight) / 2;
                        i6 = i10;
                        int z3 = cameraMenuOption.z();
                        int i19 = i15;
                        if (1 != cameraMenuOption.w()) {
                            int i20 = i13 == 1 ? f(cameraMenuOption.a(), z2) ? this.f2809b : g(cameraMenuOption.a(), z2) ? (this.f2809b + i9) - s : (i7 - i12) / 2 : i19;
                            if (cameraMenuOption.A() != null) {
                                i17 = cameraMenuOption.A().getLeft();
                            }
                            if (!cameraMenuOption.u()) {
                                if (z3 == 0 || i20 == z3) {
                                    cameraMenuOption.a(i20, i18, i20 + s, measuredHeight + i18);
                                } else if (cameraMenuOption.x() != 0 || i17 == i20 || !cameraMenuOption.h()) {
                                    cameraMenuOption.a(i20, cameraMenuOption.A().getTop(), cameraMenuOption.A().getWidth() + i20, cameraMenuOption.A().getBottom());
                                } else {
                                    cameraMenuOption.a(i17, i20);
                                }
                            } else if (z3 != i20) {
                                if (cameraMenuOption.x() != 0 || i17 == i20 || !cameraMenuOption.h()) {
                                    cameraMenuOption.a(i20, cameraMenuOption.A().getTop(), cameraMenuOption.A().getWidth() + i20, cameraMenuOption.A().getBottom());
                                } else {
                                    cameraMenuOption.a(i17, i20);
                                }
                            }
                            if (!cameraMenuOption.h()) {
                                cameraMenuOption.a(true);
                            }
                            i15 = (int) (((float) i20) + ((float) s) + f2);
                        } else {
                            return;
                        }
                    }
                    i16++;
                    i10 = i6;
                    i11 = 0;
                }
            }
        }
    }

    public void setAlpha(float f2) {
        super.setAlpha(f2);
        com.oppo.camera.d.a("CameraSettingMenuPanel", "setAlpha, alpha : " + f2);
    }

    public void setCameraMenuLayout(boolean z) {
        com.oppo.camera.d.a("CameraSettingMenuPanel", "setCameraMenuLayout(), " + this.h + " => " + z);
        this.h = z;
        if (this.h) {
            h();
            requestLayout();
        }
    }

    public void setInitState(boolean z) {
        this.e = z;
    }

    public void setOrientation(int i2) {
        this.c = i2;
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<CameraMenuOption> it = this.j.iterator();
            while (it.hasNext()) {
                it.next().a(i2, true);
            }
        }
    }

    public void setSizeRatioType(int i2) {
        this.d = i2;
        CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList != null) {
            Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (next != null) {
                    next.e(this.d);
                }
            }
        }
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        com.oppo.camera.d.a("CameraSettingMenuPanel", "setVisibility, visibility : " + i2);
        if (i2 == 0) {
            CopyOnWriteArrayList<CameraMenuOption> copyOnWriteArrayList = this.j;
            if (copyOnWriteArrayList != null) {
                Iterator<CameraMenuOption> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CameraMenuOption next = it.next();
                    if (next != null) {
                        if (next.g()) {
                            next.a(8);
                        } else {
                            next.d(0);
                        }
                    }
                }
            }
        }
        if (i2 != 0 && this.j != null && f.a()) {
            Iterator<CameraMenuOption> it2 = this.j.iterator();
            while (it2.hasNext()) {
                CameraMenuOption next2 = it2.next();
                if (next2 != null) {
                    next2.n();
                }
            }
        }
    }
}
