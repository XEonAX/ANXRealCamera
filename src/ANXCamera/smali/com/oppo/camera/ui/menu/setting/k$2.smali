.class Lcom/oppo/camera/ui/menu/setting/k$2;
.super Ljava/lang/Object;
.source "CameraVideoRatioSettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/setting/k;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/FixedListView;

.field final synthetic b:Lcom/oppo/camera/ui/menu/setting/k$a;

.field final synthetic c:Lcom/oppo/camera/ui/menu/setting/k;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/setting/k;Lcom/oppo/camera/ui/FixedListView;Lcom/oppo/camera/ui/menu/setting/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->a:Lcom/oppo/camera/ui/FixedListView;

    iput-object p3, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->b:Lcom/oppo/camera/ui/menu/setting/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->a:Lcom/oppo/camera/ui/FixedListView;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/FixedListView;->getHeaderViewsCount()I

    move-result p2

    sub-int p2, p3, p2

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/menu/setting/k;->a(Lcom/oppo/camera/ui/menu/setting/k;I)I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p1, p3}, Lcom/oppo/camera/ui/menu/setting/k;->b(Lcom/oppo/camera/ui/menu/setting/k;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p2}, Lcom/oppo/camera/ui/menu/setting/k;->d(Lcom/oppo/camera/ui/menu/setting/k;)Lcom/oppo/camera/i;

    move-result-object p2

    iget-object p3, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    const p4, 0x7f0f01a1

    invoke-virtual {p3, p4}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "pref_video_fps_key"

    invoke-virtual {p2, p4, p3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p3}, Lcom/oppo/camera/ui/menu/setting/k;->d(Lcom/oppo/camera/ui/menu/setting/k;)Lcom/oppo/camera/i;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p3

    const-string p5, "pref_video_size_key"

    invoke-interface {p3, p5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p5, "pref_lasted_video_size"

    const-string v0, ""

    invoke-interface {p3, p5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 p5, 0x1e

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/setting/k;->e(Lcom/oppo/camera/ui/menu/setting/k;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video_size_4kuhd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/setting/k;->f(Lcom/oppo/camera/ui/menu/setting/k;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video_size_1080p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/setting/k;->g(Lcom/oppo/camera/ui/menu/setting/k;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "video_size_720p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p3, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->b:Lcom/oppo/camera/ui/menu/setting/k$a;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/menu/setting/k$a;->notifyDataSetChanged()V

    iget-object p3, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p3, p1}, Lcom/oppo/camera/ui/menu/setting/k;->a(Lcom/oppo/camera/ui/menu/setting/k;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/oppo/camera/ui/menu/setting/k$2;->c:Lcom/oppo/camera/ui/menu/setting/k;

    invoke-static {p3, p1, p2}, Lcom/oppo/camera/ui/menu/setting/k;->a(Lcom/oppo/camera/ui/menu/setting/k;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
