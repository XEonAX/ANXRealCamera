.class public Lcom/color/support/widget/popupwindow/c;
.super Ljava/lang/Object;
.source "PopupListItem.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/popupwindow/c;->b:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/color/support/widget/popupwindow/c;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/color/support/widget/popupwindow/c;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/color/support/widget/popupwindow/c;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/popupwindow/c;->a:I

    return v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/c;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/popupwindow/c;->d:Z

    return v0
.end method
