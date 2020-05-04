package org.apache.commons.codec.binary;

public class Base32 extends BaseNCodec {
    private static final int BITS_PER_ENCODED_BYTE = 5;
    private static final int BYTES_PER_ENCODED_BLOCK = 8;
    private static final int BYTES_PER_UNENCODED_BLOCK = 5;
    private static final byte[] CHUNK_SEPARATOR = {13, 10};
    private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};
    private static final byte[] ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55};
    private static final byte[] HEX_DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32};
    private static final byte[] HEX_ENCODE_TABLE = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86};
    private static final int MASK_5BITS = 31;
    private long bitWorkArea;
    private final int decodeSize;
    private final byte[] decodeTable;
    private final int encodeSize;
    private final byte[] encodeTable;
    private final byte[] lineSeparator;

    public Base32() {
        this(false);
    }

    public Base32(int i) {
        this(i, CHUNK_SEPARATOR);
    }

    public Base32(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Base32(int i, byte[] bArr, boolean z) {
        super(5, 8, i, bArr == null ? 0 : bArr.length);
        if (z) {
            this.encodeTable = HEX_ENCODE_TABLE;
            this.decodeTable = HEX_DECODE_TABLE;
        } else {
            this.encodeTable = ENCODE_TABLE;
            this.decodeTable = DECODE_TABLE;
        }
        if (i <= 0) {
            this.encodeSize = 8;
            this.lineSeparator = null;
        } else if (bArr == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("lineLength ");
            stringBuffer.append(i);
            stringBuffer.append(" > 0, but lineSeparator is null");
            throw new IllegalArgumentException(stringBuffer.toString());
        } else if (!containsAlphabetOrPad(bArr)) {
            this.encodeSize = bArr.length + 8;
            this.lineSeparator = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.lineSeparator, 0, bArr.length);
        } else {
            String newStringUtf8 = StringUtils.newStringUtf8(bArr);
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("lineSeparator must not contain Base32 characters: [");
            stringBuffer2.append(newStringUtf8);
            stringBuffer2.append("]");
            throw new IllegalArgumentException(stringBuffer2.toString());
        }
        this.decodeSize = this.encodeSize - 1;
    }

    public Base32(boolean z) {
        this(0, (byte[]) null, z);
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
                int i4 = i + 1;
                byte b2 = bArr[i];
                if (b2 == 61) {
                    this.eof = true;
                    break;
                }
                ensureBufferSize(this.decodeSize);
                if (b2 >= 0) {
                    byte[] bArr2 = this.decodeTable;
                    if (b2 < bArr2.length) {
                        byte b3 = bArr2[b2];
                        if (b3 >= 0) {
                            this.modulus = (this.modulus + 1) % 8;
                            this.bitWorkArea = (this.bitWorkArea << 5) + ((long) b3);
                            if (this.modulus == 0) {
                                byte[] bArr3 = this.buffer;
                                int i5 = this.pos;
                                this.pos = i5 + 1;
                                bArr3[i5] = (byte) ((int) ((this.bitWorkArea >> 32) & 255));
                                byte[] bArr4 = this.buffer;
                                int i6 = this.pos;
                                this.pos = i6 + 1;
                                bArr4[i6] = (byte) ((int) ((this.bitWorkArea >> 24) & 255));
                                byte[] bArr5 = this.buffer;
                                int i7 = this.pos;
                                this.pos = i7 + 1;
                                bArr5[i7] = (byte) ((int) ((this.bitWorkArea >> 16) & 255));
                                byte[] bArr6 = this.buffer;
                                int i8 = this.pos;
                                this.pos = i8 + 1;
                                bArr6[i8] = (byte) ((int) ((this.bitWorkArea >> 8) & 255));
                                byte[] bArr7 = this.buffer;
                                int i9 = this.pos;
                                this.pos = i9 + 1;
                                bArr7[i9] = (byte) ((int) (this.bitWorkArea & 255));
                            }
                        }
                    }
                }
                i3++;
                i = i4;
            }
            if (this.eof && this.modulus >= 2) {
                ensureBufferSize(this.decodeSize);
                switch (this.modulus) {
                    case 2:
                        byte[] bArr8 = this.buffer;
                        int i10 = this.pos;
                        this.pos = i10 + 1;
                        bArr8[i10] = (byte) ((int) ((this.bitWorkArea >> 2) & 255));
                        return;
                    case 3:
                        byte[] bArr9 = this.buffer;
                        int i11 = this.pos;
                        this.pos = i11 + 1;
                        bArr9[i11] = (byte) ((int) ((this.bitWorkArea >> 7) & 255));
                        return;
                    case 4:
                        this.bitWorkArea >>= 4;
                        byte[] bArr10 = this.buffer;
                        int i12 = this.pos;
                        this.pos = i12 + 1;
                        bArr10[i12] = (byte) ((int) ((this.bitWorkArea >> 8) & 255));
                        byte[] bArr11 = this.buffer;
                        int i13 = this.pos;
                        this.pos = i13 + 1;
                        bArr11[i13] = (byte) ((int) (this.bitWorkArea & 255));
                        return;
                    case 5:
                        this.bitWorkArea >>= 1;
                        byte[] bArr12 = this.buffer;
                        int i14 = this.pos;
                        this.pos = i14 + 1;
                        bArr12[i14] = (byte) ((int) ((this.bitWorkArea >> 16) & 255));
                        byte[] bArr13 = this.buffer;
                        int i15 = this.pos;
                        this.pos = i15 + 1;
                        bArr13[i15] = (byte) ((int) ((this.bitWorkArea >> 8) & 255));
                        byte[] bArr14 = this.buffer;
                        int i16 = this.pos;
                        this.pos = i16 + 1;
                        bArr14[i16] = (byte) ((int) (this.bitWorkArea & 255));
                        return;
                    case 6:
                        this.bitWorkArea >>= 6;
                        byte[] bArr15 = this.buffer;
                        int i17 = this.pos;
                        this.pos = i17 + 1;
                        bArr15[i17] = (byte) ((int) ((this.bitWorkArea >> 16) & 255));
                        byte[] bArr16 = this.buffer;
                        int i18 = this.pos;
                        this.pos = i18 + 1;
                        bArr16[i18] = (byte) ((int) ((this.bitWorkArea >> 8) & 255));
                        byte[] bArr17 = this.buffer;
                        int i19 = this.pos;
                        this.pos = i19 + 1;
                        bArr17[i19] = (byte) ((int) (this.bitWorkArea & 255));
                        return;
                    case 7:
                        this.bitWorkArea >>= 3;
                        byte[] bArr18 = this.buffer;
                        int i20 = this.pos;
                        this.pos = i20 + 1;
                        bArr18[i20] = (byte) ((int) ((this.bitWorkArea >> 24) & 255));
                        byte[] bArr19 = this.buffer;
                        int i21 = this.pos;
                        this.pos = i21 + 1;
                        bArr19[i21] = (byte) ((int) ((this.bitWorkArea >> 16) & 255));
                        byte[] bArr20 = this.buffer;
                        int i22 = this.pos;
                        this.pos = i22 + 1;
                        bArr20[i22] = (byte) ((int) ((this.bitWorkArea >> 8) & 255));
                        byte[] bArr21 = this.buffer;
                        int i23 = this.pos;
                        this.pos = i23 + 1;
                        bArr21[i23] = (byte) ((int) (this.bitWorkArea & 255));
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v54, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v55, resolved type: byte} */
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
                        bArr2[i5] = this.encodeTable[((int) (this.bitWorkArea >> 3)) & 31];
                        byte[] bArr3 = this.buffer;
                        int i6 = this.pos;
                        this.pos = i6 + 1;
                        bArr3[i6] = this.encodeTable[((int) (this.bitWorkArea << 2)) & 31];
                        byte[] bArr4 = this.buffer;
                        int i7 = this.pos;
                        this.pos = i7 + 1;
                        bArr4[i7] = 61;
                        byte[] bArr5 = this.buffer;
                        int i8 = this.pos;
                        this.pos = i8 + 1;
                        bArr5[i8] = 61;
                        byte[] bArr6 = this.buffer;
                        int i9 = this.pos;
                        this.pos = i9 + 1;
                        bArr6[i9] = 61;
                        byte[] bArr7 = this.buffer;
                        int i10 = this.pos;
                        this.pos = i10 + 1;
                        bArr7[i10] = 61;
                        byte[] bArr8 = this.buffer;
                        int i11 = this.pos;
                        this.pos = i11 + 1;
                        bArr8[i11] = 61;
                        byte[] bArr9 = this.buffer;
                        int i12 = this.pos;
                        this.pos = i12 + 1;
                        bArr9[i12] = 61;
                    } else if (i4 == 2) {
                        byte[] bArr10 = this.buffer;
                        int i13 = this.pos;
                        this.pos = i13 + 1;
                        bArr10[i13] = this.encodeTable[((int) (this.bitWorkArea >> 11)) & 31];
                        byte[] bArr11 = this.buffer;
                        int i14 = this.pos;
                        this.pos = i14 + 1;
                        bArr11[i14] = this.encodeTable[((int) (this.bitWorkArea >> 6)) & 31];
                        byte[] bArr12 = this.buffer;
                        int i15 = this.pos;
                        this.pos = i15 + 1;
                        bArr12[i15] = this.encodeTable[((int) (this.bitWorkArea >> 1)) & 31];
                        byte[] bArr13 = this.buffer;
                        int i16 = this.pos;
                        this.pos = i16 + 1;
                        bArr13[i16] = this.encodeTable[((int) (this.bitWorkArea << 4)) & 31];
                        byte[] bArr14 = this.buffer;
                        int i17 = this.pos;
                        this.pos = i17 + 1;
                        bArr14[i17] = 61;
                        byte[] bArr15 = this.buffer;
                        int i18 = this.pos;
                        this.pos = i18 + 1;
                        bArr15[i18] = 61;
                        byte[] bArr16 = this.buffer;
                        int i19 = this.pos;
                        this.pos = i19 + 1;
                        bArr16[i19] = 61;
                        byte[] bArr17 = this.buffer;
                        int i20 = this.pos;
                        this.pos = i20 + 1;
                        bArr17[i20] = 61;
                    } else if (i4 == 3) {
                        byte[] bArr18 = this.buffer;
                        int i21 = this.pos;
                        this.pos = i21 + 1;
                        bArr18[i21] = this.encodeTable[((int) (this.bitWorkArea >> 19)) & 31];
                        byte[] bArr19 = this.buffer;
                        int i22 = this.pos;
                        this.pos = i22 + 1;
                        bArr19[i22] = this.encodeTable[((int) (this.bitWorkArea >> 14)) & 31];
                        byte[] bArr20 = this.buffer;
                        int i23 = this.pos;
                        this.pos = i23 + 1;
                        bArr20[i23] = this.encodeTable[((int) (this.bitWorkArea >> 9)) & 31];
                        byte[] bArr21 = this.buffer;
                        int i24 = this.pos;
                        this.pos = i24 + 1;
                        bArr21[i24] = this.encodeTable[((int) (this.bitWorkArea >> 4)) & 31];
                        byte[] bArr22 = this.buffer;
                        int i25 = this.pos;
                        this.pos = i25 + 1;
                        bArr22[i25] = this.encodeTable[((int) (this.bitWorkArea << 1)) & 31];
                        byte[] bArr23 = this.buffer;
                        int i26 = this.pos;
                        this.pos = i26 + 1;
                        bArr23[i26] = 61;
                        byte[] bArr24 = this.buffer;
                        int i27 = this.pos;
                        this.pos = i27 + 1;
                        bArr24[i27] = 61;
                        byte[] bArr25 = this.buffer;
                        int i28 = this.pos;
                        this.pos = i28 + 1;
                        bArr25[i28] = 61;
                    } else if (i4 == 4) {
                        byte[] bArr26 = this.buffer;
                        int i29 = this.pos;
                        this.pos = i29 + 1;
                        bArr26[i29] = this.encodeTable[((int) (this.bitWorkArea >> 27)) & 31];
                        byte[] bArr27 = this.buffer;
                        int i30 = this.pos;
                        this.pos = i30 + 1;
                        bArr27[i30] = this.encodeTable[((int) (this.bitWorkArea >> 22)) & 31];
                        byte[] bArr28 = this.buffer;
                        int i31 = this.pos;
                        this.pos = i31 + 1;
                        bArr28[i31] = this.encodeTable[((int) (this.bitWorkArea >> 17)) & 31];
                        byte[] bArr29 = this.buffer;
                        int i32 = this.pos;
                        this.pos = i32 + 1;
                        bArr29[i32] = this.encodeTable[((int) (this.bitWorkArea >> 12)) & 31];
                        byte[] bArr30 = this.buffer;
                        int i33 = this.pos;
                        this.pos = i33 + 1;
                        bArr30[i33] = this.encodeTable[((int) (this.bitWorkArea >> 7)) & 31];
                        byte[] bArr31 = this.buffer;
                        int i34 = this.pos;
                        this.pos = i34 + 1;
                        bArr31[i34] = this.encodeTable[((int) (this.bitWorkArea >> 2)) & 31];
                        byte[] bArr32 = this.buffer;
                        int i35 = this.pos;
                        this.pos = i35 + 1;
                        bArr32[i35] = this.encodeTable[((int) (this.bitWorkArea << 3)) & 31];
                        byte[] bArr33 = this.buffer;
                        int i36 = this.pos;
                        this.pos = i36 + 1;
                        bArr33[i36] = 61;
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
            int i37 = i;
            int i38 = 0;
            while (i38 < i2) {
                ensureBufferSize(this.encodeSize);
                this.modulus = (this.modulus + 1) % 5;
                int i39 = i37 + 1;
                byte b2 = bArr[i37];
                int i40 = b2;
                if (b2 < 0) {
                    i40 = b2 + 256;
                }
                this.bitWorkArea = (this.bitWorkArea << 8) + ((long) i40);
                if (this.modulus == 0) {
                    byte[] bArr34 = this.buffer;
                    int i41 = this.pos;
                    this.pos = i41 + 1;
                    bArr34[i41] = this.encodeTable[((int) (this.bitWorkArea >> 35)) & 31];
                    byte[] bArr35 = this.buffer;
                    int i42 = this.pos;
                    this.pos = i42 + 1;
                    bArr35[i42] = this.encodeTable[((int) (this.bitWorkArea >> 30)) & 31];
                    byte[] bArr36 = this.buffer;
                    int i43 = this.pos;
                    this.pos = i43 + 1;
                    bArr36[i43] = this.encodeTable[((int) (this.bitWorkArea >> 25)) & 31];
                    byte[] bArr37 = this.buffer;
                    int i44 = this.pos;
                    this.pos = i44 + 1;
                    bArr37[i44] = this.encodeTable[((int) (this.bitWorkArea >> 20)) & 31];
                    byte[] bArr38 = this.buffer;
                    int i45 = this.pos;
                    this.pos = i45 + 1;
                    bArr38[i45] = this.encodeTable[((int) (this.bitWorkArea >> 15)) & 31];
                    byte[] bArr39 = this.buffer;
                    int i46 = this.pos;
                    this.pos = i46 + 1;
                    bArr39[i46] = this.encodeTable[((int) (this.bitWorkArea >> 10)) & 31];
                    byte[] bArr40 = this.buffer;
                    int i47 = this.pos;
                    this.pos = i47 + 1;
                    bArr40[i47] = this.encodeTable[((int) (this.bitWorkArea >> 5)) & 31];
                    byte[] bArr41 = this.buffer;
                    int i48 = this.pos;
                    this.pos = i48 + 1;
                    bArr41[i48] = this.encodeTable[((int) this.bitWorkArea) & 31];
                    this.currentLinePos += 8;
                    if (this.lineLength > 0 && this.lineLength <= this.currentLinePos) {
                        System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                        this.pos += this.lineSeparator.length;
                        this.currentLinePos = 0;
                    }
                }
                i38++;
                i37 = i39;
            }
        }
    }

    public boolean isInAlphabet(byte b2) {
        if (b2 >= 0) {
            byte[] bArr = this.decodeTable;
            return b2 < bArr.length && bArr[b2] != -1;
        }
    }
}
