package com.oppo.camera.ui.modepanel;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.a.a.g;
import com.a.a.h;
import com.a.a.j;
import com.oppo.camera.R;
import com.oppo.camera.ui.modepanel.e;

/* compiled from: MoreUIControl */
public class f implements e.a {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public Activity f2852a;

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f2853b;
    private int c;
    private b d;
    /* access modifiers changed from: private */
    public View e = null;
    private RelativeLayout.LayoutParams f;
    /* access modifiers changed from: private */
    public NonFlingRecycleView g = null;
    private e h = null;
    /* access modifiers changed from: private */
    public b i = null;
    /* access modifiers changed from: private */
    public GestureDetector j = null;
    /* access modifiers changed from: private */
    public GestureDetector k = null;
    private boolean l = false;
    /* access modifiers changed from: private */
    public int m;
    /* access modifiers changed from: private */
    public int n;
    /* access modifiers changed from: private */
    public int o;
    private int p;
    /* access modifiers changed from: private */
    public int q;
    private com.a.a.f r;
    /* access modifiers changed from: private */
    public com.a.a.f s;

    /* compiled from: MoreUIControl */
    private class a extends GridLayoutManager {
        public a(Context context, int i) {
            super(context, i);
            b(true);
        }

        public void a(RecyclerView.p pVar, RecyclerView.t tVar, int i, int i2) {
            super.a(pVar, tVar, i, i2);
            int measuredWidth = f.this.g.getMeasuredWidth();
            int measuredHeight = f.this.g.getMeasuredHeight();
            int e = tVar.e();
            int i3 = 0;
            for (int i4 = 0; i4 < e; i4++) {
                if (i3 < measuredHeight && i4 % b() == 0) {
                    View c = pVar.c(i4);
                    if (c != null) {
                        RecyclerView.j jVar = (RecyclerView.j) c.getLayoutParams();
                        c.measure(ViewGroup.getChildMeasureSpec(i, E() + G(), jVar.width), ViewGroup.getChildMeasureSpec(i2, F() + H(), jVar.height));
                        i3 += c.getMeasuredHeight() + jVar.bottomMargin + jVar.topMargin;
                    }
                }
            }
            f(measuredWidth, Math.min(measuredHeight, i3));
        }
    }

    /* compiled from: MoreUIControl */
    public interface b {
        void a();

        void a(int i);

        void b();
    }

    /* compiled from: MoreUIControl */
    private class c extends RecyclerView.h {
        private c() {
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
            super.a(rect, view, recyclerView, tVar);
            int f = recyclerView.f(view) % 3;
            if (f == 0) {
                rect.right = f.this.m;
            } else if (f == 2) {
                rect.left = f.this.m;
            } else {
                rect.left = f.this.n;
                rect.right = f.this.n;
            }
            rect.top = f.this.o;
        }
    }

    /* compiled from: MoreUIControl */
    private class d extends GestureDetector.SimpleOnGestureListener {
        private d() {
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (f.this.i == null || Math.abs(motionEvent.getY() - motionEvent2.getY()) >= Math.abs(motionEvent.getX() - motionEvent2.getX())) {
                return false;
            }
            if (Float.compare(motionEvent2.getX() - motionEvent.getX(), 100.0f) <= 0 && (Float.compare(f, 200.0f) <= 0 || motionEvent2.getX() - motionEvent.getX() <= 0.0f)) {
                return false;
            }
            com.oppo.camera.d.a("MoreUIControl", "MoreMenuGestureListener, onFling, slide to previous mode");
            f.this.i.a();
            return true;
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (f.this.i == null || f.this.g.a(motionEvent.getX(), motionEvent.getY()) != null) {
                return false;
            }
            com.oppo.camera.d.a("MoreUIControl", "MoreMenuGestureListener, onSingleTapUp, no item clicked,go back to last index");
            f.this.i.b();
            return true;
        }
    }

    /* compiled from: MoreUIControl */
    private class e extends GestureDetector.SimpleOnGestureListener {
        private e() {
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (f.this.i == null || Math.abs(motionEvent.getY() - motionEvent2.getY()) >= Math.abs(motionEvent.getX() - motionEvent2.getX())) {
                return false;
            }
            if (Float.compare(motionEvent2.getX() - motionEvent.getX(), 100.0f) <= 0 && (Float.compare(f, 200.0f) <= 0 || motionEvent2.getX() - motionEvent.getX() <= 0.0f)) {
                return false;
            }
            com.oppo.camera.d.a("MoreUIControl", "MoreViewGestureListener, onFling, slide to previous mode");
            f.this.i.a();
            return true;
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (f.this.i == null) {
                return false;
            }
            com.oppo.camera.d.a("MoreUIControl", "MoreViewGestureListener, onSingleTapUp, go back to last index");
            f.this.i.b();
            return true;
        }
    }

    public f(Activity activity, ViewGroup viewGroup, int i2) {
        this.f2852a = activity;
        this.f2853b = viewGroup;
        this.c = i2;
        this.d = new b(this.f2852a);
        this.m = this.f2852a.getResources().getDimensionPixelSize(R.dimen.more_item_side_spacing);
        this.n = this.f2852a.getResources().getDimensionPixelSize(R.dimen.more_item_mid_spacing);
        this.o = this.f2852a.getResources().getDimensionPixelSize(R.dimen.more_item_vertical_spacing);
        this.p = this.f2852a.getResources().getDimensionPixelSize(R.dimen.more_layout_bottom_padding);
        this.q = this.f2852a.getResources().getDimensionPixelSize(R.dimen.anim_position);
    }

    /* access modifiers changed from: private */
    public void a(float f2) {
        this.g.setTranslationX(f2);
        this.e.setAlpha(1.0f - (f2 / ((float) this.q)));
    }

    /* access modifiers changed from: private */
    public void e() {
        com.a.a.f fVar = this.r;
        if (fVar != null) {
            fVar.a((double) this.q);
        }
    }

    private void f() {
        com.a.a.f fVar = this.r;
        if (fVar != null) {
            fVar.b(0.0d);
        }
    }

    private void f(int i2) {
        if (this.e == null || this.f == null) {
            com.oppo.camera.d.a("MoreUIControl", "initMoreModeView");
            this.e = this.f2852a.getLayoutInflater().inflate(R.layout.more_mode_layout, (ViewGroup) null);
            this.e.setVisibility(8);
            this.f = new RelativeLayout.LayoutParams(-1, -1);
            this.h = new e(this.f2852a, this.c);
            this.h.a(this.d.d(i2));
            this.h.a((e.a) this);
            this.h.a(this.c);
            this.g = (NonFlingRecycleView) this.e.findViewById(R.id.more_mode_view);
            this.g.setLayoutManager(new a(this.f2852a, 3));
            this.g.a((RecyclerView.h) new c());
            this.g.a((RecyclerView.m) new RecyclerView.m() {
                public void a(boolean z) {
                }

                public boolean a(RecyclerView recyclerView, MotionEvent motionEvent) {
                    if (f.this.j == null) {
                        f fVar = f.this;
                        GestureDetector unused = fVar.j = new GestureDetector(fVar.f2852a, new d());
                    }
                    return f.this.j.onTouchEvent(motionEvent);
                }

                public void b(RecyclerView recyclerView, MotionEvent motionEvent) {
                }
            });
            this.g.setAdapter(this.h);
            this.e.setOnTouchListener(new View.OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (f.this.k == null) {
                        f fVar = f.this;
                        GestureDetector unused = fVar.k = new GestureDetector(fVar.f2852a, new e());
                    }
                    f.this.k.onTouchEvent(motionEvent);
                    return true;
                }
            });
            i();
            this.f2853b.addView(this.e, 2, this.f);
        }
    }

    /* access modifiers changed from: private */
    public void g() {
        com.a.a.f fVar = this.s;
        if (fVar != null) {
            fVar.a(0.0d);
        }
    }

    private void h() {
        com.a.a.f fVar = this.s;
        if (fVar != null) {
            fVar.b((double) this.q);
        }
    }

    private void i() {
        if (this.r == null || this.s == null) {
            g b2 = g.b(5.0d, 10.0d);
            this.r = j.c().b().a(b2).a((double) this.q).a((h) new com.a.a.e() {
                public void a(com.a.a.f fVar) {
                    f.this.a((float) fVar.c());
                }

                public void c(com.a.a.f fVar) {
                    super.c(fVar);
                    f.this.g();
                }
            });
            this.s = j.c().b().a(b2).a(0.0d).a((h) new com.a.a.e() {
                public void a(com.a.a.f fVar) {
                    float c = (float) fVar.c();
                    f.this.a(c);
                    if (((float) f.this.q) == c) {
                        com.oppo.camera.d.a("MoreUIControl", "initSpring, mAnimExit, onSpringUpdate, Set the mMoreView status to Gone.");
                        if (f.this.s != null && !f.this.s.g()) {
                            f.this.s.h();
                        }
                        f.this.e.setVisibility(8);
                    }
                }

                public void c(com.a.a.f fVar) {
                    super.c(fVar);
                    f.this.e();
                }
            });
        }
    }

    public void a(int i2) {
        com.oppo.camera.d.a("MoreUIControl", "onClick, more itemId: " + i2);
        b bVar = this.i;
        if (bVar != null) {
            bVar.a(i2);
        }
    }

    public void a(b bVar) {
        this.i = bVar;
    }

    public void a(boolean z) {
        this.l = z;
    }

    public boolean a() {
        com.a.a.f fVar = this.r;
        if (fVar == null || this.s == null) {
            return false;
        }
        return !fVar.g() || !this.s.g();
    }

    public void b(int i2) {
        this.d.a(i2);
    }

    public boolean b() {
        ViewGroup viewGroup = this.f2853b;
        if (viewGroup == null) {
            com.oppo.camera.d.a("MoreUIControl", "isMoreModeShow, mRootParent is null so return.");
            return false;
        }
        View view = this.e;
        if (view != null) {
            return viewGroup.indexOfChild(view) != -1 && this.e.getVisibility() == 0;
        }
        com.oppo.camera.d.a("MoreUIControl", "isMoreModeShow, mMoreView is null so return.");
        return false;
    }

    public boolean b(boolean z) {
        if (!b()) {
            return false;
        }
        com.a.a.f fVar = this.r;
        if (fVar != null && !fVar.g()) {
            com.oppo.camera.d.a("MoreUIControl", "hideMoreView, MoreMode is executing the enter animation");
            this.r.h();
        }
        com.oppo.camera.d.e("MoreUIControl", "hideMoreView");
        if (z) {
            h();
            return true;
        }
        e();
        this.e.setVisibility(8);
        return true;
    }

    public void c() {
        this.d.a();
    }

    public void c(int i2) {
        this.d.b(i2);
    }

    public void d() {
        com.a.a.f fVar = this.r;
        if (fVar != null) {
            fVar.a();
            this.r = null;
        }
        com.a.a.f fVar2 = this.s;
        if (fVar2 != null) {
            fVar2.a();
            this.s = null;
        }
    }

    public void d(int i2) {
        f(i2);
        if (b()) {
            com.a.a.f fVar = this.s;
            if (fVar == null || fVar.g()) {
                com.oppo.camera.d.a("MoreUIControl", "showMoreView, MoreMode has been shown");
                return;
            }
            com.oppo.camera.d.a("MoreUIControl", "showMoreView, MoreMode is executing the end animation");
            this.s.h();
            this.e.setVisibility(8);
        }
        this.h.e(this.c);
        this.e.setVisibility(0);
        f();
        if (this.l) {
            this.l = false;
            this.h.a(this.d.d(i2));
            this.h.e();
        }
    }

    public void e(int i2) {
        this.c = i2;
        e eVar = this.h;
        if (eVar != null) {
            eVar.a(i2);
        }
    }
}
