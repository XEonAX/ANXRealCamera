package com.color.support.widget;

import android.util.Log;
import com.color.support.widget.ColorLunarDatePicker;
import com.oppo.statistics.util.TimeInfoUtil;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* compiled from: ColorLunarUtil */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f1680a = {"一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f1681b = {"小寒", "大寒", "立春", "雨水", "惊蛰", "春分", "清明", "谷雨", "立夏", "小满", "芒种", "夏至", "小暑", "大暑", "立秋", "处暑", "白露", "秋分", "寒露", "霜降", "立冬", "小雪", "大雪", "冬至"};
    private static final String[] c = {"小寒", "大寒", "立春", "雨水", "驚蟄", "春分", "清明", "穀雨", "立夏", "小滿", "芒種", "夏至", "小暑", "大暑", "立秋", "處暑", "白露", "秋分", "寒露", "霜降", "立冬", "小雪", "大雪", "冬至"};
    private static final long[] d = {19416, 19168, 42352, 21717, 53856, 55632, 91476, 22176, 39632, 21970, 19168, 42422, 42192, 53840, 119381, 46400, 54944, 44450, 38320, 84343, 18800, 42160, 46261, 27216, 27968, 109396, 11104, 38256, 21234, 18800, 25958, 54432, 59984, 92821, 23248, 11104, 100067, 37600, 116951, 51536, 54432, 120998, 46416, 22176, 107956, 9680, 37584, 53938, 43344, 46423, 27808, 46416, 86869, 19872, 42416, 83315, 21168, 43432, 59728, 27296, 44710, 43856, 19296, 43748, 42352, 21088, 62051, 55632, 23383, 22176, 38608, 19925, 19152, 42192, 54484, 53840, 54616, 46400, 46752, 103846, 38320, 18864, 43380, 42160, 45690, 27216, 27968, 44870, 43872, 38256, 19189, 18800, 25776, 29859, 59984, 27480, 23232, 43872, 38613, 37600, 51552, 55636, 54432, 55888, 30034, 22176, 43959, 9680, 37584, 51893, 43344, 46240, 47780, 44368, 21977, 19360, 42416, 86390, 21168, 43312, 31060, 27296, 44368, 23378, 19296, 42726, 42208, 53856, 60005, 54576, 23200, 30371, 38608, 19195, 19152, 42192, 118966, 53840, 54560, 56645, 46496, 22224, 21938, 18864, 42359, 42160, 43600, 111189, 27936, 44448};
    private static final int[][] e = {new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 9, 24, 8, 23, 7, 22}, new int[]{6, 21, 4, 19, 6, 21, 5, 21, 6, 22, 6, 22, 8, 23, 8, 24, 8, 24, 9, 24, 8, 23, 8, 22}, new int[]{6, 21, 5, 19, 5, 20, 5, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 9, 24, 8, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 21, 6, 22, 6, 22, 8, 23, 8, 24, 8, 24, 9, 24, 8, 23, 8, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 5, 21, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 8, 24, 8, 23, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 21, 6, 22, 6, 22, 8, 23, 8, 24, 8, 23, 9, 24, 8, 23, 8, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 19, 5, 21, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 8, 24, 8, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 8, 23, 8, 24, 8, 23, 9, 24, 8, 23, 8, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 19, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 8, 24, 8, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 8, 23, 8, 24, 8, 23, 9, 24, 8, 23, 7, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 24, 8, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 9, 24, 8, 23, 7, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 9, 24, 8, 23, 7, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 9, 24, 8, 23, 7, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 9, 24, 8, 23, 7, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 9, 24, 8, 22, 7, 22}, new int[]{6, 20, 4, 19, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 3, 18, 5, 20, 4, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 8, 24, 8, 23, 7, 22}, new int[]{6, 21, 4, 19, 5, 20, 4, 20, 5, 20, 5, 21, 7, 22, 7, 23, 7, 22, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 5, 21, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 8, 24, 8, 22, 7, 22}, new int[]{6, 20, 4, 19, 5, 20, 4, 19, 5, 20, 5, 21, 7, 22, 7, 23, 7, 22, 8, 23, 7, 22, 6, 21}, new int[]{5, 20, 3, 18, 5, 20, 4, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 24, 8, 22, 7, 22}, new int[]{6, 20, 4, 19, 5, 20, 4, 19, 5, 20, 5, 21, 7, 22, 7, 23, 7, 22, 8, 23, 7, 22, 6, 21}, new int[]{5, 20, 3, 18, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 22, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 5, 20, 4, 19, 5, 20, 5, 21, 6, 22, 7, 23, 7, 22, 8, 23, 7, 22, 6, 21}, new int[]{5, 20, 3, 18, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 5, 20, 4, 19, 5, 20, 5, 21, 6, 22, 7, 22, 7, 22, 8, 23, 7, 22, 6, 21}, new int[]{5, 20, 3, 18, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 6, 21, 6, 21, 7, 23, 8, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 5, 20, 4, 19, 5, 20, 5, 21, 6, 22, 7, 22, 7, 22, 8, 23, 7, 22, 6, 21}, new int[]{5, 20, 3, 18, 5, 20, 4, 20, 5, 21, 5, 21, 7, 22, 7, 23, 7, 23, 8, 23, 7, 22, 7, 21}, new int[]{5, 20, 4, 18, 5, 20, 5, 20, 5, 21, 5, 21, 7, 23, 7, 23, 7, 23, 8, 23, 7, 22, 7, 22}, new int[]{5, 20, 4, 19, 6, 21, 5, 20, 5, 21, 6, 21, 7, 23, 7, 23, 8, 23, 8, 23, 7, 22, 7, 22}, new int[]{6, 20, 4, 19, 5, 20, 4, 19, 5, 20, 5, 21, 6, 22, 7, 22, 7, 22, 8, 23, 7, 22, 6, 21}};
    private static SimpleDateFormat f = new SimpleDateFormat("yyyy年MM月dd日");

    public static int a(int i) {
        if (i == Integer.MIN_VALUE) {
            return 0;
        }
        int i2 = 348;
        for (int i3 = STMobileHumanActionNative.ST_MOBILE_ENABLE_HAIR_SEGMENT; i3 > 8; i3 >>= 1) {
            if ((d[i - 1900] & ((long) i3)) != 0) {
                i2++;
            }
        }
        return i2 + b(i);
    }

    public static int a(int i, int i2) {
        if (i != Integer.MIN_VALUE) {
            if ((((long) (STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD >> i2)) & d[i - 1900]) == 0) {
                return 29;
            }
        }
        return 30;
    }

    public static ColorLunarDatePicker.a a(int i, int i2, int i3, int i4) {
        int[] b2 = b(i, i2, i4);
        boolean z = false;
        int b3 = b(i, b2[0], i3, b2[1] == 0);
        int i5 = b2[0];
        if (b2[1] == 0) {
            z = true;
        }
        Date a2 = a(i, i5, b3, z);
        ColorLunarDatePicker.a aVar = new ColorLunarDatePicker.a();
        if (a2 != null) {
            aVar.a(a2.getTime());
        }
        return aVar;
    }

    public static Date a(int i, int i2, int i3, boolean z) {
        if (!c(i, i2, i3, z)) {
            return null;
        }
        boolean z2 = false;
        int i4 = 0;
        for (int i5 = 1900; i5 < i; i5++) {
            i4 += e(i5);
        }
        int c2 = c(i);
        int i6 = 1;
        if (c2 != i2) {
            z2 = true;
        }
        if (z2 && z) {
            return null;
        }
        if (c2 == 0 || i2 < c2 || (i2 == c2 && !z)) {
            while (i6 < i2) {
                i4 += a(i, i6);
                i6++;
            }
            if (i3 > a(i, i2)) {
                return null;
            }
        } else {
            while (i6 < i2) {
                i4 += a(i, i6);
                i6++;
            }
            if (i2 > c2) {
                i4 += b(i);
                if (i3 > a(i, i2)) {
                    return null;
                }
            } else {
                i4 += a(i, i2);
                if (i3 > b(i)) {
                    return null;
                }
            }
        }
        int i7 = i4 + i3;
        try {
            Date parse = new SimpleDateFormat(TimeInfoUtil.TIME_PATTERN_03).parse("19000130");
            Calendar instance = Calendar.getInstance();
            instance.setTime(parse);
            instance.add(5, i7);
            return instance.getTime();
        } catch (ParseException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static int[] a(int i, int i2, int i3) {
        Date date;
        int[] iArr = {2000, 1, 1, 1};
        int i4 = 0;
        if (i == Integer.MIN_VALUE) {
            iArr[0] = i;
            int i5 = i2 - 1;
            iArr[1] = (i5 % 12) + 1;
            iArr[2] = i3;
            if (i5 / 12 <= 0) {
                i4 = 1;
            }
            iArr[3] = i4;
            return iArr;
        }
        Date date2 = null;
        try {
            date = f.parse("1900年1月31日");
        } catch (ParseException e2) {
            Log.e("OppoLunar", "calculateLunarByGregorian(),parse baseDate error.");
            e2.printStackTrace();
            date = null;
        }
        if (date == null) {
            Log.e("OppoLunar", "baseDate is null,return lunar date:2000.1.1");
            return iArr;
        }
        try {
            date2 = f.parse(i + "年" + i2 + "月" + i3 + "日");
        } catch (ParseException e3) {
            Log.e("OppoLunar", "calculateLunarByGregorian(),parse currentDate error.");
            e3.printStackTrace();
        }
        if (date2 == null) {
            Log.e("OppoLunar", "currentDate is null,return lunar date:2000.1.1");
            return iArr;
        }
        int round = Math.round(((float) (date2.getTime() - date.getTime())) / 8.64E7f);
        int i6 = 1900;
        int i7 = 0;
        while (i6 < 10000 && round > 0) {
            i7 = a(i6);
            round -= i7;
            i6++;
        }
        if (round < 0) {
            round += i7;
            i6--;
        }
        int c2 = c(i6);
        int i8 = round;
        int i9 = 0;
        int i10 = 0;
        int i11 = 1;
        while (i11 < 13 && i8 > 0) {
            if (c2 > 0 && i11 == c2 + 1 && i9 == 0) {
                i11--;
                i10 = b(i6);
                i9 = 1;
            } else {
                i10 = a(i6, i11);
            }
            i8 -= i10;
            if (i9 != 0 && i11 == c2 + 1) {
                i9 = 0;
            }
            i11++;
        }
        if (i8 == 0 && c2 > 0 && i11 == c2 + 1) {
            if (i9 != 0) {
                i9 = 0;
            } else {
                i11--;
                i9 = 1;
            }
        }
        if (i8 < 0) {
            i8 += i10;
            i11--;
        }
        iArr[0] = i6;
        iArr[1] = i11;
        iArr[2] = i8 + 1;
        iArr[3] = i9 ^ 1;
        return iArr;
    }

    public static int b(int i) {
        if (c(i) != 0) {
            return (d[i + -1900] & 65536) != 0 ? 30 : 29;
        }
        return 0;
    }

    static int b(int i, int i2, int i3, boolean z) {
        int a2 = !z ? a(i, i2) : b(i);
        return i3 > a2 ? a2 : i3;
    }

    private static int[] b(int i, int i2, int i3) {
        return new int[]{i2, ((i3 == 0 && c(i) == i2) ? 1 : 0) ^ 1};
    }

    public static int c(int i) {
        if (i >= 1900 && i <= 2100) {
            return (int) (d[i - 1900] & 15);
        }
        Log.e("OppoLunar", "get leapMonth:" + i + "is out of range.return 0.");
        return 0;
    }

    private static boolean c(int i, int i2, int i3, boolean z) {
        if (i < 1900 || i > 2049 || i2 < 1 || i2 > 12 || i3 < 1 || i3 > 30) {
            return false;
        }
        return !z || i2 == c(i);
    }

    public static String d(int i) {
        String[] strArr = {"初", "十", "廿", "卅"};
        int i2 = i % 10;
        int i3 = i2 == 0 ? 9 : i2 - 1;
        if (i > 30) {
            return "";
        }
        if (i == 10) {
            return "初十";
        }
        if (i == 20) {
            return "二十";
        }
        if (i == 30) {
            return "三十";
        }
        return strArr[i / 10] + f1680a[i3];
    }

    private static int e(int i) {
        int i2 = 348;
        for (int i3 = STMobileHumanActionNative.ST_MOBILE_ENABLE_HAIR_SEGMENT; i3 >= 8; i3 >>= 1) {
            if ((d[i - 1900] & 65520 & ((long) i3)) != 0) {
                i2++;
            }
        }
        return i2 + b(i);
    }
}