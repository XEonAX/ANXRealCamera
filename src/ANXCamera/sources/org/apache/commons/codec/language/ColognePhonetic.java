package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class ColognePhonetic implements StringEncoder {
    private static final char[][] PREPROCESS_MAP = {new char[]{196, 'A'}, new char[]{220, 'U'}, new char[]{214, 'O'}, new char[]{223, 'S'}};
    static Class class$java$lang$String;

    private abstract class CologneBuffer {
        protected final char[] data;
        protected int length = 0;
        private final ColognePhonetic this$0;

        public CologneBuffer(ColognePhonetic colognePhonetic, int i) {
            this.this$0 = colognePhonetic;
            this.data = new char[i];
            this.length = 0;
        }

        public CologneBuffer(ColognePhonetic colognePhonetic, char[] cArr) {
            this.this$0 = colognePhonetic;
            this.data = cArr;
            this.length = cArr.length;
        }

        /* access modifiers changed from: protected */
        public abstract char[] copyData(int i, int i2);

        public int length() {
            return this.length;
        }

        public String toString() {
            return new String(copyData(0, this.length));
        }
    }

    private class CologneInputBuffer extends CologneBuffer {
        private final ColognePhonetic this$0;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public CologneInputBuffer(ColognePhonetic colognePhonetic, char[] cArr) {
            super(colognePhonetic, cArr);
            this.this$0 = colognePhonetic;
        }

        public void addLeft(char c) {
            this.length++;
            this.data[getNextPos()] = c;
        }

        /* access modifiers changed from: protected */
        public char[] copyData(int i, int i2) {
            char[] cArr = new char[i2];
            System.arraycopy(this.data, (this.data.length - this.length) + i, cArr, 0, i2);
            return cArr;
        }

        public char getNextChar() {
            return this.data[getNextPos()];
        }

        /* access modifiers changed from: protected */
        public int getNextPos() {
            return this.data.length - this.length;
        }

        public char removeNext() {
            this.length--;
            return getNextChar();
        }
    }

    private class CologneOutputBuffer extends CologneBuffer {
        private final ColognePhonetic this$0;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public CologneOutputBuffer(ColognePhonetic colognePhonetic, int i) {
            super(colognePhonetic, i);
            this.this$0 = colognePhonetic;
        }

        public void addRight(char c) {
            this.data[this.length] = c;
            this.length++;
        }

        /* access modifiers changed from: protected */
        public char[] copyData(int i, int i2) {
            char[] cArr = new char[i2];
            System.arraycopy(this.data, i, cArr, 0, i2);
            return cArr;
        }
    }

    private static boolean arrayContains(char[] cArr, char c) {
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    private String preprocess(String str) {
        char[] charArray = str.toUpperCase(Locale.GERMAN).toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] > 'Z') {
                int i2 = 0;
                while (true) {
                    char[][] cArr = PREPROCESS_MAP;
                    if (i2 >= cArr.length) {
                        break;
                    } else if (charArray[i] == cArr[i2][0]) {
                        charArray[i] = cArr[i2][1];
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        return new String(charArray);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:75:0x011e, code lost:
        if (r7 != '/') goto L_0x0123;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x0127, code lost:
        if (r8 <= '8') goto L_0x012c;
     */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0118  */
    public String colognePhonetic(String str) {
        char c;
        char c2;
        if (str == null) {
            return null;
        }
        String preprocess = preprocess(str);
        CologneOutputBuffer cologneOutputBuffer = new CologneOutputBuffer(this, preprocess.length() * 2);
        CologneInputBuffer cologneInputBuffer = new CologneInputBuffer(this, preprocess.toCharArray());
        int length = cologneInputBuffer.length();
        char c3 = '/';
        char c4 = '-';
        while (length > 0) {
            char removeNext = cologneInputBuffer.removeNext();
            int length2 = cologneInputBuffer.length();
            char nextChar = length2 > 0 ? cologneInputBuffer.getNextChar() : '-';
            if (arrayContains(new char[]{'A', 'E', 'I', 'J', 'O', 'U', 'Y'}, removeNext)) {
                c = '0';
                if (c != '-') {
                    if (c3 != c) {
                        c2 = '0';
                        if (c == '0') {
                        }
                        cologneOutputBuffer.addRight(c);
                    } else {
                        c2 = '0';
                    }
                    if (c >= c2) {
                    }
                    cologneOutputBuffer.addRight(c);
                }
                c3 = c;
                c4 = removeNext;
            } else if (removeNext == 'H' || removeNext < 'A' || removeNext > 'Z') {
                if (c3 != '/') {
                    c = '-';
                    if (c != '-') {
                    }
                    c3 = c;
                    c4 = removeNext;
                }
            } else if (removeNext == 'B' || (removeNext == 'P' && nextChar != 'H')) {
                c = '1';
                if (c != '-') {
                }
                c3 = c;
                c4 = removeNext;
            } else if ((removeNext == 'D' || removeNext == 'T') && !arrayContains(new char[]{'S', 'C', 'Z'}, nextChar)) {
                c = '2';
                if (c != '-') {
                }
                c3 = c;
                c4 = removeNext;
            } else {
                if (arrayContains(new char[]{'W', 'F', 'P', 'V'}, removeNext)) {
                    c = '3';
                } else {
                    if (!arrayContains(new char[]{'G', 'K', 'Q'}, removeNext)) {
                        if (removeNext != 'X' || arrayContains(new char[]{'C', 'K', 'Q'}, c4)) {
                            if (!(removeNext == 'S' || removeNext == 'Z')) {
                                if (removeNext == 'C') {
                                    if (c3 != '/') {
                                    }
                                } else if (!arrayContains(new char[]{'T', 'D', 'X'}, removeNext)) {
                                    c = removeNext == 'R' ? '7' : removeNext == 'L' ? '5' : (removeNext == 'M' || removeNext == 'N') ? '6' : removeNext;
                                }
                            }
                            c = '8';
                        } else {
                            cologneInputBuffer.addLeft('S');
                            length2++;
                        }
                    }
                    c = '4';
                }
                if (c != '-') {
                }
                c3 = c;
                c4 = removeNext;
            }
            length = length2;
        }
        return cologneOutputBuffer.toString();
    }

    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return encode((String) obj);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("This method’s parameter was expected to be of the type ");
        Class cls = class$java$lang$String;
        if (cls == null) {
            cls = class$("java.lang.String");
            class$java$lang$String = cls;
        }
        stringBuffer.append(cls.getName());
        stringBuffer.append(". But actually it was of the type ");
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append(".");
        throw new EncoderException(stringBuffer.toString());
    }

    public String encode(String str) {
        return colognePhonetic(str);
    }

    public boolean isEncodeEqual(String str, String str2) {
        return colognePhonetic(str).equals(colognePhonetic(str2));
    }
}
