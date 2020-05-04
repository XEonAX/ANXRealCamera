package com.color.support.widget;

import com.color.support.widget.ColorLockPatternView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ColorLockPatternUtils */
public class d {
    public static String a(List<ColorLockPatternView.a> list) {
        if (list == null) {
            return "";
        }
        int size = list.size();
        byte[] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            ColorLockPatternView.a aVar = list.get(i);
            bArr[i] = (byte) ((aVar.a() * 3) + aVar.b() + 49);
        }
        return new String(bArr);
    }

    public static List<ColorLockPatternView.a> a(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        byte[] bytes = str.getBytes();
        for (int i = 0; i < bytes.length; i++) {
            byte b2 = (byte) (bytes[i] - 49);
            arrayList.add(ColorLockPatternView.a.a(b2 / 3, b2 % 3));
        }
        return arrayList;
    }
}
