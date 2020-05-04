package co.polarr.renderer.b;

import android.util.Log;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class l {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final List<b> f1132a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private static final b f1133b = new b() {
        /* access modifiers changed from: protected */
        public void a(int i, String str, String str2, Throwable th) {
            throw new AssertionError("Missing override for log method.");
        }

        public void a(String str, Object... objArr) {
            List a2 = l.f1132a;
            int size = a2.size();
            for (int i = 0; i < size; i++) {
                ((b) a2.get(i)).a(str, objArr);
            }
        }
    };

    public static class a extends b {
        private static final int CALL_STACK_INDEX = 6;
        private static final int MAX_LOG_LENGTH = 4000;

        /* renamed from: a  reason: collision with root package name */
        public static final a f1134a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final Pattern f1135b = Pattern.compile("\\$\\d+$");

        private a() {
        }

        /* access modifiers changed from: package-private */
        public final String a() {
            String a2 = super.a();
            if (a2 != null) {
                return a2;
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            if (stackTrace.length > 6) {
                return a(stackTrace[6]);
            }
            throw new IllegalStateException("Synthetic stacktrace didn't have enough elements: are you using proguard?");
        }

        /* access modifiers changed from: protected */
        public String a(StackTraceElement stackTraceElement) {
            String className = stackTraceElement.getClassName();
            Matcher matcher = f1135b.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            return className.substring(className.lastIndexOf(46) + 1);
        }

        /* access modifiers changed from: protected */
        public void a(int i, String str, String str2, Throwable th) {
            int min;
            if (str2.length() >= MAX_LOG_LENGTH) {
                int i2 = 0;
                int length = str2.length();
                while (i2 < length) {
                    int indexOf = str2.indexOf(10, i2);
                    if (indexOf == -1) {
                        indexOf = length;
                    }
                    while (true) {
                        min = Math.min(indexOf, i2 + MAX_LOG_LENGTH);
                        String substring = str2.substring(i2, min);
                        if (i == 7) {
                            Log.wtf(str, substring);
                        } else {
                            Log.println(i, str, substring);
                        }
                        if (min >= indexOf) {
                            break;
                        }
                        i2 = min;
                    }
                    i2 = min + 1;
                }
            } else if (i == 7) {
                Log.wtf(str, str2);
            } else {
                Log.println(i, str, str2);
            }
        }
    }

    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadLocal<String> f1136a = new ThreadLocal<>();

        private void a(int i, Throwable th, String str, Object... objArr) {
            if (str != null && str.length() == 0) {
                str = null;
            }
            if (str != null) {
                if (objArr.length > 0) {
                    str = String.format(str, objArr);
                }
                if (th != null) {
                    str = str + "\n" + Log.getStackTraceString(th);
                }
            } else if (th != null) {
                str = Log.getStackTraceString(th);
            } else {
                return;
            }
            a(i, a(), str, th);
        }

        /* access modifiers changed from: package-private */
        public String a() {
            String str = this.f1136a.get();
            if (str != null) {
                this.f1136a.remove();
            }
            return str;
        }

        /* access modifiers changed from: protected */
        public abstract void a(int i, String str, String str2, Throwable th);

        public void a(String str, Object... objArr) {
            a(3, (Throwable) null, str, objArr);
        }
    }

    public static void a(b bVar) {
        synchronized (l.class) {
            if (bVar != null) {
                try {
                    if (bVar == f1133b) {
                        throw new IllegalArgumentException("Cannot plant MyLogger into itself.");
                    } else if (!f1132a.contains(bVar)) {
                        f1132a.add(bVar);
                    }
                } catch (Throwable th) {
                    Class<l> cls = l.class;
                    throw th;
                }
            } else {
                throw new NullPointerException("tree == null");
            }
        }
    }

    public static void a(String str, Object... objArr) {
        f1133b.a(str, objArr);
    }
}
