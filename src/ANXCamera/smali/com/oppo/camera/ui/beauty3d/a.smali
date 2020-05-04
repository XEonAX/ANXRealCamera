.class public Lcom/oppo/camera/ui/beauty3d/a;
.super Ljava/lang/Object;
.source "BaseSense.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(IILandroid/graphics/drawable/Drawable;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    iput-object p3, p0, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    iput p4, p0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->e:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/a;->e:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    return-void
.end method
