.class public Lcolor/support/v7/widget/b;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/b$f;,
        Lcolor/support/v7/widget/b$g;,
        Lcolor/support/v7/widget/b$h;,
        Lcolor/support/v7/widget/b$d;,
        Lcolor/support/v7/widget/b$e;,
        Lcolor/support/v7/widget/b$b;,
        Lcolor/support/v7/widget/b$a;,
        Lcolor/support/v7/widget/b$c;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/graphics/Rect;

.field private C:Z

.field private b:Landroid/content/Context;

.field protected c:Lcolor/support/v7/widget/c;

.field d:I

.field private e:Landroid/widget/ListAdapter;

.field private f:Lcolor/support/v7/widget/b$b;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View;

.field private p:I

.field private q:Landroid/database/DataSetObserver;

.field private r:Landroid/view/View;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/widget/AdapterView$OnItemClickListener;

.field private u:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final v:Lcolor/support/v7/widget/b$h;

.field private final w:Lcolor/support/v7/widget/b$g;

.field private final x:Lcolor/support/v7/widget/b$f;

.field private final y:Lcolor/support/v7/widget/b$d;

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Lcolor/support/v7/widget/c;

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcolor/support/v7/widget/b;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BaseListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcolor/support/v7/widget/b;)Lcolor/support/v7/widget/b$b;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcolor/support/v7/widget/b;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    sget-object v0, Lcolor/support/v7/widget/b;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BaseListPopupWindow"

    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcolor/support/v7/widget/b;)Lcolor/support/v7/widget/b$h;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->v:Lcolor/support/v7/widget/b$h;

    return-object p0
.end method

.method static synthetic c(Lcolor/support/v7/widget/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->A:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->j:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->k:Z

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->q:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcolor/support/v7/widget/b$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcolor/support/v7/widget/b$e;-><init>(Lcolor/support/v7/widget/b;Lcolor/support/v7/widget/b$1;)V

    iput-object v0, p0, Lcolor/support/v7/widget/b;->q:Landroid/database/DataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/b;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcolor/support/v7/widget/b;->e:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcolor/support/v7/widget/b;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->q:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    if-eqz p1, :cond_3

    new-instance v0, Lcolor/support/v7/widget/b$a;

    iget-object v1, p0, Lcolor/support/v7/widget/b;->e:Landroid/widget/ListAdapter;

    invoke-direct {v0, p0, v1}, Lcolor/support/v7/widget/b$a;-><init>(Lcolor/support/v7/widget/b;Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/b$b;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public a(Lcolor/support/v7/widget/c$a;)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/c;->a(Lcolor/support/v7/widget/c$a;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->i:I

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0}, Lcolor/support/v7/widget/c;->dismiss()V

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->a()V

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/c;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    iget-object v0, p0, Lcolor/support/v7/widget/b;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcolor/support/v7/widget/b;->v:Lcolor/support/v7/widget/b$h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->h:I

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0}, Lcolor/support/v7/widget/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcolor/support/v7/widget/b;->h:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/b;->c(I)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v0

    return v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0}, Lcolor/support/v7/widget/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->g:I

    return-void
.end method

.method public f()I
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/b;->j:I

    return v0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/c;->setInputMethodMode(I)V

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/b;->i:I

    return v0
.end method

.method public g(I)V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcolor/support/v7/widget/b$b;->a(Lcolor/support/v7/widget/b$b;Z)Z

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/b$b;->setSelection(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/widget/b$b;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/widget/b$b;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 13

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->j()I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->o()Z

    move-result v1

    iget-object v2, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v2}, Lcolor/support/v7/widget/c;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_9

    iget v2, p0, Lcolor/support/v7/widget/b;->h:I

    if-ne v2, v6, :cond_0

    move v11, v6

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :cond_1
    move v11, v2

    :goto_0
    iget v2, p0, Lcolor/support/v7/widget/b;->g:I

    if-ne v2, v6, :cond_6

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    iget v2, p0, Lcolor/support/v7/widget/b;->h:I

    if-ne v2, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    invoke-virtual {v1, v6, v5}, Lcolor/support/v7/widget/c;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    iget v2, p0, Lcolor/support/v7/widget/b;->h:I

    if-ne v2, v6, :cond_5

    move v2, v6

    goto :goto_3

    :cond_5
    move v2, v5

    :goto_3
    invoke-virtual {v1, v2, v6}, Lcolor/support/v7/widget/c;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_6
    if-ne v2, v4, :cond_7

    :goto_4
    move v12, v0

    goto :goto_5

    :cond_7
    move v12, v2

    :goto_5
    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    iget-boolean v1, p0, Lcolor/support/v7/widget/b;->n:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcolor/support/v7/widget/b;->m:Z

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/c;->setOutsideTouchable(Z)V

    iget-object v7, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->l()Landroid/view/View;

    move-result-object v8

    iget v9, p0, Lcolor/support/v7/widget/b;->i:I

    iget v10, p0, Lcolor/support/v7/widget/b;->j:I

    invoke-virtual/range {v7 .. v12}, Lcolor/support/v7/widget/c;->update(Landroid/view/View;IIII)V

    goto/16 :goto_d

    :cond_9
    iget v1, p0, Lcolor/support/v7/widget/b;->h:I

    if-ne v1, v6, :cond_a

    move v1, v6

    goto :goto_8

    :cond_a
    if-ne v1, v4, :cond_b

    iget-object v1, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/widget/c;->setWidth(I)V

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/c;->setWidth(I)V

    :goto_7
    move v1, v5

    :goto_8
    iget v2, p0, Lcolor/support/v7/widget/b;->g:I

    if-ne v2, v6, :cond_c

    move v0, v6

    goto :goto_a

    :cond_c
    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v2, v0}, Lcolor/support/v7/widget/c;->setHeight(I)V

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/c;->setHeight(I)V

    :goto_9
    move v0, v5

    :goto_a
    iget-object v2, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v2, v1, v0}, Lcolor/support/v7/widget/c;->setWindowLayoutMode(II)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->l()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcolor/support/v7/internal/widget/b;

    if-eqz v0, :cond_e

    invoke-direct {p0, v5}, Lcolor/support/v7/widget/b;->a(Z)V

    goto :goto_b

    :cond_e
    invoke-direct {p0, v3}, Lcolor/support/v7/widget/b;->a(Z)V

    :goto_b
    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    iget-boolean v1, p0, Lcolor/support/v7/widget/b;->n:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcolor/support/v7/widget/b;->m:Z

    if-nez v1, :cond_f

    goto :goto_c

    :cond_f
    move v3, v5

    :goto_c
    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/c;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    iget-object v1, p0, Lcolor/support/v7/widget/b;->w:Lcolor/support/v7/widget/b$g;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/c;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->l()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcolor/support/v7/widget/b;->i:I

    iget v3, p0, Lcolor/support/v7/widget/b;->j:I

    iget v4, p0, Lcolor/support/v7/widget/b;->l:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    invoke-virtual {v0, v6}, Lcolor/support/v7/widget/b$b;->setSelection(I)V

    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->C:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    invoke-virtual {v0}, Lcolor/support/v7/widget/b$b;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->n()V

    :cond_11
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->C:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcolor/support/v7/widget/b;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcolor/support/v7/widget/b;->y:Lcolor/support/v7/widget/b$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    :goto_d
    return-void
.end method

.method protected j()I
    .locals 11

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcolor/support/v7/widget/b;->b:Landroid/content/Context;

    new-instance v4, Lcolor/support/v7/widget/b$2;

    invoke-direct {v4, p0}, Lcolor/support/v7/widget/b$2;-><init>(Lcolor/support/v7/widget/b;)V

    iput-object v4, p0, Lcolor/support/v7/widget/b;->z:Ljava/lang/Runnable;

    new-instance v4, Lcolor/support/v7/widget/b$b;

    iget-boolean v5, p0, Lcolor/support/v7/widget/b;->C:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-direct {v4, v0, v5}, Lcolor/support/v7/widget/b$b;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    iget-object v4, p0, Lcolor/support/v7/widget/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    invoke-virtual {v5, v4}, Lcolor/support/v7/widget/b$b;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    new-instance v5, Lcolor/support/v7/widget/b$a;

    iget-object v7, p0, Lcolor/support/v7/widget/b;->e:Landroid/widget/ListAdapter;

    invoke-direct {v5, p0, v7}, Lcolor/support/v7/widget/b$a;-><init>(Lcolor/support/v7/widget/b;Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/b$b;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    iget-object v5, p0, Lcolor/support/v7/widget/b;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/b$b;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    invoke-virtual {v4, v6}, Lcolor/support/v7/widget/b$b;->setFocusable(Z)V

    iget-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    invoke-virtual {v4, v6}, Lcolor/support/v7/widget/b$b;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    new-instance v5, Lcolor/support/v7/widget/b$3;

    invoke-direct {v5, p0}, Lcolor/support/v7/widget/b$3;-><init>(Lcolor/support/v7/widget/b;)V

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/b$b;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    iget-object v5, p0, Lcolor/support/v7/widget/b;->x:Lcolor/support/v7/widget/b$f;

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/b$b;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v4, p0, Lcolor/support/v7/widget/b;->u:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    invoke-virtual {v5, v4}, Lcolor/support/v7/widget/b$b;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    iget-object v5, p0, Lcolor/support/v7/widget/b;->o:Landroid/view/View;

    if-eqz v5, :cond_4

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v8, p0, Lcolor/support/v7/widget/b;->p:I

    if-eqz v8, :cond_3

    if-eq v8, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcolor/support/v7/widget/b;->p:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BaseListPopupWindow"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget v0, p0, Lcolor/support/v7/widget/b;->h:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move-object v4, v7

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    iget-object v5, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v5, v4}, Lcolor/support/v7/widget/c;->setContentView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0}, Lcolor/support/v7/widget/c;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcolor/support/v7/widget/b;->o:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    iget-object v4, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v4}, Lcolor/support/v7/widget/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Lcolor/support/v7/widget/b;->k:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Lcolor/support/v7/widget/b;->j:I

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    :cond_8
    :goto_3
    iget-object v4, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v4}, Lcolor/support/v7/widget/c;->getInputMethodMode()I

    move-result v4

    const/4 v5, 0x2

    iget-object v4, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->l()Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcolor/support/v7/widget/b;->j:I

    invoke-virtual {v4, v5, v6}, Lcolor/support/v7/widget/c;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    iget-boolean v5, p0, Lcolor/support/v7/widget/b;->m:Z

    if-nez v5, :cond_d

    iget v5, p0, Lcolor/support/v7/widget/b;->g:I

    if-ne v5, v2, :cond_9

    goto :goto_6

    :cond_9
    iget v5, p0, Lcolor/support/v7/widget/b;->h:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_b

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v5, v2, :cond_a

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    move v6, v1

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcolor/support/v7/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcolor/support/v7/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcolor/support/v7/widget/b;->B:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    :goto_5
    iget-object v5, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    const/4 v7, 0x0

    const/4 v8, -0x1

    sub-int v9, v4, v0

    const/4 v10, -0x1

    invoke-virtual/range {v5 .. v10}, Lcolor/support/v7/widget/b$b;->a(IIIII)I

    move-result v1

    if-lez v1, :cond_c

    add-int/2addr v0, v3

    :cond_c
    add-int/2addr v1, v0

    return v1

    :cond_d
    :goto_6
    add-int/2addr v4, v3

    return v4
.end method

.method public l()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->r:Landroid/view/View;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/b;->h:I

    return v0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcolor/support/v7/widget/b$b;->a(Lcolor/support/v7/widget/b$b;Z)Z

    invoke-virtual {v0}, Lcolor/support/v7/widget/b$b;->requestLayout()V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->c:Lcolor/support/v7/widget/c;

    invoke-virtual {v0}, Lcolor/support/v7/widget/c;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Lcolor/support/v7/widget/b$b;

    return-object v0
.end method
