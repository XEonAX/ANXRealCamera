package com.crunchfish.touchless_a3d.gesture;

import com.crunchfish.touchless_a3d.gesture.Identifiable;

public class Swipe extends Identifiable {
    private final Direction mDirection;

    /* renamed from: com.crunchfish.touchless_a3d.gesture.Swipe$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$crunchfish$touchless_a3d$gesture$Swipe$Direction = new int[Direction.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            $SwitchMap$com$crunchfish$touchless_a3d$gesture$Swipe$Direction[Direction.SWIPE_LEFT.ordinal()] = 1;
            $SwitchMap$com$crunchfish$touchless_a3d$gesture$Swipe$Direction[Direction.SWIPE_RIGHT.ordinal()] = 2;
        }
    }

    public enum Direction {
        SWIPE_LEFT,
        SWIPE_RIGHT;

        public String toString() {
            int i = AnonymousClass1.$SwitchMap$com$crunchfish$touchless_a3d$gesture$Swipe$Direction[ordinal()];
            if (i == 1) {
                return "LEFT";
            }
            if (i == 2) {
                return "RIGHT";
            }
            throw new IllegalArgumentException();
        }
    }

    Swipe(String str, Direction direction) {
        super(Identifiable.Type.SWIPE, str);
        this.mDirection = direction;
    }

    public Direction getDirection() {
        return this.mDirection;
    }

    public String toString() {
        return "Swipe{id='" + getId() + "', direction=" + this.mDirection + "}";
    }
}
