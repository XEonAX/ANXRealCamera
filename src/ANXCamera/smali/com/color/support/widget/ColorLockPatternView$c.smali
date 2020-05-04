.class public final enum Lcom/color/support/widget/ColorLockPatternView$c;
.super Ljava/lang/Enum;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/color/support/widget/ColorLockPatternView$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/color/support/widget/ColorLockPatternView$c;

.field public static final enum Animate:Lcom/color/support/widget/ColorLockPatternView$c;

.field public static final enum Correct:Lcom/color/support/widget/ColorLockPatternView$c;

.field public static final enum FingerprintMatch:Lcom/color/support/widget/ColorLockPatternView$c;

.field public static final enum FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$c;

.field public static final enum Wrong:Lcom/color/support/widget/ColorLockPatternView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/color/support/widget/ColorLockPatternView$c;

    const/4 v1, 0x0

    const-string v2, "Correct"

    invoke-direct {v0, v2, v1}, Lcom/color/support/widget/ColorLockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/support/widget/ColorLockPatternView$c;->Correct:Lcom/color/support/widget/ColorLockPatternView$c;

    new-instance v0, Lcom/color/support/widget/ColorLockPatternView$c;

    const/4 v2, 0x1

    const-string v3, "Animate"

    invoke-direct {v0, v3, v2}, Lcom/color/support/widget/ColorLockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/support/widget/ColorLockPatternView$c;->Animate:Lcom/color/support/widget/ColorLockPatternView$c;

    new-instance v0, Lcom/color/support/widget/ColorLockPatternView$c;

    const/4 v3, 0x2

    const-string v4, "Wrong"

    invoke-direct {v0, v4, v3}, Lcom/color/support/widget/ColorLockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/support/widget/ColorLockPatternView$c;->Wrong:Lcom/color/support/widget/ColorLockPatternView$c;

    new-instance v0, Lcom/color/support/widget/ColorLockPatternView$c;

    const/4 v4, 0x3

    const-string v5, "FingerprintMatch"

    invoke-direct {v0, v5, v4}, Lcom/color/support/widget/ColorLockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/support/widget/ColorLockPatternView$c;->FingerprintMatch:Lcom/color/support/widget/ColorLockPatternView$c;

    new-instance v0, Lcom/color/support/widget/ColorLockPatternView$c;

    const/4 v5, 0x4

    const-string v6, "FingerprintNoMatch"

    invoke-direct {v0, v6, v5}, Lcom/color/support/widget/ColorLockPatternView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/support/widget/ColorLockPatternView$c;->FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/color/support/widget/ColorLockPatternView$c;

    sget-object v6, Lcom/color/support/widget/ColorLockPatternView$c;->Correct:Lcom/color/support/widget/ColorLockPatternView$c;

    aput-object v6, v0, v1

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$c;->Animate:Lcom/color/support/widget/ColorLockPatternView$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$c;->Wrong:Lcom/color/support/widget/ColorLockPatternView$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$c;->FingerprintMatch:Lcom/color/support/widget/ColorLockPatternView$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$c;->FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/color/support/widget/ColorLockPatternView$c;->$VALUES:[Lcom/color/support/widget/ColorLockPatternView$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/color/support/widget/ColorLockPatternView$c;
    .locals 1

    const-class v0, Lcom/color/support/widget/ColorLockPatternView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/color/support/widget/ColorLockPatternView$c;

    return-object p0
.end method

.method public static values()[Lcom/color/support/widget/ColorLockPatternView$c;
    .locals 1

    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$c;->$VALUES:[Lcom/color/support/widget/ColorLockPatternView$c;

    invoke-virtual {v0}, [Lcom/color/support/widget/ColorLockPatternView$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/color/support/widget/ColorLockPatternView$c;

    return-object v0
.end method
