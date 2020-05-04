.class final enum Lcom/oppo/camera/gl/GLImageView$AnimatorState;
.super Ljava/lang/Enum;
.source "GLImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/GLImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AnimatorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppo/camera/gl/GLImageView$AnimatorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/camera/gl/GLImageView$AnimatorState;

.field public static final enum BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

.field public static final enum BLUR_FADE_IN:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

.field public static final enum BLUR_FADE_OUT:Lcom/oppo/camera/gl/GLImageView$AnimatorState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    const/4 v1, 0x0

    const-string v2, "BLUR_FADE_IN"

    invoke-direct {v0, v2, v1}, Lcom/oppo/camera/gl/GLImageView$AnimatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_IN:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    new-instance v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    const/4 v2, 0x1

    const-string v3, "BLUR_FADE_OUT"

    invoke-direct {v0, v3, v2}, Lcom/oppo/camera/gl/GLImageView$AnimatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_OUT:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    new-instance v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    const/4 v3, 0x2

    const-string v4, "BLUR_FADE_END"

    invoke-direct {v0, v4, v3}, Lcom/oppo/camera/gl/GLImageView$AnimatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    sget-object v4, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_IN:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_OUT:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->$VALUES:[Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/camera/gl/GLImageView$AnimatorState;
    .locals 1

    const-class v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    return-object p0
.end method

.method public static values()[Lcom/oppo/camera/gl/GLImageView$AnimatorState;
    .locals 1

    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->$VALUES:[Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-virtual {v0}, [Lcom/oppo/camera/gl/GLImageView$AnimatorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    return-object v0
.end method
