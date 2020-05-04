.class Lcolor/support/v7/internal/widget/a$a;
.super Landroid/database/DataSetObserver;
.source "AdapterViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/v7/internal/widget/a;

.field private b:Landroid/os/Parcelable;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcolor/support/v7/internal/widget/a$a;->b:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcolor/support/v7/internal/widget/a;->u:Z

    iget v1, v0, Lcolor/support/v7/internal/widget/a;->z:I

    iput v1, v0, Lcolor/support/v7/internal/widget/a;->A:I

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcolor/support/v7/internal/widget/a;->z:I

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->b:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    iget v0, v0, Lcolor/support/v7/internal/widget/a;->A:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    iget v0, v0, Lcolor/support/v7/internal/widget/a;->z:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/a$a;->b:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/a;->a(Lcolor/support/v7/internal/widget/a;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->b:Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->i()V

    :goto_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->d()V

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 5

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcolor/support/v7/internal/widget/a;->u:Z

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/a;->a(Lcolor/support/v7/internal/widget/a;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->b:Landroid/os/Parcelable;

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    iget v1, v0, Lcolor/support/v7/internal/widget/a;->z:I

    iput v1, v0, Lcolor/support/v7/internal/widget/a;->A:I

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    const/4 v1, 0x0

    iput v1, v0, Lcolor/support/v7/internal/widget/a;->z:I

    const/4 v2, -0x1

    iput v2, v0, Lcolor/support/v7/internal/widget/a;->x:I

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, v0, Lcolor/support/v7/internal/widget/a;->y:J

    iput v2, v0, Lcolor/support/v7/internal/widget/a;->v:I

    iput-wide v3, v0, Lcolor/support/v7/internal/widget/a;->w:J

    iput-boolean v1, v0, Lcolor/support/v7/internal/widget/a;->o:Z

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->d()V

    iget-object v0, p0, Lcolor/support/v7/internal/widget/a$a;->a:Lcolor/support/v7/internal/widget/a;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/a;->requestLayout()V

    return-void
.end method
