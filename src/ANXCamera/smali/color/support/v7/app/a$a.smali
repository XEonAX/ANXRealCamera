.class public Lcolor/support/v7/app/a$a;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/app/a$a$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Landroid/view/View;

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Z

.field public H:[Z

.field public I:Z

.field public J:Z

.field public K:I

.field public L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public M:Landroid/database/Cursor;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public Q:Lcolor/support/v7/app/a$a$a;

.field public R:Z

.field public S:I

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/content/DialogInterface$OnClickListener;

.field public r:Z

.field public s:Landroid/content/DialogInterface$OnCancelListener;

.field public t:Landroid/content/DialogInterface$OnDismissListener;

.field public u:Landroid/content/DialogInterface$OnKeyListener;

.field public v:[Ljava/lang/CharSequence;

.field public w:[Ljava/lang/CharSequence;

.field public x:Z

.field public y:Landroid/widget/ListAdapter;

.field public z:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcolor/support/v7/app/a$a;->c:I

    iput v0, p0, Lcolor/support/v7/app/a$a;->e:I

    iput-boolean v0, p0, Lcolor/support/v7/app/a$a;->G:Z

    const/4 v0, -0x1

    iput v0, p0, Lcolor/support/v7/app/a$a;->K:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/app/a$a;->R:Z

    iput-object p1, p0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    iput-boolean v0, p0, Lcolor/support/v7/app/a$a;->r:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcolor/support/v7/app/a$a;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private b(Lcolor/support/v7/app/a;)V
    .locals 11

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->b:Landroid/view/LayoutInflater;

    iget v1, p1, Lcolor/support/v7/app/a;->s:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/app/a$d;

    iget-boolean v1, p0, Lcolor/support/v7/app/a$a;->I:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcolor/support/v7/app/a$a;->M:Landroid/database/Cursor;

    if-nez v4, :cond_0

    new-instance v10, Lcolor/support/v7/app/a$a$1;

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    iget v4, p1, Lcolor/support/v7/app/a;->t:I

    const v5, 0x1020014

    iget-object v6, p0, Lcolor/support/v7/app/a$a;->v:[Ljava/lang/CharSequence;

    move-object v1, v10

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcolor/support/v7/app/a$a$1;-><init>(Lcolor/support/v7/app/a$a;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcolor/support/v7/app/a$d;)V

    goto :goto_1

    :cond_0
    new-instance v10, Lcolor/support/v7/app/a$a$2;

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcolor/support/v7/app/a$a$2;-><init>(Lcolor/support/v7/app/a$a;Landroid/content/Context;Landroid/database/Cursor;ZLcolor/support/v7/app/a$d;Lcolor/support/v7/app/a;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcolor/support/v7/app/a$a;->J:Z

    if-eqz v1, :cond_4

    iget v4, p1, Lcolor/support/v7/app/a;->u:I

    iget-object v5, p0, Lcolor/support/v7/app/a$a;->M:Landroid/database/Cursor;

    const v1, 0x1020014

    if-eqz v5, :cond_2

    new-instance v10, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcolor/support/v7/app/a$a;->N:Ljava/lang/String;

    aput-object v2, v6, v8

    new-array v7, v9, [I

    aput v1, v7, v8

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcolor/support/v7/app/a$a;->y:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lcolor/support/v7/app/a$c;

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    iget-object v5, p0, Lcolor/support/v7/app/a$a;->v:[Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v1, v5}, Lcolor/support/v7/app/a$c;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcolor/support/v7/app/a$a;->y:Landroid/widget/ListAdapter;

    if-nez v10, :cond_5

    iget-object v1, p0, Lcolor/support/v7/app/a$a;->f:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    iget-object v1, p0, Lcolor/support/v7/app/a$a;->h:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    new-instance v1, Lcolor/support/v7/app/c;

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    iget-object v6, p0, Lcolor/support/v7/app/a$a;->v:[Ljava/lang/CharSequence;

    iget-object v7, p0, Lcolor/support/v7/app/a$a;->w:[Ljava/lang/CharSequence;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcolor/support/v7/app/c;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    move-object v10, v1

    :cond_5
    :goto_1
    iget-object v1, p0, Lcolor/support/v7/app/a$a;->Q:Lcolor/support/v7/app/a$a$a;

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Lcolor/support/v7/app/a$a$a;->a(Landroid/widget/ListView;)V

    :cond_6
    iput-object v10, p1, Lcolor/support/v7/app/a;->p:Landroid/widget/ListAdapter;

    iget v1, p0, Lcolor/support/v7/app/a$a;->K:I

    iput v1, p1, Lcolor/support/v7/app/a;->q:I

    iget-object v1, p0, Lcolor/support/v7/app/a$a;->z:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_7

    new-instance v1, Lcolor/support/v7/app/a$a$3;

    invoke-direct {v1, p0, p1}, Lcolor/support/v7/app/a$a$3;-><init>(Lcolor/support/v7/app/a$a;Lcolor/support/v7/app/a;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/a$d;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcolor/support/v7/app/a$a;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_8

    new-instance v1, Lcolor/support/v7/app/a$a$4;

    invoke-direct {v1, p0, v0, p1}, Lcolor/support/v7/app/a$a$4;-><init>(Lcolor/support/v7/app/a$a;Lcolor/support/v7/app/a$d;Lcolor/support/v7/app/a;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/a$d;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcolor/support/v7/app/a$a;->P:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/a$d;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_9
    iget-boolean v1, p0, Lcolor/support/v7/app/a$a;->J:Z

    if-eqz v1, :cond_a

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_dialog_item_background:I

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/a$d;->setSelector(I)V

    invoke-virtual {v0, v8}, Lcolor/support/v7/app/a$d;->setItemsCanFocus(Z)V

    invoke-virtual {v0, v9}, Lcolor/support/v7/app/a$d;->setChoiceMode(I)V

    goto :goto_3

    :cond_a
    iget-boolean v1, p0, Lcolor/support/v7/app/a$a;->I:Z

    if-eqz v1, :cond_b

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_dialog_item_background:I

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/a$d;->setSelector(I)V

    invoke-virtual {v0, v8}, Lcolor/support/v7/app/a$d;->setItemsCanFocus(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/a$d;->setChoiceMode(I)V

    :cond_b
    :goto_3
    iput-object v0, p1, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public a(Lcolor/support/v7/app/a;)V
    .locals 7

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/a$a;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/a$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcolor/support/v7/app/a$a;->c:I

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->b(I)V

    :cond_3
    iget v0, p0, Lcolor/support/v7/app/a$a;->e:I

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->b(I)V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcolor/support/v7/app/a$a;->x:Z

    iput-boolean v0, p1, Lcolor/support/v7/app/a;->x:Z

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->b(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcolor/support/v7/app/a$a;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    :cond_6
    const/4 v2, -0x1

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->i:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcolor/support/v7/app/a$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcolor/support/v7/app/a$a;->j:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/a;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v0, p0, Lcolor/support/v7/app/a$a;->l:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    :cond_8
    const/4 v2, -0x2

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->l:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcolor/support/v7/app/a$a;->n:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcolor/support/v7/app/a$a;->m:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/a;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Lcolor/support/v7/app/a$a;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    :cond_a
    const/4 v2, -0x3

    iget-object v3, p0, Lcolor/support/v7/app/a$a;->o:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcolor/support/v7/app/a$a;->q:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcolor/support/v7/app/a$a;->p:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/a;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v0, p0, Lcolor/support/v7/app/a$a;->v:[Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->M:Landroid/database/Cursor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcolor/support/v7/app/a$a;->y:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d

    :cond_c
    invoke-direct {p0, p1}, Lcolor/support/v7/app/a$a;->b(Lcolor/support/v7/app/a;)V

    :cond_d
    iget-object v2, p0, Lcolor/support/v7/app/a$a;->B:Landroid/view/View;

    if-eqz v2, :cond_f

    iget-boolean v0, p0, Lcolor/support/v7/app/a$a;->G:Z

    if-eqz v0, :cond_e

    iget v3, p0, Lcolor/support/v7/app/a$a;->C:I

    iget v4, p0, Lcolor/support/v7/app/a$a;->D:I

    iget v5, p0, Lcolor/support/v7/app/a$a;->E:I

    iget v6, p0, Lcolor/support/v7/app/a$a;->F:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/a;->a(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_e
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/a;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_f
    iget v0, p0, Lcolor/support/v7/app/a$a;->A:I

    if-eqz v0, :cond_10

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->a(I)V

    :cond_10
    :goto_1
    iget v0, p0, Lcolor/support/v7/app/a$a;->S:I

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/a;->e(I)V

    return-void
.end method
