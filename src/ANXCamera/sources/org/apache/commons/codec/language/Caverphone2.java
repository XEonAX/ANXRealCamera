package org.apache.commons.codec.language;

import com.oppo.exif.OppoExifInterface;
import java.util.Locale;

public class Caverphone2 extends AbstractCaverphone {
    private static final String TEN_1 = "1111111111";

    public String encode(String str) {
        if (str == null || str.length() == 0) {
            return TEN_1;
        }
        String replaceAll = str.toLowerCase(Locale.ENGLISH).replaceAll("[^a-z]", "").replaceAll("e$", "").replaceAll("^cough", "cou2f").replaceAll("^rough", "rou2f").replaceAll("^tough", "tou2f").replaceAll("^enough", "enou2f").replaceAll("^trough", "trou2f").replaceAll("^gn", "2n").replaceAll("mb$", "m2").replaceAll("cq", "2q").replaceAll("ci", "si").replaceAll("ce", "se").replaceAll("cy", "sy").replaceAll("tch", "2ch").replaceAll("c", "k").replaceAll("q", "k").replaceAll("x", "k").replaceAll("v", "f").replaceAll("dg", "2g").replaceAll("tio", "sio").replaceAll("tia", "sia").replaceAll("d", "t").replaceAll("ph", "fh").replaceAll("b", "p").replaceAll("sh", "s2").replaceAll("z", "s").replaceAll("^[aeiou]", OppoExifInterface.GpsStatus.IN_PROGRESS).replaceAll("[aeiou]", OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL).replaceAll("j", "y").replaceAll("^y3", "Y3").replaceAll("^y", OppoExifInterface.GpsStatus.IN_PROGRESS).replaceAll("y", OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL).replaceAll("3gh3", "3kh3").replaceAll("gh", "22").replaceAll("g", "k").replaceAll("s+", OppoExifInterface.GpsLatitudeRef.SOUTH).replaceAll("t+", OppoExifInterface.GpsTrackRef.TRUE_DIRECTION).replaceAll("p+", "P").replaceAll("k+", OppoExifInterface.GpsSpeedRef.KILOMETERS).replaceAll("f+", "F").replaceAll("m+", "M").replaceAll("n+", "N").replaceAll("w3", "W3").replaceAll("wh3", "Wh3").replaceAll("w$", OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL).replaceAll("w", OppoExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL).replaceAll("^h", OppoExifInterface.GpsStatus.IN_PROGRESS).replaceAll("h", OppoExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL).replaceAll("r3", "R3").replaceAll("r$", OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL).replaceAll("r", OppoExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL).replaceAll("l3", "L3").replaceAll("l$", OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL).replaceAll("l", OppoExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL).replaceAll(OppoExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL, "").replaceAll("3$", OppoExifInterface.GpsStatus.IN_PROGRESS).replaceAll(OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, "");
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(replaceAll);
        stringBuffer.append(TEN_1);
        return stringBuffer.toString().substring(0, 10);
    }
}
