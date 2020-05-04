package com.color.support.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.b;
import androidx.fragment.app.c;
import color.support.v7.app.b;

/* compiled from: ColorMultiSelectListPreferenceDialogFragment */
public class d extends androidx.preference.d {
    public static d c(String str) {
        d dVar = new d();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        dVar.g(bundle);
        return dVar;
    }

    public Dialog c(Bundle bundle) {
        c o = o();
        b.a d = new b.a(o).a(an().a()).a(an().c()).a(an().d(), (DialogInterface.OnClickListener) this).b(an().e(), this);
        View b2 = b((Context) o);
        if (b2 != null) {
            b(b2);
            d.b(b2);
        } else {
            d.b(an().b());
        }
        a((b.a) d);
        return d.b();
    }
}
