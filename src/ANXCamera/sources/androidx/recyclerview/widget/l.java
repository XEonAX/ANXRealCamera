package androidx.recyclerview.widget;

import androidx.recyclerview.widget.a;
import java.util.List;

/* compiled from: OpReorderer */
class l {

    /* renamed from: a  reason: collision with root package name */
    final a f988a;

    /* compiled from: OpReorderer */
    interface a {
        a.b a(int i, int i2, int i3, Object obj);

        void a(a.b bVar);
    }

    l(a aVar) {
        this.f988a = aVar;
    }

    private void a(List<a.b> list, int i, int i2) {
        a.b bVar = list.get(i);
        a.b bVar2 = list.get(i2);
        int i3 = bVar2.f931a;
        if (i3 == 1) {
            c(list, i, bVar, i2, bVar2);
        } else if (i3 == 2) {
            a(list, i, bVar, i2, bVar2);
        } else if (i3 == 4) {
            b(list, i, bVar, i2, bVar2);
        }
    }

    private int b(List<a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f931a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void c(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        int i3 = bVar.d < bVar2.f932b ? -1 : 0;
        if (bVar.f932b < bVar2.f932b) {
            i3++;
        }
        if (bVar2.f932b <= bVar.f932b) {
            bVar.f932b += bVar2.d;
        }
        if (bVar2.f932b <= bVar.d) {
            bVar.d += bVar2.d;
        }
        bVar2.f932b += i3;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    /* access modifiers changed from: package-private */
    public void a(List<a.b> list) {
        while (true) {
            int b2 = b(list);
            if (b2 != -1) {
                a(list, b2, b2 + 1);
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        boolean z;
        boolean z2 = false;
        if (bVar.f932b < bVar.d) {
            if (bVar2.f932b == bVar.f932b && bVar2.d == bVar.d - bVar.f932b) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.f932b == bVar.d + 1 && bVar2.d == bVar.f932b - bVar.d) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        if (bVar.d < bVar2.f932b) {
            bVar2.f932b--;
        } else if (bVar.d < bVar2.f932b + bVar2.d) {
            bVar2.d--;
            bVar.f931a = 2;
            bVar.d = 1;
            if (bVar2.d == 0) {
                list.remove(i2);
                this.f988a.a(bVar2);
                return;
            }
            return;
        }
        a.b bVar3 = null;
        if (bVar.f932b <= bVar2.f932b) {
            bVar2.f932b++;
        } else if (bVar.f932b < bVar2.f932b + bVar2.d) {
            bVar3 = this.f988a.a(2, bVar.f932b + 1, (bVar2.f932b + bVar2.d) - bVar.f932b, (Object) null);
            bVar2.d = bVar.f932b - bVar2.f932b;
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f988a.a(bVar);
            return;
        }
        if (z) {
            if (bVar3 != null) {
                if (bVar.f932b > bVar3.f932b) {
                    bVar.f932b -= bVar3.d;
                }
                if (bVar.d > bVar3.f932b) {
                    bVar.d -= bVar3.d;
                }
            }
            if (bVar.f932b > bVar2.f932b) {
                bVar.f932b -= bVar2.d;
            }
            if (bVar.d > bVar2.f932b) {
                bVar.d -= bVar2.d;
            }
        } else {
            if (bVar3 != null) {
                if (bVar.f932b >= bVar3.f932b) {
                    bVar.f932b -= bVar3.d;
                }
                if (bVar.d >= bVar3.f932b) {
                    bVar.d -= bVar3.d;
                }
            }
            if (bVar.f932b >= bVar2.f932b) {
                bVar.f932b -= bVar2.d;
            }
            if (bVar.d >= bVar2.f932b) {
                bVar.d -= bVar2.d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f932b != bVar.d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x002f  */
    public void b(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        a.b bVar3;
        a.b bVar4 = null;
        if (bVar.d < bVar2.f932b) {
            bVar2.f932b--;
        } else if (bVar.d < bVar2.f932b + bVar2.d) {
            bVar2.d--;
            bVar3 = this.f988a.a(4, bVar.f932b, 1, bVar2.c);
            if (bVar.f932b > bVar2.f932b) {
                bVar2.f932b++;
            } else if (bVar.f932b < bVar2.f932b + bVar2.d) {
                int i3 = (bVar2.f932b + bVar2.d) - bVar.f932b;
                bVar4 = this.f988a.a(4, bVar.f932b + 1, i3, bVar2.c);
                bVar2.d -= i3;
            }
            list.set(i2, bVar);
            if (bVar2.d <= 0) {
                list.set(i, bVar2);
            } else {
                list.remove(i);
                this.f988a.a(bVar2);
            }
            if (bVar3 != null) {
                list.add(i, bVar3);
            }
            if (bVar4 == null) {
                list.add(i, bVar4);
                return;
            }
            return;
        }
        bVar3 = null;
        if (bVar.f932b > bVar2.f932b) {
        }
        list.set(i2, bVar);
        if (bVar2.d <= 0) {
        }
        if (bVar3 != null) {
        }
        if (bVar4 == null) {
        }
    }
}
