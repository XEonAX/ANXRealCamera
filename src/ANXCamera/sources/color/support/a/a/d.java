package color.support.a.a;

import android.view.KeyEvent;

/* compiled from: KeyEventCompatHoneycomb */
class d {
    public static int a(int i) {
        return KeyEvent.normalizeMetaState(i);
    }

    public static boolean b(int i) {
        return KeyEvent.metaStateHasNoModifiers(i);
    }
}
