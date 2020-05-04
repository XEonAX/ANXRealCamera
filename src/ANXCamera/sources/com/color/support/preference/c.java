package com.color.support.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.b;
import color.support.v7.app.b;

/* compiled from: ColorListPreferenceDialogFragment */
public class c extends androidx.preference.c {
    public static c c(String str) {
        c cVar = new c();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cVar.g(bundle);
        return cVar;
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
}
