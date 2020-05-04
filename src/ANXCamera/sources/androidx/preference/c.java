package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.b;

/* compiled from: ListPreferenceDialogFragmentCompat */
public class c extends f {
    int ae;
    private CharSequence[] af;
    private CharSequence[] ag;

    private ListPreference ao() {
        return (ListPreference) an();
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
            ListPreference ao = ao();
            if (ao.l() == null || ao.m() == null) {
                throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
            }
            this.ae = ao.b(ao.o());
            this.af = ao.l();
            this.ag = ao.m();
            return;
        }
        this.ae = bundle.getInt("ListPreferenceDialogFragment.index", 0);
        this.af = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
        this.ag = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
    }

    /* access modifiers changed from: protected */
    public void a(b.a aVar) {
        super.a(aVar);
        aVar.a(this.af, this.ae, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                c cVar = c.this;
                cVar.ae = i;
                cVar.onClick(dialogInterface, -1);
                dialogInterface.dismiss();
            }
        });
        aVar.a((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.ae);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.af);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.ag);
    }

    public void i(boolean z) {
        if (z) {
            int i = this.ae;
            if (i >= 0) {
                String charSequence = this.ag[i].toString();
                ListPreference ao = ao();
                if (ao.b((Object) charSequence)) {
                    ao.a(charSequence);
                }
            }
        }
    }
}
