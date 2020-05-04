package androidx.lifecycle;

import androidx.lifecycle.e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ClassesInfoCache */
class a {

    /* renamed from: a  reason: collision with root package name */
    static a f754a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class, C0025a> f755b = new HashMap();
    private final Map<Class, Boolean> c = new HashMap();

    /* renamed from: androidx.lifecycle.a$a  reason: collision with other inner class name */
    /* compiled from: ClassesInfoCache */
    static class C0025a {

        /* renamed from: a  reason: collision with root package name */
        final Map<e.a, List<b>> f756a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        final Map<b, e.a> f757b;

        C0025a(Map<b, e.a> map) {
            this.f757b = map;
            for (Map.Entry next : map.entrySet()) {
                e.a aVar = (e.a) next.getValue();
                List list = this.f756a.get(aVar);
                if (list == null) {
                    list = new ArrayList();
                    this.f756a.put(aVar, list);
                }
                list.add(next.getKey());
            }
        }

        private static void a(List<b> list, h hVar, e.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(hVar, aVar, obj);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void a(h hVar, e.a aVar, Object obj) {
            a(this.f756a.get(aVar), hVar, aVar, obj);
            a(this.f756a.get(e.a.ON_ANY), hVar, aVar, obj);
        }
    }

    /* compiled from: ClassesInfoCache */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        final int f758a;

        /* renamed from: b  reason: collision with root package name */
        final Method f759b;

        b(int i, Method method) {
            this.f758a = i;
            this.f759b = method;
            this.f759b.setAccessible(true);
        }

        /* access modifiers changed from: package-private */
        public void a(h hVar, e.a aVar, Object obj) {
            try {
                int i = this.f758a;
                if (i == 0) {
                    this.f759b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f759b.invoke(obj, new Object[]{hVar});
                } else if (i == 2) {
                    this.f759b.invoke(obj, new Object[]{hVar, aVar});
                }
            } catch (InvocationTargetException e) {
                throw new RuntimeException("Failed to call observer method", e.getCause());
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f758a == bVar.f758a && this.f759b.getName().equals(bVar.f759b.getName());
        }

        public int hashCode() {
            return (this.f758a * 31) + this.f759b.getName().hashCode();
        }
    }

    a() {
    }

    private C0025a a(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null) {
            C0025a b2 = b(superclass);
            if (b2 != null) {
                hashMap.putAll(b2.f757b);
            }
        }
        for (Class b3 : cls.getInterfaces()) {
            for (Map.Entry next : b(b3).f757b.entrySet()) {
                a(hashMap, (b) next.getKey(), (e.a) next.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            o oVar = (o) method.getAnnotation(o.class);
            if (oVar != null) {
                Class[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (parameterTypes[0].isAssignableFrom(h.class)) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                e.a a2 = oVar.a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(e.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (a2 == e.a.ON_ANY) {
                        i = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    a(hashMap, new b(i, method), a2, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        C0025a aVar = new C0025a(hashMap);
        this.f755b.put(cls, aVar);
        this.c.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    private void a(Map<b, e.a> map, b bVar, e.a aVar, Class cls) {
        e.a aVar2 = map.get(bVar);
        if (aVar2 != null && aVar != aVar2) {
            Method method = bVar.f759b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
        } else if (aVar2 == null) {
            map.put(bVar, aVar);
        }
    }

    private Method[] c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(Class cls) {
        Boolean bool = this.c.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] c2 = c(cls);
        for (Method annotation : c2) {
            if (((o) annotation.getAnnotation(o.class)) != null) {
                a(cls, c2);
                return true;
            }
        }
        this.c.put(cls, false);
        return false;
    }

    /* access modifiers changed from: package-private */
    public C0025a b(Class cls) {
        C0025a aVar = this.f755b.get(cls);
        return aVar != null ? aVar : a(cls, (Method[]) null);
    }
}
