.class public Lcom/oppo/camera/debug/DebugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugBroadcastReceiver.java"


# static fields
.field private static final DEBUG_ENV:Ljava/lang/String; = "*#2785*368*324#"

.field private static final DEBUG_PROPERTY:Ljava/lang/String; = "*#2324*778#"

.field private static final ENGINEER_MODE_TEST_BROADCAST:Ljava/lang/String; = "com.oppo.engineermode.EngineerModeMain"

.field private static final OPERATOR_AUDITING_CODE:Ljava/lang/String; = "*#2785*6787#"

.field private static final ORDER_EXTRA:Ljava/lang/String; = "order"

.field private static final RELEASED_CODE:Ljava/lang/String; = "*#2785*757#"

.field private static final RELEASE_ENV:Ljava/lang/String; = "*#2785*368*757#"

.field private static final TAG:Ljava/lang/String; = "DebugBroadcastReceiver"

.field private static final TESTER_AUDITING_CODE:Ljava/lang/String; = "*#2785*8378#"

.field private static final TO_BE_RELEASE_CODE:Ljava/lang/String; = "*#2785*82757#"

.field private static final TRACE_DEBUG_OFF:Ljava/lang/String; = "*#2872*324*633#"

.field private static final TRACE_DEBUG_ON:Ljava/lang/String; = "*#2872*324*66#"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrCode:Ljava/lang/String;

.field private mOnDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mCurrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oppo/camera/debug/DebugBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/debug/DebugBroadcastReceiver$1;-><init>(Lcom/oppo/camera/debug/DebugBroadcastReceiver;)V

    iput-object v0, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mOnDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/debug/DebugBroadcastReceiver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mCurrCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oppo/camera/debug/DebugBroadcastReceiver;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getDialogContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "*#2872*324*633#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "*#2324*778#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "*#2785*8378#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "*#2785*6787#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "*#2872*324*66#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "*#2785*757#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "*#2785*82757#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "*#2785*368*757#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "*#2785*368*324#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialogContent, do not support this mode, mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DebugBroadcastReceiver"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    goto :goto_2

    :pswitch_0
    const p2, 0x7f0f01f6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_1
    const p2, 0x7f0f0248

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p2, 0x7f0f0249

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_3
    const p2, 0x7f0f021d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p2, 0x7f0f0243

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const p2, 0x7f0f0242

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_6
    const p2, 0x7f0f0247

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_7
    const p2, 0x7f0f0246

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_8
    const p2, 0x7f0f020e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    const v0, 0x7f0f001c

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f12d90e -> :sswitch_8
        -0x6f10fbf2 -> :sswitch_7
        -0x3fff084d -> :sswitch_6
        0x9859579 -> :sswitch_5
        0x1b3d831e -> :sswitch_4
        0x271ff134 -> :sswitch_3
        0x273a4b18 -> :sswitch_2
        0x2ae6ad79 -> :sswitch_1
        0x4c72d772 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCodeValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*#2785*6787#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2785*8378#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2785*82757#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2785*757#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2785*368*324#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2785*368*757#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2872*324*66#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2872*324*633#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2324*778#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private showOnlyShowPositiveButton(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*#2785*368*757#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2785*757#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*#2872*324*633#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private showWarningDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mCurrCode:Ljava/lang/String;

    new-instance v0, Lcolor/support/v7/app/b$a;

    const v1, 0x7f1001d4

    invoke-direct {v0, p1, v1}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->a(I)Lcolor/support/v7/app/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->getDialogContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->a(Z)Lcolor/support/v7/app/b$a;

    iget-object p1, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mOnDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    invoke-direct {p0, p2}, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->showOnlyShowPositiveButton(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    :cond_0
    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/b;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x7f6

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.engineermode.EngineerModeMain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "order"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->isCodeValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/debug/DebugBroadcastReceiver;->showWarningDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
