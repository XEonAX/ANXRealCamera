package androidx.c.a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.c.a.b;
import com.oppo.providers.downloads.DownloadManager;

/* compiled from: CursorAdapter */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f443a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f444b;
    protected Cursor c;
    protected Context d;
    protected int e;
    protected C0009a f;
    protected DataSetObserver g;
    protected b h;
    protected FilterQueryProvider i;

    /* renamed from: androidx.c.a.a$a  reason: collision with other inner class name */
    /* compiled from: CursorAdapter */
    private class C0009a extends ContentObserver {
        C0009a() {
            super(new Handler());
        }

        public boolean deliverSelfNotifications() {
            return true;
        }

        public void onChange(boolean z) {
            a.this.b();
        }
    }

    /* compiled from: CursorAdapter */
    private class b extends DataSetObserver {
        b() {
        }

        public void onChanged() {
            a aVar = a.this;
            aVar.f443a = true;
            aVar.notifyDataSetChanged();
        }

        public void onInvalidated() {
            a aVar = a.this;
            aVar.f443a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    public Cursor a() {
        return this.c;
    }

    public Cursor a(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.i;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.c;
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    /* access modifiers changed from: package-private */
    public void a(Context context, Cursor cursor, int i2) {
        boolean z = false;
        if ((i2 & 1) == 1) {
            i2 |= 2;
            this.f444b = true;
        } else {
            this.f444b = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.c = cursor;
        this.f443a = z;
        this.d = context;
        this.e = z ? cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_ID) : -1;
        if ((i2 & 2) == 2) {
            this.f = new C0009a();
            this.g = new b();
        } else {
            this.f = null;
            this.g = null;
        }
        if (z) {
            C0009a aVar = this.f;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public void a(Cursor cursor) {
        Cursor c2 = c(cursor);
        if (c2 != null) {
            c2.close();
        }
    }

    public abstract void a(View view, Context context, Cursor cursor);

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, cursor, viewGroup);
    }

    public CharSequence b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.f444b) {
            Cursor cursor = this.c;
            if (cursor != null && !cursor.isClosed()) {
                this.f443a = this.c.requery();
            }
        }
    }

    public Cursor c(Cursor cursor) {
        Cursor cursor2 = this.c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0009a aVar = this.f;
            if (aVar != null) {
                cursor2.unregisterContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.c = cursor;
        if (cursor != null) {
            C0009a aVar2 = this.f;
            if (aVar2 != null) {
                cursor.registerContentObserver(aVar2);
            }
            DataSetObserver dataSetObserver2 = this.g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.e = cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_ID);
            this.f443a = true;
            notifyDataSetChanged();
        } else {
            this.e = -1;
            this.f443a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    public int getCount() {
        if (!this.f443a) {
            return 0;
        }
        Cursor cursor = this.c;
        if (cursor != null) {
            return cursor.getCount();
        }
        return 0;
    }

    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f443a) {
            return null;
        }
        this.c.moveToPosition(i2);
        if (view == null) {
            view = b(this.d, this.c, viewGroup);
        }
        a(view, this.d, this.c);
        return view;
    }

    public Filter getFilter() {
        if (this.h == null) {
            this.h = new b(this);
        }
        return this.h;
    }

    public Object getItem(int i2) {
        if (!this.f443a) {
            return null;
        }
        Cursor cursor = this.c;
        if (cursor == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.c;
    }

    public long getItemId(int i2) {
        if (this.f443a) {
            Cursor cursor = this.c;
            if (cursor != null && cursor.moveToPosition(i2)) {
                return this.c.getLong(this.e);
            }
        }
        return 0;
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f443a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.c.moveToPosition(i2)) {
            if (view == null) {
                view = a(this.d, this.c, viewGroup);
            }
            a(view, this.d, this.c);
            return view;
        } else {
            throw new IllegalStateException("couldn't move cursor to position " + i2);
        }
    }

    public boolean hasStableIds() {
        return true;
    }
}
