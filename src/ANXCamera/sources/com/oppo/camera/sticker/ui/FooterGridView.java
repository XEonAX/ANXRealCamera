package com.oppo.camera.sticker.ui;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import com.oppo.camera.R;
import com.oppo.camera.d;

public class FooterGridView extends GridView {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public boolean f2438a = false;

    /* renamed from: b  reason: collision with root package name */
    private Paint f2439b = null;

    private class a implements Filterable, WrapperListAdapter {

        /* renamed from: b  reason: collision with root package name */
        private final DataSetObservable f2441b = new DataSetObservable();
        private a c = null;
        private int d = 1;
        private int e = 0;

        public a(a aVar) {
            this.c = aVar;
        }

        public void a() {
            this.f2441b.notifyChanged();
        }

        public void a(int i) {
            if (i < 1) {
                throw new IllegalArgumentException("Number of columns must be 1 or more");
            } else if (this.d != i) {
                this.d = i;
                a();
            }
        }

        public boolean areAllItemsEnabled() {
            a aVar = this.c;
            if (aVar != null) {
                return aVar.areAllItemsEnabled();
            }
            return true;
        }

        public void b(int i) {
            this.e = i;
        }

        public int getCount() {
            a aVar = this.c;
            if (aVar == null || aVar.getCount() <= 0) {
                return 0;
            }
            return this.c.getCount() + (this.d * 2);
        }

        public Filter getFilter() {
            a aVar = this.c;
            if (aVar instanceof Filterable) {
                return ((Filterable) aVar).getFilter();
            }
            return null;
        }

        public Object getItem(int i) {
            a aVar = this.c;
            if (aVar == null || i >= aVar.getCount()) {
                return null;
            }
            return this.c.getItem(i);
        }

        public long getItemId(int i) {
            a aVar = this.c;
            if (aVar != null) {
                return aVar.getItemId(i);
            }
            return -1;
        }

        public int getItemViewType(int i) {
            a aVar = this.c;
            if (aVar == null) {
                return -1;
            }
            if (i < aVar.getCount()) {
                return this.c.getItemViewType(i);
            }
            return -2;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            a aVar = this.c;
            if (aVar == null) {
                return null;
            }
            if (i < aVar.getCount()) {
                this.c.a(FooterGridView.this.f2438a);
                return this.c.getView(i, view, viewGroup);
            }
            if (view == null) {
                view = new View(viewGroup.getContext());
            }
            view.setMinimumHeight(this.e);
            view.setVisibility(4);
            return view;
        }

        public int getViewTypeCount() {
            a aVar = this.c;
            if (aVar != null) {
                return aVar.getViewTypeCount();
            }
            return 0;
        }

        public ListAdapter getWrappedAdapter() {
            return this.c;
        }

        public boolean hasStableIds() {
            a aVar = this.c;
            if (aVar != null) {
                return aVar.hasStableIds();
            }
            return false;
        }

        public boolean isEmpty() {
            a aVar = this.c;
            if (aVar != null) {
                return aVar.isEmpty();
            }
            return true;
        }

        public boolean isEnabled(int i) {
            a aVar = this.c;
            if (aVar == null || i >= aVar.getCount()) {
                return false;
            }
            return this.c.isEnabled(i);
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.f2441b.registerObserver(dataSetObserver);
            a aVar = this.c;
            if (aVar != null) {
                aVar.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.f2441b.unregisterObserver(dataSetObserver);
            a aVar = this.c;
            if (aVar != null) {
                aVar.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public FooterGridView(Context context) {
        super(context);
    }

    public FooterGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FooterGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x001f  */
    private int getRowHeight() {
        int i;
        ListAdapter adapter = getAdapter();
        if (adapter != null && (adapter instanceof a)) {
            a aVar = (a) adapter;
            if (aVar.getWrappedAdapter() != null) {
                i = aVar.getWrappedAdapter().getCount();
                if (i > 0) {
                    return 0;
                }
                View view = getAdapter().getView(i - 1, (View) null, this);
                if (view == null) {
                    return 0;
                }
                AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
                    view.setLayoutParams(layoutParams);
                }
                view.measure(0, getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
                return view.getMeasuredHeight();
            }
        }
        i = 0;
        if (i > 0) {
        }
    }

    public void onDrawForeground(Canvas canvas) {
        super.onDrawForeground(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f2439b == null) {
            LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, (float) height, getResources().getColor(R.color.sticker_gradient_start_color), getResources().getColor(R.color.sticker_gradient_end_color), Shader.TileMode.CLAMP);
            this.f2439b = new Paint();
            this.f2439b.setShader(linearGradient);
        }
        canvas.drawRect(0.0f, 0.0f, (float) width, (float) height, this.f2439b);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        d.a("FooterGridView", "onLayout");
        this.f2438a = false;
        super.onLayout(z, i, i2, i3, i4);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        d.a("FooterGridView", "onMeasure");
        this.f2438a = true;
        super.onMeasure(i, i2);
        ListAdapter adapter = getAdapter();
        if (adapter != null && (adapter instanceof a)) {
            a aVar = (a) adapter;
            aVar.a(getNumColumns());
            aVar.b(getRowHeight());
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        d.a("FooterGridView", "onTouchEvent, action: " + motionEvent.getAction() + ", coord: " + motionEvent.getX() + "x" + motionEvent.getY());
        if (!isEnabled()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setAdapter(a aVar) {
        a aVar2 = new a(aVar);
        int numColumns = getNumColumns();
        if (numColumns > 1) {
            aVar2.a(numColumns);
        }
        super.setAdapter(aVar2);
    }
}
