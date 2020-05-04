.class public Lcom/oppo/camera/sticker/ui/h$c;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/sticker/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/sticker/ui/h;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/sticker/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h$c;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/h$c;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/ui/h$c;->b:I

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$c;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/h;->g(Lcom/oppo/camera/sticker/ui/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/sticker/ui/h$c;->b:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h$c;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p3, p1}, Lcom/oppo/camera/sticker/ui/h;->a(I)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$c;->a:Lcom/oppo/camera/sticker/ui/h;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/oppo/camera/sticker/ui/h;->a(Lcom/oppo/camera/sticker/ui/h;Z)Z

    iput p2, p0, Lcom/oppo/camera/sticker/ui/h$c;->b:I

    :cond_1
    return-void
.end method
