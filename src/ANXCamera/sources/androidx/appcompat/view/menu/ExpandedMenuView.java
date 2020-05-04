package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.au;

public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, g.b, n {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f164a = {16842964, 16843049};

    /* renamed from: b  reason: collision with root package name */
    private g f165b;
    private int c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        au a2 = au.a(context, attributeSet, f164a, i, 0);
        if (a2.g(0)) {
            setBackgroundDrawable(a2.a(0));
        }
        if (a2.g(1)) {
            setDivider(a2.a(1));
        }
        a2.b();
    }

    public void a(g gVar) {
        this.f165b = gVar;
    }

    public boolean a(i iVar) {
        return this.f165b.a((MenuItem) iVar, 0);
    }

    public int getWindowAnimations() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((i) getAdapter().getItem(i));
    }
}
