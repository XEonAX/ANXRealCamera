package com.color.support.widget.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;

public class ColorNavigationPresenter implements m {

    /* renamed from: a  reason: collision with root package name */
    private g f1721a;

    /* renamed from: b  reason: collision with root package name */
    private b f1722b;
    private boolean c;
    private int d;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int mSelectedItemId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mSelectedItemId = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mSelectedItemId);
        }
    }

    public void a(Context context, g gVar) {
        this.f1722b.a(this.f1721a);
        this.f1721a = gVar;
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f1722b.a(((SavedState) parcelable).mSelectedItemId);
        }
    }

    public void a(g gVar, boolean z) {
    }

    public void a(m.a aVar) {
    }

    public void a(boolean z) {
        if (!this.c) {
            if (z) {
                this.f1722b.a();
            } else {
                this.f1722b.b();
            }
        }
    }

    public boolean a(g gVar, i iVar) {
        return false;
    }

    public boolean a(r rVar) {
        return false;
    }

    public void b(boolean z) {
        this.c = z;
    }

    public boolean b() {
        return false;
    }

    public boolean b(g gVar, i iVar) {
        return false;
    }

    public int c() {
        return this.d;
    }

    public Parcelable f() {
        SavedState savedState = new SavedState();
        savedState.mSelectedItemId = this.f1722b.getSelectedItemId();
        return savedState;
    }
}
