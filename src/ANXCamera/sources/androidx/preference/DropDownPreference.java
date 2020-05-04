package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class DropDownPreference extends ListPreference {

    /* renamed from: a  reason: collision with root package name */
    private final Context f806a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayAdapter f807b;
    private Spinner c;
    private final AdapterView.OnItemSelectedListener d;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dropdownPreferenceStyle);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.d = new AdapterView.OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i >= 0) {
                    String charSequence = DropDownPreference.this.m()[i].toString();
                    if (!charSequence.equals(DropDownPreference.this.o()) && DropDownPreference.this.b((Object) charSequence)) {
                        DropDownPreference.this.a(charSequence);
                    }
                }
            }

            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.f806a = context;
        this.f807b = h();
        T();
    }

    private void T() {
        this.f807b.clear();
        if (l() != null) {
            for (CharSequence charSequence : l()) {
                this.f807b.add(charSequence.toString());
            }
        }
    }

    private int f(String str) {
        CharSequence[] m = m();
        if (str == null || m == null) {
            return -1;
        }
        for (int length = m.length - 1; length >= 0; length--) {
            if (m[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public void a(l lVar) {
        this.c = (Spinner) lVar.f916a.findViewById(R.id.spinner);
        this.c.setAdapter(this.f807b);
        this.c.setOnItemSelectedListener(this.d);
        this.c.setSelection(f(o()));
        super.a(lVar);
    }

    /* access modifiers changed from: protected */
    public void g() {
        this.c.performClick();
    }

    /* access modifiers changed from: protected */
    public ArrayAdapter h() {
        return new ArrayAdapter(this.f806a, 17367049);
    }

    /* access modifiers changed from: protected */
    public void i() {
        super.i();
        ArrayAdapter arrayAdapter = this.f807b;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }
}
