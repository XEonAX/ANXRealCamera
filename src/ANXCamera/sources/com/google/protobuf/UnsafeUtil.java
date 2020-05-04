package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

final class UnsafeUtil {
    private static final long ARRAY_BASE_OFFSET = ((long) byteArrayBaseOffset());
    private static final long BUFFER_ADDRESS_OFFSET = fieldOffset(field(Buffer.class, "address"));
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = supportsUnsafeArrayOperations();
    private static final boolean HAS_UNSAFE_BYTEBUFFER_OPERATIONS = supportsUnsafeByteBufferOperations();
    private static final Unsafe UNSAFE = getUnsafe();

    private UnsafeUtil() {
    }

    static long addressOffset(ByteBuffer byteBuffer) {
        return UNSAFE.getLong(byteBuffer, BUFFER_ADDRESS_OFFSET);
    }

    static Object allocateInstance(Class<?> cls) {
        try {
            return UNSAFE.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        }
    }

    private static int byteArrayBaseOffset() {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return UNSAFE.arrayBaseOffset(byte[].class);
        }
        return -1;
    }

    static void copyMemory(long j, long j2, long j3) {
        UNSAFE.copyMemory(j, j2, j3);
    }

    static void copyMemory(Object obj, long j, Object obj2, long j2, long j3) {
        UNSAFE.copyMemory(obj, j, obj2, j2, j3);
    }

    private static Field field(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long fieldOffset(Field field) {
        if (field != null) {
            Unsafe unsafe = UNSAFE;
            if (unsafe != null) {
                return unsafe.objectFieldOffset(field);
            }
        }
        return -1;
    }

    static long getArrayBaseOffset() {
        return ARRAY_BASE_OFFSET;
    }

    static boolean getBoolean(Object obj, long j) {
        return UNSAFE.getBoolean(obj, j);
    }

    static byte getByte(long j) {
        return UNSAFE.getByte(j);
    }

    static byte getByte(Object obj, long j) {
        return UNSAFE.getByte(obj, j);
    }

    static double getDouble(Object obj, long j) {
        return UNSAFE.getDouble(obj, j);
    }

    static float getFloat(Object obj, long j) {
        return UNSAFE.getFloat(obj, j);
    }

    static int getInt(long j) {
        return UNSAFE.getInt(j);
    }

    static int getInt(Object obj, long j) {
        return UNSAFE.getInt(obj, j);
    }

    static long getLong(long j) {
        return UNSAFE.getLong(j);
    }

    static long getLong(Object obj, long j) {
        return UNSAFE.getLong(obj, j);
    }

    static Object getObject(Object obj, long j) {
        return UNSAFE.getObject(obj, j);
    }

    private static Unsafe getUnsafe() {
        try {
            return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() {
                public Unsafe run() throws Exception {
                    Class<Unsafe> cls = Unsafe.class;
                    for (Field field : cls.getDeclaredFields()) {
                        field.setAccessible(true);
                        Object obj = field.get((Object) null);
                        if (cls.isInstance(obj)) {
                            return cls.cast(obj);
                        }
                    }
                    return null;
                }
            });
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean hasUnsafeArrayOperations() {
        return HAS_UNSAFE_ARRAY_OPERATIONS;
    }

    static boolean hasUnsafeByteBufferOperations() {
        return HAS_UNSAFE_BYTEBUFFER_OPERATIONS;
    }

    static long objectFieldOffset(Field field) {
        return UNSAFE.objectFieldOffset(field);
    }

    static void putBoolean(Object obj, long j, boolean z) {
        UNSAFE.putBoolean(obj, j, z);
    }

    static void putByte(long j, byte b2) {
        UNSAFE.putByte(j, b2);
    }

    static void putByte(Object obj, long j, byte b2) {
        UNSAFE.putByte(obj, j, b2);
    }

    static void putDouble(Object obj, long j, double d) {
        UNSAFE.putDouble(obj, j, d);
    }

    static void putFloat(Object obj, long j, float f) {
        UNSAFE.putFloat(obj, j, f);
    }

    static void putInt(long j, int i) {
        UNSAFE.putInt(j, i);
    }

    static void putInt(Object obj, long j, int i) {
        UNSAFE.putInt(obj, j, i);
    }

    static void putLong(long j, long j2) {
        UNSAFE.putLong(j, j2);
    }

    static void putLong(Object obj, long j, long j2) {
        UNSAFE.putLong(obj, j, j2);
    }

    static void putObject(Object obj, long j, Object obj2) {
        UNSAFE.putObject(obj, j, obj2);
    }

    static void setMemory(long j, long j2, byte b2) {
        UNSAFE.setMemory(j, j2, b2);
    }

    private static boolean supportsUnsafeArrayOperations() {
        Unsafe unsafe = UNSAFE;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", new Class[]{Field.class});
                cls.getMethod("allocateInstance", new Class[]{Class.class});
                cls.getMethod("arrayBaseOffset", new Class[]{Class.class});
                cls.getMethod("getByte", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("putByte", new Class[]{Object.class, Long.TYPE, Byte.TYPE});
                cls.getMethod("getBoolean", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("putBoolean", new Class[]{Object.class, Long.TYPE, Boolean.TYPE});
                cls.getMethod("getInt", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("putInt", new Class[]{Object.class, Long.TYPE, Integer.TYPE});
                cls.getMethod("getLong", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("putLong", new Class[]{Object.class, Long.TYPE, Long.TYPE});
                cls.getMethod("getFloat", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("putFloat", new Class[]{Object.class, Long.TYPE, Float.TYPE});
                cls.getMethod("getDouble", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("putDouble", new Class[]{Object.class, Long.TYPE, Double.TYPE});
                cls.getMethod("getObject", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("putObject", new Class[]{Object.class, Long.TYPE, Object.class});
                cls.getMethod("copyMemory", new Class[]{Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE});
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    private static boolean supportsUnsafeByteBufferOperations() {
        Unsafe unsafe = UNSAFE;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", new Class[]{Field.class});
                cls.getMethod("getLong", new Class[]{Object.class, Long.TYPE});
                cls.getMethod("getByte", new Class[]{Long.TYPE});
                cls.getMethod("putByte", new Class[]{Long.TYPE, Byte.TYPE});
                cls.getMethod("getInt", new Class[]{Long.TYPE});
                cls.getMethod("putInt", new Class[]{Long.TYPE, Integer.TYPE});
                cls.getMethod("getLong", new Class[]{Long.TYPE});
                cls.getMethod("putLong", new Class[]{Long.TYPE, Long.TYPE});
                cls.getMethod("setMemory", new Class[]{Long.TYPE, Long.TYPE, Byte.TYPE});
                cls.getMethod("copyMemory", new Class[]{Long.TYPE, Long.TYPE, Long.TYPE});
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
