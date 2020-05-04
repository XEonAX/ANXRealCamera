package androidx.viewpager2.adapter;

import androidx.core.g.u;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;

class FragmentStateAdapter$2 implements f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f1053a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a f1054b;

    FragmentStateAdapter$2(a aVar, b bVar) {
        this.f1054b = aVar;
        this.f1053a = bVar;
    }

    public void a(h hVar, e.a aVar) {
        if (!this.f1054b.a()) {
            hVar.b().b(this);
            if (u.w(this.f1053a.a())) {
                this.f1054b.a(this.f1053a);
            }
        }
    }
}
