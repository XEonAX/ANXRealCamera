.class Lcom/oppo/camera/ui/menu/setting/k$4;
.super Ljava/lang/Object;
.source "CameraVideoRatioSettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/setting/k;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/FixedListView;

.field final synthetic b:Lcom/oppo/camera/ui/menu/setting/k;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/setting/k;Lcom/oppo/camera/ui/FixedListView;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->b:Lcom/oppo/camera/ui/menu/setting/k;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->a:Lcom/oppo/camera/ui/FixedListView;

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

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->b:Lcom/oppo/camera/ui/menu/setting/k;

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->a:Lcom/oppo/camera/ui/FixedListView;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/FixedListView;->getHeaderViewsCount()I

    move-result p2

    sub-int p2, p3, p2

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/menu/setting/k;->c(Lcom/oppo/camera/ui/menu/setting/k;I)I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->b:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/setting/k;->i(Lcom/oppo/camera/ui/menu/setting/k;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x1

    if-le p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p1, p3, p4}, Lcom/oppo/camera/ui/menu/setting/k;->a(Lcom/oppo/camera/ui/menu/setting/k;IZ)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->b:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p2}, Lcom/oppo/camera/ui/menu/setting/k;->d(Lcom/oppo/camera/ui/menu/setting/k;)Lcom/oppo/camera/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p2

    const-string p3, "pref_video_fps_key"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p3, "pref_lasted_video_fps"

    const-string p4, ""

    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->b:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p2}, Lcom/oppo/camera/ui/menu/setting/k;->j(Lcom/oppo/camera/ui/menu/setting/k;)Lcom/oppo/camera/ui/menu/setting/k$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/setting/k$a;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$4;->b:Lcom/oppo/camera/ui/menu/setting/k;

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Lcom/oppo/camera/ui/menu/setting/k;->a(Lcom/oppo/camera/ui/menu/setting/k;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
