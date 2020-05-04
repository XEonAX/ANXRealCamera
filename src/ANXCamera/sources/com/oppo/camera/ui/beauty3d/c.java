package com.oppo.camera.ui.beauty3d;

import java.util.Stack;

/* compiled from: Beauty3DEditStack */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Stack<b> f2550a = new Stack<>();

    /* renamed from: b  reason: collision with root package name */
    private Stack<b> f2551b = new Stack<>();

    public b a() {
        if (this.f2550a.size() < 0) {
            return null;
        }
        return this.f2550a.pop();
    }

    public b a(b bVar) {
        return this.f2550a.push(bVar);
    }

    public b b() {
        if (this.f2551b.size() < 0) {
            return null;
        }
        return this.f2551b.pop();
    }

    public b b(b bVar) {
        return this.f2551b.push(bVar);
    }

    public int c() {
        return this.f2550a.size();
    }

    public int d() {
        return this.f2551b.size();
    }

    public void e() {
        while (!this.f2551b.isEmpty()) {
            this.f2551b.pop();
        }
    }

    public void f() {
        while (!this.f2550a.isEmpty()) {
            this.f2550a.pop();
        }
        while (!this.f2551b.isEmpty()) {
            this.f2551b.pop();
        }
    }
}
