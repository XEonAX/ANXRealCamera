package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.view.d;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.ar;
import androidx.appcompat.widget.f;
import androidx.appcompat.widget.g;
import androidx.appcompat.widget.j;
import androidx.appcompat.widget.l;
import androidx.appcompat.widget.n;
import androidx.appcompat.widget.o;
import androidx.appcompat.widget.r;
import androidx.appcompat.widget.s;
import androidx.appcompat.widget.t;
import androidx.appcompat.widget.x;
import androidx.appcompat.widget.z;
import androidx.core.g.u;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

public class AppCompatViewInflater {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?>[] f85a = {Context.class, AttributeSet.class};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f86b = {16843375};
    private static final String[] c = {"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> d = new androidx.b.a();
    private final Object[] e = new Object[2];

    private static class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final View f87a;

        /* renamed from: b  reason: collision with root package name */
        private final String f88b;
        private Method c;
        private Context d;

        public a(View view, String str) {
            this.f87a = view;
            this.f88b = str;
        }

        private void a(Context context, String str) {
            String str2;
            while (context != null) {
                try {
                    if (!context.isRestricted()) {
                        Method method = context.getClass().getMethod(this.f88b, new Class[]{View.class});
                        if (method != null) {
                            this.c = method;
                            this.d = context;
                            return;
                        }
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f87a.getId() == -1) {
                str2 = "";
            } else {
                str2 = " with id '" + this.f87a.getContext().getResources().getResourceEntryName(r5) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f88b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f87a.getClass() + str2);
        }

        public void onClick(View view) {
            if (this.c == null) {
                a(this.f87a.getContext(), this.f88b);
            }
            try {
                this.c.invoke(this.d, new Object[]{view});
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    private static Context a(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.View, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0) {
            resourceId = obtainStyledAttributes.getResourceId(R.styleable.View_theme, 0);
            if (resourceId != 0) {
                Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
            }
        }
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? (!(context instanceof d) || ((d) context).a() != resourceId) ? new d(context, resourceId) : context : context;
    }

    private View a(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        Constructor<? extends U> constructor = d.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f85a);
            d.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.e);
    }

    private void a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (!(context instanceof ContextWrapper)) {
            return;
        }
        if (Build.VERSION.SDK_INT < 15 || u.x(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f86b);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    private void a(View view, String str) {
        if (view == null) {
            throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
        }
    }

    private View b(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue((String) null, "class");
        }
        try {
            this.e[0] = context;
            this.e[1] = attributeSet;
            if (-1 == str.indexOf(46)) {
                for (String a2 : c) {
                    View a3 = a(context, str, a2);
                    if (a3 != null) {
                        return a3;
                    }
                }
                Object[] objArr = this.e;
                objArr[0] = null;
                objArr[1] = null;
                return null;
            }
            View a4 = a(context, str, (String) null);
            Object[] objArr2 = this.e;
            objArr2[0] = null;
            objArr2[1] = null;
            return a4;
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr3 = this.e;
            objArr3[0] = null;
            objArr3[1] = null;
        }
    }

    /* access modifiers changed from: protected */
    public View a(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* access modifiers changed from: package-private */
    public final View a(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        View view2;
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = a(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = ar.a(context2);
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c2 = 11;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c2 = 8;
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c2 = 10;
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c2 = 0;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c2 = 5;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c2 = 12;
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c2 = 4;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c2 = 7;
                    break;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c2 = 13;
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c2 = 9;
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c2 = 3;
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                view2 = a(context2, attributeSet);
                a(view2, str);
                break;
            case 1:
                view2 = b(context2, attributeSet);
                a(view2, str);
                break;
            case 2:
                view2 = c(context2, attributeSet);
                a(view2, str);
                break;
            case 3:
                view2 = d(context2, attributeSet);
                a(view2, str);
                break;
            case 4:
                view2 = e(context2, attributeSet);
                a(view2, str);
                break;
            case 5:
                view2 = f(context2, attributeSet);
                a(view2, str);
                break;
            case 6:
                view2 = g(context2, attributeSet);
                a(view2, str);
                break;
            case 7:
                view2 = h(context2, attributeSet);
                a(view2, str);
                break;
            case 8:
                view2 = i(context2, attributeSet);
                a(view2, str);
                break;
            case 9:
                view2 = j(context2, attributeSet);
                a(view2, str);
                break;
            case 10:
                view2 = k(context2, attributeSet);
                a(view2, str);
                break;
            case 11:
                view2 = l(context2, attributeSet);
                a(view2, str);
                break;
            case 12:
                view2 = m(context2, attributeSet);
                a(view2, str);
                break;
            case 13:
                view2 = n(context2, attributeSet);
                a(view2, str);
                break;
            default:
                view2 = a(context2, str, attributeSet);
                break;
        }
        if (view2 == null && context != context2) {
            view2 = b(context2, str, attributeSet);
        }
        if (view2 != null) {
            a(view2, attributeSet);
        }
        return view2;
    }

    /* access modifiers changed from: protected */
    public x a(Context context, AttributeSet attributeSet) {
        return new x(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public n b(Context context, AttributeSet attributeSet) {
        return new n(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public f c(Context context, AttributeSet attributeSet) {
        return new f(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public j d(Context context, AttributeSet attributeSet) {
        return new j(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public AppCompatSpinner e(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public l f(Context context, AttributeSet attributeSet) {
        return new l(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public AppCompatCheckBox g(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public r h(Context context, AttributeSet attributeSet) {
        return new r(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public g i(Context context, AttributeSet attributeSet) {
        return new g(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public androidx.appcompat.widget.d j(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.d(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public o k(Context context, AttributeSet attributeSet) {
        return new o(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public s l(Context context, AttributeSet attributeSet) {
        return new s(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public t m(Context context, AttributeSet attributeSet) {
        return new t(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public z n(Context context, AttributeSet attributeSet) {
        return new z(context, attributeSet);
    }
}
