package com.oppo.camera;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.KeyEvent;
import com.color.support.widget.f;
import com.oppo.camera.o.d;

/* compiled from: PrivacyPolicyAlert */
public class s {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public Activity f2365a = null;

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences f2366b = null;
    private a c = null;
    private f d = null;

    /* compiled from: PrivacyPolicyAlert */
    public interface a {
        void a(boolean z);
    }

    public s(Activity activity, a aVar) {
        this.f2365a = activity;
        this.c = aVar;
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        d.a("PrivacyPolicyAlert", "onPositiveButtonClick, isChecked: " + z);
        SharedPreferences.Editor edit = this.f2366b.edit();
        edit.putBoolean("pref_privacy_policy_agree", true);
        edit.putBoolean("pref_privacy_policy_key", true);
        edit.apply();
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(true);
        }
    }

    private f b() {
        f.a aVar = new f.a(this.f2365a);
        aVar.a((int) R.string.privacy_policy_title).b(false).b((int) R.string.privacy_policy_content_V7_realme).a(true).c((int) R.string.privacy_policy_disagree).d(R.string.privacy_policy_agree).a((f.c) new f.c() {
            public void a(int i, boolean z) {
                if (i == -2) {
                    s.this.b(z);
                } else if (i == -1) {
                    s.this.a(z);
                }
            }
        }).a((f.b) new f.b() {
            public void a() {
                d.k(s.this.f2365a);
            }
        }).c(true);
        f b2 = aVar.b();
        aVar.a().setOnKeyListener(new DialogInterface.OnKeyListener() {
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return false;
            }
        });
        return b2;
    }

    /* access modifiers changed from: private */
    public void b(boolean z) {
        d.a("PrivacyPolicyAlert", "onNegativeButtonClick, isChecked: " + z);
        SharedPreferences.Editor edit = this.f2366b.edit();
        edit.putBoolean("pref_privacy_policy_agree", false);
        edit.putBoolean("pref_privacy_policy_key", z);
        edit.apply();
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(false);
        }
    }

    public void a() {
        d.a("PrivacyPolicyAlert", "release");
        f fVar = this.d;
        if (fVar != null && fVar.a()) {
            this.d.c();
        }
        this.d = null;
        this.c = null;
    }

    public boolean a(SharedPreferences sharedPreferences) {
        d.a("PrivacyPolicyAlert", "showDialog, preferences: " + sharedPreferences);
        this.f2366b = sharedPreferences;
        if (!d.y()) {
            SharedPreferences sharedPreferences2 = this.f2366b;
            if (sharedPreferences2 != null) {
                if (sharedPreferences2.getBoolean("pref_privacy_policy_key", false)) {
                    d.a("PrivacyPolicyAlert", "showDialog, has show dialog");
                    return false;
                }
                if (this.d == null) {
                    this.d = b();
                }
                if (this.d.a()) {
                    return true;
                }
                this.d.b();
                return true;
            }
        }
        return false;
    }
}
