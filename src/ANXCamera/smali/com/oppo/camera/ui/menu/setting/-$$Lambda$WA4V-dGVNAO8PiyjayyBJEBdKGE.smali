.class public final synthetic Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WA4V-dGVNAO8PiyjayyBJEBdKGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$c;


# instance fields
.field private final synthetic f$0:Lcom/oppo/camera/ui/menu/setting/j;


# direct methods
.method public synthetic constructor <init>(Lcom/oppo/camera/ui/menu/setting/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WA4V-dGVNAO8PiyjayyBJEBdKGE;->f$0:Lcom/oppo/camera/ui/menu/setting/j;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WA4V-dGVNAO8PiyjayyBJEBdKGE;->f$0:Lcom/oppo/camera/ui/menu/setting/j;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/j;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
