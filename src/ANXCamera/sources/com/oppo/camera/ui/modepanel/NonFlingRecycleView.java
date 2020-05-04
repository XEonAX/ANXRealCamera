package com.oppo.camera.ui.modepanel;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;

public class NonFlingRecycleView extends RecyclerView {
    public NonFlingRecycleView(Context context) {
        super(context);
    }

    public NonFlingRecycleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean b(int i, int i2) {
        return false;
    }
}
