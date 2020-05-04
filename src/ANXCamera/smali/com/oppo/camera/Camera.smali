.class public Lcom/oppo/camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/Camera$b;,
        Lcom/oppo/camera/Camera$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field private static final g:Landroid/net/Uri;

.field private static final h:Landroid/net/Uri;

.field private static final i:Landroid/net/Uri;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static l:I


# instance fields
.field private A:Landroid/content/ServiceConnection;

.field private B:J

.field private C:Z

.field private D:Landroid/os/ConditionVariable;

.field private E:Lcom/oppo/camera/entry/b;

.field private F:Landroid/app/Dialog;

.field private G:Ljava/lang/Thread;

.field private final H:Landroid/content/BroadcastReceiver;

.field private I:Landroid/content/BroadcastReceiver;

.field private J:Landroid/content/BroadcastReceiver;

.field private final K:Landroid/content/BroadcastReceiver;

.field private L:Landroid/content/BroadcastReceiver;

.field private M:Landroid/content/BroadcastReceiver;

.field private final m:Landroid/os/Handler;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/oppo/camera/e;

.field private y:Lcom/oppo/camera/i;

.field private z:Lcom/oppo/camera/Camera$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.color.provider.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/Camera;->g:Landroid/net/Uri;

    sget-object v0, Lcom/oppo/camera/Camera;->g:Landroid/net/Uri;

    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/Camera;->h:Landroid/net/Uri;

    sget-object v0, Lcom/oppo/camera/Camera;->g:Landroid/net/Uri;

    const-string v1, "pp_privacy_protect"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/Camera;->i:Landroid/net/Uri;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.RECORD_AUDIO"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/Camera;->k:Ljava/util/List;

    const v0, 0x1d4c0

    sput v0, Lcom/oppo/camera/Camera;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/oppo/camera/Camera$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/Camera$a;-><init>(Lcom/oppo/camera/Camera;Lcom/oppo/camera/Camera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->m:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/Camera;->n:I

    iput v0, p0, Lcom/oppo/camera/Camera;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->q:Z

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->s:Z

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->t:Z

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->u:Z

    iput-object v1, p0, Lcom/oppo/camera/Camera;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/Camera;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    iput-object v1, p0, Lcom/oppo/camera/Camera;->A:Landroid/content/ServiceConnection;

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->C:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->D:Landroid/os/ConditionVariable;

    new-instance v0, Lcom/oppo/camera/entry/b;

    invoke-direct {v0}, Lcom/oppo/camera/entry/b;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    iput-object v1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppo/camera/Camera$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/Camera$1;-><init>(Lcom/oppo/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->G:Ljava/lang/Thread;

    new-instance v0, Lcom/oppo/camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/oppo/camera/Camera$8;-><init>(Lcom/oppo/camera/Camera;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->H:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oppo/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/Camera$9;-><init>(Lcom/oppo/camera/Camera;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->I:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oppo/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/oppo/camera/Camera$10;-><init>(Lcom/oppo/camera/Camera;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->J:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oppo/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/oppo/camera/Camera$11;-><init>(Lcom/oppo/camera/Camera;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->K:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oppo/camera/Camera$12;

    invoke-direct {v0, p0}, Lcom/oppo/camera/Camera$12;-><init>(Lcom/oppo/camera/Camera;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->L:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oppo/camera/Camera$13;

    invoke-direct {v0, p0}, Lcom/oppo/camera/Camera$13;-><init>(Lcom/oppo/camera/Camera;)V

    iput-object v0, p0, Lcom/oppo/camera/Camera;->M:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/Camera$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/Camera$7;-><init>(Lcom/oppo/camera/Camera;)V

    const-string v2, "CameraManager instance"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/Camera;->o:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/Camera;->A:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Camera;->A:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;Lcom/oppo/camera/e;)Lcom/oppo/camera/e;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/Camera;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/Camera;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishActivityWithToast, toastMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoCamera"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/Camera;->p:Z

    invoke-static {}, Lcom/oppo/camera/MyApplication;->c()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "OppoCamera"

    if-eqz v5, :cond_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grantRuntimePermissions, permission: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/color/compat/os/UserHandleNative;->myUserId()I

    move-result v7

    invoke-static {v7}, Lcom/color/compat/os/UserHandleNative;->createUserHandle(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-static {v0, v5, v3, v7}, Lcom/color/compat/content/pm/PackageManagerNative;->grantRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_1
    if-eqz v1, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grantRuntimePermissions, permission appOpsResult: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-ne v5, v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5}, Lcom/color/compat/app/AppOpsManagerNative;->setUidMode(Landroid/app/AppOpsManager;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/Camera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/Camera;->r:Z

    return p1
.end method

.method private a([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    sget-object v4, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/oppo/camera/Camera;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkShowRequestPermission, permission: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoCamera"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/Camera;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/Camera;->n:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/Camera;)Lcom/oppo/camera/e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/Camera;->i:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    const-string v2, "pkg_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    const/4 p1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return p1

    :cond_5
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1

    :cond_8
    :goto_0
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return v1
.end method

.method private b(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRuntimePermission, ungrant permission: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoCamera"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/Camera;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/Camera;->D:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/Camera;->p:Z

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/Camera;->r:Z

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/Camera;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/Camera;->o:I

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/Camera;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/Camera;->n:I

    return p0
.end method

.method static synthetic h()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oppo/camera/Camera;->k:Ljava/util/List;

    return-object v0
.end method

.method private i()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oppo.gallery3d.action.DELETE_PICTURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Camera;->J:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/oppo/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.heytap.speechassist.intent.action.WINDOW_MANAGER_OCCUPIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.heytap.speechassist.intent.action.FLOAT_ACTIVITY_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Camera;->M:Landroid/content/BroadcastReceiver;

    const-string v3, "heytap.speechassist.permission.FLOAT_WINDOW_STATUS"

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/oppo/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private j()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Camera;->H:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/oppo/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.multimedia.record.conflict"

    invoke-static {v1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.media.ACTION_AUDIO_RECORD_INVALID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/Camera;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/oppo/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Camera;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/oppo/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Camera;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/Camera;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private l()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Camera;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 11

    const-string v0, "OppoCamera"

    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, v7, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget v9, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {p0, v7}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkCameraPermission, Failed getting permission info for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraPermission, Requesting permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/oppo/camera/Camera;->requestPermissions([Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCameraPermission, Failed getting package info for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private n()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "oppo.runtime.permission.alert.support"

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    const-string v2, "pref_runtime_alert_first_show"

    invoke-direct {p0, p0, v2, v1}, Lcom/oppo/camera/Camera;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/Camera;->r:Z

    iget-boolean v2, p0, Lcom/oppo/camera/Camera;->r:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/oppo/camera/Camera;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/oppo/camera/Camera;->q:Z

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->a(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->initialize(Lcom/oppo/camera/e/h;)V

    sget-object v1, Lcom/oppo/camera/Camera;->k:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/oppo/camera/Camera;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/oppo/camera/Camera;->showDialog(I)V

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/oppo/camera/e;->ar()V

    goto/16 :goto_2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "key_export_permission_requested"

    invoke-direct {p0, p0, v4, v3}, Lcom/oppo/camera/Camera;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    sget-object v5, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/oppo/camera/Camera;->q:Z

    sget-object v1, Lcom/oppo/camera/Camera;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/oppo/camera/Camera;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/oppo/camera/e;->ar()V

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/oppo/camera/Camera;->requestPermissions([Ljava/lang/String;I)V

    :cond_8
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraPermissionExp, supportRuntimeAlert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbRuntimeAlertFirstShow: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->r:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbHasNecessaryPermission: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->q:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o()Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()V
    .locals 9

    const-string v0, "OppoCamera"

    const-string v1, "showSettingsDialog"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0133

    invoke-virtual {p0, v1}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0f01e2

    invoke-virtual {p0, v6}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0f01e9

    invoke-virtual {p0, v7}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    const/4 v7, 0x2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0f01df

    invoke-virtual {p0, v8}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    const/4 v8, 0x3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f01e4

    invoke-virtual {p0, v5}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcolor/support/v7/app/b$a;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/oppo/camera/Camera$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/Camera$3;-><init>(Lcom/oppo/camera/Camera;)V

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->b(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x7f0f01e8

    new-array v3, v6, [Ljava/lang/Object;

    const v5, 0x7f0f007b

    invoke-virtual {p0, v5}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/oppo/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x7f0f01e6

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/oppo/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0f01e7

    new-instance v2, Lcom/oppo/camera/Camera$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/Camera$2;-><init>(Lcom/oppo/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0f01e5

    new-instance v2, Lcom/oppo/camera/Camera$14;

    invoke-direct {v2, p0}, Lcom/oppo/camera/Camera$14;-><init>(Lcom/oppo/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcolor/support/v7/app/b$a;->a(Z)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/e;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.coloros.gallery3d"

    invoke-direct {p0, v0}, Lcom/oppo/camera/Camera;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;

    const-string v1, "enter"

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->s()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mCameraEnterTimeGap:J

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mEnterCallPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mShortcutType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mCameraEnterType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->n()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mbFromLock:Z

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->onResume()V

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->report()V

    return-void
.end method

.method private s()V
    .locals 5

    new-instance v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;

    const-string v1, "exit"

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mExitCallPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mShortcutType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v1}, Lcom/oppo/camera/e;->T()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mbToGallery:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oppo/camera/Camera;->B:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mResumePauseTime:J

    iget-object v1, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mCameraEnterType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v1}, Lcom/oppo/camera/e;->as()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->mResumePauseVideoTime:J

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->onPause()V

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/EnterExitDcsMsgData;->report()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/e;->a(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->m(Z)V

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->g(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public b()V
    .locals 7

    const-string v0, "OppoCamera"

    const-string v1, "onPreviewOKMessage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "versionCommit"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "versionDate"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, "_"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/Camera;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewOKMessage, Camera versionCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", versionInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/Camera;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/Camera;->G:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    const-string v1, "MediaServiceThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->G:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->t:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->c()V

    :cond_5
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    const-string v0, "OppoCamera"

    const-string v1, "keepScreenOnAwhile"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->m:Landroid/os/Handler;

    sget v2, Lcom/oppo/camera/Camera;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-static {}, Lcom/oppo/camera/o/d;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    const-string v2, "OppoCamera"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->G()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "dispatchTouchEvent, LocationDialog not show"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent, X: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", Y: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->b(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "dispatchTouchEvent, camera on switching...."

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "dispatchTouchEvent, consume by super"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    const-string v0, "OppoCamera"

    const-string v1, "keepScreenOn"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public f()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public finish()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish, isFinishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "open_from_dialog"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    const v0, 0x7f010052

    const v1, 0x7f010053

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/Camera;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 9

    const-string v0, "value"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/oppo/camera/Camera;->h:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "key= ?"

    const-string v7, "pp_privacy_protect"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :cond_3
    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    move v1, v3

    :cond_4
    if-eqz v2, :cond_5

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "OppoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneEncrypted, failed to open cursor error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/Camera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->finish()V

    const-string p1, "crop-temp"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/l/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->n()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->t:Z

    const-string v0, "OppoCamera"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ac()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "OppoCamera"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->X()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->s:Z

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Camera.onCreate"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oppo/camera/debug/DebugUtil;->initDebug(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f00e6

    invoke-virtual {p0, p1}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/Camera;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/oppo/camera/i;

    invoke-direct {v2, p0}, Lcom/oppo/camera/i;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    invoke-virtual {v2, v3, p0, v4}, Lcom/oppo/camera/entry/b;->a(Landroid/content/Intent;Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iget-object v2, p0, Lcom/oppo/camera/Camera;->D:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->n()V

    iget-object v2, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    iget-object v4, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    iget-boolean v6, p0, Lcom/oppo/camera/Camera;->q:Z

    invoke-virtual {v2, v4, v5, v6}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/i;Lcom/oppo/camera/entry/b;Z)V

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/oppo/camera/Camera;->u:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    iget-object v4, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v2, v4, v5, v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/i;Lcom/oppo/camera/entry/b;Z)V

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/oppo/camera/update/UpdateUtil;->getInstance(Landroid/content/Context;)Lcom/oppo/camera/update/UpdateUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/update/UpdateUtil;->startUpdateAllPara()V

    invoke-static {p0}, Lcom/oppo/camera/o/d;->f(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/oppo/camera/d;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/oppo/camera/statistics/model/DcsMsgData;->init(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0029

    invoke-virtual {p0, p1}, Lcom/oppo/camera/Camera;->setContentView(I)V

    iget-object p1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->aa()V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->m()V

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "keyguard_start_timestamp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/Camera;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-direct {p0}, Lcom/oppo/camera/Camera;->i()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate X, this: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateDialog, id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mbRuntimeAlertFirstShow: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->r:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mTermsSecurityDialog: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoCamera"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/Camera;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onCreateDialog, mTermsSecurityDialog already shown, so return"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f0f01de

    invoke-virtual {p0, p2}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/color/support/widget/f$a;

    invoke-direct {p2, p0}, Lcom/color/support/widget/f$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01e1

    invoke-virtual {p2, v1}, Lcom/color/support/widget/f$a;->a(I)Lcom/color/support/widget/f$a;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/color/support/widget/f$a;->a(Z)Lcom/color/support/widget/f$a;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/color/support/widget/f$a;->b(Z)Lcom/color/support/widget/f$a;

    move-result-object p2

    const v3, 0x7f0f01e0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0f007b

    invoke-virtual {p0, v5}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/oppo/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/color/support/widget/f$a;->a(Ljava/lang/String;)Lcom/color/support/widget/f$a;

    move-result-object p1

    const p2, 0x7f0f00a7

    invoke-virtual {p1, p2}, Lcom/color/support/widget/f$a;->d(I)Lcom/color/support/widget/f$a;

    move-result-object p1

    const p2, 0x7f0f00a6

    invoke-virtual {p1, p2}, Lcom/color/support/widget/f$a;->c(I)Lcom/color/support/widget/f$a;

    move-result-object p1

    new-instance p2, Lcom/oppo/camera/Camera$4;

    invoke-direct {p2, p0}, Lcom/oppo/camera/Camera$4;-><init>(Lcom/oppo/camera/Camera;)V

    invoke-virtual {p1, p2}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$b;)Lcom/color/support/widget/f$a;

    new-instance p2, Lcom/oppo/camera/Camera$5;

    invoke-direct {p2, p0}, Lcom/oppo/camera/Camera$5;-><init>(Lcom/oppo/camera/Camera;)V

    invoke-virtual {p1, p2}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$a;

    invoke-virtual {p1}, Lcom/color/support/widget/f$a;->b()Lcom/color/support/widget/f;

    invoke-virtual {p1}, Lcom/color/support/widget/f$a;->a()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    new-instance p2, Lcom/oppo/camera/Camera$6;

    invoke-direct {p2, p0}, Lcom/oppo/camera/Camera$6;-><init>(Lcom/oppo/camera/Camera;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string p1, "onCreateDialog, mTermsSecurityDialog init assignment"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    return-object p1

    :cond_1
    return-object p2
.end method

.method protected onDestroy()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/oppo/camera/update/UpdateUtil;->release()V

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->p:Z

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ae()V

    iput-object v2, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    :cond_0
    invoke-static {}, Lcom/oppo/camera/config/CameraConfig;->release()V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->G:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    iput-object v2, p0, Lcom/oppo/camera/Camera;->G:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/oppo/camera/o/d;->g()V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->A:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/oppo/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/oppo/camera/Camera;->A:Landroid/content/ServiceConnection;

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/oppo/camera/i;->a(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/oppo/camera/Camera;->F:Landroid/app/Dialog;

    :cond_4
    invoke-static {}, Lcom/oppo/camera/MyApplication;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy X, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->t:Z

    const-string v0, "OppoCamera"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown, keycode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->p:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/e;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp, keyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->p:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/e;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    const p1, 0x7f0f00e6

    invoke-virtual {p0, p1}, Lcom/oppo/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/Camera;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "OppoCamera"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/entry/b;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "keyguard_start_timestamp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/Camera;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->ab()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oppo.camera.switch"

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/i;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/oppo/camera/ui/control/g;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->p:Z

    iget-object v0, p0, Lcom/oppo/camera/Camera;->z:Lcom/oppo/camera/Camera$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/Camera$b;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->q()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->s(Z)V

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->k()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    if-eqz v0, :cond_1

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/i;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v3, "off"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Camera;->m:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->o()V

    invoke-static {}, Lcom/oppo/camera/o/d;->v()V

    invoke-static {}, Lcom/oppo/camera/o/d;->m()V

    invoke-static {p0}, Lcom/oppo/camera/update/UpdateUtil;->getInstance(Landroid/content/Context;)Lcom/oppo/camera/update/UpdateUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/update/UpdateUtil;->onPause()V

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->s()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause X, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    const-string v1, "onRequestPermissionsResult, not granted permission: "

    const-string v2, "OppoCamera"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    const-string p1, "key_export_permission_requested"

    invoke-direct {p0, p0, p1, v4}, Lcom/oppo/camera/Camera;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    move p1, v3

    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_2

    aget v0, p3, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/Camera;->j:Ljava/util/List;

    aget-object v5, p2, p1

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :cond_0
    aget-object v0, p2, p1

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, p3, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ar()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/oppo/camera/Camera;->q:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRequestPermissionsResult, mbHasNecesaryPermission: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oppo/camera/Camera;->q:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oppo/camera/Camera;->q:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->initialize(Lcom/oppo/camera/e/h;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2}, Lcom/oppo/camera/Camera;->a([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->p()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->finish()V

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_1
    array-length v5, p3

    if-ge v0, v5, :cond_7

    aget v5, p3, v0

    if-eqz v5, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRequestPermissionsResult, requestCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lenght: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", granted: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->finish()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbDisplayOnLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Lcom/oppo/camera/e;->ag()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVersionInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/Camera;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OppoCamera"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->p()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v3, Lcom/oppo/camera/o/d;->a:I

    if-eq v0, v3, :cond_0

    invoke-static {p0}, Lcom/oppo/camera/o/d;->g(Landroid/content/Context;)Landroid/content/Context;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oppo/camera/Camera;->B:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->p:Z

    iput-boolean v0, p0, Lcom/oppo/camera/Camera;->s:Z

    iget-object v3, p0, Lcom/oppo/camera/Camera;->z:Lcom/oppo/camera/Camera$b;

    if-nez v3, :cond_1

    new-instance v3, Lcom/oppo/camera/Camera$b;

    invoke-direct {v3, p0, p0}, Lcom/oppo/camera/Camera$b;-><init>(Lcom/oppo/camera/Camera;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oppo/camera/Camera;->z:Lcom/oppo/camera/Camera$b;

    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/Camera;->z:Lcom/oppo/camera/Camera$b;

    invoke-virtual {v3}, Lcom/oppo/camera/Camera$b;->enable()V

    sget v3, Lcom/oppo/camera/Camera;->l:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oppo.camera.finish.delay"

    invoke-static {v4, v3}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/oppo/camera/Camera;->l:I

    iget-object v3, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    iget-boolean v4, p0, Lcom/oppo/camera/Camera;->q:Z

    const-string v5, "com.coloros.gallery3d"

    invoke-direct {p0, v5}, Lcom/oppo/camera/Camera;->b(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/oppo/camera/e;->c(ZZ)V

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->r()V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->d()V

    iget-object v3, p0, Lcom/oppo/camera/Camera;->y:Lcom/oppo/camera/i;

    invoke-virtual {v3, p0}, Lcom/oppo/camera/i;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/oppo/camera/Camera;->j()V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oppo_is_camera_recording"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v3, p0, Lcom/oppo/camera/Camera;->u:Z

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/camera/config/CameraConfig;->initialize(Lcom/oppo/camera/e/h;)V

    :cond_2
    invoke-static {}, Lcom/oppo/camera/o/d;->l()V

    iget-boolean v3, p0, Lcom/oppo/camera/Camera;->C:Z

    if-nez v3, :cond_5

    invoke-static {}, Lcom/oppo/camera/o/d;->x()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x10001

    const/high16 v5, 0x10000

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_3
    const/16 v0, 0x1b

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    if-ge v0, v3, :cond_4

    invoke-static {}, Lcom/oppo/camera/o/d;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x404

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    iput-boolean v4, p0, Lcom/oppo/camera/Camera;->C:Z

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume X, this: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    invoke-virtual {v1}, Lcom/oppo/camera/e;->ag()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/Camera;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/oppo/camera/MyApplication;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->finish()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbExitCameraUseBackKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Camera;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyguardStartTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Camera;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCamera"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->E:Lcom/oppo/camera/entry/b;

    iget-object v2, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/e;->ay()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/oppo/camera/entry/b;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/oppo/camera/Camera;->x:Lcom/oppo/camera/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/e;->a()V

    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oppo_is_camera_recording"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/Camera;->v:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move-object v3, v2

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v2, p0, Lcom/oppo/camera/Camera;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop X, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeStamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Lcom/oppo/camera/Camera;->d()V

    return-void
.end method
