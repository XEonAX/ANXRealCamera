package androidx.preference;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

/* compiled from: EditTextPreferenceDialogFragmentCompat */
public class a extends f {
    private EditText ae;
    private CharSequence af;

    private EditTextPreference ao() {
        return (EditTextPreference) an();
    }

    public static a b(String str) {
        a aVar = new a();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        aVar.g(bundle);
        return aVar;
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle == null) {
            this.af = ao().h();
        } else {
            this.af = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    /* access modifiers changed from: protected */
    public boolean am() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void b(View view) {
        super.b(view);
        this.ae = (EditText) view.findViewById(16908291);
        EditText editText = this.ae;
        if (editText != null) {
            editText.requestFocus();
            this.ae.setText(this.af);
            EditText editText2 = this.ae;
            editText2.setSelection(editText2.getText().length());
            if (ao().l() != null) {
                ao().l().a(this.ae);
                return;
            }
            return;
        }
        throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.af);
    }

    public void i(boolean z) {
        if (z) {
            String obj = this.ae.getText().toString();
            EditTextPreference ao = ao();
            if (ao.b((Object) obj)) {
                ao.a(obj);
            }
        }
    }
}
