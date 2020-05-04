package com.oppo.camera;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import com.color.support.widget.f;
import com.oppo.camera.o.d;
import java.util.List;

/* compiled from: NetLocationPermissionDialog */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private f.a f2261a;

    /* renamed from: b  reason: collision with root package name */
    private f f2262b = null;
    private b c = null;
    /* access modifiers changed from: private */
    public List<a> d = null;
    /* access modifiers changed from: private */
    public Context e = null;
    /* access modifiers changed from: private */
    public boolean f = false;

    /* compiled from: NetLocationPermissionDialog */
    public interface a {
        void a();

        void b();
    }

    /* compiled from: NetLocationPermissionDialog */
    private class b implements f.c {

        /* renamed from: b  reason: collision with root package name */
        private SharedPreferences f2267b;

        private b() {
        }

        public void a(int i, boolean z) {
            d.a("NetLocationPermissionDialog", "onSelected, isCheck: " + z + ", whichButton: " + i);
            if (i == -1) {
                if (z) {
                    SharedPreferences.Editor edit = this.f2267b.edit();
                    edit.putInt("pref_location_checkbox_key", 1);
                    edit.putInt("pref_net_location_checkbox_key", 1);
                    edit.apply();
                }
                if (n.this.d != null) {
                    for (a aVar : n.this.d) {
                        if (aVar != null) {
                            aVar.a();
                        }
                    }
                }
            } else if (i == -2) {
                if (z) {
                    SharedPreferences.Editor edit2 = this.f2267b.edit();
                    edit2.putInt("pref_net_location_checkbox_key", 1);
                    edit2.apply();
                }
                if (n.this.d != null) {
                    for (a aVar2 : n.this.d) {
                        if (aVar2 != null) {
                            aVar2.b();
                        }
                    }
                }
            }
        }

        public void a(SharedPreferences sharedPreferences) {
            this.f2267b = sharedPreferences;
        }
    }

    public n(Context context) {
        this.e = context;
        this.c = new b();
    }

    public boolean a() {
        return this.f;
    }

    public boolean a(SharedPreferences sharedPreferences, List<a> list) {
        if (d.z()) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putInt("pref_net_checkbox_key", 1);
            edit.putInt("pref_location_checkbox_key", 1);
            edit.putInt("pref_net_location_checkbox_key", 1);
            edit.apply();
            this.f = true;
            return false;
        }
        if (!(sharedPreferences == null || this.c == null)) {
            int i = sharedPreferences.getInt("pref_net_location_checkbox_key", 0);
            this.d = list;
            d.a("NetLocationPermissionDialog", "showNetLocationDialog, value: " + i);
            if (i == 0) {
                if (this.f2262b == null) {
                    this.f2261a = new f.a(this.e);
                    this.f2261a.a((int) R.string.camera_dialog_net_location_title).b((int) R.string.camera_dialog_net_location_content).d(R.string.camera_dialog_net_location_positive).c((int) R.string.camera_dialog_net_location_negative).a(true).b(true).a((f.c) this.c).a((f.b) new f.b() {
                        public void a() {
                            d.k(n.this.e);
                        }
                    });
                    this.f2262b = this.f2261a.b();
                }
                this.f2261a.a((f.c) this.c);
                this.f2261a.a().setOnDismissListener(new DialogInterface.OnDismissListener() {
                    public void onDismiss(DialogInterface dialogInterface) {
                        d.a("NetLocationPermissionDialog", "showNetLocationDialog, onDismiss");
                        boolean unused = n.this.f = true;
                    }
                });
                this.c.a(sharedPreferences);
                if (!d.y()) {
                    this.f2262b.b();
                } else {
                    this.c.a(-1, true);
                }
                return true;
            }
        }
        this.f = true;
        return false;
    }

    public void b() {
        this.f = false;
    }

    public void c() {
        d.a("NetLocationPermissionDialog", "release");
        f.a aVar = this.f2261a;
        if (aVar != null) {
            aVar.a((f.c) null);
        }
        this.f2262b = null;
        this.c = null;
        this.d = null;
    }
}
