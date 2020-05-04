package com.oppo.camera.ui.menu.a;

import android.content.Context;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.oppo.camera.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FaceBeautyAdapter */
abstract class c extends RecyclerView.a<a> {

    /* renamed from: a  reason: collision with root package name */
    private int f2706a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f2707b;
    private Context c;
    private List<b> d;
    /* access modifiers changed from: private */
    public b e;

    /* compiled from: FaceBeautyAdapter */
    public class a extends RecyclerView.w implements View.OnClickListener {
        private SparseArray<View> r = new SparseArray<>();

        public a(View view) {
            super(view);
            view.setOnClickListener(this);
        }

        public final View a(int i) {
            View view = this.r.get(i);
            if (view != null) {
                return view;
            }
            View findViewById = this.f916a.findViewById(i);
            this.r.put(i, findViewById);
            return findViewById;
        }

        public void onClick(View view) {
            if (c.this.e != null && c.this.e.a()) {
                c.this.e.a(view, f());
            }
        }
    }

    /* compiled from: FaceBeautyAdapter */
    interface b {
        void a(View view, int i);

        boolean a();
    }

    public c(Context context) {
        this.f2706a = -1;
        this.f2707b = new Rect();
        this.c = null;
        this.d = null;
        this.e = null;
        this.d = new ArrayList();
        this.c = context;
    }

    public int a() {
        return this.f2706a;
    }

    public abstract int a(int i);

    /* renamed from: a */
    public a b(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.c).inflate(a(i), viewGroup, false));
    }

    public void a(a aVar, int i) {
        b f = f(i);
        if (f != null) {
            boolean z = i == this.f2706a;
            TextView textView = (TextView) aVar.a(R.id.tv_face_beauty_custom_item);
            if (textView != null && f.a() > 0) {
                String string = this.c.getString(f.a());
                textView.getPaint().getTextBounds(string, 0, string.length(), this.f2707b);
                textView.setText(string);
                textView.setTextColor(this.c.getResources().getColor(z ? R.color.face_beauty_text_color_select : R.color.face_beauty_text_color_unselect, this.c.getTheme()));
                if (textView.getTextSize() < ((float) this.f2707b.height())) {
                    textView.setMaxLines(1);
                } else {
                    textView.setMaxLines(3);
                }
            }
            int c2 = f.c();
            if (z && f.b() > 0) {
                c2 = f.b();
            }
            if (c2 > 0) {
                ((ImageView) aVar.a(R.id.iv_face_beauty_custom_item)).setImageResource(c2);
            }
        }
    }

    public void a(b bVar) {
        this.e = bVar;
    }

    public void a(List<b> list) {
        this.f2706a = -1;
        if (!this.d.isEmpty()) {
            this.d.clear();
            e();
        }
        this.d.addAll(list);
        e();
    }

    public int b() {
        List<b> list = this.d;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void e(int i) {
        int i2 = this.f2706a;
        if (i2 != i) {
            this.f2706a = i;
            if (i2 >= 0) {
                d(i2);
            }
            if (i >= 0) {
                d(i);
            }
        }
    }

    public b f(int i) {
        if (i < 0 || i > b()) {
            return null;
        }
        return this.d.get(i);
    }
}
