.class public Lcom/crunchfish/touchless_a3d/gesture/Pose;
.super Lcom/crunchfish/touchless_a3d/gesture/Identifiable;
.source "Pose.java"


# instance fields
.field private final mObjectType:I

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

    sget-object v0, Lcom/crunchfish/touchless_a3d/gesture/Identifiable$Type;->POSE:Lcom/crunchfish/touchless_a3d/gesture/Identifiable$Type;

    invoke-direct {p0, v0, p1}, Lcom/crunchfish/touchless_a3d/gesture/Identifiable;-><init>(Lcom/crunchfish/touchless_a3d/gesture/Identifiable$Type;Ljava/lang/String;)V

    iput p2, p0, Lcom/crunchfish/touchless_a3d/gesture/Pose;->mObjectType:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/crunchfish/touchless_a3d/gesture/Pose;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBoundingArea()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/crunchfish/touchless_a3d/gesture/Pose;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoseType()I
    .locals 1

    iget v0, p0, Lcom/crunchfish/touchless_a3d/gesture/Pose;->mObjectType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pose{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crunchfish/touchless_a3d/gesture/Pose;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', objectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/crunchfish/touchless_a3d/gesture/Pose;->mObjectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bounds={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crunchfish/touchless_a3d/gesture/Pose;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
