package com.oppo.camera.ui.menu.setting;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import androidx.appcompat.app.b;
import androidx.preference.f;
import color.support.v7.app.b;
import com.oppo.camera.ui.menu.levelcontrol.a;

/* compiled from: CameraCustomListPreferenceFragment */
public class c extends f {
    /* access modifiers changed from: private */
    public int ae;
    private CharSequence[] af;
    private CharSequence[] ag;
    private CharSequence[] ah;

    private CameraCustomListPreference ao() {
        return (CameraCustomListPreference) an();
    }

    public static c b(String str) {
        c cVar = new c();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cVar.g(bundle);
        return cVar;
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle == null) {
            CameraCustomListPreference ao = ao();
            if (ao.l() == null || ao.m() == null) {
                throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
            }
            this.ae = ao.b(ao.o());
            this.af = ao.l();
            this.ag = ao.m();
            this.ah = ao.T();
            return;
        }
        this.ae = bundle.getInt("CameraCustomListPreferenceFragment.index", 0);
        this.af = bundle.getCharSequenceArray("CameraCustomListPreferenceFragment.entries");
        this.ag = bundle.getCharSequenceArray("CameraCustomListPreferenceFragment.entryValues");
        this.ah = bundle.getCharSequenceArray("CameraCustomListPreferenceFragment.entrySummary");
    }

    /* access modifiers changed from: protected */
    public void a(b.a aVar) {
        super.a(aVar);
        a aVar2 = new a(o(), true, true, this.ae, this.af, this.ah);
        aVar.a((ListAdapter) aVar2, this.ae, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                int unused = c.this.ae = i;
                c.this.onClick(dialogInterface, -1);
                dialogInterface.dismiss();
            }
        });
        aVar.a((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    public Dialog c(Bundle bundle) {
        androidx.fragment.app.c o = o();
        b.a d = new b.a(o).a(an().a()).a(an().c()).a(an().d(), (DialogInterface.OnClickListener) this).b(an().e(), this);
        View b2 = b((Context) o);
        if (b2 != null) {
            b(b2);
            d.b(b2);
        } else {
            d.b(an().b());
        }
        a((b.a) d);
        d.b((CharSequence) null, (DialogInterface.OnClickListener) null);
        return d.b();
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putInt("CameraCustomListPreferenceFragment.index", this.ae);
        bundle.putCharSequenceArray("CameraCustomListPreferenceFragment.entries", this.af);
        bundle.putCharSequenceArray("CameraCustomListPreferenceFragment.entryValues", this.ag);
        bundle.putCharSequenceArray("CameraCustomListPreferenceFragment.entrySummary", this.ah);
    }

    public void i(boolean z) {
        if (z) {
            int i = this.ae;
            if (i >= 0) {
                String charSequence = this.ag[i].toString();
                CameraCustomListPreference ao = ao();
                if (ao.b((Object) charSequence)) {
                    ao.a(charSequence);
                }
            }
        }
    }
}
