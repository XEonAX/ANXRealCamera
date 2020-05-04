package com.google.protobuf;

import com.sensetime.stmobile.STMobileHumanActionNative;
import java.nio.ByteBuffer;

final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final Processor processor = (UnsafeProcessor.isAvailable() ? new UnsafeProcessor() : new SafeProcessor());

    static abstract class Processor {
        Processor() {
        }

        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i, int i2) {
            int access$200 = i + Utf8.estimateConsecutiveAscii(byteBuffer, i, i2);
            while (access$200 < i2) {
                int i3 = access$200 + 1;
                byte b2 = byteBuffer.get(access$200);
                if (b2 < 0) {
                    if (b2 < -32) {
                        if (i3 >= i2) {
                            return b2;
                        }
                        if (b2 < -62 || byteBuffer.get(i3) > -65) {
                            return -1;
                        }
                        i3++;
                    } else if (b2 < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.incompleteStateFor(byteBuffer, b2, i3, i2 - i3);
                        }
                        int i4 = i3 + 1;
                        byte b3 = byteBuffer.get(i3);
                        if (b3 > -65 || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || byteBuffer.get(i4) > -65))) {
                            return -1;
                        }
                        access$200 = i4 + 1;
                    } else if (i3 >= i2 - 2) {
                        return Utf8.incompleteStateFor(byteBuffer, b2, i3, i2 - i3);
                    } else {
                        int i5 = i3 + 1;
                        byte b4 = byteBuffer.get(i3);
                        if (b4 <= -65 && (((b2 << 28) + (b4 + 112)) >> 30) == 0) {
                            int i6 = i5 + 1;
                            if (byteBuffer.get(i5) <= -65) {
                                i3 = i6 + 1;
                                if (byteBuffer.get(i6) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                }
                access$200 = i3;
            }
            return 0;
        }

        /* access modifiers changed from: package-private */
        public abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2);

        /* access modifiers changed from: package-private */
        public final void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int arrayOffset = byteBuffer.arrayOffset();
                byteBuffer.position(Utf8.encode(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            } else if (byteBuffer.isDirect()) {
                encodeUtf8Direct(charSequence, byteBuffer);
            } else {
                encodeUtf8Default(charSequence, byteBuffer);
            }
        }

        /* access modifiers changed from: package-private */
        public final void encodeUtf8Default(CharSequence charSequence, ByteBuffer byteBuffer) {
            int i;
            int length = charSequence.length();
            int position = byteBuffer.position();
            int i2 = 0;
            while (i2 < length) {
                try {
                    char charAt = charSequence.charAt(i2);
                    if (charAt >= 128) {
                        break;
                    }
                    byteBuffer.put(position + i2, (byte) charAt);
                    i2++;
                } catch (IndexOutOfBoundsException unused) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (byteBuffer.position() + Math.max(i2, (position - byteBuffer.position()) + 1)));
                }
            }
            if (i2 == length) {
                byteBuffer.position(position + i2);
                return;
            }
            position += i2;
            while (i2 < length) {
                char charAt2 = charSequence.charAt(i2);
                if (charAt2 < 128) {
                    byteBuffer.put(position, (byte) charAt2);
                } else if (charAt2 < 2048) {
                    i = position + 1;
                    try {
                        byteBuffer.put(position, (byte) ((charAt2 >>> 6) | 192));
                        byteBuffer.put(i, (byte) ((charAt2 & '?') | 128));
                        position = i;
                    } catch (IndexOutOfBoundsException unused2) {
                        position = i;
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (byteBuffer.position() + Math.max(i2, (position - byteBuffer.position()) + 1)));
                    }
                } else if (charAt2 < 55296 || 57343 < charAt2) {
                    i = position + 1;
                    byteBuffer.put(position, (byte) ((charAt2 >>> 12) | 224));
                    position = i + 1;
                    byteBuffer.put(i, (byte) (((charAt2 >>> 6) & 63) | 128));
                    byteBuffer.put(position, (byte) ((charAt2 & '?') | 128));
                } else {
                    int i3 = i2 + 1;
                    if (i3 != length) {
                        try {
                            char charAt3 = charSequence.charAt(i3);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                int i4 = position + 1;
                                try {
                                    byteBuffer.put(position, (byte) ((codePoint >>> 18) | 240));
                                    position = i4 + 1;
                                    byteBuffer.put(i4, (byte) (((codePoint >>> 12) & 63) | 128));
                                    i4 = position + 1;
                                    byteBuffer.put(position, (byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put(i4, (byte) ((codePoint & 63) | 128));
                                    position = i4;
                                    i2 = i3;
                                } catch (IndexOutOfBoundsException unused3) {
                                    position = i4;
                                    i2 = i3;
                                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (byteBuffer.position() + Math.max(i2, (position - byteBuffer.position()) + 1)));
                                }
                            } else {
                                i2 = i3;
                            }
                        } catch (IndexOutOfBoundsException unused4) {
                            i2 = i3;
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (byteBuffer.position() + Math.max(i2, (position - byteBuffer.position()) + 1)));
                        }
                    }
                    throw new UnpairedSurrogateException(i2, length);
                }
                i2++;
                position++;
            }
            byteBuffer.position(position);
        }

        /* access modifiers changed from: package-private */
        public abstract void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer);

        /* access modifiers changed from: package-private */
        public final boolean isValidUtf8(ByteBuffer byteBuffer, int i, int i2) {
            return partialIsValidUtf8(0, byteBuffer, i, i2) == 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean isValidUtf8(byte[] bArr, int i, int i2) {
            return partialIsValidUtf8(0, bArr, i, i2) == 0;
        }

        /* access modifiers changed from: package-private */
        public final int partialIsValidUtf8(int i, ByteBuffer byteBuffer, int i2, int i3) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? partialIsValidUtf8Direct(i, byteBuffer, i2, i3) : partialIsValidUtf8Default(i, byteBuffer, i2, i3);
            }
            int arrayOffset = byteBuffer.arrayOffset();
            return partialIsValidUtf8(i, byteBuffer.array(), i2 + arrayOffset, arrayOffset + i3);
        }

        /* access modifiers changed from: package-private */
        public abstract int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3);

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0048, code lost:
            if (r8.get(r9) > -65) goto L_0x004a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:0x0086, code lost:
            if (r8.get(r7) > -65) goto L_0x0088;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0017, code lost:
            if (r8.get(r9) > -65) goto L_0x0019;
         */
        public final int partialIsValidUtf8Default(int i, ByteBuffer byteBuffer, int i2, int i3) {
            int i4;
            int i5;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b2 = (byte) i;
                if (b2 < -32) {
                    if (b2 >= -62) {
                        i4 = i2 + 1;
                    }
                    return -1;
                } else if (b2 < -16) {
                    byte b3 = (byte) (~(i >> 8));
                    if (b3 == 0) {
                        int i6 = i2 + 1;
                        byte b4 = byteBuffer.get(i2);
                        if (i6 >= i3) {
                            return Utf8.incompleteStateFor(b2, b4);
                        }
                        byte b5 = b4;
                        i2 = i6;
                        b3 = b5;
                    }
                    if (b3 <= -65 && ((b2 != -32 || b3 >= -96) && (b2 != -19 || b3 < -96))) {
                        i4 = i2 + 1;
                    }
                    return -1;
                } else {
                    byte b6 = (byte) (~(i >> 8));
                    byte b7 = 0;
                    if (b6 == 0) {
                        i5 = i2 + 1;
                        b6 = byteBuffer.get(i2);
                        if (i5 >= i3) {
                            return Utf8.incompleteStateFor(b2, b6);
                        }
                    } else {
                        b7 = (byte) (i >> 16);
                        i5 = i2;
                    }
                    if (b7 == 0) {
                        int i7 = i5 + 1;
                        b7 = byteBuffer.get(i5);
                        if (i7 >= i3) {
                            return Utf8.incompleteStateFor((int) b2, (int) b6, (int) b7);
                        }
                        i5 = i7;
                    }
                    if (b6 <= -65 && (((b2 << 28) + (b6 + 112)) >> 30) == 0 && b7 <= -65) {
                        i2 = i5 + 1;
                    }
                    return -1;
                }
                return partialIsValidUtf8(byteBuffer, i4, i3);
            }
            i4 = i2;
            return partialIsValidUtf8(byteBuffer, i4, i3);
        }

        /* access modifiers changed from: package-private */
        public abstract int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3);
    }

    static final class SafeProcessor extends Processor {
        SafeProcessor() {
        }

        private static int partialIsValidUtf8(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            if (i >= i2) {
                return 0;
            }
            return partialIsValidUtf8NonAscii(bArr, i, i2);
        }

        private static int partialIsValidUtf8NonAscii(byte[] bArr, int i, int i2) {
            while (i < i2) {
                int i3 = i + 1;
                byte b2 = bArr[i];
                if (b2 < 0) {
                    if (b2 < -32) {
                        if (i3 >= i2) {
                            return b2;
                        }
                        if (b2 >= -62) {
                            i = i3 + 1;
                            if (bArr[i3] > -65) {
                            }
                        }
                        return -1;
                    } else if (b2 < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.incompleteStateFor(bArr, i3, i2);
                        }
                        int i4 = i3 + 1;
                        byte b3 = bArr[i3];
                        if (b3 <= -65 && ((b2 != -32 || b3 >= -96) && (b2 != -19 || b3 < -96))) {
                            i = i4 + 1;
                            if (bArr[i4] > -65) {
                            }
                        }
                        return -1;
                    } else if (i3 >= i2 - 2) {
                        return Utf8.incompleteStateFor(bArr, i3, i2);
                    } else {
                        int i5 = i3 + 1;
                        byte b4 = bArr[i3];
                        if (b4 <= -65 && (((b2 << 28) + (b4 + 112)) >> 30) == 0) {
                            int i6 = i5 + 1;
                            if (bArr[i5] <= -65) {
                                i3 = i6 + 1;
                                if (bArr[i6] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                }
                i = i3;
            }
            return 0;
        }

        /* access modifiers changed from: package-private */
        public int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2) {
            int i3;
            int length = charSequence.length();
            int i4 = i2 + i;
            int i5 = 0;
            while (i5 < length) {
                int i6 = i5 + i;
                if (i6 >= i4) {
                    break;
                }
                char charAt = charSequence.charAt(i5);
                if (charAt >= 128) {
                    break;
                }
                bArr[i6] = (byte) charAt;
                i5++;
            }
            if (i5 == length) {
                return i + length;
            }
            int i7 = i + i5;
            while (i5 < length) {
                char charAt2 = charSequence.charAt(i5);
                if (charAt2 < 128 && i7 < i4) {
                    i3 = i7 + 1;
                    bArr[i7] = (byte) charAt2;
                } else if (charAt2 < 2048 && i7 <= i4 - 2) {
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                    i7 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 & '?') | 128);
                    i5++;
                } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i4 - 3) {
                    int i9 = i7 + 1;
                    bArr[i7] = (byte) ((charAt2 >>> 12) | 480);
                    int i10 = i9 + 1;
                    bArr[i9] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i3 = i10 + 1;
                    bArr[i10] = (byte) ((charAt2 & '?') | 128);
                } else if (i7 <= i4 - 4) {
                    int i11 = i5 + 1;
                    if (i11 != charSequence.length()) {
                        char charAt3 = charSequence.charAt(i11);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i12 = i7 + 1;
                            bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                            int i13 = i12 + 1;
                            bArr[i12] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i14 = i13 + 1;
                            bArr[i13] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i7 = i14 + 1;
                            bArr[i14] = (byte) ((codePoint & 63) | 128);
                            i5 = i11;
                            i5++;
                        } else {
                            i5 = i11;
                        }
                    }
                    throw new UnpairedSurrogateException(i5 - 1, length);
                } else {
                    if (55296 <= charAt2 && charAt2 <= 57343) {
                        int i15 = i5 + 1;
                        if (i15 == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i15))) {
                            throw new UnpairedSurrogateException(i5, length);
                        }
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i7);
                }
                i7 = i3;
                i5++;
            }
            return i7;
        }

        /* access modifiers changed from: package-private */
        public void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            encodeUtf8Default(charSequence, byteBuffer);
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0042, code lost:
            if (r8[r9] > -65) goto L_0x0044;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:0x007a, code lost:
            if (r8[r7] > -65) goto L_0x007c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0015, code lost:
            if (r8[r9] > -65) goto L_0x0017;
         */
        public int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
            int i4;
            int i5;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b2 = (byte) i;
                if (b2 < -32) {
                    if (b2 >= -62) {
                        i4 = i2 + 1;
                    }
                    return -1;
                } else if (b2 < -16) {
                    byte b3 = (byte) (~(i >> 8));
                    if (b3 == 0) {
                        int i6 = i2 + 1;
                        byte b4 = bArr[i2];
                        if (i6 >= i3) {
                            return Utf8.incompleteStateFor(b2, b4);
                        }
                        byte b5 = b4;
                        i2 = i6;
                        b3 = b5;
                    }
                    if (b3 <= -65 && ((b2 != -32 || b3 >= -96) && (b2 != -19 || b3 < -96))) {
                        i4 = i2 + 1;
                    }
                    return -1;
                } else {
                    byte b6 = (byte) (~(i >> 8));
                    byte b7 = 0;
                    if (b6 == 0) {
                        i5 = i2 + 1;
                        b6 = bArr[i2];
                        if (i5 >= i3) {
                            return Utf8.incompleteStateFor(b2, b6);
                        }
                    } else {
                        b7 = (byte) (i >> 16);
                        i5 = i2;
                    }
                    if (b7 == 0) {
                        int i7 = i5 + 1;
                        b7 = bArr[i5];
                        if (i7 >= i3) {
                            return Utf8.incompleteStateFor((int) b2, (int) b6, (int) b7);
                        }
                        i5 = i7;
                    }
                    if (b6 <= -65 && (((b2 << 28) + (b6 + 112)) >> 30) == 0 && b7 <= -65) {
                        i2 = i5 + 1;
                    }
                    return -1;
                }
                return partialIsValidUtf8(bArr, i4, i3);
            }
            i4 = i2;
            return partialIsValidUtf8(bArr, i4, i3);
        }

        /* access modifiers changed from: package-private */
        public int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3) {
            return partialIsValidUtf8Default(i, byteBuffer, i2, i3);
        }
    }

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    static final class UnsafeProcessor extends Processor {
        UnsafeProcessor() {
        }

        static boolean isAvailable() {
            return UnsafeUtil.hasUnsafeArrayOperations() && UnsafeUtil.hasUnsafeByteBufferOperations();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0039, code lost:
            return -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:36:0x0063, code lost:
            return -1;
         */
        private static int partialIsValidUtf8(long j, int i) {
            long j2;
            int unsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(j, i);
            long j3 = j + ((long) unsafeEstimateConsecutiveAscii);
            int i2 = i - unsafeEstimateConsecutiveAscii;
            while (true) {
                byte b2 = 0;
                while (true) {
                    if (i2 <= 0) {
                        break;
                    }
                    long j4 = j3 + 1;
                    b2 = UnsafeUtil.getByte(j3);
                    if (b2 < 0) {
                        j3 = j4;
                        break;
                    }
                    i2--;
                    j3 = j4;
                }
                if (i2 == 0) {
                    return 0;
                }
                int i3 = i2 - 1;
                if (b2 >= -32) {
                    if (b2 >= -16) {
                        if (i3 >= 3) {
                            i2 = i3 - 3;
                            long j5 = j3 + 1;
                            byte b3 = UnsafeUtil.getByte(j3);
                            if (b3 > -65 || (((b2 << 28) + (b3 + 112)) >> 30) != 0) {
                                break;
                            }
                            long j6 = j5 + 1;
                            if (UnsafeUtil.getByte(j5) > -65) {
                                break;
                            }
                            j2 = 1 + j6;
                            if (UnsafeUtil.getByte(j6) > -65) {
                                break;
                            }
                        } else {
                            return unsafeIncompleteStateFor(j3, b2, i3);
                        }
                    } else if (i3 >= 2) {
                        i2 = i3 - 2;
                        long j7 = j3 + 1;
                        byte b4 = UnsafeUtil.getByte(j3);
                        if (b4 > -65 || ((b2 == -32 && b4 < -96) || (b2 == -19 && b4 >= -96))) {
                            break;
                        }
                        j2 = 1 + j7;
                        if (UnsafeUtil.getByte(j7) > -65) {
                            break;
                        }
                    } else {
                        return unsafeIncompleteStateFor(j3, b2, i3);
                    }
                } else if (i3 != 0) {
                    i2 = i3 - 1;
                    if (b2 < -62) {
                        break;
                    }
                    j2 = 1 + j3;
                    if (UnsafeUtil.getByte(j3) > -65) {
                        break;
                    }
                } else {
                    return b2;
                }
                j3 = j2;
            }
            return -1;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0039, code lost:
            return -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:36:0x0063, code lost:
            return -1;
         */
        private static int partialIsValidUtf8(byte[] bArr, long j, int i) {
            long j2;
            int unsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(bArr, j, i);
            int i2 = i - unsafeEstimateConsecutiveAscii;
            long j3 = j + ((long) unsafeEstimateConsecutiveAscii);
            while (true) {
                byte b2 = 0;
                while (true) {
                    if (i2 <= 0) {
                        break;
                    }
                    long j4 = j3 + 1;
                    b2 = UnsafeUtil.getByte(bArr, j3);
                    if (b2 < 0) {
                        j3 = j4;
                        break;
                    }
                    i2--;
                    j3 = j4;
                }
                if (i2 == 0) {
                    return 0;
                }
                int i3 = i2 - 1;
                if (b2 >= -32) {
                    if (b2 >= -16) {
                        if (i3 >= 3) {
                            i2 = i3 - 3;
                            long j5 = j3 + 1;
                            byte b3 = UnsafeUtil.getByte(bArr, j3);
                            if (b3 > -65 || (((b2 << 28) + (b3 + 112)) >> 30) != 0) {
                                break;
                            }
                            long j6 = j5 + 1;
                            if (UnsafeUtil.getByte(bArr, j5) > -65) {
                                break;
                            }
                            j2 = 1 + j6;
                            if (UnsafeUtil.getByte(bArr, j6) > -65) {
                                break;
                            }
                        } else {
                            return unsafeIncompleteStateFor(bArr, b2, j3, i3);
                        }
                    } else if (i3 >= 2) {
                        i2 = i3 - 2;
                        long j7 = j3 + 1;
                        byte b4 = UnsafeUtil.getByte(bArr, j3);
                        if (b4 > -65 || ((b2 == -32 && b4 < -96) || (b2 == -19 && b4 >= -96))) {
                            break;
                        }
                        j2 = 1 + j7;
                        if (UnsafeUtil.getByte(bArr, j7) > -65) {
                            break;
                        }
                    } else {
                        return unsafeIncompleteStateFor(bArr, b2, j3, i3);
                    }
                } else if (i3 != 0) {
                    i2 = i3 - 1;
                    if (b2 < -62) {
                        break;
                    }
                    j2 = 1 + j3;
                    if (UnsafeUtil.getByte(bArr, j3) > -65) {
                        break;
                    }
                } else {
                    return b2;
                }
                j3 = j2;
            }
            return -1;
        }

        private static int unsafeEstimateConsecutiveAscii(long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = ((int) j) & 7;
            long j2 = j;
            int i3 = i2;
            while (i3 > 0) {
                long j3 = 1 + j2;
                if (UnsafeUtil.getByte(j2) < 0) {
                    return i2 - i3;
                }
                i3--;
                j2 = j3;
            }
            int i4 = i - i2;
            while (i4 >= 8 && (UnsafeUtil.getLong(j2) & Utf8.ASCII_MASK_LONG) == 0) {
                j2 += 8;
                i4 -= 8;
            }
            return i - i4;
        }

        private static int unsafeEstimateConsecutiveAscii(byte[] bArr, long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = ((int) j) & 7;
            long j2 = j;
            int i3 = i2;
            while (i3 > 0) {
                long j3 = 1 + j2;
                if (UnsafeUtil.getByte(bArr, j2) < 0) {
                    return i2 - i3;
                }
                i3--;
                j2 = j3;
            }
            int i4 = i - i2;
            while (i4 >= 8 && (UnsafeUtil.getLong(bArr, j2) & Utf8.ASCII_MASK_LONG) == 0) {
                j2 += 8;
                i4 -= 8;
            }
            return i - i4;
        }

        private static int unsafeIncompleteStateFor(long j, int i, int i2) {
            if (i2 == 0) {
                return Utf8.incompleteStateFor(i);
            }
            if (i2 == 1) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(j));
            }
            if (i2 == 2) {
                return Utf8.incompleteStateFor(i, (int) UnsafeUtil.getByte(j), (int) UnsafeUtil.getByte(j + 1));
            }
            throw new AssertionError();
        }

        private static int unsafeIncompleteStateFor(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                return Utf8.incompleteStateFor(i);
            }
            if (i2 == 1) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j));
            }
            if (i2 == 2) {
                return Utf8.incompleteStateFor(i, (int) UnsafeUtil.getByte(bArr, j), (int) UnsafeUtil.getByte(bArr, j + 1));
            }
            throw new AssertionError();
        }

        /* access modifiers changed from: package-private */
        public int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2) {
            char c;
            long j;
            long arrayBaseOffset;
            long j2;
            char c2;
            long j3;
            CharSequence charSequence2 = charSequence;
            byte[] bArr2 = bArr;
            int i3 = i;
            int i4 = i2;
            long arrayBaseOffset2 = UnsafeUtil.getArrayBaseOffset() + ((long) i3);
            long j4 = ((long) i4) + arrayBaseOffset2;
            int length = charSequence.length();
            if (length > i4 || bArr2.length - i4 < i3) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence2.charAt(length - 1) + " at index " + (i3 + i4));
            }
            int i5 = 0;
            while (true) {
                c = 128;
                j = 1;
                if (i5 >= length) {
                    break;
                }
                char charAt = charSequence2.charAt(i5);
                if (charAt >= 128) {
                    break;
                }
                UnsafeUtil.putByte(bArr2, arrayBaseOffset2, (byte) charAt);
                i5++;
                arrayBaseOffset2 = 1 + arrayBaseOffset2;
            }
            if (i5 == length) {
                arrayBaseOffset = UnsafeUtil.getArrayBaseOffset();
            } else {
                while (i5 < length) {
                    char charAt2 = charSequence2.charAt(i5);
                    if (charAt2 < c && arrayBaseOffset2 < j4) {
                        long j5 = arrayBaseOffset2 + j;
                        UnsafeUtil.putByte(bArr2, arrayBaseOffset2, (byte) charAt2);
                        j3 = j;
                        j2 = j5;
                        c2 = c;
                    } else if (charAt2 < 2048 && arrayBaseOffset2 <= j4 - 2) {
                        long j6 = arrayBaseOffset2 + j;
                        UnsafeUtil.putByte(bArr2, arrayBaseOffset2, (byte) ((charAt2 >>> 6) | 960));
                        long j7 = j6 + j;
                        UnsafeUtil.putByte(bArr2, j6, (byte) ((charAt2 & '?') | 128));
                        long j8 = j;
                        c2 = 128;
                        j2 = j7;
                        j3 = j8;
                    } else if ((charAt2 < 55296 || 57343 < charAt2) && arrayBaseOffset2 <= j4 - 3) {
                        long j9 = arrayBaseOffset2 + j;
                        UnsafeUtil.putByte(bArr2, arrayBaseOffset2, (byte) ((charAt2 >>> 12) | 480));
                        long j10 = j9 + j;
                        UnsafeUtil.putByte(bArr2, j9, (byte) (((charAt2 >>> 6) & 63) | 128));
                        UnsafeUtil.putByte(bArr2, j10, (byte) ((charAt2 & '?') | 128));
                        j2 = j10 + 1;
                        j3 = 1;
                        c2 = 128;
                    } else if (arrayBaseOffset2 <= j4 - 4) {
                        int i6 = i5 + 1;
                        if (i6 != length) {
                            char charAt3 = charSequence2.charAt(i6);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                long j11 = arrayBaseOffset2 + 1;
                                UnsafeUtil.putByte(bArr2, arrayBaseOffset2, (byte) ((codePoint >>> 18) | 240));
                                long j12 = j11 + 1;
                                c2 = 128;
                                UnsafeUtil.putByte(bArr2, j11, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j13 = j12 + 1;
                                UnsafeUtil.putByte(bArr2, j12, (byte) (((codePoint >>> 6) & 63) | 128));
                                j3 = 1;
                                j2 = j13 + 1;
                                UnsafeUtil.putByte(bArr2, j13, (byte) ((codePoint & 63) | 128));
                                i5 = i6;
                            } else {
                                i5 = i6;
                            }
                        }
                        throw new UnpairedSurrogateException(i5 - 1, length);
                    } else {
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            int i7 = i5 + 1;
                            if (i7 == length || !Character.isSurrogatePair(charAt2, charSequence2.charAt(i7))) {
                                throw new UnpairedSurrogateException(i5, length);
                            }
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + arrayBaseOffset2);
                    }
                    i5++;
                    c = c2;
                    long j14 = j3;
                    arrayBaseOffset2 = j2;
                    j = j14;
                }
                arrayBaseOffset = UnsafeUtil.getArrayBaseOffset();
            }
            return (int) (arrayBaseOffset2 - arrayBaseOffset);
        }

        /* access modifiers changed from: package-private */
        public void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            long j;
            char c;
            long j2;
            long j3;
            char c2;
            int i;
            CharSequence charSequence2 = charSequence;
            ByteBuffer byteBuffer2 = byteBuffer;
            long addressOffset = UnsafeUtil.addressOffset(byteBuffer);
            long position = ((long) byteBuffer.position()) + addressOffset;
            long limit = ((long) byteBuffer.limit()) + addressOffset;
            int length = charSequence.length();
            if (((long) length) <= limit - position) {
                int i2 = 0;
                while (true) {
                    c = 128;
                    if (i2 >= length) {
                        break;
                    }
                    char charAt = charSequence2.charAt(i2);
                    if (charAt >= 128) {
                        break;
                    }
                    UnsafeUtil.putByte(j, (byte) charAt);
                    i2++;
                    position = j + 1;
                }
                if (i2 == length) {
                    byteBuffer2.position((int) (j - addressOffset));
                    return;
                }
                while (i2 < length) {
                    char charAt2 = charSequence2.charAt(i2);
                    if (charAt2 >= c || j >= limit) {
                        if (charAt2 >= 2048 || j > limit - 2) {
                            j3 = addressOffset;
                            if ((charAt2 < 55296 || 57343 < charAt2) && j <= limit - 3) {
                                long j4 = j + 1;
                                UnsafeUtil.putByte(j, (byte) ((charAt2 >>> 12) | 480));
                                long j5 = j4 + 1;
                                UnsafeUtil.putByte(j4, (byte) (((charAt2 >>> 6) & 63) | 128));
                                UnsafeUtil.putByte(j5, (byte) ((charAt2 & '?') | 128));
                                j = j5 + 1;
                            } else if (j <= limit - 4) {
                                i = i2 + 1;
                                if (i != length) {
                                    char charAt3 = charSequence2.charAt(i);
                                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                                        j2 = limit;
                                        long j6 = j + 1;
                                        UnsafeUtil.putByte(j, (byte) ((codePoint >>> 18) | 240));
                                        long j7 = j6 + 1;
                                        c2 = 128;
                                        UnsafeUtil.putByte(j6, (byte) (((codePoint >>> 12) & 63) | 128));
                                        long j8 = j7 + 1;
                                        UnsafeUtil.putByte(j7, (byte) (((codePoint >>> 6) & 63) | 128));
                                        UnsafeUtil.putByte(j8, (byte) ((codePoint & 63) | 128));
                                        j = j8 + 1;
                                    }
                                } else {
                                    i = i2;
                                }
                                throw new UnpairedSurrogateException(i - 1, length);
                            } else {
                                if (55296 <= charAt2 && charAt2 <= 57343) {
                                    int i3 = i2 + 1;
                                    if (i3 == length || !Character.isSurrogatePair(charAt2, charSequence2.charAt(i3))) {
                                        throw new UnpairedSurrogateException(i2, length);
                                    }
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j);
                            }
                        } else {
                            j3 = addressOffset;
                            long j9 = j + 1;
                            UnsafeUtil.putByte(j, (byte) ((charAt2 >>> 6) | 960));
                            UnsafeUtil.putByte(j9, (byte) ((charAt2 & '?') | 128));
                            j = j9 + 1;
                        }
                        j2 = limit;
                        i = i2;
                        c2 = 128;
                    } else {
                        UnsafeUtil.putByte(j, (byte) charAt2);
                        j2 = limit;
                        i = i2;
                        c2 = c;
                        j++;
                        j3 = addressOffset;
                    }
                    c = c2;
                    addressOffset = j3;
                    limit = j2;
                    i2 = i + 1;
                    ByteBuffer byteBuffer3 = byteBuffer;
                }
                byteBuffer.position((int) (j - addressOffset));
                return;
            }
            throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence2.charAt(length - 1) + " at index " + byteBuffer.limit());
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x002f, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r13, r2) > -65) goto L_0x0031;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x0060, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r13, r2) > -65) goto L_0x0062;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:52:0x00a2, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r13, r2) > -65) goto L_0x00a4;
         */
        public int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
            long j;
            byte b2 = 0;
            if ((i2 | i3 | (bArr.length - i3)) >= 0) {
                long arrayBaseOffset = UnsafeUtil.getArrayBaseOffset() + ((long) i2);
                long arrayBaseOffset2 = UnsafeUtil.getArrayBaseOffset() + ((long) i3);
                if (i == 0) {
                    j = arrayBaseOffset;
                } else if (arrayBaseOffset >= arrayBaseOffset2) {
                    return i;
                } else {
                    byte b3 = (byte) i;
                    if (b3 < -32) {
                        if (b3 >= -62) {
                            j = arrayBaseOffset + 1;
                        }
                        return -1;
                    } else if (b3 < -16) {
                        byte b4 = (byte) (~(i >> 8));
                        if (b4 == 0) {
                            long j2 = arrayBaseOffset + 1;
                            b4 = UnsafeUtil.getByte(bArr, arrayBaseOffset);
                            if (j2 >= arrayBaseOffset2) {
                                return Utf8.incompleteStateFor(b3, b4);
                            }
                            arrayBaseOffset = j2;
                        }
                        if (b4 <= -65 && ((b3 != -32 || b4 >= -96) && (b3 != -19 || b4 < -96))) {
                            j = arrayBaseOffset + 1;
                        }
                        return -1;
                    } else {
                        byte b5 = (byte) (~(i >> 8));
                        if (b5 == 0) {
                            long j3 = arrayBaseOffset + 1;
                            b5 = UnsafeUtil.getByte(bArr, arrayBaseOffset);
                            if (j3 >= arrayBaseOffset2) {
                                return Utf8.incompleteStateFor(b3, b5);
                            }
                            arrayBaseOffset = j3;
                        } else {
                            b2 = (byte) (i >> 16);
                        }
                        if (b2 == 0) {
                            long j4 = arrayBaseOffset + 1;
                            b2 = UnsafeUtil.getByte(bArr, arrayBaseOffset);
                            if (j4 >= arrayBaseOffset2) {
                                return Utf8.incompleteStateFor((int) b3, (int) b5, (int) b2);
                            }
                            arrayBaseOffset = j4;
                        }
                        if (b5 <= -65 && (((b3 << 28) + (b5 + 112)) >> 30) == 0 && b2 <= -65) {
                            j = arrayBaseOffset + 1;
                        }
                        return -1;
                    }
                }
                return partialIsValidUtf8(bArr, j, (int) (arrayBaseOffset2 - j));
            }
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)}));
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x002f, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r2) > -65) goto L_0x0031;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x0060, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r2) > -65) goto L_0x0062;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:52:0x00a2, code lost:
            if (com.google.protobuf.UnsafeUtil.getByte(r2) > -65) goto L_0x00a4;
         */
        public int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3) {
            long j;
            byte b2 = 0;
            if ((i2 | i3 | (byteBuffer.limit() - i3)) >= 0) {
                long addressOffset = UnsafeUtil.addressOffset(byteBuffer) + ((long) i2);
                long j2 = ((long) (i3 - i2)) + addressOffset;
                if (i == 0) {
                    j = addressOffset;
                } else if (addressOffset >= j2) {
                    return i;
                } else {
                    byte b3 = (byte) i;
                    if (b3 < -32) {
                        if (b3 >= -62) {
                            j = addressOffset + 1;
                        }
                        return -1;
                    } else if (b3 < -16) {
                        byte b4 = (byte) (~(i >> 8));
                        if (b4 == 0) {
                            long j3 = addressOffset + 1;
                            b4 = UnsafeUtil.getByte(addressOffset);
                            if (j3 >= j2) {
                                return Utf8.incompleteStateFor(b3, b4);
                            }
                            addressOffset = j3;
                        }
                        if (b4 <= -65 && ((b3 != -32 || b4 >= -96) && (b3 != -19 || b4 < -96))) {
                            j = addressOffset + 1;
                        }
                        return -1;
                    } else {
                        byte b5 = (byte) (~(i >> 8));
                        if (b5 == 0) {
                            long j4 = addressOffset + 1;
                            b5 = UnsafeUtil.getByte(addressOffset);
                            if (j4 >= j2) {
                                return Utf8.incompleteStateFor(b3, b5);
                            }
                            addressOffset = j4;
                        } else {
                            b2 = (byte) (i >> 16);
                        }
                        if (b2 == 0) {
                            long j5 = addressOffset + 1;
                            b2 = UnsafeUtil.getByte(addressOffset);
                            if (j5 >= j2) {
                                return Utf8.incompleteStateFor((int) b3, (int) b5, (int) b2);
                            }
                            addressOffset = j5;
                        }
                        if (b5 <= -65 && (((b3 << 28) + (b5 + 112)) >> 30) == 0 && b2 <= -65) {
                            j = addressOffset + 1;
                        }
                        return -1;
                    }
                }
                return partialIsValidUtf8(j, (int) (j2 - j));
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", new Object[]{Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i2), Integer.valueOf(i3)}));
        }
    }

    private Utf8() {
    }

    static int encode(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return processor.encodeUtf8(charSequence, bArr, i, i2);
    }

    static void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.encodeUtf8(charSequence, byteBuffer);
    }

    static int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = length;
        while (true) {
            if (i >= length) {
                break;
            }
            char charAt = charSequence.charAt(i);
            if (charAt >= 2048) {
                i2 += encodedLengthGeneral(charSequence, i);
                break;
            }
            i2 += (127 - charAt) >>> 31;
            i++;
        }
        if (i2 >= length) {
            return i2;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i2) + STMobileHumanActionNative.ST_MOBILE_BODY_ACTION1));
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 2048) {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i) >= 65536) {
                        i++;
                    } else {
                        throw new UnpairedSurrogateException(i, length);
                    }
                }
            }
            i++;
        }
        return i2;
    }

    /* access modifiers changed from: private */
    public static int estimateConsecutiveAscii(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 - 7;
        int i4 = i;
        while (i4 < i3 && (byteBuffer.getLong(i4) & ASCII_MASK_LONG) == 0) {
            i4 += 8;
        }
        return i4 - i;
    }

    /* access modifiers changed from: private */
    public static int incompleteStateFor(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    /* access modifiers changed from: private */
    public static int incompleteStateFor(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* access modifiers changed from: private */
    public static int incompleteStateFor(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* access modifiers changed from: private */
    public static int incompleteStateFor(ByteBuffer byteBuffer, int i, int i2, int i3) {
        if (i3 == 0) {
            return incompleteStateFor(i);
        }
        if (i3 == 1) {
            return incompleteStateFor(i, byteBuffer.get(i2));
        }
        if (i3 == 2) {
            return incompleteStateFor(i, (int) byteBuffer.get(i2), (int) byteBuffer.get(i2 + 1));
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: private */
    public static int incompleteStateFor(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return incompleteStateFor(b2);
        }
        if (i3 == 1) {
            return incompleteStateFor(b2, bArr[i]);
        }
        if (i3 == 2) {
            return incompleteStateFor((int) b2, (int) bArr[i], (int) bArr[i + 1]);
        }
        throw new AssertionError();
    }

    static boolean isValidUtf8(ByteBuffer byteBuffer) {
        return processor.isValidUtf8(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return processor.isValidUtf8(bArr, 0, bArr.length);
    }

    public static boolean isValidUtf8(byte[] bArr, int i, int i2) {
        return processor.isValidUtf8(bArr, i, i2);
    }

    static int partialIsValidUtf8(int i, ByteBuffer byteBuffer, int i2, int i3) {
        return processor.partialIsValidUtf8(i, byteBuffer, i2, i3);
    }

    public static int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
        return processor.partialIsValidUtf8(i, bArr, i2, i3);
    }
}
