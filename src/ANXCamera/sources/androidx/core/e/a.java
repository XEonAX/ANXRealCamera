package androidx.core.e;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.core.f.c;
import java.util.concurrent.Executor;

/* compiled from: PrecomputedTextCompat */
public class a implements Spannable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f528a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static Executor f529b = null;
    private final Spannable c;
    private final C0013a d;

    /* renamed from: androidx.core.e.a$a  reason: collision with other inner class name */
    /* compiled from: PrecomputedTextCompat */
    public static final class C0013a {

        /* renamed from: a  reason: collision with root package name */
        final PrecomputedText.Params f530a = null;

        /* renamed from: b  reason: collision with root package name */
        private final TextPaint f531b;
        private final TextDirectionHeuristic c;
        private final int d;
        private final int e;

        /* renamed from: androidx.core.e.a$a$a  reason: collision with other inner class name */
        /* compiled from: PrecomputedTextCompat */
        public static class C0014a {

            /* renamed from: a  reason: collision with root package name */
            private final TextPaint f532a;

            /* renamed from: b  reason: collision with root package name */
            private TextDirectionHeuristic f533b;
            private int c;
            private int d;

            public C0014a(TextPaint textPaint) {
                this.f532a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.c = 1;
                    this.d = 1;
                } else {
                    this.d = 0;
                    this.c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f533b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f533b = null;
                }
            }

            public C0014a a(int i) {
                this.c = i;
                return this;
            }

            public C0014a a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f533b = textDirectionHeuristic;
                return this;
            }

            public C0013a a() {
                return new C0013a(this.f532a, this.f533b, this.c, this.d);
            }

            public C0014a b(int i) {
                this.d = i;
                return this;
            }
        }

        public C0013a(PrecomputedText.Params params) {
            this.f531b = params.getTextPaint();
            this.c = params.getTextDirection();
            this.d = params.getBreakStrategy();
            this.e = params.getHyphenationFrequency();
        }

        C0013a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            this.f531b = textPaint;
            this.c = textDirectionHeuristic;
            this.d = i;
            this.e = i2;
        }

        public TextPaint a() {
            return this.f531b;
        }

        public boolean a(C0013a aVar) {
            PrecomputedText.Params params = this.f530a;
            if (params != null) {
                return params.equals(aVar.f530a);
            }
            if ((Build.VERSION.SDK_INT >= 23 && (this.d != aVar.c() || this.e != aVar.d())) || this.f531b.getTextSize() != aVar.a().getTextSize() || this.f531b.getTextScaleX() != aVar.a().getTextScaleX() || this.f531b.getTextSkewX() != aVar.a().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f531b.getLetterSpacing() != aVar.a().getLetterSpacing() || !TextUtils.equals(this.f531b.getFontFeatureSettings(), aVar.a().getFontFeatureSettings()))) || this.f531b.getFlags() != aVar.a().getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (!this.f531b.getTextLocales().equals(aVar.a().getTextLocales())) {
                    return false;
                }
            } else if (Build.VERSION.SDK_INT >= 17 && !this.f531b.getTextLocale().equals(aVar.a().getTextLocale())) {
                return false;
            }
            return this.f531b.getTypeface() == null ? aVar.a().getTypeface() == null : this.f531b.getTypeface().equals(aVar.a().getTypeface());
        }

        public TextDirectionHeuristic b() {
            return this.c;
        }

        public int c() {
            return this.d;
        }

        public int d() {
            return this.e;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0013a)) {
                return false;
            }
            C0013a aVar = (C0013a) obj;
            if (!a(aVar)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.c == aVar.b();
        }

        public int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return c.a(Float.valueOf(this.f531b.getTextSize()), Float.valueOf(this.f531b.getTextScaleX()), Float.valueOf(this.f531b.getTextSkewX()), Float.valueOf(this.f531b.getLetterSpacing()), Integer.valueOf(this.f531b.getFlags()), this.f531b.getTextLocales(), this.f531b.getTypeface(), Boolean.valueOf(this.f531b.isElegantTextHeight()), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            } else if (Build.VERSION.SDK_INT >= 21) {
                return c.a(Float.valueOf(this.f531b.getTextSize()), Float.valueOf(this.f531b.getTextScaleX()), Float.valueOf(this.f531b.getTextSkewX()), Float.valueOf(this.f531b.getLetterSpacing()), Integer.valueOf(this.f531b.getFlags()), this.f531b.getTextLocale(), this.f531b.getTypeface(), Boolean.valueOf(this.f531b.isElegantTextHeight()), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            } else if (Build.VERSION.SDK_INT >= 18) {
                return c.a(Float.valueOf(this.f531b.getTextSize()), Float.valueOf(this.f531b.getTextScaleX()), Float.valueOf(this.f531b.getTextSkewX()), Integer.valueOf(this.f531b.getFlags()), this.f531b.getTextLocale(), this.f531b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            } else if (Build.VERSION.SDK_INT >= 17) {
                return c.a(Float.valueOf(this.f531b.getTextSize()), Float.valueOf(this.f531b.getTextScaleX()), Float.valueOf(this.f531b.getTextSkewX()), Integer.valueOf(this.f531b.getFlags()), this.f531b.getTextLocale(), this.f531b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            } else {
                return c.a(Float.valueOf(this.f531b.getTextSize()), Float.valueOf(this.f531b.getTextScaleX()), Float.valueOf(this.f531b.getTextSkewX()), Integer.valueOf(this.f531b.getFlags()), this.f531b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f531b.getTextSize());
            sb.append(", textScaleX=" + this.f531b.getTextScaleX());
            sb.append(", textSkewX=" + this.f531b.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f531b.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f531b.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.f531b.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.f531b.getTextLocale());
            }
            sb.append(", typeface=" + this.f531b.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f531b.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.c);
            sb.append(", breakStrategy=" + this.d);
            sb.append(", hyphenationFrequency=" + this.e);
            sb.append("}");
            return sb.toString();
        }
    }

    public C0013a a() {
        return this.d;
    }

    public char charAt(int i) {
        return this.c.charAt(i);
    }

    public int getSpanEnd(Object obj) {
        return this.c.getSpanEnd(obj);
    }

    public int getSpanFlags(Object obj) {
        return this.c.getSpanFlags(obj);
    }

    public int getSpanStart(Object obj) {
        return this.c.getSpanStart(obj);
    }

    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return this.c.getSpans(i, i2, cls);
    }

    public int length() {
        return this.c.length();
    }

    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.c.nextSpanTransition(i, i2, cls);
    }

    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.c.removeSpan(obj);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    public void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.c.setSpan(obj, i, i2, i3);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    public CharSequence subSequence(int i, int i2) {
        return this.c.subSequence(i, i2);
    }

    public String toString() {
        return this.c.toString();
    }
}
