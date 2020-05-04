package com.oppo.camera.h;

import java.util.Set;

/* compiled from: TriggerStateMachine */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f2204a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f2205b;
    private a c = a.WAITING_FOR_TRIGGER;
    private Long d = null;
    private Long e = null;

    /* compiled from: TriggerStateMachine */
    private enum a {
        WAITING_FOR_TRIGGER,
        TRIGGERED
    }

    public b(int i, Set<Integer> set) {
        this.f2204a = i;
        this.f2205b = set;
    }

    public void a() {
        this.c = a.WAITING_FOR_TRIGGER;
        this.d = null;
        this.e = null;
    }

    public boolean a(long j, Integer num, Integer num2) {
        boolean z = num != null && num.intValue() == this.f2204a;
        boolean contains = this.f2205b.contains(num2);
        if (this.c == a.WAITING_FOR_TRIGGER) {
            Long l = this.d;
            if ((l == null || j > l.longValue()) && z) {
                this.c = a.TRIGGERED;
                this.d = Long.valueOf(j);
                this.e = null;
            }
        }
        if (this.c == a.TRIGGERED) {
            Long l2 = this.e;
            if ((l2 == null || j > l2.longValue()) && contains) {
                this.c = a.WAITING_FOR_TRIGGER;
                this.e = Long.valueOf(j);
                this.d = null;
                return true;
            }
        }
        return false;
    }
}
