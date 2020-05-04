package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* compiled from: BaseMenuPresenter */
public abstract class b implements m {

    /* renamed from: a  reason: collision with root package name */
    protected Context f170a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f171b;
    protected g c;
    protected LayoutInflater d;
    protected LayoutInflater e;
    protected n f;
    private m.a g;
    private int h;
    private int i;
    private int j;

    public b(Context context, int i2, int i3) {
        this.f170a = context;
        this.d = LayoutInflater.from(context);
        this.h = i2;
        this.i = i3;
    }

    public View a(i iVar, View view, ViewGroup viewGroup) {
        n.a b2 = view instanceof n.a ? (n.a) view : b(viewGroup);
        a(iVar, b2);
        return (View) b2;
    }

    public m.a a() {
        return this.g;
    }

    public n a(ViewGroup viewGroup) {
        if (this.f == null) {
            this.f = (n) this.d.inflate(this.h, viewGroup, false);
            this.f.a(this.c);
            a(true);
        }
        return this.f;
    }

    public void a(int i2) {
        this.j = i2;
    }

    public void a(Context context, g gVar) {
        this.f171b = context;
        this.e = LayoutInflater.from(this.f171b);
        this.c = gVar;
    }

    /* access modifiers changed from: protected */
    public void a(View view, int i2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f).addView(view, i2);
    }

    public void a(g gVar, boolean z) {
        m.a aVar = this.g;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public abstract void a(i iVar, n.a aVar);

    public void a(m.a aVar) {
        this.g = aVar;
    }

    public void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup != null) {
            g gVar = this.c;
            int i2 = 0;
            if (gVar != null) {
                gVar.k();
                ArrayList<i> j2 = this.c.j();
                int size = j2.size();
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    i iVar = j2.get(i4);
                    if (a(i3, iVar)) {
                        View childAt = viewGroup.getChildAt(i3);
                        i itemData = childAt instanceof n.a ? ((n.a) childAt).getItemData() : null;
                        View a2 = a(iVar, childAt, viewGroup);
                        if (iVar != itemData) {
                            a2.setPressed(false);
                            a2.jumpDrawablesToCurrentState();
                        }
                        if (a2 != childAt) {
                            a(a2, i3);
                        }
                        i3++;
                    }
                }
                i2 = i3;
            }
            while (i2 < viewGroup.getChildCount()) {
                if (!a(viewGroup, i2)) {
                    i2++;
                }
            }
        }
    }

    public boolean a(int i2, i iVar) {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean a(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    public boolean a(g gVar, i iVar) {
        return false;
    }

    public boolean a(r rVar) {
        m.a aVar = this.g;
        if (aVar != null) {
            return aVar.a(rVar);
        }
        return false;
    }

    public n.a b(ViewGroup viewGroup) {
        return (n.a) this.d.inflate(this.i, viewGroup, false);
    }

    public boolean b() {
        return false;
    }

    public boolean b(g gVar, i iVar) {
        return false;
    }

    public int c() {
        return this.j;
    }
}
