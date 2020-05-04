package com.color.support.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.c;
import androidx.preference.a;
import color.support.v7.app.b;

/* compiled from: ColorEditTextPreferenceDialogFragment */
public class b extends a {
    public static b c(String str) {
        b bVar = new b();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        bVar.g(bundle);
        return bVar;
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
        color.support.v7.app.b c = d.b();
        c.getWindow().setSoftInputMode(5);
        return c;
    }
}
