package com.color.support.preference;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.b;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.g;
import androidx.recyclerview.widget.RecyclerView;
import color.support.v7.appcompat.R;

/* compiled from: ColorPreferenceFragment */
public class e extends g {
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a2 = super.a(layoutInflater, viewGroup, bundle);
        a((Drawable) null);
        d(0);
        return a2;
    }

    public void a(Bundle bundle, String str) {
    }

    public void b(Preference preference) {
        b bVar;
        if (s().a("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof ColorActivityDialogPreference) {
                bVar = a.c(preference.B());
            } else if (preference instanceof ColorEditTextPreference) {
                bVar = b.c(preference.B());
            } else if (preference instanceof ColorMultiSelectListPreference) {
                bVar = d.c(preference.B());
            } else if (preference instanceof ListPreference) {
                bVar = c.c(preference.B());
            } else {
                super.b(preference);
                return;
            }
            bVar.a((Fragment) this, 0);
            bVar.a(s(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    public RecyclerView c(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView = (RecyclerView) layoutInflater.inflate(R.layout.color_preference_recyclerview, viewGroup, false);
        recyclerView.setLayoutManager(aq());
        return recyclerView;
    }
}
