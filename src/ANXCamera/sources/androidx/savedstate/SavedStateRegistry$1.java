package androidx.savedstate;

import androidx.lifecycle.d;
import androidx.lifecycle.e;
import androidx.lifecycle.h;

class SavedStateRegistry$1 implements d {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f1004a;

    SavedStateRegistry$1(a aVar) {
        this.f1004a = aVar;
    }

    public void a(h hVar, e.a aVar) {
        if (aVar == e.a.ON_START) {
            this.f1004a.f1005a = true;
        } else if (aVar == e.a.ON_STOP) {
            this.f1004a.f1005a = false;
        }
    }
}
