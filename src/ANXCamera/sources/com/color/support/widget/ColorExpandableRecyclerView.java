package com.color.support.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.recyclerview.widget.ColorLinearLayoutManager;
import androidx.recyclerview.widget.ColorRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.color.support.widget.ExpandableRecyclerConnector;
import java.util.ArrayList;

public class ColorExpandableRecyclerView extends ColorRecyclerView {
    private c R;
    private ExpandableRecyclerConnector S;
    private b T;
    private a U;
    private c V;
    private d W;

    static class SavedState extends View.BaseSavedState {
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
        ArrayList<ExpandableRecyclerConnector.GroupMetadata> expandedGroupMetadataList;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.expandedGroupMetadataList = new ArrayList<>();
            parcel.readList(this.expandedGroupMetadataList, ExpandableRecyclerConnector.class.getClassLoader());
        }

        SavedState(Parcelable parcelable, ArrayList<ExpandableRecyclerConnector.GroupMetadata> arrayList) {
            super(parcelable);
            this.expandedGroupMetadataList = arrayList;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeList(this.expandedGroupMetadataList);
        }
    }

    public interface a {
        boolean a(ColorRecyclerView colorRecyclerView, View view, int i, int i2, long j);
    }

    public interface b {
        boolean a(ColorExpandableRecyclerView colorExpandableRecyclerView, View view, int i, long j);
    }

    public interface c {
        void a(int i);
    }

    public interface d {
        void a(int i);
    }

    private long a(i iVar) {
        return iVar.d == 1 ? this.R.b(iVar.f1703a, iVar.f1704b) : this.R.d(iVar.f1703a);
    }

    public void a(RecyclerView.h hVar) {
        a(hVar, -1);
    }

    public void a(RecyclerView.h hVar, int i) {
        if (hVar == null) {
            super.a((RecyclerView.h) null, i);
            return;
        }
        throw new RuntimeException("not set itemDecoration");
    }

    /* access modifiers changed from: package-private */
    public boolean a(View view, int i) {
        ExpandableRecyclerConnector.g e = this.S.e(i);
        long a2 = a(e.f1658a);
        boolean z = true;
        if (e.f1658a.d == 2) {
            b bVar = this.T;
            if (bVar != null) {
                if (bVar.a(this, view, e.f1658a.f1703a, a2)) {
                    e.a();
                    return true;
                }
            }
            if (e.b()) {
                j(e.f1658a.f1703a);
            } else {
                k(e.f1658a.f1703a);
            }
        } else {
            a aVar = this.U;
            if (aVar != null) {
                return aVar.a(this, view, e.f1658a.f1703a, e.f1658a.f1704b, a2);
            }
            z = false;
        }
        e.a();
        return z;
    }

    public boolean j(int i) {
        if (!this.S.a(i)) {
            return false;
        }
        this.S.f();
        c cVar = this.V;
        if (cVar == null) {
            return true;
        }
        cVar.a(i);
        return true;
    }

    public boolean k(int i) {
        boolean h = this.S.h(i);
        if (h) {
            d dVar = this.W;
            if (dVar != null) {
                dVar.a(i);
            }
        }
        return h;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.S != null && savedState.expandedGroupMetadataList != null) {
            this.S.a(savedState.expandedGroupMetadataList);
        }
    }

    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        ExpandableRecyclerConnector expandableRecyclerConnector = this.S;
        return new SavedState(onSaveInstanceState, expandableRecyclerConnector != null ? expandableRecyclerConnector.g() : null);
    }

    public void setAdapter(RecyclerView.a aVar) {
        throw new RuntimeException("adapter instansof ColorExpandableRecyclerAdapter");
    }

    public void setAdapter(c cVar) {
        this.R = cVar;
        this.S = new ExpandableRecyclerConnector(cVar, this);
        super.setAdapter(this.S);
    }

    public void setItemAnimator(RecyclerView.f fVar) {
        if (fVar == null) {
            super.setItemAnimator((RecyclerView.f) null);
            return;
        }
        throw new RuntimeException("not set ItemAnimator");
    }

    public void setLayoutManager(RecyclerView.i iVar) {
        if (!(iVar instanceof ColorLinearLayoutManager)) {
            throw new RuntimeException("only ColorLinearLayoutManager");
        } else if (((ColorLinearLayoutManager) iVar).h() == 1) {
            super.setLayoutManager(iVar);
        } else {
            throw new RuntimeException("only vertical orientation");
        }
    }

    public void setOnChildClickListener(a aVar) {
        this.U = aVar;
    }

    public void setOnGroupClickListener(b bVar) {
        this.T = bVar;
    }

    public void setOnGroupCollapseListener(c cVar) {
        this.V = cVar;
    }

    public void setOnGroupExpandListener(d dVar) {
        this.W = dVar;
    }
}
