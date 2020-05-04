.class public Lcom/oppo/camera/gl/o;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/camera/gl/o;->a:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/gl/o;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/gl/o;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/gl/o;->b:I

    iget-object v0, p0, Lcom/oppo/camera/gl/o;->a:[I

    iget v1, p0, Lcom/oppo/camera/gl/o;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/gl/o;->a:[I

    array-length v1, v0

    iget v2, p0, Lcom/oppo/camera/gl/o;->b:I

    if-ne v1, v2, :cond_0

    add-int v1, v2, v2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/oppo/camera/gl/o;->a:[I

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/o;->a:[I

    iget v1, p0, Lcom/oppo/camera/gl/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/oppo/camera/gl/o;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/gl/o;->b:I

    return v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/o;->a:[I

    return-object v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/gl/o;->b:I

    iget-object v0, p0, Lcom/oppo/camera/gl/o;->a:[I

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oppo/camera/gl/o;->a:[I

    :cond_0
    return-void
.end method
