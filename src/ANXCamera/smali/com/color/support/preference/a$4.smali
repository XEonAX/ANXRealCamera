.class Lcom/color/support/preference/a$4;
.super Lcom/color/support/preference/a$a;
.source "ColorActivityDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/a;->c(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/color/support/preference/a;


# direct methods
.method constructor <init>(Lcom/color/support/preference/a;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/preference/a$4;->b:Lcom/color/support/preference/a;

    iput-object p6, p0, Lcom/color/support/preference/a$4;->a:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/color/support/preference/a$a;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/color/support/preference/a$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/color/support/preference/a$4;->b:Lcom/color/support/preference/a;

    invoke-static {p3}, Lcom/color/support/preference/a;->b(Lcom/color/support/preference/a;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Lcom/color/support/preference/a$4;->a:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$id;->coloritemdiver:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Lcom/color/support/preference/a$4;->getCount()I

    move-result v1

    if-eqz p3, :cond_3

    if-eq v1, v0, :cond_2

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_divider_preference_default:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-object p2
.end method
