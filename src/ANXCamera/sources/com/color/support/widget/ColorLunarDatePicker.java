package com.color.support.widget;

import android.content.res.Configuration;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.CalendarView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.color.support.widget.ColorNumberPicker;
import com.google.protobuf.nano.MessageNano;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class ColorLunarDatePicker extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1597a = "ColorLunarDatePicker";

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f1598b = {"一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"};
    private static String c;
    private static Calendar d = Calendar.getInstance();
    private static Calendar e = Calendar.getInstance();
    private final LinearLayout f;
    /* access modifiers changed from: private */
    public final ColorNumberPicker g;
    /* access modifiers changed from: private */
    public final ColorNumberPicker h;
    /* access modifiers changed from: private */
    public final ColorNumberPicker i;
    private Locale j;
    private b k;
    private String[] l;
    private int m;
    /* access modifiers changed from: private */
    public a n;
    /* access modifiers changed from: private */
    public a o;
    private boolean p;

    /* renamed from: com.color.support.widget.ColorLunarDatePicker$1  reason: invalid class name */
    class AnonymousClass1 implements ColorNumberPicker.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ColorLunarDatePicker f1599a;

        public void a(ColorNumberPicker colorNumberPicker, int i, int i2) {
            this.f1599a.n.a(this.f1599a.o);
            e.a(this.f1599a.n.a(1), this.f1599a.n.a(2) + 1, this.f1599a.n.a(5));
            if (colorNumberPicker == this.f1599a.g) {
                this.f1599a.n.b(5, i, i2);
            } else if (colorNumberPicker == this.f1599a.h) {
                this.f1599a.n.b(2, i, i2);
            } else if (colorNumberPicker == this.f1599a.i) {
                this.f1599a.n.b(1, i, i2);
            } else {
                throw new IllegalArgumentException();
            }
            ColorLunarDatePicker colorLunarDatePicker = this.f1599a;
            colorLunarDatePicker.setDate(colorLunarDatePicker.n);
            this.f1599a.b();
            this.f1599a.c();
            this.f1599a.d();
        }
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (AnonymousClass1) null);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        /* access modifiers changed from: private */
        public final int mDay;
        /* access modifiers changed from: private */
        public final int mMonth;
        /* access modifiers changed from: private */
        public final int mYear;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mYear = parcel.readInt();
            this.mMonth = parcel.readInt();
            this.mDay = parcel.readInt();
        }

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 r2) {
            this(parcel);
        }

        private SavedState(Parcelable parcelable, int i, int i2, int i3) {
            super(parcelable);
            this.mYear = i;
            this.mMonth = i2;
            this.mDay = i3;
        }

        /* synthetic */ SavedState(Parcelable parcelable, int i, int i2, int i3, AnonymousClass1 r5) {
            this(parcelable, i, i2, i3);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mYear);
            parcel.writeInt(this.mMonth);
            parcel.writeInt(this.mDay);
        }
    }

    static class a {

        /* renamed from: a  reason: collision with root package name */
        private Calendar f1600a;

        /* renamed from: b  reason: collision with root package name */
        private int f1601b;
        private int c;
        private int d;
        private int e;
        private int f;
        /* access modifiers changed from: private */
        public boolean g;

        a() {
            a(Calendar.getInstance());
        }

        a(Locale locale) {
            a(Calendar.getInstance(locale));
        }

        /* access modifiers changed from: package-private */
        public int a(int i) {
            return !this.g ? this.f1600a.get(i) : i == 5 ? this.d : i == 2 ? this.c : i == 1 ? this.f1601b : this.f1600a.get(i);
        }

        /* access modifiers changed from: package-private */
        public long a() {
            return this.f1600a.getTimeInMillis();
        }

        /* access modifiers changed from: package-private */
        public void a(int i, int i2, int i3) {
            if (i != Integer.MIN_VALUE) {
                this.f1600a.set(1, i);
                this.f1600a.set(2, i2);
                this.f1600a.set(5, i3);
                this.g = false;
                return;
            }
            this.f1601b = MessageNano.UNSET_ENUM_VALUE;
            this.c = i2;
            this.d = i3;
            this.g = true;
        }

        /* access modifiers changed from: package-private */
        public void a(long j) {
            this.f1600a.setTimeInMillis(j);
            this.g = false;
        }

        public void a(a aVar) {
            this.f1600a.setTimeInMillis(aVar.f1600a.getTimeInMillis());
            this.f1601b = aVar.f1601b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            this.g = aVar.g;
        }

        /* access modifiers changed from: package-private */
        public void a(Calendar calendar) {
            this.f1600a = calendar;
            this.g = false;
        }

        /* access modifiers changed from: package-private */
        public void a(Calendar calendar, Calendar calendar2) {
            if (this.g) {
                return;
            }
            if (this.f1600a.before(calendar)) {
                a(calendar.getTimeInMillis());
            } else if (this.f1600a.after(calendar2)) {
                a(calendar2.getTimeInMillis());
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:27:0x006e  */
        /* JADX WARNING: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
        public void b(int i, int i2, int i3) {
            Date a2;
            boolean z = true;
            int[] a3 = e.a(a(1), a(2) + 1, a(5));
            if (i != 5) {
                boolean z2 = false;
                if (i == 2) {
                    if (!this.g) {
                        int i4 = i3 + 1;
                        int c2 = e.c(a3[0]);
                        if (c2 != 0 && i4 > c2) {
                            if (i4 == c2 + 1) {
                                i4 = c2;
                                a2 = e.a(a3[0], i4, e.b(a3[0], i4, a3[2], z), z);
                                if (a2 == null) {
                                    a(a2.getTime());
                                    return;
                                }
                                return;
                            }
                            i4--;
                        }
                        z = false;
                        a2 = e.a(a3[0], i4, e.b(a3[0], i4, a3[2], z), z);
                        if (a2 == null) {
                        }
                    } else {
                        this.c = i3;
                    }
                } else if (i != 1) {
                } else {
                    if (!this.g && i3 != Integer.MIN_VALUE) {
                        a(e.a(i3, a3[1], a3[2], a3[3]));
                    } else if (!this.g && i3 == Integer.MIN_VALUE) {
                        this.g = true;
                        this.f1601b = i3;
                        int i5 = a3[1] - 1;
                        if (a3[3] != 1) {
                            z2 = true;
                        }
                        this.c = i5 + (z2 ? 1 : 0);
                        this.d = a3[2];
                        this.e = this.f1600a.get(11);
                        this.f = this.f1600a.get(12);
                    } else if (!this.g || i3 == Integer.MIN_VALUE) {
                        this.f1601b = i3;
                    } else {
                        this.g = false;
                        this.f1601b = i3;
                        int i6 = this.c;
                        int i7 = (i6 % 12) + 1;
                        if (i6 / 12 > 0 && e.c(this.f1601b) == i7) {
                            z2 = true;
                        }
                        this.d = e.b(this.f1601b, i7, this.d, z2);
                        Date a4 = e.a(this.f1601b, i7, this.d, z2);
                        if (a4 != null) {
                            a(a4.getTime());
                        }
                    }
                }
            } else if (this.g) {
                this.d = i3;
            } else if (i2 > 27 && i3 == 1) {
                this.f1600a.add(5, 1 - i2);
            } else if (i2 != 1 || i3 <= 27) {
                this.f1600a.add(5, i3 - i2);
            } else {
                this.f1600a.add(5, i3 - 1);
            }
        }

        /* access modifiers changed from: package-private */
        public boolean b(Calendar calendar) {
            if (!this.g) {
                return this.f1600a.before(calendar);
            }
            return false;
        }

        public boolean c(Calendar calendar) {
            if (!this.g) {
                return this.f1600a.before(calendar) || this.f1600a.equals(calendar);
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public boolean d(Calendar calendar) {
            if (!this.g) {
                return this.f1600a.after(calendar);
            }
            return false;
        }

        public boolean e(Calendar calendar) {
            if (!this.g) {
                return this.f1600a.after(calendar) || this.f1600a.equals(calendar);
            }
            return false;
        }
    }

    public interface b {
        void a(ColorLunarDatePicker colorLunarDatePicker, int i, int i2, int i3);
    }

    static {
        d.set(1910, 2, 10, 0, 0);
        e.set(2036, 11, 31, 23, 59);
    }

    private a a(a aVar, Locale locale) {
        if (aVar == null) {
            return new a(locale);
        }
        a aVar2 = new a(locale);
        if (!aVar.g) {
            aVar2.a(aVar.a());
        } else {
            aVar2.a(aVar);
        }
        return aVar2;
    }

    private static String a(int i2, int i3, int i4, int i5) {
        String str = "";
        if (i2 != Integer.MIN_VALUE) {
            StringBuilder sb = new StringBuilder();
            sb.append(i2);
            sb.append("年");
            if (i5 == 0) {
                str = c;
            }
            sb.append(str);
            sb.append(f1598b[i3 - 1]);
            sb.append("月");
            sb.append(e.d(i4));
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        if (i5 == 0) {
            str = c;
        }
        sb2.append(str);
        sb2.append(f1598b[i3 - 1]);
        sb2.append("月");
        sb2.append(e.d(i4));
        return sb2.toString();
    }

    private static String a(a aVar) {
        int[] a2 = e.a(aVar.a(1), aVar.a(2) + 1, aVar.a(5));
        return a(a2[0], a2[1], a2[2], a2[3]);
    }

    private Calendar a(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar instance = Calendar.getInstance(locale);
        instance.setTimeInMillis(timeInMillis);
        return instance;
    }

    private void a() {
        this.o.a(d, e);
    }

    private void a(int i2, int i3, int i4) {
        this.o.a(i2, i3, i4);
        a();
    }

    /* JADX WARNING: type inference failed for: r1v16, types: [java.lang.Object[]] */
    /* JADX WARNING: type inference failed for: r1v23, types: [java.lang.Object[]] */
    /* access modifiers changed from: private */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00b2  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x011a  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0142  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x01bd A[LOOP:3: B:51:0x01bb->B:52:0x01bd, LOOP_END] */
    public void b() {
        boolean z;
        int a2;
        int maxValue;
        int i2;
        int a3 = this.o.a(1);
        int[] a4 = e.a(a3, this.o.a(2) + 1, this.o.a(5));
        int c2 = e.c(a4[0]);
        int i3 = a4[1];
        String a5 = a(this.o);
        if (c2 == 0 || ((i3 < c2 && c2 != 0) || (i3 == c2 && !a5.contains(c)))) {
            i3--;
        }
        if (a3 == Integer.MIN_VALUE && a4[3] == 0) {
            i3 += 12;
        }
        if (a3 == Integer.MIN_VALUE) {
            this.m = 24;
        } else if (c2 != 0) {
            this.m = 13;
            z = true;
            a2 = e.a(a4[0], a4[1]);
            if (c2 != 0 && i3 == c2 && a5.contains(c)) {
                a2 = e.b(a4[0]);
            }
            if (!this.o.c(d)) {
                this.g.setDisplayedValues((String[]) null);
                this.g.setMinValue(a4[2]);
                this.g.setMaxValue(a2);
                this.g.setWrapSelectorWheel(false);
                this.h.setDisplayedValues((String[]) null);
                this.h.setMinValue(i3);
                this.h.setMaxValue(this.m - 1);
                this.h.setWrapSelectorWheel(false);
            } else if (this.o.e(e)) {
                this.g.setDisplayedValues((String[]) null);
                this.g.setMinValue(1);
                this.g.setMaxValue(a4[2]);
                this.g.setWrapSelectorWheel(false);
                this.h.setDisplayedValues((String[]) null);
                this.h.setMinValue(0);
                this.h.setMaxValue(i3);
                this.h.setWrapSelectorWheel(false);
            } else {
                this.g.setDisplayedValues((String[]) null);
                this.g.setMinValue(1);
                this.g.setMaxValue(a2);
                this.g.setWrapSelectorWheel(true);
                this.h.setDisplayedValues((String[]) null);
                this.h.setMinValue(0);
                this.h.setMaxValue(this.m - 1);
                this.h.setWrapSelectorWheel(true);
            }
            int i4 = this.m;
            String[] strArr = new String[i4];
            String[] strArr2 = new String[i4];
            if (a3 != Integer.MIN_VALUE) {
                for (int i5 = 0; i5 < 24; i5++) {
                    if (i5 < 12) {
                        strArr[i5] = this.l[i5];
                    } else {
                        strArr[i5] = c + this.l[i5 - 12];
                    }
                }
            } else if (z) {
                int i6 = 0;
                while (i6 < c2) {
                    strArr2[i6] = this.l[i6];
                    i6++;
                }
                strArr2[c2] = c + this.l[c2 - 1];
                for (int i7 = i6 + 1; i7 < 13; i7++) {
                    strArr2[i7] = this.l[i7 - 1];
                }
                strArr = Arrays.copyOfRange(strArr2, this.h.getMinValue(), this.h.getMaxValue() + 1);
            } else {
                strArr = Arrays.copyOfRange(this.l, this.h.getMinValue(), this.h.getMaxValue() + 1);
            }
            this.h.setDisplayedValues(strArr);
            maxValue = this.g.getMaxValue();
            int minValue = this.g.getMinValue();
            String[] strArr3 = new String[((maxValue - minValue) + 1)];
            for (i2 = minValue; i2 <= maxValue; i2++) {
                strArr3[i2 - minValue] = e.d(i2);
            }
            this.g.setDisplayedValues(strArr3);
            int[] a6 = e.a(d.get(1), d.get(2) + 1, d.get(5));
            int i8 = e.get(1);
            int i9 = e.get(2) + 1;
            int[] a7 = e.a(i8, i9, i9);
            this.i.setMinValue(a6[0]);
            this.i.setMaxValue(a7[0]);
            this.i.setWrapSelectorWheel(true);
            this.i.setValue(a4[0]);
            this.h.setValue(i3);
            this.g.setValue(a4[2]);
        } else {
            this.m = 12;
        }
        z = false;
        a2 = e.a(a4[0], a4[1]);
        a2 = e.b(a4[0]);
        if (!this.o.c(d)) {
        }
        int i42 = this.m;
        String[] strArr4 = new String[i42];
        String[] strArr22 = new String[i42];
        if (a3 != Integer.MIN_VALUE) {
        }
        this.h.setDisplayedValues(strArr4);
        maxValue = this.g.getMaxValue();
        int minValue2 = this.g.getMinValue();
        String[] strArr32 = new String[((maxValue - minValue2) + 1)];
        while (i2 <= maxValue) {
        }
        this.g.setDisplayedValues(strArr32);
        int[] a62 = e.a(d.get(1), d.get(2) + 1, d.get(5));
        int i82 = e.get(1);
        int i92 = e.get(2) + 1;
        int[] a72 = e.a(i82, i92, i92);
        this.i.setMinValue(a62[0]);
        this.i.setMaxValue(a72[0]);
        this.i.setWrapSelectorWheel(true);
        this.i.setValue(a4[0]);
        this.h.setValue(i3);
        this.g.setValue(a4[2]);
    }

    /* access modifiers changed from: private */
    public void c() {
    }

    /* access modifiers changed from: private */
    public void d() {
        sendAccessibilityEvent(4);
        b bVar = this.k;
        if (bVar != null) {
            bVar.a(this, getYear(), getMonth(), getDayOfMonth());
        }
    }

    private void setCurrentLocale(Locale locale) {
        if (!locale.equals(this.j)) {
            this.j = locale;
            this.n = a(this.n, locale);
            d = a(d, locale);
            e = a(e, locale);
            this.o = a(this.o, locale);
        }
    }

    /* access modifiers changed from: private */
    public void setDate(a aVar) {
        this.o.a(aVar);
        a();
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    /* access modifiers changed from: protected */
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    public CalendarView getCalendarView() {
        return null;
    }

    public boolean getCalendarViewShown() {
        return false;
    }

    public int getDayOfMonth() {
        return this.o.a(5);
    }

    public int getLeapMonth() {
        return e.c(this.o.a(1));
    }

    public int[] getLunarDate() {
        return e.a(this.o.a(1), this.o.a(2) + 1, this.o.a(5));
    }

    public long getMaxDate() {
        return e.getTimeInMillis();
    }

    public long getMinDate() {
        return d.getTimeInMillis();
    }

    public int getMonth() {
        return this.o.a(2);
    }

    public b getOnDateChangedListener() {
        return this.k;
    }

    public boolean getSpinnersShown() {
        return this.f.isShown();
    }

    public int getYear() {
        return this.o.a(1);
    }

    public boolean isEnabled() {
        return this.p;
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setCurrentLocale(configuration.locale);
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(DateUtils.formatDateTime(getContext(), this.o.a(), 20));
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        a(savedState.mYear, savedState.mMonth, savedState.mDay);
        b();
        c();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState(), getYear(), getMonth(), getDayOfMonth(), (AnonymousClass1) null);
        return savedState;
    }

    public void setCalendarViewShown(boolean z) {
    }

    public void setEnabled(boolean z) {
        if (this.p != z) {
            super.setEnabled(z);
            this.g.setEnabled(z);
            this.h.setEnabled(z);
            this.i.setEnabled(z);
            this.p = z;
        }
    }

    public void setMaxDate(long j2) {
        this.n.a(j2);
        if (this.n.a(1) != e.get(1) || this.n.a(6) == e.get(6)) {
            e.setTimeInMillis(j2);
            if (this.o.d(e)) {
                this.o.a(e.getTimeInMillis());
                c();
            }
            b();
            return;
        }
        String str = f1597a;
        Log.w(str, "setMaxDate failed!:" + this.n.a(1) + "<->" + e.get(1) + ":" + this.n.a(6) + "<->" + e.get(6));
    }

    public void setMinDate(long j2) {
        this.n.a(j2);
        if (this.n.a(1) != d.get(1) || this.n.a(6) == d.get(6)) {
            d.setTimeInMillis(j2);
            if (this.o.b(d)) {
                this.o.a(d.getTimeInMillis());
                c();
            }
            b();
            return;
        }
        String str = f1597a;
        Log.w(str, "setMinDate failed!:" + this.n.a(1) + "<->" + d.get(1) + ":" + this.n.a(6) + "<->" + d.get(6));
    }

    public void setOnDateChangedListener(b bVar) {
        this.k = bVar;
    }

    public void setSpinnersShown(boolean z) {
        this.f.setVisibility(z ? 0 : 8);
    }
}
