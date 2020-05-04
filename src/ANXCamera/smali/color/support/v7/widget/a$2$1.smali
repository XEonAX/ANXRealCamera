.class Lcolor/support/v7/widget/a$2$1;
.super Ljava/lang/Object;
.source "ColorActionMenuViewV6.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/a$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/v7/widget/a$2;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/a$2;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/a$2$1;->a:Lcolor/support/v7/widget/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcolor/support/v7/widget/a$2$1;->a:Lcolor/support/v7/widget/a$2;

    iget-object p1, p1, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {p1}, Lcolor/support/v7/widget/a;->b(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/g;

    move-result-object p1

    iget-object p2, p0, Lcolor/support/v7/widget/a$2$1;->a:Lcolor/support/v7/widget/a$2;

    iget-object p2, p2, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {p2}, Lcolor/support/v7/widget/a;->b(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/g;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;I)Z

    iget-object p1, p0, Lcolor/support/v7/widget/a$2$1;->a:Lcolor/support/v7/widget/a$2;

    iget-object p1, p1, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    iget-object p1, p1, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/a;->dismiss()V

    return-void
.end method
