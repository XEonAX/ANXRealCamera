package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: PagerAdapter */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final DataSetObservable f1051a = new DataSetObservable();

    /* renamed from: b  reason: collision with root package name */
    private DataSetObserver f1052b;

    public float a(int i) {
        return 1.0f;
    }

    public abstract int a();

    public int a(Object obj) {
        return -1;
    }

    @Deprecated
    public Object a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public Object a(ViewGroup viewGroup, int i) {
        return a((View) viewGroup, i);
    }

    /* access modifiers changed from: package-private */
    public void a(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f1052b = dataSetObserver;
        }
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Deprecated
    public void a(View view) {
    }

    @Deprecated
    public void a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void a(ViewGroup viewGroup) {
        a((View) viewGroup);
    }

    public void a(ViewGroup viewGroup, int i, Object obj) {
        a((View) viewGroup, i, obj);
    }

    public abstract boolean a(View view, Object obj);

    public Parcelable b() {
        return null;
    }

    @Deprecated
    public void b(View view) {
    }

    @Deprecated
    public void b(View view, int i, Object obj) {
    }

    public void b(ViewGroup viewGroup) {
        b((View) viewGroup);
    }

    public void b(ViewGroup viewGroup, int i, Object obj) {
        b((View) viewGroup, i, obj);
    }

    public void c() {
        synchronized (this) {
            if (this.f1052b != null) {
                this.f1052b.onChanged();
            }
        }
        this.f1051a.notifyChanged();
    }
}
