package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MultiSelectListPreferenceDialogFragmentCompat */
public class d extends f {
    Set<String> ae = new HashSet();
    boolean af;
    CharSequence[] ag;
    CharSequence[] ah;

    private MultiSelectListPreference ao() {
        return (MultiSelectListPreference) an();
    }

    public static d b(String str) {
        d dVar = new d();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        dVar.g(bundle);
        return dVar;
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle == null) {
            MultiSelectListPreference ao = ao();
            if (ao.h() == null || ao.l() == null) {
                throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
            }
            this.ae.clear();
            this.ae.addAll(ao.m());
            this.af = false;
            this.ag = ao.h();
            this.ah = ao.l();
            return;
        }
        this.ae.clear();
        this.ae.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
        this.af = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
        this.ag = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
        this.ah = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
    }

    /* access modifiers changed from: protected */
    public void a(b.a aVar) {
        super.a(aVar);
        int length = this.ah.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.ae.contains(this.ah[i].toString());
        }
        aVar.a(this.ag, zArr, (DialogInterface.OnMultiChoiceClickListener) new DialogInterface.OnMultiChoiceClickListener() {
            public void onClick(DialogInterface dialogInterface, int i, boolean z) {
                if (z) {
                    d dVar = d.this;
                    dVar.af = d.this.ae.add(d.this.ah[i].toString()) | dVar.af;
                    return;
                }
                d dVar2 = d.this;
                dVar2.af = d.this.ae.remove(d.this.ah[i].toString()) | dVar2.af;
            }
        });
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList(this.ae));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.af);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.ag);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.ah);
    }

    public void i(boolean z) {
        if (z && this.af) {
            MultiSelectListPreference ao = ao();
            if (ao.b((Object) this.ae)) {
                ao.a(this.ae);
            }
        }
        this.af = false;
    }
}
