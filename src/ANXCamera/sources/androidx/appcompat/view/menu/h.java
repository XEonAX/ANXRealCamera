package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.R;
import androidx.appcompat.app.b;
import androidx.appcompat.view.menu.m;
import com.oppo.statistics.DataTypeConstants;
import com.sensetime.stmobile.STMobileHumanActionNative;

/* compiled from: MenuDialogHelper */
class h implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, m.a {

    /* renamed from: a  reason: collision with root package name */
    e f191a;

    /* renamed from: b  reason: collision with root package name */
    private g f192b;
    private b c;
    private m.a d;

    public h(g gVar) {
        this.f192b = gVar;
    }

    public void a() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    public void a(IBinder iBinder) {
        g gVar = this.f192b;
        b.a aVar = new b.a(gVar.f());
        this.f191a = new e(aVar.a(), R.layout.abc_list_menu_item_layout);
        this.f191a.a((m.a) this);
        this.f192b.a((m) this.f191a);
        aVar.a(this.f191a.a(), (DialogInterface.OnClickListener) this);
        View p = gVar.p();
        if (p != null) {
            aVar.a(p);
        } else {
            aVar.a(gVar.o()).a(gVar.n());
        }
        aVar.a((DialogInterface.OnKeyListener) this);
        this.c = aVar.b();
        this.c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.c.getWindow().getAttributes();
        attributes.type = DataTypeConstants.PAGE_VISIT;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= STMobileHumanActionNative.ST_MOBILE_DETECT_MODE_VIDEO;
        this.c.show();
    }

    public void a(g gVar, boolean z) {
        if (z || gVar == this.f192b) {
            a();
        }
        m.a aVar = this.d;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public boolean a(g gVar) {
        m.a aVar = this.d;
        if (aVar != null) {
            return aVar.a(gVar);
        }
        return false;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.f192b.a((MenuItem) (i) this.f191a.a().getItem(i), 0);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.f191a.a(this.f192b, true);
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window = this.c.getWindow();
                if (window != null) {
                    View decorView = window.getDecorView();
                    if (decorView != null) {
                        KeyEvent.DispatcherState keyDispatcherState = decorView.getKeyDispatcherState();
                        if (keyDispatcherState != null) {
                            keyDispatcherState.startTracking(keyEvent, this);
                            return true;
                        }
                    }
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                Window window2 = this.c.getWindow();
                if (window2 != null) {
                    View decorView2 = window2.getDecorView();
                    if (decorView2 != null) {
                        KeyEvent.DispatcherState keyDispatcherState2 = decorView2.getKeyDispatcherState();
                        if (keyDispatcherState2 != null && keyDispatcherState2.isTracking(keyEvent)) {
                            this.f192b.a(true);
                            dialogInterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return this.f192b.performShortcut(i, keyEvent, 0);
    }
}
