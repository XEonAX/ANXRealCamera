package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import com.oppo.providers.downloads.OppoDownloads;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PreferenceInflater */
class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?>[] f854a = {Context.class, AttributeSet.class};

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, Constructor> f855b = new HashMap<>();
    private final Context c;
    private final Object[] d = new Object[2];
    private j e;
    private String[] f;

    public i(Context context, j jVar) {
        this.c = context;
        a(jVar);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0078, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0079, code lost:
        r0 = new android.view.InflateException(r13.getPositionDescription() + ": Error inflating class " + r11);
        r0.initCause(r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0097, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0098, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0099, code lost:
        throw r11;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0078 A[ExcHandler: Exception (r12v4 'e' java.lang.Exception A[CUSTOM_DECLARE]), Splitter:B:2:0x000d] */
    private Preference a(String str, String[] strArr, AttributeSet attributeSet) throws ClassNotFoundException, InflateException {
        Class<?> cls;
        int i;
        ClassNotFoundException e2;
        Constructor<?> constructor = f855b.get(str);
        if (constructor == null) {
            try {
                ClassLoader classLoader = this.c.getClassLoader();
                if (strArr != null) {
                    if (strArr.length != 0) {
                        int length = strArr.length;
                        cls = null;
                        i = 0;
                        e2 = null;
                        while (true) {
                            if (i >= length) {
                                break;
                            }
                            String str2 = strArr[i];
                            cls = Class.forName(str2 + str, false, classLoader);
                            break;
                        }
                        if (cls == null) {
                            if (e2 == null) {
                                throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                            }
                            throw e2;
                        }
                        constructor = cls.getConstructor(f854a);
                        constructor.setAccessible(true);
                        f855b.put(str, constructor);
                    }
                }
                cls = Class.forName(str, false, classLoader);
                constructor = cls.getConstructor(f854a);
                constructor.setAccessible(true);
                f855b.put(str, constructor);
            } catch (ClassNotFoundException e3) {
                e2 = e3;
                i++;
            } catch (Exception e4) {
            }
        }
        Object[] objArr = this.d;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }

    private PreferenceGroup a(PreferenceGroup preferenceGroup, PreferenceGroup preferenceGroup2) {
        if (preferenceGroup != null) {
            return preferenceGroup;
        }
        preferenceGroup2.a(this.e);
        return preferenceGroup2;
    }

    private void a(j jVar) {
        this.e = jVar;
        a(new String[]{Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."});
    }

    private static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        }
    }

    private void a(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("intent".equals(name)) {
                    try {
                        preference.a(Intent.parseIntent(a().getResources(), xmlPullParser, attributeSet));
                    } catch (IOException e2) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e2);
                        throw xmlPullParserException;
                    }
                } else if (OppoDownloads.COLUMN_EXTRA.equals(name)) {
                    a().getResources().parseBundleExtra(OppoDownloads.COLUMN_EXTRA, attributeSet, preference.t());
                    try {
                        a(xmlPullParser);
                    } catch (IOException e3) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e3);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference b2 = b(name, attributeSet);
                    ((PreferenceGroup) preference).b(b2);
                    a(xmlPullParser, b2, attributeSet);
                }
            }
        }
    }

    private Preference b(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? a(str, attributeSet) : a(str, (String[]) null, attributeSet);
        } catch (InflateException e2) {
            throw e2;
        } catch (ClassNotFoundException e3) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e3);
            throw inflateException;
        } catch (Exception e4) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e4);
            throw inflateException2;
        }
    }

    public Context a() {
        return this.c;
    }

    public Preference a(int i, PreferenceGroup preferenceGroup) {
        XmlResourceParser xml = a().getResources().getXml(i);
        try {
            return a((XmlPullParser) xml, preferenceGroup);
        } finally {
            xml.close();
        }
    }

    /* access modifiers changed from: protected */
    public Preference a(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return a(str, this.f, attributeSet);
    }

    public Preference a(XmlPullParser xmlPullParser, PreferenceGroup preferenceGroup) {
        int next;
        PreferenceGroup a2;
        synchronized (this.d) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.d[0] = this.c;
            do {
                try {
                    next = xmlPullParser.next();
                    if (next == 2) {
                        break;
                    }
                } catch (InflateException e2) {
                    throw e2;
                } catch (XmlPullParserException e3) {
                    InflateException inflateException = new InflateException(e3.getMessage());
                    inflateException.initCause(e3);
                    throw inflateException;
                } catch (IOException e4) {
                    InflateException inflateException2 = new InflateException(xmlPullParser.getPositionDescription() + ": " + e4.getMessage());
                    inflateException2.initCause(e4);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next == 2) {
                a2 = a(preferenceGroup, (PreferenceGroup) b(xmlPullParser.getName(), asAttributeSet));
                a(xmlPullParser, (Preference) a2, asAttributeSet);
            } else {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
        }
        return a2;
    }

    public void a(String[] strArr) {
        this.f = strArr;
    }
}
