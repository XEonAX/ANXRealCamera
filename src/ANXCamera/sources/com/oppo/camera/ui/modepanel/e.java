package com.oppo.camera.ui.modepanel;

import android.app.Activity;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.oppo.camera.R;
import com.oppo.camera.ui.RotateMoreItem;
import java.util.ArrayList;

/* compiled from: MoreModeAdapter */
public class e extends RecyclerView.a<b> {

    /* renamed from: a  reason: collision with root package name */
    private Activity f2850a = null;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<a> f2851b = null;
    /* access modifiers changed from: private */
    public a c = null;
    private int d = 0;
    private int e;

    /* compiled from: MoreModeAdapter */
    public interface a {
        void a(int i);
    }

    /* compiled from: MoreModeAdapter */
    protected class b extends RecyclerView.w implements View.OnClickListener {
        /* access modifiers changed from: private */
        public RotateMoreItem r;

        public b(View view) {
            super(view);
            this.r = (RotateMoreItem) view.findViewById(R.id.more_item);
            view.setOnClickListener(this);
        }

        public void onClick(View view) {
            e.this.c.a(((a) e.this.f2851b.get(f())).b());
        }
    }

    public e(Activity activity, int i) {
        this.f2850a = activity;
        this.e = i;
    }

    /* renamed from: a */
    public b b(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(this.f2850a).inflate(R.layout.more_mode_item, viewGroup, false));
    }

    public void a(int i) {
        int i2 = this.e;
        if (i2 != i) {
            this.d = i2;
            this.e = i;
            e();
        }
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    public void a(b bVar, int i) {
        bVar.r.setImage(BitmapFactory.decodeResource(this.f2850a.getResources(), this.f2851b.get(i).c()));
        bVar.r.setText(this.f2851b.get(i).a());
        bVar.r.a(this.d, this.e);
    }

    public void a(ArrayList<a> arrayList) {
        if (this.f2851b == null) {
            this.f2851b = new ArrayList<>();
        }
        this.f2851b.clear();
        this.f2851b.addAll(arrayList);
        this.d = this.e;
    }

    public int b() {
        ArrayList<a> arrayList = this.f2851b;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public void e(int i) {
        this.d = i;
        this.e = i;
    }
}
