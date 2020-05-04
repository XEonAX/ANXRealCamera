package org.apache.commons.codec.binary;

import java.math.BigInteger;

public class Base64 extends BaseNCodec {
    private static final int BITS_PER_ENCODED_BYTE = 6;
    private static final int BYTES_PER_ENCODED_BLOCK = 4;
    private static final int BYTES_PER_UNENCODED_BLOCK = 3;
    static final byte[] CHUNK_SEPARATOR = {13, 10};
    private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};
    private static final int MASK_6BITS = 63;
    private static final byte[] STANDARD_ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] URL_SAFE_ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private int bitWorkArea;
    private final int decodeSize;
    private final byte[] decodeTable;
    private final int encodeSize;
    private final byte[] encodeTable;
    private final byte[] lineSeparator;

    public Base64() {
        this(0);
    }

    public Base64(int i) {
        this(i, CHUNK_SEPARATOR);
    }

    public Base64(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Base64(int i, byte[] bArr, boolean z) {
        super(3, 4, i, bArr == null ? 0 : bArr.length);
        this.decodeTable = DECODE_TABLE;
        if (bArr == null) {
            this.encodeSize = 4;
            this.lineSeparator = null;
        } else if (containsAlphabetOrPad(bArr)) {
            String newStringUtf8 = StringUtils.newStringUtf8(bArr);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("lineSeparator must not contain base64 characters: [");
            stringBuffer.append(newStringUtf8);
            stringBuffer.append("]");
            throw new IllegalArgumentException(stringBuffer.toString());
        } else if (i > 0) {
            this.encodeSize = bArr.length + 4;
            this.lineSeparator = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.lineSeparator, 0, bArr.length);
        } else {
            this.encodeSize = 4;
            this.lineSeparator = null;
        }
        this.decodeSize = this.encodeSize - 1;
        this.encodeTable = z ? URL_SAFE_ENCODE_TABLE : STANDARD_ENCODE_TABLE;
    }

    public Base64(boolean z) {
        this(76, CHUNK_SEPARATOR, z);
    }

    public static byte[] decodeBase64(String str) {
        return new Base64().decode(str);
    }

    public static byte[] decodeBase64(byte[] bArr) {
        return new Base64().decode(bArr);
    }

    public static BigInteger decodeInteger(byte[] bArr) {
        return new BigInteger(1, decodeBase64(bArr));
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return encodeBase64(bArr, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z) {
        return encodeBase64(bArr, z, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2) {
        return encodeBase64(bArr, z, z2, Integer.MAX_VALUE);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2, int i) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        Base64 base64 = z ? new Base64(z2) : new Base64(0, CHUNK_SEPARATOR, z2);
        long encodedLength = base64.getEncodedLength(bArr);
        if (encodedLength <= ((long) i)) {
            return base64.encode(bArr);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Input array too big, the output array would be bigger (");
        stringBuffer.append(encodedLength);
        stringBuffer.append(") than the specified maximum size of ");
        stringBuffer.append(i);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static byte[] encodeBase64Chunked(byte[] bArr) {
        return encodeBase64(bArr, true);
    }

    public static String encodeBase64String(byte[] bArr) {
        return StringUtils.newStringUtf8(encodeBase64(bArr, false));
    }

    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return encodeBase64(bArr, false, true);
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        return StringUtils.newStringUtf8(encodeBase64(bArr, false, true));
    }

    public static byte[] encodeInteger(BigInteger bigInteger) {
        if (bigInteger != null) {
            return encodeBase64(toIntegerBytes(bigInteger), false);
        }
        throw new NullPointerException("encodeInteger called with null parameter");
    }

    public static boolean isArrayByteBase64(byte[] bArr) {
        return isBase64(bArr);
    }

    public static boolean isBase64(byte b2) {
        if (b2 != 61) {
            if (b2 >= 0) {
                byte[] bArr = DECODE_TABLE;
                if (b2 >= bArr.length || bArr[b2] == -1) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public static boolean isBase64(String str) {
        return isBase64(StringUtils.getBytesUtf8(str));
    }

    public static boolean isBase64(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (!isBase64(bArr[i]) && !isWhiteSpace(bArr[i])) {
                return false;
            }
        }
        return true;
    }

    static byte[] toIntegerBytes(BigInteger bigInteger) {
        int bitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        if (bigInteger.bitLength() % 8 != 0 && (bigInteger.bitLength() / 8) + 1 == bitLength / 8) {
            return byteArray;
        }
        int i = 0;
        int length = byteArray.length;
        if (bigInteger.bitLength() % 8 == 0) {
            length--;
            i = 1;
        }
        int i2 = bitLength / 8;
        int i3 = i2 - length;
        byte[] bArr = new byte[i2];
        System.arraycopy(byteArray, i, bArr, i3, length);
        return bArr;
    }

    /* access modifiers changed from: package-private */
    public void decode(byte[] bArr, int i, int i2) {
        if (!this.eof) {
            if (i2 < 0) {
                this.eof = true;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                ensureBufferSize(this.decodeSize);
                int i4 = i + 1;
                byte b2 = bArr[i];
                if (b2 == 61) {
                    this.eof = true;
                    break;
                }
                if (b2 >= 0) {
                    byte[] bArr2 = DECODE_TABLE;
                    if (b2 < bArr2.length) {
                        byte b3 = bArr2[b2];
                        if (b3 >= 0) {
                            this.modulus = (this.modulus + 1) % 4;
                            this.bitWorkArea = (this.bitWorkArea << 6) + b3;
                            if (this.modulus == 0) {
                                byte[] bArr3 = this.buffer;
                                int i5 = this.pos;
                                this.pos = i5 + 1;
                                bArr3[i5] = (byte) ((this.bitWorkArea >> 16) & 255);
                                byte[] bArr4 = this.buffer;
                                int i6 = this.pos;
                                this.pos = i6 + 1;
                                bArr4[i6] = (byte) ((this.bitWorkArea >> 8) & 255);
                                byte[] bArr5 = this.buffer;
                                int i7 = this.pos;
                                this.pos = i7 + 1;
                                bArr5[i7] = (byte) (this.bitWorkArea & 255);
                            }
                        }
                    }
                }
                i3++;
                i = i4;
            }
            if (this.eof && this.modulus != 0) {
                ensureBufferSize(this.decodeSize);
                int i8 = this.modulus;
                if (i8 == 2) {
                    this.bitWorkArea >>= 4;
                    byte[] bArr6 = this.buffer;
                    int i9 = this.pos;
                    this.pos = i9 + 1;
                    bArr6[i9] = (byte) (this.bitWorkArea & 255);
                } else if (i8 == 3) {
                    this.bitWorkArea >>= 2;
                    byte[] bArr7 = this.buffer;
                    int i10 = this.pos;
                    this.pos = i10 + 1;
                    bArr7[i10] = (byte) ((this.bitWorkArea >> 8) & 255);
                    byte[] bArr8 = this.buffer;
                    int i11 = this.pos;
                    this.pos = i11 + 1;
                    bArr8[i11] = (byte) (this.bitWorkArea & 255);
                }
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v30, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v31, resolved type: byte} */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    public void encode(byte[] bArr, int i, int i2) {
        if (!this.eof) {
            if (i2 < 0) {
                this.eof = true;
                if (this.modulus != 0 || this.lineLength != 0) {
                    ensureBufferSize(this.encodeSize);
                    int i3 = this.pos;
                    int i4 = this.modulus;
                    if (i4 == 1) {
                        byte[] bArr2 = this.buffer;
                        int i5 = this.pos;
                        this.pos = i5 + 1;
                        bArr2[i5] = this.encodeTable[(this.bitWorkArea >> 2) & 63];
                        byte[] bArr3 = this.buffer;
                        int i6 = this.pos;
                        this.pos = i6 + 1;
                        byte[] bArr4 = this.encodeTable;
                        bArr3[i6] = bArr4[(this.bitWorkArea << 4) & 63];
                        if (bArr4 == STANDARD_ENCODE_TABLE) {
                            byte[] bArr5 = this.buffer;
                            int i7 = this.pos;
                            this.pos = i7 + 1;
                            bArr5[i7] = 61;
                            byte[] bArr6 = this.buffer;
                            int i8 = this.pos;
                            this.pos = i8 + 1;
                            bArr6[i8] = 61;
                        }
                    } else if (i4 == 2) {
                        byte[] bArr7 = this.buffer;
                        int i9 = this.pos;
                        this.pos = i9 + 1;
                        bArr7[i9] = this.encodeTable[(this.bitWorkArea >> 10) & 63];
                        byte[] bArr8 = this.buffer;
                        int i10 = this.pos;
                        this.pos = i10 + 1;
                        bArr8[i10] = this.encodeTable[(this.bitWorkArea >> 4) & 63];
                        byte[] bArr9 = this.buffer;
                        int i11 = this.pos;
                        this.pos = i11 + 1;
                        byte[] bArr10 = this.encodeTable;
                        bArr9[i11] = bArr10[(this.bitWorkArea << 2) & 63];
                        if (bArr10 == STANDARD_ENCODE_TABLE) {
                            byte[] bArr11 = this.buffer;
                            int i12 = this.pos;
                            this.pos = i12 + 1;
                            bArr11[i12] = 61;
                        }
                    }
                    this.currentLinePos += this.pos - i3;
                    if (this.lineLength > 0 && this.currentLinePos > 0) {
                        System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                        this.pos += this.lineSeparator.length;
                        return;
                    }
                    return;
                }
                return;
            }
            int i13 = i;
            int i14 = 0;
            while (i14 < i2) {
                ensureBufferSize(this.encodeSize);
                this.modulus = (this.modulus + 1) % 3;
                int i15 = i13 + 1;
                byte b2 = bArr[i13];
                int i16 = b2;
                if (b2 < 0) {
                    i16 = b2 + 256;
                }
                this.bitWorkArea = (this.bitWorkArea << 8) + i16;
                if (this.modulus == 0) {
                    byte[] bArr12 = this.buffer;
                    int i17 = this.pos;
                    this.pos = i17 + 1;
                    bArr12[i17] = this.encodeTable[(this.bitWorkArea >> 18) & 63];
                    byte[] bArr13 = this.buffer;
                    int i18 = this.pos;
                    this.pos = i18 + 1;
                    bArr13[i18] = this.encodeTable[(this.bitWorkArea >> 12) & 63];
                    byte[] bArr14 = this.buffer;
                    int i19 = this.pos;
                    this.pos = i19 + 1;
                    bArr14[i19] = this.encodeTable[(this.bitWorkArea >> 6) & 63];
                    byte[] bArr15 = this.buffer;
                    int i20 = this.pos;
                    this.pos = i20 + 1;
                    bArr15[i20] = this.encodeTable[this.bitWorkArea & 63];
                    this.currentLinePos += 4;
                    if (this.lineLength > 0 && this.lineLength <= this.currentLinePos) {
                        System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                        this.pos += this.lineSeparator.length;
                        this.currentLinePos = 0;
                    }
                }
                i14++;
                i13 = i15;
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean isInAlphabet(byte b2) {
        if (b2 >= 0) {
            byte[] bArr = this.decodeTable;
            return b2 < bArr.length && bArr[b2] != -1;
        }
    }

    public boolean isUrlSafe() {
        return this.encodeTable == URL_SAFE_ENCODE_TABLE;
    }
}
