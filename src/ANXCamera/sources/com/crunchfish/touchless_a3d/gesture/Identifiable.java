package com.crunchfish.touchless_a3d.gesture;

public abstract class Identifiable {
    private final String mId;
    private final Type mType;

    /* renamed from: com.crunchfish.touchless_a3d.gesture.Identifiable$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$crunchfish$touchless_a3d$gesture$Identifiable$Type = new int[Type.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            $SwitchMap$com$crunchfish$touchless_a3d$gesture$Identifiable$Type[Type.POSE.ordinal()] = 1;
            $SwitchMap$com$crunchfish$touchless_a3d$gesture$Identifiable$Type[Type.SWIPE.ordinal()] = 2;
        }
    }

    public enum Type {
        POSE,
        SWIPE;

        public String toString() {
            int i = AnonymousClass1.$SwitchMap$com$crunchfish$touchless_a3d$gesture$Identifiable$Type[ordinal()];
            if (i == 1) {
                return "POSE";
            }
            if (i == 2) {
                return "SWIPE";
            }
            throw new IllegalArgumentException();
        }
    }

    protected Identifiable(Type type, String str) {
        this.mType = type;
        this.mId = str;
    }

    public final String getId() {
        return this.mId;
    }

    public final Type getType() {
        return this.mType;
    }

    public String toString() {
        return "Identifiable{id='" + this.mId + "', type=" + this.mType + "}";
    }
}
