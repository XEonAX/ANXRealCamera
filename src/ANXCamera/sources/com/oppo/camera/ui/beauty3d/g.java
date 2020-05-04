package com.oppo.camera.ui.beauty3d;

import android.app.Activity;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.ui.preview.PreviewFrameLayout;
import java.util.HashMap;

/* compiled from: Beauty3DUI */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private Activity f2581a = null;

    /* renamed from: b  reason: collision with root package name */
    private f f2582b = null;
    private d c = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.c.a d = null;
    /* access modifiers changed from: private */
    public a e = null;
    private RelativeLayout f = null;
    private ViewGroup g = null;
    private PopupWindow h = null;
    private e i = new e() {
        public void a() {
            if (g.this.e != null) {
                g.this.e.a();
            }
        }

        public void a(String str, int[] iArr) {
            if (g.this.e != null) {
                g.this.e.a(str, iArr);
            }
        }

        public void a(boolean z) {
            d.a("Beauty3DUI", "onScanCancel, isUserCancel: " + z);
            if (g.this.e != null) {
                g.this.e.a(z);
            }
        }

        public void b() {
            if (g.this.e != null) {
                g.this.e.b();
            }
        }

        public void c() {
            if (g.this.e != null) {
                g.this.e.i();
            }
        }
    };
    private i j = new i() {
        public void a() {
            if (g.this.e != null) {
                g.this.h();
                g.this.e.c();
            }
        }

        public void a(String str, int[] iArr) {
            if (g.this.e != null) {
                g.this.e.a(str, iArr);
            }
        }

        public void b() {
            d.a("Beauty3DUI", "onSave");
            if (g.this.d != null) {
                g.this.d.d();
            }
            if (g.this.e != null) {
                g.this.e.e();
            }
        }

        public void c() {
            if (g.this.e != null) {
                g.this.e.d();
            }
        }
    };

    /* compiled from: Beauty3DUI */
    public interface a {
        void a();

        void a(String str, int[] iArr);

        void a(boolean z);

        void b();

        void c();

        void d();

        void e();

        void f();

        void g();

        void h();

        void i();
    }

    public g(Activity activity) {
        this.f2581a = activity;
    }

    private PopupWindow a(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        View inflate = LayoutInflater.from(this.f2581a).inflate(R.layout.beauty3d_edit_choose_menu, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.edit);
        ImageView imageView2 = (ImageView) inflate.findViewById(R.id.delete);
        AnonymousClass5 r3 = new View.OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!view.isEnabled()) {
                    return false;
                }
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    view.setAlpha(0.5f);
                } else if (actionMasked == 1) {
                    view.setAlpha(1.0f);
                }
                return false;
            }
        };
        imageView.setOnClickListener(onClickListener);
        imageView.setOnTouchListener(r3);
        imageView2.setOnClickListener(onClickListener2);
        imageView2.setOnTouchListener(r3);
        PopupWindow popupWindow = new PopupWindow(this.f2581a);
        popupWindow.setWidth(this.f2581a.getResources().getDimensionPixelSize(R.dimen.beauty3d_edit_choose_menu_width));
        popupWindow.setHeight(-2);
        popupWindow.setContentView(inflate);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.setFocusable(false);
        popupWindow.setOutsideTouchable(false);
        popupWindow.setAnimationStyle(R.style.PopupWindowStyle);
        return popupWindow;
    }

    public void a() {
        com.oppo.camera.c.a aVar = this.d;
        if (aVar != null) {
            aVar.b();
        }
        d dVar = this.c;
        if (dVar != null) {
            dVar.j();
        }
    }

    public void a(int i2) {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.b(i2);
        }
    }

    public void a(int i2, int i3, boolean z) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.b(i2, this.d.a());
        }
        a aVar = this.e;
        if (aVar != null) {
            aVar.f();
        }
    }

    public void a(int i2, boolean z) {
        this.f2582b.a(i2, z);
    }

    public void a(int i2, boolean z, int i3, int i4) {
        if (!this.f2582b.b()) {
            this.f2582b.b(i2, z, i3, i4);
        }
    }

    public void a(a aVar) {
        this.g = (ViewGroup) this.f2581a.findViewById(R.id.camera);
        this.f = (PreviewFrameLayout) this.f2581a.findViewById(R.id.frame_layout);
        this.e = aVar;
        this.f2582b = new f(this.f2581a, this.f, this.g);
        this.f2582b.a(this.i);
        this.c = new d(this.f2581a, this.j, this.f);
        this.d = new com.oppo.camera.c.a(this.f2581a, this.c);
    }

    public void a(Integer num) {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.a(num);
        }
    }

    public void a(String str, int[] iArr) {
        com.oppo.camera.c.a aVar = this.d;
        if (aVar != null) {
            aVar.a(str, iArr);
        }
    }

    public void a(boolean z) {
        b(z);
    }

    public void b() {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.a(0);
        }
    }

    public void b(int i2, boolean z, int i3, int i4) {
        this.f2582b.a(i2, z, i3, i4);
    }

    public void b(boolean z) {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.a(z, true);
        }
    }

    public boolean b(int i2) {
        d.a("Beauty3DUI", "onBackPressed, status: " + i2);
        if (i2 < 1 || i2 > 4) {
            if (i2 > 6 && i2 <= 10) {
                d dVar = this.c;
                if (!(dVar == null || this.e == null)) {
                    dVar.a(true);
                    this.e.d();
                    return true;
                }
            }
            return false;
        }
        a(true);
        return true;
    }

    public void c(int i2, boolean z, int i3, int i4) {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.c(i2, z, i3, i4);
        }
    }

    public void c(boolean z) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.c(z);
        }
    }

    public boolean c() {
        f fVar = this.f2582b;
        if (fVar != null) {
            return fVar.a();
        }
        return false;
    }

    public void d() {
        f fVar = this.f2582b;
        if (fVar == null || !fVar.b()) {
            d dVar = this.c;
            if (dVar != null) {
                dVar.a(false);
            }
        } else {
            this.f2582b.e();
        }
        j();
    }

    public void d(boolean z) {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.b(z);
        }
    }

    public void e() {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.d();
        }
        d dVar = this.c;
        if (dVar != null) {
            dVar.l();
        }
        this.f2582b = null;
        this.c = null;
    }

    public void e(final boolean z) {
        d.a("Beauty3DUI", "enableEditChooseMenu enable: " + z);
        PopupWindow popupWindow = this.h;
        if (popupWindow != null) {
            popupWindow.setTouchInterceptor(new View.OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return !z;
                }
            });
        }
    }

    public void f() {
        d dVar = this.c;
        if (dVar != null) {
            dVar.i();
        }
    }

    public HashMap<String, int[]> g() {
        d dVar = this.c;
        if (dVar != null) {
            return dVar.q();
        }
        return null;
    }

    public void h() {
        com.oppo.camera.c.a aVar = this.d;
        if (aVar != null) {
            aVar.e();
        }
    }

    public void i() {
        if (this.h == null) {
            this.h = a((View.OnClickListener) new View.OnClickListener() {
                public void onClick(View view) {
                    d.a("Beauty3DUI", "onClick, beauty3d edit");
                    g.this.j();
                    if (g.this.e != null) {
                        g.this.e.g();
                    }
                }
            }, (View.OnClickListener) new View.OnClickListener() {
                public void onClick(View view) {
                    d.a("Beauty3DUI", "onClick, beauty3d data delete");
                    g.this.j();
                    if (g.this.e != null) {
                        g.this.e.h();
                    }
                }
            });
        }
        if (!this.h.isShowing()) {
            try {
                int N = (com.oppo.camera.o.d.N() / 2) - (this.h.getWidth() / 2);
                if (N <= 0) {
                    N = 0;
                }
                this.h.showAtLocation(this.g, 83, N, this.f2581a.getResources().getDimensionPixelSize(R.dimen.bubble_type_beauty3d_edit_offset_y));
            } catch (WindowManager.BadTokenException e2) {
                if (this.h.isShowing()) {
                    this.h.dismiss();
                }
                d.d("Beauty3DUI", "showEditChooseMenu, exception: " + e2.getMessage());
            }
        }
    }

    public void j() {
        PopupWindow popupWindow = this.h;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.h.dismiss();
        }
    }

    public int k() {
        d dVar = this.c;
        if (dVar != null) {
            return dVar.o();
        }
        return 0;
    }

    public void l() {
        f fVar = this.f2582b;
        if (fVar != null) {
            fVar.h();
        }
    }
}
