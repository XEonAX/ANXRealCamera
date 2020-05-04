.class public Lcom/oppo/camera/e;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/q$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/e$i;,
        Lcom/oppo/camera/e$m;,
        Lcom/oppo/camera/e$l;,
        Lcom/oppo/camera/e$n;,
        Lcom/oppo/camera/e$z;,
        Lcom/oppo/camera/e$y;,
        Lcom/oppo/camera/e$c;,
        Lcom/oppo/camera/e$j;,
        Lcom/oppo/camera/e$s;,
        Lcom/oppo/camera/e$w;,
        Lcom/oppo/camera/e$v;,
        Lcom/oppo/camera/e$g;,
        Lcom/oppo/camera/e$b;,
        Lcom/oppo/camera/e$t;,
        Lcom/oppo/camera/e$h;,
        Lcom/oppo/camera/e$q;,
        Lcom/oppo/camera/e$a;,
        Lcom/oppo/camera/e$u;,
        Lcom/oppo/camera/e$k;,
        Lcom/oppo/camera/e$x;,
        Lcom/oppo/camera/e$d;,
        Lcom/oppo/camera/e$r;,
        Lcom/oppo/camera/e$e;,
        Lcom/oppo/camera/e$f;,
        Lcom/oppo/camera/e$o;,
        Lcom/oppo/camera/e$p;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:J

.field private I:J

.field private J:J

.field private K:F

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:J

.field protected a:I

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/String;

.field private aN:Ljava/lang/String;

.field private aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

.field private aP:Ljava/lang/String;

.field private aQ:Ljava/lang/Object;

.field private aR:Ljava/lang/Object;

.field private aS:Landroid/os/ConditionVariable;

.field private aT:Landroid/app/Activity;

.field private aU:Lcom/oppo/camera/i;

.field private aV:Landroid/content/SharedPreferences;

.field private aW:Landroid/content/SharedPreferences;

.field private aX:Lcom/oppo/camera/e/f;

.field private aY:Lcom/oppo/camera/e/h;

.field private aZ:Lcom/oppo/camera/e/f$e;

.field private aa:Ljava/lang/String;

.field private ab:Z

.field private volatile ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Z

.field private az:Z

.field protected b:I

.field private bA:Lcom/oppo/camera/Ipa/e;

.field private bB:Landroid/view/VelocityTracker;

.field private bC:Landroid/view/GestureDetector;

.field private bD:Lcom/oppo/camera/u;

.field private bE:Lcom/oppo/camera/m;

.field private bF:Landroid/hardware/fingerprint/FingerprintManager;

.field private bG:Ljava/lang/Thread;

.field private bH:Lcom/oppo/camera/e$c;

.field private bI:Landroid/hardware/cabc/CabcManager;

.field private bJ:Lcom/oppo/camera/w;

.field private bK:Landroid/os/Handler;

.field private bL:Landroid/os/HandlerThread;

.field private bM:Landroid/net/Uri;

.field private bN:F

.field private bO:Lcom/oppo/camera/sticker/data/StickerItem;

.field private bP:Landroid/content/pm/ShortcutManager;

.field private bQ:Lcom/oppo/camera/entry/b;

.field private bR:[B

.field private bS:Lcom/oppo/camera/e$p;

.field private bT:Lcom/oppo/camera/k;

.field private bU:Lcom/oppo/camera/n;

.field private bV:Lcom/oppo/camera/s;

.field private bW:Landroid/util/Size;

.field private bX:Lcom/oppo/camera/e/f$b;

.field private bY:I

.field private bZ:Lcom/google/lens/sdk/LensApi;

.field private ba:Lcom/oppo/camera/e/f$f;

.field private bb:Landroid/media/ImageReader;

.field private bc:Landroid/media/ImageReader;

.field private bd:Landroid/media/ImageReader;

.field private be:Landroid/media/ImageReader;

.field private bf:Landroid/media/ImageReader;

.field private bg:Landroid/media/ImageReader;

.field private bh:Landroid/media/ImageReader;

.field private bi:Landroid/media/ImageReader;

.field private bj:Landroid/media/ImageReader;

.field private bk:Lcom/oppo/camera/f;

.field private bl:[Landroid/hardware/camera2/params/Face;

.field private bm:I

.field private bn:Landroid/graphics/Rect;

.field private bo:Landroid/graphics/Rect;

.field private bp:Lcom/oppo/camera/o;

.field private bq:Lcom/oppo/camera/ui/e;

.field private br:Lcom/oppo/camera/ui/preview/a/i;

.field private bs:Lcom/oppo/camera/ui/preview/h;

.field private bt:Lcom/oppo/camera/x;

.field private bu:Lcom/oppo/camera/e$y;

.field private bv:Lcom/oppo/camera/d/i;

.field private bw:Landroid/os/AsyncTask;

.field private bx:Lcom/oppo/camera/t;

.field private by:Landroid/hardware/foss/FossManager;

.field private bz:Lcom/oppo/camera/ui/control/h;

.field private final cA:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cB:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cC:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cD:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cE:Landroid/media/ImageReader$OnImageAvailableListener;

.field private cF:Lcom/oppo/camera/k$c;

.field private cG:Lcom/oppo/camera/e$f;

.field private cH:I

.field private cI:Lcom/oppo/camera/e$b;

.field private cJ:Lcom/oppo/camera/e$h;

.field private cK:Lcom/oppo/camera/e$t;

.field private cL:Lcom/oppo/camera/q;

.field private cM:Lcom/oppo/camera/n/a;

.field private cN:Landroid/media/ImageReader$OnImageAvailableListener;

.field private cO:Landroid/media/ImageReader$OnImageAvailableListener;

.field private cP:Lcom/oppo/camera/t$c;

.field private cQ:Lcom/oppo/camera/ui/preview/a/i$a;

.field private cR:Lcom/oppo/camera/e/f$c;

.field private cS:Lcom/oppo/camera/d/b;

.field private cT:Lcom/oppo/camera/ui/preview/c;

.field private cU:Lcom/oppo/camera/ui/d;

.field private cV:Lcom/oppo/camera/ui/menu/e;

.field private cW:Lcom/oppo/camera/Ipa/e$b;

.field private cX:Lcom/oppo/camera/ui/control/f;

.field private cY:Lcom/oppo/camera/ui/control/a;

.field private ca:Z

.field private cb:Z

.field private cc:Lcom/oppo/camera/e$l;

.field private cd:Lcom/oppo/camera/e$n;

.field private ce:B

.field private cf:Z

.field private cg:Z

.field private ch:Z

.field private ci:Z

.field private cj:Lcom/oppo/camera/Ipa/ImageProcessService;

.field private ck:Lcom/oppo/camera/jni/NativeBufferProducer;

.field private cl:Lcom/oppo/camera/Ipa/b$c;

.field private cm:Ljava/util/List;

.field private cn:Landroid/os/Handler;

.field private co:J

.field private cp:J

.field private cq:Ljava/lang/String;

.field private cr:Lcom/oppo/camera/e$i;

.field private cs:Z

.field private ct:J

.field private cu:Ljava/lang/Object;

.field private cv:Ljava/lang/reflect/Method;

.field private cw:Ljava/lang/reflect/Method;

.field private final cx:Lcom/oppo/camera/Ipa/c;

.field private final cy:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cz:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Object;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:[I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/f;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/oppo/camera/e;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/e;->b:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->g:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->h:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->i:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e;->j:Ljava/util/concurrent/ExecutorService;

    const/16 v1, 0xff

    iput v1, p0, Lcom/oppo/camera/e;->k:I

    iput v0, p0, Lcom/oppo/camera/e;->l:I

    iput v0, p0, Lcom/oppo/camera/e;->m:I

    iput v0, p0, Lcom/oppo/camera/e;->n:I

    iput v0, p0, Lcom/oppo/camera/e;->o:I

    iput v0, p0, Lcom/oppo/camera/e;->p:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/e;->q:I

    iput v1, p0, Lcom/oppo/camera/e;->r:I

    iput v0, p0, Lcom/oppo/camera/e;->s:I

    iput v0, p0, Lcom/oppo/camera/e;->v:I

    iput v0, p0, Lcom/oppo/camera/e;->w:I

    iput v1, p0, Lcom/oppo/camera/e;->x:I

    iput v0, p0, Lcom/oppo/camera/e;->y:I

    iput v1, p0, Lcom/oppo/camera/e;->z:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/e;->A:J

    iput-wide v1, p0, Lcom/oppo/camera/e;->B:J

    iput-wide v1, p0, Lcom/oppo/camera/e;->G:J

    iput-wide v1, p0, Lcom/oppo/camera/e;->H:J

    iput-wide v1, p0, Lcom/oppo/camera/e;->I:J

    iput-wide v1, p0, Lcom/oppo/camera/e;->J:J

    iput-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->O:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->Q:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->R:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->S:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->W:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    iput v0, p0, Lcom/oppo/camera/e;->Y:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oppo/camera/e;->Z:J

    const-string v3, ""

    iput-object v3, p0, Lcom/oppo/camera/e;->aa:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ab:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ac:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ag:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ah:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ai:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/camera/e;->ak:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->al:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->am:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->an:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ao:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aq:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ar:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->as:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->at:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aw:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ax:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ay:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->az:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aA:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aB:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aC:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aD:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aE:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aF:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aG:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oppo/camera/e;->aH:Ljava/lang/String;

    iput-object v5, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    const-string v6, "off"

    iput-object v6, p0, Lcom/oppo/camera/e;->aJ:Ljava/lang/String;

    const-string v6, "on"

    iput-object v6, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    iput-object v6, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    const-string v6, "normal"

    iput-object v6, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/camera/e;->aN:Ljava/lang/String;

    iput-object v5, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iput-object v5, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->aR:Ljava/lang/Object;

    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->aS:Landroid/os/ConditionVariable;

    iput-object v5, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iput-object v5, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    iput-object v5, p0, Lcom/oppo/camera/e;->aW:Landroid/content/SharedPreferences;

    iput-object v5, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iput-object v5, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    iput-object v5, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    iput-object v5, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    iput-object v5, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->be:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    iput-object v5, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    iput v0, p0, Lcom/oppo/camera/e;->bm:I

    iput-object v5, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/oppo/camera/e;->bo:Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    iput-object v5, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iput-object v5, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iput-object v5, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iput-object v5, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iput-object v5, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    iput-object v5, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    iput-object v5, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    iput-object v5, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    iput-object v5, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    iput-object v5, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    iput-object v5, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    iput-object v5, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v5, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    iput-object v5, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    iput-object v5, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    iput-object v5, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    iput-object v5, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    iput-object v5, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/camera/e;->bN:F

    iput-object v5, p0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    iput-object v5, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    iput-object v5, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    iput-object v5, p0, Lcom/oppo/camera/e;->bR:[B

    iput-object v5, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    iput-object v5, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    iput-object v5, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    iput-object v5, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    iput-object v5, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    iput v0, p0, Lcom/oppo/camera/e;->bY:I

    iput-object v5, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ca:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->cb:Z

    iput-object v5, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    iput-object v5, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    iput-byte v0, p0, Lcom/oppo/camera/e;->ce:B

    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    iput-boolean v4, p0, Lcom/oppo/camera/e;->cg:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ch:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ci:Z

    iput-object v5, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    new-instance v3, Lcom/oppo/camera/jni/NativeBufferProducer;

    invoke-direct {v3}, Lcom/oppo/camera/jni/NativeBufferProducer;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->ck:Lcom/oppo/camera/jni/NativeBufferProducer;

    iput-object v5, p0, Lcom/oppo/camera/e;->cl:Lcom/oppo/camera/Ipa/b$c;

    iput-object v5, p0, Lcom/oppo/camera/e;->cm:Ljava/util/List;

    iput-object v5, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    iput-wide v1, p0, Lcom/oppo/camera/e;->co:J

    iput-wide v1, p0, Lcom/oppo/camera/e;->cp:J

    iput-object v6, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    iput-object v5, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    iput-boolean v0, p0, Lcom/oppo/camera/e;->cs:Z

    iput-wide v1, p0, Lcom/oppo/camera/e;->ct:J

    iput-object v5, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    iput-object v5, p0, Lcom/oppo/camera/e;->cv:Ljava/lang/reflect/Method;

    iput-object v5, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    new-instance v1, Lcom/oppo/camera/e$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$1;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    new-instance v1, Lcom/oppo/camera/e$12;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$12;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cy:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v1, Lcom/oppo/camera/e$23;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$23;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cz:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v1, Lcom/oppo/camera/e$34;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$34;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cA:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v1, Lcom/oppo/camera/e$45;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$45;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cB:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v1, Lcom/oppo/camera/e$49;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$49;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cC:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v1, Lcom/oppo/camera/e$50;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$50;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cD:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v1, Lcom/oppo/camera/e$51;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$51;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cE:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v1, Lcom/oppo/camera/e$52;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$52;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cF:Lcom/oppo/camera/k$c;

    iput-object v5, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iput v0, p0, Lcom/oppo/camera/e;->cH:I

    new-instance v0, Lcom/oppo/camera/e$b;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$b;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cI:Lcom/oppo/camera/e$b;

    new-instance v0, Lcom/oppo/camera/e$h;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$h;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    new-instance v0, Lcom/oppo/camera/e$t;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$t;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cK:Lcom/oppo/camera/e$t;

    iput-object v5, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    new-instance v0, Lcom/oppo/camera/e$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$2;-><init>(Lcom/oppo/camera/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v0, Lcom/oppo/camera/e$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$3;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cN:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/oppo/camera/e$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$4;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cO:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/oppo/camera/e$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$5;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cP:Lcom/oppo/camera/t$c;

    new-instance v0, Lcom/oppo/camera/e$24;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$24;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cQ:Lcom/oppo/camera/ui/preview/a/i$a;

    new-instance v0, Lcom/oppo/camera/e$32;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$32;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cR:Lcom/oppo/camera/e/f$c;

    new-instance v0, Lcom/oppo/camera/e$35;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$35;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    new-instance v0, Lcom/oppo/camera/e$37;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$37;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cT:Lcom/oppo/camera/ui/preview/c;

    new-instance v0, Lcom/oppo/camera/e$38;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$38;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    new-instance v0, Lcom/oppo/camera/e$39;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$39;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cV:Lcom/oppo/camera/ui/menu/e;

    new-instance v0, Lcom/oppo/camera/e$40;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$40;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cW:Lcom/oppo/camera/Ipa/e$b;

    new-instance v0, Lcom/oppo/camera/e$41;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$41;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cX:Lcom/oppo/camera/ui/control/f;

    new-instance v0, Lcom/oppo/camera/e$46;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$46;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    iput-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    new-instance p2, Lcom/oppo/camera/d/i;

    invoke-direct {p2, p1}, Lcom/oppo/camera/d/i;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/e;->cm:Ljava/util/List;

    return-void
.end method

.method static synthetic A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    return-object p0
.end method

.method private A(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private B(Z)Z
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->K()Z

    move-result v0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_1

    const-string p1, "checkReadyToCapture, video alert showing, so return"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget v0, p0, Lcom/oppo/camera/e;->Y:I

    if-eqz v0, :cond_2

    const-string p1, "checkReadyToCapture, burst capture is processing"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "panorama"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->a(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(I)Z

    move-result v0

    :goto_0
    iget-boolean v4, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v4, :cond_15

    iget-boolean v4, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz v4, :cond_15

    if-nez v0, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aB()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "checkReadyToCapture, isEffectMenuScrolling, so return"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1, v4}, Lcom/oppo/camera/j/b;->a(ZLandroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p1, "checkReadyToCapture, memory or storage is not enough"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->F()V

    return v1

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/oppo/camera/Ipa/ImageProcessService$a;->CHECK_QUEUE_TYPE_HIGHT_PICTURE_SIZE:Lcom/oppo/camera/Ipa/ImageProcessService$a;

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/oppo/camera/Ipa/ImageProcessService$a;->CHECK_QUEUE_TYPE_COMMON:Lcom/oppo/camera/Ipa/ImageProcessService$a;

    :goto_1
    invoke-virtual {v0, v4}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService$a;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string p1, "checkReadyToCapture, IpaProcess queue is full!"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->N()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "checkReadyToCapture, sStorageStatus is failed, so return"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz p1, :cond_9

    new-instance v0, Lcom/oppo/camera/e$42;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$42;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    return v1

    :cond_a
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_b

    new-instance v4, Lcom/oppo/camera/e$43;

    invoke-direct {v4, p0}, Lcom/oppo/camera/e$43;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->e()I

    move-result v0

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "professional"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    if-le v0, v4, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReadyToCapture, rawCount: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v4, 0x7f0f018f

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    return v1

    :cond_c
    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/oppo/camera/e;->d()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    if-eqz v0, :cond_d

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "checkReadyToCapture, stopTakePicture sucess, so return"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_e
    invoke-virtual {p0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    const-string v4, ", so return"

    const-string v5, "checkReadyToCapture, mCameraState: "

    if-nez v0, :cond_13

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v6, 0x5

    if-ne v0, v6, :cond_f

    goto :goto_3

    :cond_f
    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->j()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "checkReadyToCapture, checkStateBeforeCapture true, so return"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_10
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->Y()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_2

    :cond_11
    invoke-direct {p0}, Lcom/oppo/camera/e;->bs()Z

    return v3

    :cond_12
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getIsCapturingState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkReadyToCapture, mbSwitchingCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbCaptureModeChanging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSizeChanging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReadyToCapture, mbPaused: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbInitialized: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSoundLoaded: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic B(Lcom/oppo/camera/e;)[Landroid/hardware/camera2/params/Face;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    return-object p0
.end method

.method static synthetic C(Lcom/oppo/camera/e;)Lcom/oppo/camera/o;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    return-object p0
.end method

.method private C(Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ci:Z

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v1, "CameraManager"

    if-nez v0, :cond_0

    const-string p1, "capture, mOneCamera null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "normal"

    iput-object p1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ci:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture, mbSendCapturePictureRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e;->ci:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$44;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e$44;-><init>(Lcom/oppo/camera/e;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    return-object p0
.end method

.method private D(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCaptureType:I

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCameraEnterType:Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCameraId:Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/e;->n:I

    iput v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mOrientation:I

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mScreenBrightness:I

    invoke-virtual {p1}, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->report()V

    :cond_1
    return-void
.end method

.method static synthetic E(Lcom/oppo/camera/e;)Landroid/hardware/cabc/CabcManager;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bI:Landroid/hardware/cabc/CabcManager;

    return-object p0
.end method

.method static synthetic F(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->br()Lcom/oppo/camera/u;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    return-object p0
.end method

.method static synthetic H(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->q:I

    return p0
.end method

.method static synthetic I(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bt()V

    return-void
.end method

.method static synthetic J(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->U:Z

    return p0
.end method

.method static synthetic K(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->ao:Z

    return p0
.end method

.method static synthetic L(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->V:Z

    return p0
.end method

.method static synthetic M(Lcom/oppo/camera/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic N(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->O:Z

    return p0
.end method

.method static synthetic O(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic P(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aK()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Q(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->ar:Z

    return p0
.end method

.method static synthetic R(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->av:Z

    return p0
.end method

.method static synthetic S(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->az:Z

    return p0
.end method

.method static synthetic T(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->T:Z

    return p0
.end method

.method static synthetic U(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->am:Z

    return p0
.end method

.method static synthetic V(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->n:I

    return p0
.end method

.method static synthetic W(Lcom/oppo/camera/e;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic X(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    return-object p0
.end method

.method static synthetic Y(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aX()V

    return-void
.end method

.method static synthetic Z(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bf()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;B)B
    .locals 0

    iput-byte p1, p0, Lcom/oppo/camera/e;->ce:B

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->v:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/e;->co:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/hardware/cabc/CabcManager;)Landroid/hardware/cabc/CabcManager;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bI:Landroid/hardware/cabc/CabcManager;

    return-object p1
.end method

.method private a(Lcom/oppo/camera/d/a;)Landroid/util/Size;
    .locals 3

    const-string v0, "CameraManager"

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePreviewSize, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/a;->f(I)V

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/f;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePreviewSize, previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/Ipa/b$c;)Lcom/oppo/camera/Ipa/b$c;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->cl:Lcom/oppo/camera/Ipa/b$c;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/e$c;)Lcom/oppo/camera/e$c;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/e$f;)Lcom/oppo/camera/e$f;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/e/h;)Lcom/oppo/camera/e/h;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/u;)Lcom/oppo/camera/u;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->aa:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p4, p5}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p4, p0, Lcom/oppo/camera/e;->aW:Landroid/content/SharedPreferences;

    if-eqz p4, :cond_1

    invoke-interface {p4, p3, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_2

    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private a(IZ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useIsoSetDisplay, messageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "useIsoSetDisplay"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/e;->aq:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    const/16 v1, 0x5f

    const-wide/16 v4, 0x320

    if-eq p1, v1, :cond_2

    const/16 v1, 0x60

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v3, v4, v5}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "oppo_in_camera_mode"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v2, v4, v5}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(IZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    const-string v1, "CameraManager"

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/t;->b()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraTest Camera Switch Start, cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->g(Z)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->w(Z)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v2, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/e;->L(Z)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/e;->p(Z)V

    :cond_2
    iput v2, p0, Lcom/oppo/camera/e;->v:I

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aC:Z

    iget-object v1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/h;->u()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->j(I)V

    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->i(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->w(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/oppo/camera/e$f;->f:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oppo/camera/e;->aX()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/e;->N()V

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget-boolean p1, p1, Lcom/oppo/camera/e$f;->f:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/oppo/camera/e;->aX()V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iput-boolean v0, p1, Lcom/oppo/camera/e$f;->g:Z

    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, v0, p2, p3}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraIdChange, mbPaused: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbFrameAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/e;->ap:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/media/ImageReader;)V
    .locals 18

    move-object/from16 v6, p0

    const-string v0, "CameraManager"

    const-string v1, "addImageToIpa, start"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-static {v7}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;)V

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v8, v5, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v10, v5, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    new-array v12, v9, [Ljava/nio/ByteBuffer;

    aput-object v8, v12, v4

    const/4 v11, 0x1

    aput-object v10, v12, v11

    new-array v13, v9, [I

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    aput v8, v13, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    aput v8, v13, v11

    new-array v14, v9, [I

    aput v1, v14, v4

    aput v2, v14, v11

    new-array v15, v9, [I

    aget-object v8, v5, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aput v8, v15, v4

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aput v5, v15, v11

    iget-object v11, v6, Lcom/oppo/camera/e;->ck:Lcom/oppo/camera/jni/NativeBufferProducer;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/oppo/camera/jni/NativeBufferProducer;->getNativeBuffer([Ljava/nio/ByteBuffer;[I[I[IZZ)Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addImageToIpa, nativeBufferInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mThumbnailInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/oppo/camera/e;->cl:Lcom/oppo/camera/Ipa/b$c;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v8, "addImageToIpa, nativeBufferInfo is null!"

    invoke-static {v0, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/oppo/camera/Ipa/b$a;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b$a;-><init>()V

    iput-object v5, v0, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v2, v0, Lcom/oppo/camera/Ipa/b$a;->f:I

    const/16 v1, 0x11

    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->i:I

    iput v3, v0, Lcom/oppo/camera/Ipa/b$a;->g:I

    iput v2, v0, Lcom/oppo/camera/Ipa/b$a;->h:I

    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    iget v1, v6, Lcom/oppo/camera/e;->m:I

    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->j:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->o:I

    iput-boolean v4, v0, Lcom/oppo/camera/Ipa/b$a;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/Ipa/b$a;->p:J

    iget-object v1, v6, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$a;)V

    :cond_1
    const-string v1, "pref_support_capture_preview"

    invoke-virtual {v6, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v6, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "func_post_thumbnail"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v6, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    iget-wide v3, v0, Lcom/oppo/camera/Ipa/b$a;->p:J

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->a(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/e;->a(JLjava/lang/String;ZZ)V

    :cond_2
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->b(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->a(Landroid/media/ImageReader;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/e;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->e(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e;->a(ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildMenuClick(Ljava/lang/String;ZZZ)V

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method private a(ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraTest Camera Mode Change Start, isAsync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", checkToAsync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", fromAnimation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mbPaused: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraManager"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/oppo/camera/e;->P:Z

    if-nez v4, :cond_10

    iget-object v4, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v0, v4}, Lcom/oppo/camera/e;->f(Z)V

    :cond_1
    const/4 v6, 0x0

    if-nez v1, :cond_2

    iget-object v7, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v7, v6, v6}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aU()V

    iget-object v7, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v8, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v8}, Lcom/oppo/camera/entry/b;->r()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    move v8, v4

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    invoke-static {v8}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_mode_key"

    invoke-virtual {v7, v9, v8}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v8, v6}, Lcom/oppo/camera/ui/e;->w(Z)V

    iget-object v8, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v8}, Lcom/oppo/camera/ui/e;->aI()V

    iget-object v8, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v8}, Lcom/oppo/camera/ui/e;->D()V

    iput v6, v0, Lcom/oppo/camera/e;->v:I

    if-eqz v2, :cond_8

    invoke-virtual {v0, v7}, Lcom/oppo/camera/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->J()V

    if-nez v3, :cond_6

    iget-object v2, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/oppo/camera/q;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    invoke-virtual {v2}, Lcom/oppo/camera/e$h;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v1, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oppo/camera/q;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {v1, v6}, Lcom/oppo/camera/q;->b(Z)V

    :cond_5
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->av()V

    iget-object v1, v0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    invoke-virtual {v1}, Lcom/oppo/camera/e$h;->c()V

    invoke-direct {v0, v7}, Lcom/oppo/camera/e;->e(Ljava/lang/String;)Z

    return-void

    :cond_6
    invoke-direct {v0, v7}, Lcom/oppo/camera/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureModeChanged, mPreviewImageProcess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/oppo/camera/e;->ag:Z

    goto :goto_1

    :cond_7
    const-string v1, "onCaptureModeChanged, modeType or surfaceType changed, delay to call"

    invoke-static {v5, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v2

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->b()I

    move-result v3

    iget-object v8, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v8}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v9}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v9

    iget v10, v0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v9, v10}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v9

    iget-object v10, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v10}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v10

    iget-object v11, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v11, v7}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v11

    iget v12, v0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v11, v12}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCaptureModeChanged, beforeModeName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", beforeModeProperCameraId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", afterModeName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", afterModeProperCameraId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v7, v13}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    move-result v13

    iget-object v14, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v14}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v14

    const/4 v15, 0x0

    if-eq v9, v12, :cond_9

    iget-boolean v4, v0, Lcom/oppo/camera/e;->T:Z

    if-nez v4, :cond_9

    iget-object v4, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v4, :cond_9

    new-instance v6, Lcom/oppo/camera/e$m;

    invoke-direct {v6, v0, v15}, Lcom/oppo/camera/e$m;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v6, v8}, Lcom/oppo/camera/e$m;->a(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/oppo/camera/e$m;->b(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/oppo/camera/e$m;->a(I)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/oppo/camera/e$m;->b(I)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/oppo/camera/e$m;->c(I)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/oppo/camera/e$m;->a(Z)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/oppo/camera/e$m;->b(Z)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/oppo/camera/e$m;->b(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/oppo/camera/e$l;->a(Lcom/oppo/camera/e$m;)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_2
    iget-boolean v6, v0, Lcom/oppo/camera/e;->ag:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    const/4 v15, 0x0

    invoke-virtual {v10, v6, v15}, Lcom/oppo/camera/d/a;->a(IZ)V

    iget-object v15, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v15, v6, v6}, Lcom/oppo/camera/d/i;->a(IZ)V

    iget-object v15, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v15, v7, v6}, Lcom/oppo/camera/ui/e;->c(Ljava/lang/String;Z)V

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCaptureModeChanged, modeChange: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", hasOpenCamera: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->P()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->af()V

    goto :goto_4

    :cond_c
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCaptureModeChanged, isPreviewStopped: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->P()Z

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isAsync: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6}, Lcom/oppo/camera/e;->b(ZZ)V

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->r(Z)V

    iget-object v6, v0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v6, :cond_d

    if-nez v4, :cond_d

    new-instance v4, Lcom/oppo/camera/e$m;

    const/4 v13, 0x0

    invoke-direct {v4, v0, v13}, Lcom/oppo/camera/e$m;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v4, v8}, Lcom/oppo/camera/e$m;->a(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/oppo/camera/e$m;->b(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/oppo/camera/e$m;->a(I)Lcom/oppo/camera/e$m;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/oppo/camera/e$m;->b(I)Lcom/oppo/camera/e$m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oppo/camera/e$m;->c(I)Lcom/oppo/camera/e$m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oppo/camera/e$m;->a(Z)Lcom/oppo/camera/e$m;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/oppo/camera/e$m;->b(Z)Lcom/oppo/camera/e$m;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/oppo/camera/e$m;->b(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/oppo/camera/e$l;->a(Lcom/oppo/camera/e$m;)V

    :cond_d
    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->af()V

    :cond_e
    :goto_4
    if-nez v1, :cond_f

    iget-object v2, v0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    invoke-virtual {v2}, Lcom/oppo/camera/e$h;->d()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/oppo/camera/d/i;->a(IZ)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->f(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bm()V

    iget-object v4, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4, v3, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraTest Camera Mode Change End, isAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_5
    return-void
.end method

.method private a([B)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    iget v2, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/k;->a([BII)V

    :cond_0
    return-void
.end method

.method private a([BII)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oppo/camera/ui/preview/a/i;->a([BIII)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Z
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "applyFlashModeOff"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_camera_flashmode_key"

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    move-object v2, p1

    :cond_1
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z
    .locals 3

    if-eqz p5, :cond_0

    invoke-interface {p5}, Lcom/oppo/camera/ui/preview/d$a;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBlurAnim, animType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/e;->S:Z

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-nez v1, :cond_3

    new-instance v1, Lcom/oppo/camera/q;

    invoke-direct {v1, p0}, Lcom/oppo/camera/q;-><init>(Lcom/oppo/camera/q$b;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/e;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oppo/camera/q;->a(Landroid/util/Size;Landroid/util/Size;ZI)Z

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {p1, p5}, Lcom/oppo/camera/q;->a(Lcom/oppo/camera/ui/preview/d$a;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->k(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->c(I)V

    return p1

    :cond_5
    return v2
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/e;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->B(Z)Z

    move-result p0

    return p0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic a(Lcom/oppo/camera/e;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bR:[B

    return-object p1
.end method

.method static synthetic aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    return-object p0
.end method

.method private aA()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oppo/camera/e$7;

    iget-object v1, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$7;-><init>(Lcom/oppo/camera/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    return-void
.end method

.method static synthetic aB(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cC:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method private aB()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic aC(Lcom/oppo/camera/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    return-object p0
.end method

.method private aC()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic aD(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cR:Lcom/oppo/camera/e/f$c;

    return-object p0
.end method

.method private aD()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method private aE()V
    .locals 2

    new-instance v0, Lcom/oppo/camera/o;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    invoke-virtual {v0}, Lcom/oppo/camera/o;->a()V

    const/16 v0, 0x60

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->aj:Z

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->e(Z)V

    return-void
.end method

.method static synthetic aE(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->N:Z

    return p0
.end method

.method static synthetic aF(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aG()V

    return-void
.end method

.method private aF()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    const-string v1, "CameraManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_support_ipa_process"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->A(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "needNotifyIpa, will return true"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v0, "needNotifyIpa, will return false"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private aG()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    const-string v0, "func_torch_soft_light"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/e;->aI()V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->o()V

    return-void
.end method

.method static synthetic aG(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->M:Z

    return p0
.end method

.method private aH()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    const-string v0, "func_torch_soft_light"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/e;->aI()V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->p()V

    return-void
.end method

.method static synthetic aH(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aH()V

    return-void
.end method

.method static synthetic aI(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    return-object p0
.end method

.method private aI()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    const-string v0, "func_torch_soft_light"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private aJ()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->t:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/e;->t:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->t:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic aJ(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->by()Z

    move-result p0

    return p0
.end method

.method static synthetic aK(Lcom/oppo/camera/e;)B
    .locals 0

    iget-byte p0, p0, Lcom/oppo/camera/e;->ce:B

    return p0
.end method

.method private aK()Ljava/lang/String;
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "checkSmallInternalStorage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oppo/camera/v;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oppo/camera/v;->g()D

    move-result-wide v1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const-string v0, "on"

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    const-string v2, "pref_camera_storage_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method private aL()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStorage, mbCheckStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->L:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    new-instance v0, Lcom/oppo/camera/e$14;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$14;-><init>(Lcom/oppo/camera/e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic aL(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bb()V

    return-void
.end method

.method private aM()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/e;->k:I

    const-string v1, "oppo.multibits.dimming.support"

    invoke-static {v1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "sys.oppo.multibrightness"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->k:I

    :cond_0
    return v0
.end method

.method static synthetic aM(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic aN(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/control/h;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    return-object p0
.end method

.method private aN()V
    .locals 7

    const-string v0, "CameraManager"

    const-string v1, "onPictureSizeChanged"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    new-instance v6, Lcom/oppo/camera/e$q;

    invoke-direct {v6, p0}, Lcom/oppo/camera/e$q;-><init>(Lcom/oppo/camera/e;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aJ()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/e;->v:I

    return-void
.end method

.method static synthetic aO(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/a/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    return-object p0
.end method

.method private aO()V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    const-string v2, "pref_video_size_key"

    invoke-static {v2, v1}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "video_size_4kuhd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aw()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/oppo/camera/e;->aE:Z

    invoke-direct {p0}, Lcom/oppo/camera/e;->bJ()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->aP()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v4

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/oppo/camera/e$x;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/oppo/camera/e$x;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->i(Z)V

    iget-object v1, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "video_size_720p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aA()V

    :cond_2
    return-void
.end method

.method private aP()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v3

    new-instance v6, Lcom/oppo/camera/e$a;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/oppo/camera/e$a;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_0
    return-void
.end method

.method static synthetic aP(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->ae:Z

    return p0
.end method

.method static synthetic aQ(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->o:I

    return p0
.end method

.method private aQ()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNoneSatUltraWideAngleMenuOpen, noneSatUltraWideAngleMenuOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic aR(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->w:I

    return p0
.end method

.method private aR()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v3

    new-instance v6, Lcom/oppo/camera/e$k;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/oppo/camera/e$k;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_0
    return-void
.end method

.method static synthetic aS(Lcom/oppo/camera/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private aS()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/oppo/camera/e$u;

    invoke-direct {v6, p0, v1}, Lcom/oppo/camera/e$u;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_1
    return-void
.end method

.method static synthetic aT(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$f;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bk()Lcom/oppo/camera/e/f$f;

    move-result-object p0

    return-object p0
.end method

.method private aT()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/e;->am:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic aU(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->bY:I

    return p0
.end method

.method private aU()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->m()V

    :cond_0
    return-void
.end method

.method static synthetic aV(Lcom/oppo/camera/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cm:Ljava/util/List;

    return-object p0
.end method

.method private aV()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/d/i;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method static synthetic aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    return-object p0
.end method

.method private aW()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v1, 0x7f0f00e0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "CameraManager"

    const-string v1, "finishByHighTemperature, Toast.show."

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "temps_cam"

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ch:Z

    :cond_0
    return-void
.end method

.method private aX()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    const-string v1, "CameraManager"

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/oppo/camera/e$f;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchPreviewData, getCurrentModeName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget-object v0, v0, Lcom/oppo/camera/e$f;->h:Landroid/graphics/Bitmap;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v2, v1, v3}, Lcom/oppo/camera/ui/preview/e;->a(Landroid/graphics/Bitmap;I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->g(Z)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    return-void

    :cond_4
    :goto_0
    const-string v0, "onSwitchPreviewData, invalid data"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aX(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->aE:Z

    return p0
.end method

.method private aY()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "commonVideo"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterSwitchMode, previousCapMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic aY(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result p0

    return p0
.end method

.method static synthetic aZ(Lcom/oppo/camera/e;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    return-object p0
.end method

.method private aZ()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    return v0
.end method

.method static synthetic aa(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aU()V

    return-void
.end method

.method static synthetic ab(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->az()Z

    move-result p0

    return p0
.end method

.method static synthetic ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    return-object p0
.end method

.method static synthetic ad(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bg()V

    return-void
.end method

.method static synthetic ae(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bz()Z

    move-result p0

    return p0
.end method

.method static synthetic af(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bh()V

    return-void
.end method

.method static synthetic ag(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bm()V

    return-void
.end method

.method static synthetic ah(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bi()V

    return-void
.end method

.method static synthetic ai(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->ay:Z

    return p0
.end method

.method static synthetic aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    return-object p0
.end method

.method static synthetic ak(Lcom/oppo/camera/e;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic al(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->cg:Z

    return p0
.end method

.method static synthetic am(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->aF:Z

    return p0
.end method

.method static synthetic an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    return-object p0
.end method

.method static synthetic ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic ap(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cO:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic ar(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cy:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic at(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cD:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic av(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cz:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic ax(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cA:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic az(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cB:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method private az()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->Y:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/e;->Z:J

    return-wide p1
.end method

.method static synthetic b(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    return-object p1
.end method

.method private b(II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/oppo/camera/statistics/model/FocusAimMsgData;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCaptureMode:Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/e;->n:I

    iput v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mOrientation:I

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCaptureType:I

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCameraEnterType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v0

    iput-boolean v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mbVideoRecording:Z

    iput-object p1, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mTouchXY:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->report()V

    :cond_0
    return-void
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    if-eqz v0, :cond_2

    const-string v0, "key_support_show_no_face"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->ap()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aq()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aq()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_c

    const-string v0, "pref_face_detection_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->R()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->x()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xd

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v3, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/e;->a(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS_PREVIEW_SCALE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigFloatValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)F

    move-result v2

    iget-boolean v3, p0, Lcom/oppo/camera/e;->af:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    cmpl-float v3, v2, v4

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/e;->a(F)V

    :cond_6
    iget-object v2, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/h;->D()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/n/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/n/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    :goto_3
    if-eqz p1, :cond_b

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_9

    const-string v0, "com.oppo.focus.is.depth.based"

    invoke-interface {v1, v0, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v0

    :cond_9
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/oppo/camera/ui/preview/h;->a(II[II)V

    :cond_a
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/oppo/camera/e$y;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    invoke-virtual {p1}, Lcom/oppo/camera/e$y;->c()V

    :cond_c
    return-void
.end method

.method private b(Landroid/media/ImageReader;)V
    .locals 13

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    const-string v1, "CameraManager"

    if-nez v0, :cond_1

    const-string p1, "onPreviewFrameReceived, image is null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->ae()Z

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_blur_mode_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/camera/e;->m()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v2, :cond_9

    :cond_2
    const/16 v5, 0x11

    invoke-static {v0, v5}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I)[B

    move-result-object v5

    if-nez v5, :cond_3

    const-string p1, "onPreviewFrameReceived, bytes is null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    :cond_3
    iget v6, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v6}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_0

    :cond_4
    const/4 v6, 0x4

    :goto_0
    const-string v7, "oppo.dump.preview.yuv"

    const-string v8, "false"

    invoke-static {v7, v8}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "yuv_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".yuv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "preview_yuv"

    invoke-static {v5, v9, v7}, Lcom/oppo/camera/o/d;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreviewFrameReceived, TYPE_PREVIEW_FRAME, reader.size: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", format: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bytes.size: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", file: yuv_"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/16 p1, 0x4c

    const/16 v1, 0x3e8

    div-int/2addr v1, v6

    const/16 v6, 0x21

    iget-wide v9, p0, Lcom/oppo/camera/e;->B:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x3e8

    cmp-long v11, v9, v11

    if-lez v11, :cond_6

    const-wide/16 v9, 0x0

    :cond_6
    iget-wide v11, p0, Lcom/oppo/camera/e;->H:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/oppo/camera/e;->H:J

    iget-wide v11, p0, Lcom/oppo/camera/e;->I:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/oppo/camera/e;->I:J

    iget-wide v11, p0, Lcom/oppo/camera/e;->J:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/oppo/camera/e;->J:J

    iput-wide v7, p0, Lcom/oppo/camera/e;->B:J

    if-eqz v3, :cond_7

    iget-wide v7, p0, Lcom/oppo/camera/e;->H:J

    int-to-long v9, v1

    cmp-long v1, v7, v9

    if-ltz v1, :cond_7

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/oppo/camera/e;->H:J

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v5, v1, v3}, Lcom/oppo/camera/e;->b([BII)V

    :cond_7
    if-eqz v4, :cond_8

    iget-wide v3, p0, Lcom/oppo/camera/e;->I:J

    int-to-long v7, p1

    cmp-long p1, v3, v7

    if-ltz p1, :cond_8

    sub-long/2addr v3, v7

    iput-wide v3, p0, Lcom/oppo/camera/e;->I:J

    invoke-direct {p0, v5}, Lcom/oppo/camera/e;->a([B)V

    :cond_8
    if-eqz v2, :cond_9

    iget-wide v1, p0, Lcom/oppo/camera/e;->J:J

    int-to-long v3, v6

    cmp-long p1, v1, v3

    if-ltz p1, :cond_9

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oppo/camera/e;->J:J

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, v5, p1, v1}, Lcom/oppo/camera/e;->a([BII)V

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->b(Landroid/media/Image;)V

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/e;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->b(Landroid/media/ImageReader;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/e;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->d(ZZ)V

    return-void
.end method

.method private b(Lcom/oppo/camera/v$a;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/oppo/camera/v$a;->d:[B

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/oppo/camera/v$a;->d:[B

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeNearMeDateToExif, isJpegPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->d(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/oppo/camera/v$a;->d:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a([B)Landroid/media/ExifInterface;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->ax()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->K:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->M:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    if-eqz v3, :cond_6

    array-length v3, v3

    if-lez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    array-length v6, v5

    :goto_2
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    new-instance v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;

    invoke-direct {v8}, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;-><init>()V

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;->N1:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;->N2:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;

    invoke-direct {v8}, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;-><init>()V

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L1:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L2:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L3:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L4:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->N:Ljava/util/ArrayList;

    iput-object v4, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/camera/e;->u:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->S:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->R:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v3, "MakerNote"

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    :try_start_0
    const-class v4, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    :cond_7
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->A:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->A:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->B:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->B:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->C:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->C:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->I:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->I:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->P:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->P:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->Q:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->Q:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->U:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->U:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->V:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->V:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->PiFlag:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->PiFlag:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->nightFlag:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->nightFlag:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->asdOut:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->asdOut:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->iso:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->iso:Ljava/lang/String;

    iget-object v0, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->expTime:Ljava/lang/String;

    iput-object v0, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->expTime:Ljava/lang/String;

    :cond_8
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iput-object v0, p1, Lcom/oppo/camera/v$a;->A:Ljava/lang/String;

    :cond_9
    return-void

    :cond_a
    const-string p1, "writeNearMeDateToExif, picture is invalid"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b([BII)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oppo/camera/ui/preview/a/i;->a([BIII)Z

    :cond_0
    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)Z
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "applyTorchModeOff"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_camera_torch_mode_key"

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->P:Z

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ad:Z

    return p1
.end method

.method static synthetic bA(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->u:I

    return p0
.end method

.method private bA()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "key_high_picture_size"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetHighPictureSize, isHighPictureSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraManager"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/i$a;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_high_resolution_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method static synthetic bB(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->v:I

    return p0
.end method

.method private bB()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/f;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->d(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->g()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->E()V

    :cond_1
    return-void
.end method

.method private bC()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTimerShutterPreference, mPreferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v2, "pref_camera_timer_shutter_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v0, "clearTimerShutterPreference, X"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bC(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bu()V

    return-void
.end method

.method private bD()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearCameraIdPreference, mPreference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v2, "pref_switch_camera_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v0, "clearCameraIdPreference X"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bD(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->au:Z

    return p0
.end method

.method private bE()V
    .locals 3

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_MOTOR_FLASHLIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCameraExitState, motorFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bF()V

    :cond_0
    return-void
.end method

.method static synthetic bE(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->ap:Z

    return p0
.end method

.method private bF()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v2, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic bF(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bp()Z

    move-result p0

    return p0
.end method

.method private bG()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCaptureMode:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mOrientation:I

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mScreenBrightness:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mToCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCaptureType:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCameraEnterType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->report()V

    :cond_0
    return-void
.end method

.method static synthetic bG(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->ci:Z

    return p0
.end method

.method static synthetic bH(Lcom/oppo/camera/e;)Lcom/google/lens/sdk/LensApi;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    return-object p0
.end method

.method private bH()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x6

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method private bI()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method static synthetic bI(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->be()V

    return-void
.end method

.method private bJ()V
    .locals 4

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f024a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "off"

    invoke-virtual {v1, v0, v3, v2}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Lcom/oppo/camera/i$a;->apply()V

    :cond_1
    return-void
.end method

.method static synthetic bJ(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aZ()Z

    move-result p0

    return p0
.end method

.method private bK()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic bK(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bo()Z

    move-result p0

    return p0
.end method

.method static synthetic bL(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bH()V

    return-void
.end method

.method static synthetic bM(Lcom/oppo/camera/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/e;->C:J

    return-wide v0
.end method

.method static synthetic bN(Lcom/oppo/camera/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/e;->D:J

    return-wide v0
.end method

.method static synthetic bO(Lcom/oppo/camera/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/e;->E:J

    return-wide v0
.end method

.method static synthetic bP(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bs()Z

    move-result p0

    return p0
.end method

.method static synthetic bQ(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bG()V

    return-void
.end method

.method static synthetic bR(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-object p0
.end method

.method static synthetic bS(Lcom/oppo/camera/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic bT(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    return-object p0
.end method

.method private ba()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "exitOneCamera"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/e$i;->a()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->bb()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->j(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aZ()V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->b()V

    :cond_3
    return-void
.end method

.method static synthetic ba(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->cb:Z

    return p0
.end method

.method static synthetic bb(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$y;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    return-object p0
.end method

.method private bb()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "closeImageReader"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/a/a;->a()Lcom/oppo/camera/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/a/a;->e()V

    iget-object v1, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e;->be:Landroid/media/ImageReader;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->be:Landroid/media/ImageReader;

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    iput-object v2, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->Q()V

    :cond_a
    const-string v1, "closeImageReader X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bc()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/e;->C:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/e;->E:J

    iput-wide v0, p0, Lcom/oppo/camera/e;->F:J

    iput-wide v0, p0, Lcom/oppo/camera/e;->D:J

    invoke-virtual {p0}, Lcom/oppo/camera/e;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/e;->u:I

    return-void
.end method

.method static synthetic bc(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bv()V

    return-void
.end method

.method private bd()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/e;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/e;->u:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/e;->C:J

    iput-wide v0, p0, Lcom/oppo/camera/e;->D:J

    iput-wide v0, p0, Lcom/oppo/camera/e;->E:J

    iput-wide v0, p0, Lcom/oppo/camera/e;->F:J

    return-void
.end method

.method static synthetic bd(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bw()V

    return-void
.end method

.method static synthetic be(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->y:I

    return p0
.end method

.method private be()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "backToLastMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aP()V

    :cond_0
    return-void
.end method

.method static synthetic bf(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->l:I

    return p0
.end method

.method private bf()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->f(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->e(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->f(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic bg(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cE:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method private bg()V
    .locals 4

    new-instance v0, Lcom/oppo/camera/x;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/x;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/d/b;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    new-instance v1, Lcom/oppo/camera/e$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$g;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x$a;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/x;->a(IZ)V

    return-void
.end method

.method static synthetic bh(Lcom/oppo/camera/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    return-object p0
.end method

.method private bh()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->h()Z

    move-result v0

    const v1, 0x7f060453

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060454

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aS()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/x;->c(I)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->s(I)V

    return-void
.end method

.method static synthetic bi(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    return-object p0
.end method

.method private bi()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLockDB, mbLockDbCleared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->cf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://com.oppo.gallery3d.albumsprovider/locked_pictures"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    const-string v3, "0==0"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "clearLockDB "

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private bj()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/e$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$r;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    :cond_0
    return-void
.end method

.method static synthetic bj(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->al:Z

    return p0
.end method

.method private bk()Lcom/oppo/camera/e/f$f;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/e$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$e;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    return-object v0
.end method

.method static synthetic bk(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/control/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    return-object p0
.end method

.method private bl()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ac()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic bl(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->aA:Z

    return p0
.end method

.method private bm()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    const-string v1, "pref_zoom_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_expand_popbar_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->K()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/e;->al()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    :goto_0
    return-void
.end method

.method static synthetic bm(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    return-void
.end method

.method static synthetic bn(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->p:I

    return p0
.end method

.method private bn()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_5

    const-string v2, "pref_time_lapse_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->U()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/e;->n()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00d0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_gesture_shutter_key"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "2"

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->c()V

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method static synthetic bo(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    return-object p0
.end method

.method private bo()Z
    .locals 9

    const-string v0, "isLockAblumHasPicture X"

    const-string v1, "CameraManager"

    const-string v2, "isLockAblumHasPicture"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://com.oppo.gallery3d.albumsprovider/locked_pictures"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :try_start_1
    const-string v3, "isLockAblumHasPicture, cursor is null"

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLockAblumHasPicture, failed to open cursor error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return v0

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic bp(Lcom/oppo/camera/e;)Lcom/oppo/camera/m;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    return-object p0
.end method

.method private bp()Z
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "func_torch_soft_light"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    const-string v4, "pref_camera_hdr_mode_key"

    invoke-static {v4, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "on"

    if-nez v3, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    return v1
.end method

.method private bq()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/Ipa/e;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/e;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cW:Lcom/oppo/camera/Ipa/e$b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/Ipa/e;->a(Lcom/oppo/camera/Ipa/e$b;)V

    :cond_0
    return-void
.end method

.method static synthetic bq(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aC()V

    return-void
.end method

.method private br()Lcom/oppo/camera/u;
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/oppo/camera/u;

    new-instance v3, Lcom/oppo/camera/e$s;

    invoke-direct {v3, p0}, Lcom/oppo/camera/e$s;-><init>(Lcom/oppo/camera/e;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/oppo/camera/u;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/e$s;)V

    iput-object v2, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    return-object v0
.end method

.method static synthetic br(Lcom/oppo/camera/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result p0

    return p0
.end method

.method private bs()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "pref_camera_slogan_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    const-string v2, "pref_slogan_location_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    const-string v2, "pref_slogan_time_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0}, Lcom/oppo/camera/u;->c()Z

    move-result v0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    iget v0, v0, Lcom/oppo/camera/u;->a:I

    if-eq v0, v1, :cond_1

    const-string v0, "checkReadyToCapture, isTimeOrLocationChanged"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0}, Lcom/oppo/camera/u;->b()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    iget v0, v0, Lcom/oppo/camera/u;->a:I

    if-ne v0, v1, :cond_2

    const-string v0, "checkReadyToCapture, slogan need to update, so return"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method static synthetic bs(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->R:Z

    return p0
.end method

.method private bt()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bu()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/a;->i()V

    :goto_0
    return-void
.end method

.method static synthetic bt(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aB()V

    return-void
.end method

.method private bu()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->B(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->h()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->bn()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "normal"

    iput-object v0, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->g()V

    return-void

    :cond_2
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->f(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->f()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->au()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CameraManager"

    const-string v1, "onCameraShutterButtonClick, beforeCameraShutterButtonClick fail, so return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->C(Z)V

    return-void
.end method

.method static synthetic bu(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->S:Z

    return p0
.end method

.method static synthetic bv(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->k:I

    return p0
.end method

.method private bv()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/w;->c()V

    :cond_0
    return-void
.end method

.method private bw()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/w;->d()V

    :cond_0
    return-void
.end method

.method static synthetic bw(Lcom/oppo/camera/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aP()V

    return-void
.end method

.method static synthetic bx(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cI:Lcom/oppo/camera/e$b;

    return-object p0
.end method

.method private bx()Z
    .locals 1

    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic by(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aJ()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private by()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v2, 0x7f0f00d0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_camera_gesture_shutter_key"

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_camera_gesture_shutter_key"

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic bz(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    return-object p0
.end method

.method private bz()Z
    .locals 1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->s:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/e;->D:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ae:Z

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->bY:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/e;->F:J

    return-wide p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    return-object p1
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "onUp"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/oppo/camera/e;->s:I

    invoke-virtual {v2, v4, p1}, Lcom/oppo/camera/d/i;->a(ILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUp, getCurrentModeName: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/oppo/camera/e;->s:I

    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/oppo/camera/e;->s:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->U()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/e;->E()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->T()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/e;->F()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->J()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->U()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/e;->E()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->S()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/e;->F()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->I()V

    :cond_5
    :goto_0
    iput v3, p0, Lcom/oppo/camera/e;->s:I

    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v1, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->s(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->E()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/h;->f(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/h;->e(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/h;->f(I)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/e;->bm()V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->O:Z

    return p1
.end method

.method static synthetic e(Lcom/oppo/camera/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/e;->cp:J

    return-wide v0
.end method

.method static synthetic e(Lcom/oppo/camera/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/e;->E:J

    return-wide p1
.end method

.method static synthetic e(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic e(Lcom/oppo/camera/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->t(I)V

    return-void
.end method

.method private e(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 p2, 0x1

    iput p2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/2addr v1, p2

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    if-eqz p1, :cond_0

    iput p2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    :goto_0
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/e;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->af:Z

    return p1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/d/a;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    if-nez v2, :cond_0

    const-string p1, "CameraManager"

    const-string v0, "showCaptureModeChangeBlurAnim, null == newSize!"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result p1

    return p1
.end method

.method static synthetic f(Lcom/oppo/camera/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/e;->co:J

    return-wide v0
.end method

.method static synthetic f(Lcom/oppo/camera/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/e;->G:J

    return-wide p1
.end method

.method static synthetic f(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic f(Lcom/oppo/camera/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->u(I)V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->h(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/control/h;

    invoke-direct {v0}, Lcom/oppo/camera/ui/control/h;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    new-instance v1, Lcom/oppo/camera/e$v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$v;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/h;->a(Lcom/oppo/camera/ui/control/h$b;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aO()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v1, "pref_camera_photo_ratio_key"

    const-string v2, "standard"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget v3, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/oppo/camera/ui/control/h;->a(ILandroid/app/Activity;IZ)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->z()V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ar:Z

    return p1
.end method

.method static synthetic g(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->m:I

    return p1
.end method

.method static synthetic g(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/e;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->L:Z

    return p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "oppo.camera.test"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    const-string v0, "pref_slow_video_frame_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->H()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->G()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oppo/camera/e;->T:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oppo/camera/e;->bp()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/e;->T:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method static synthetic h(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->p:I

    return p1
.end method

.method static synthetic h(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildMenuItem(Ljava/lang/String;Lcom/oppo/camera/i;I)V

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ca:Z

    return p1
.end method

.method static synthetic i(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->u:I

    return p1
.end method

.method static synthetic i(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    return-object p0
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mCaptureType:I

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mOrientation:I

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/oppo/camera/e;->cs:Z

    if-eqz p1, :cond_0

    const-string p1, "charge_true"

    goto :goto_0

    :cond_0
    const-string p1, "charge_false"

    :goto_0
    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mReminderTrigger:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/ReminderMsgData;->report()V

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/e;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->A(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/oppo/camera/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/e;->w:I

    return p1
.end method

.method static synthetic j(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->aF:Z

    return p1
.end method

.method private j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_subsetting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_high_resolution_key"

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

.method static synthetic k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ap:Z

    return p1
.end method

.method static synthetic l(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->Q:Z

    return p1
.end method

.method static synthetic l(Lcom/oppo/camera/e;)[B
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bR:[B

    return-object p0
.end method

.method static synthetic m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    return-object p0
.end method

.method private m(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/t;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    iget-object v1, p0, Lcom/oppo/camera/e;->cP:Lcom/oppo/camera/t$c;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/t;->a(Lcom/oppo/camera/t$c;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/t;->a(I)V

    return-void
.end method

.method static synthetic m(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->aE:Z

    return p1
.end method

.method static synthetic n(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->m:I

    return p0
.end method

.method private n(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/t;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->cb:Z

    return p1
.end method

.method static synthetic o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    return-object p0
.end method

.method private o(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSizeRatioType, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/e;->cH:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oppo/camera/e;->cH:I

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v0, p0, Lcom/oppo/camera/e;->cH:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->p(I)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/oppo/camera/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->C(Z)V

    return-void
.end method

.method static synthetic p(Lcom/oppo/camera/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/e;->Y:I

    return p0
.end method

.method private p(I)Z
    .locals 8

    const-string v0, "CameraManager"

    const/16 v1, 0x28a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const-string v4, "temperature_limit_brightness"

    const-string v5, "temperature_limit_brightness"

    const-string v6, "ro.camera.temperature.brightness"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreBrightnessTemperatureLimit, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreBrightnessTemperatureLimit, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", temperatureValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic p(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->aA:Z

    return p1
.end method

.method static synthetic q(Lcom/oppo/camera/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->z(Z)V

    return-void
.end method

.method private q(I)Z
    .locals 8

    const-string v0, "CameraManager"

    const/16 v1, 0x28a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const-string v4, "temperature_limit_finish"

    const-string v5, "temperature_limit_finish"

    const-string v6, "ro.camera.temperature.finish"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useHighTemperatureUltimateLimit, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useHighTemperatureUltimateLimit, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", temperatureValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    if-lez v0, :cond_0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic q(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->X:Z

    return p0
.end method

.method static synthetic r(Lcom/oppo/camera/e;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/e;->Y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/e;->Y:I

    return v0
.end method

.method private r(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraId, mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oppo/camera/e;->q:I

    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method static synthetic r(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->as:Z

    return p1
.end method

.method static synthetic s(Lcom/oppo/camera/e;)Lcom/oppo/camera/jni/NativeBufferProducer;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->ck:Lcom/oppo/camera/jni/NativeBufferProducer;

    return-object p0
.end method

.method private s(I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v1, 0x7f0800e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060212

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic s(Lcom/oppo/camera/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ci:Z

    return p1
.end method

.method static synthetic t(Lcom/oppo/camera/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/e;->Z:J

    return-wide v0
.end method

.method private t(I)V
    .locals 7

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->aa:Ljava/lang/String;

    return-object p0
.end method

.method private u(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->d(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->i(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lcom/oppo/camera/e;)Lcom/oppo/camera/k;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    return-object p0
.end method

.method static synthetic x(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    return-object p0
.end method

.method private z(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTabCaptureStart, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->az:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->az:Z

    return-void
.end method

.method static synthetic z(Lcom/oppo/camera/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/e;->an:Z

    return p0
.end method


# virtual methods
.method public A()V
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "updateOtherSettingFlags"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f016e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_sound_key"

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e;->aJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f00c3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_fingerprint_shutter_key"

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOtherSettingFlags, mFingerprintShutter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v1, "pref_camera_storage_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object v1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "on"

    sput-object v0, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public B()V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(F)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->E(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->j(Z)V

    iput-boolean v1, p0, Lcom/oppo/camera/e;->ay:Z

    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->U()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(I)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(F)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->E(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->j(Z)V

    iput-boolean v1, p0, Lcom/oppo/camera/e;->ay:Z

    return-void
.end method

.method public D()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    const-string v1, "func_torch_soft_light"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->as()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->az:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->h()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canRespondTouch, mbInitialized: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getScreenTorchState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isVideoRecordStopped: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->as()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getIsCapturingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->L()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSnapShotProgress: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingVideoProfile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ad:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSizeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbFirstPreviewOK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ae:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canScrollChangeMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbFrameAvailable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ap:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbTabCaptureStart: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->az:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getMainShutterButtonType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraEntry.getCameraEntryType(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbBurstShot: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbCaptureModeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPreviewStarted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mModeManager.isAllowSwitch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->G()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTimerSnapShotRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingCamera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canRespondTouch, mModeManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraUIManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public F()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->as()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->X()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->az:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->h()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/e;->Y:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->A()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aT()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aC()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->av()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aU()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aV()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowSwitchMode, mbInitialized: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getScreenTorchState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isVideoRecordStopped: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->as()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getIsCapturingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->L()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getIsShowPostCaptureAlert: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->X()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSnapShotProgress: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingVideoProfile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ad:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSizeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbFirstPreviewOK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ae:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canScrollChangeMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbTabCaptureStart: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->az:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getMainShutterButtonType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraEntry.getCameraEntryType(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbBurstShot: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mReceiveBurstPictureCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/e;->Y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbCaptureModeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPreviewStarted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mModeManager.isAllowSwitch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->G()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTimerSnapShotRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingCamera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isModeTitleShow: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAnyModeAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->A()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFaceBeautyMenuOpen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", faceBeautyMenuType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aT()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isStickerMenuOpen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aC()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isZoomAnimRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->av()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFilterEffectMenuAnimRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aU()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isNightAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aV()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowSwitchMode, mModeManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraUIManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/n;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/oppo/camera/e$17;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$17;-><init>(Lcom/oppo/camera/e;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/n;->a(Landroid/content/SharedPreferences;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public I()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/s;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/e$18;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$18;-><init>(Lcom/oppo/camera/e;)V

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/s;-><init>(Landroid/app/Activity;Lcom/oppo/camera/s$a;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/s;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPrivacyPolicyAlertDialog, isShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->H()Z

    :cond_1
    return-void
.end method

.method public J()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->t()V

    :cond_0
    return-void
.end method

.method public K()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method public L()V
    .locals 9

    const-string v0, "outputY"

    const-string v1, "outputX"

    const-string v2, "aspectY"

    const-string v3, "aspectX"

    iget-boolean v4, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/oppo/camera/e;->bR:[B

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAttach, mCropValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mSaveUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mJpegImageData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/e;->bR:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraManager"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/net/Uri;)V

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bR:[B

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v6}, Lcom/oppo/camera/o/d;->a(Ljava/io/Closeable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAttach, SecurityException error, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAttach, IOException error, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v6}, Lcom/oppo/camera/o/d;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bR:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b([B)I

    move-result v0

    iget-object v2, p0, Lcom/oppo/camera/e;->bR:[B

    const v3, 0xc800

    invoke-static {v2, v3}, Lcom/oppo/camera/o/d;->a([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v5, "crop-temp"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/oppo/camera/l/a;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/camera/e;->bR:[B

    invoke-static {v5, v7, v8}, Lcom/oppo/camera/l/a;->b(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setResult(I)V

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    const-string v8, "circle"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "circleCrop"

    const-string v8, "true"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    if-eqz v5, :cond_7

    const-string v8, "output"

    invoke-virtual {v4, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3

    :cond_7
    const/4 v5, 0x1

    const-string v8, "return-data"

    invoke-virtual {v4, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_3
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_2
    iget-object v8, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    const-string v0, "image/*"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_set_as_contract"

    const-string v1, "set_as_contract"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_4
    return-void
.end method

.method public M()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public N()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchPreviewCb, mCameraSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/e$f;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$f;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/e$f;->b:Landroid/util/Size;

    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    iput v2, v0, Lcom/oppo/camera/e$f;->c:I

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aC()Lcom/oppo/camera/d/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "setSwitchPreviewCb, use realTime bitmap"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iput-object v0, v1, Lcom/oppo/camera/e$f;->e:Lcom/oppo/camera/d/a$a;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/oppo/camera/e$f;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/oppo/camera/e$f;->f:Z

    goto :goto_0

    :cond_0
    const-string v0, "CaptureOnePreview"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    new-instance v1, Lcom/oppo/camera/e$20;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$20;-><init>(Lcom/oppo/camera/e;)V

    sget-object v2, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public O()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public P()Z
    .locals 1

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    return v0
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->as:Z

    return v0
.end method

.method public U()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ag:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/oppo/camera/e;->a(ZZZ)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->af()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->f()V

    return-void
.end method

.method public V()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onPreviewDataReceived"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aa()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->j(I)V

    return-void
.end method

.method public W()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public X()Z
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    const-string v1, "CameraManager"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->b(Z)Z

    :cond_1
    const-string v0, "onBackPressed, cameraState return"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->as()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aI()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onBackPressed, mCameraUIManager return"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->g()V

    const-string v0, "normal"

    iput-object v0, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "onBackPressed, Capmode processing other,so return"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    :cond_5
    return v3
.end method

.method public Y()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    iput-object v0, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    iget-object v0, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_sticker_capture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Z()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "sticker_switch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStickerModeFromRUS, stikerModeSwitch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_2

    const-string v0, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppo/camera/config/CameraConfig;->setConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/config/CameraConfig;->setConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_camera_slogan_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/u;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->S()V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/e;->ba()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->n(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->F()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/e;->bm()V

    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/e;->aq:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->as:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 3

    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->z()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeScreenBrightness, fSysBrightness >= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", so no need set window screenBrightness"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraManager"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->j(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget v0, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_4

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->j(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(FZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateZoomValue, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", submit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->c(F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/e;->b(F)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->b(II)V

    iget-object v0, p0, Lcom/oppo/camera/e;->t:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/camera/e;->t:[I

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->t:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;ZZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEmptyThumbnail, timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jpegName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateThumbnail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", postThumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/Ipa/b$c;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b$c;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/Ipa/b$c;->b:Landroid/content/ContentResolver;

    const-string v2, "jpeg"

    iput-object v2, v0, Lcom/oppo/camera/Ipa/b$c;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->e:Landroid/graphics/Bitmap;

    iput-wide p1, v0, Lcom/oppo/camera/Ipa/b$c;->h:J

    iget-object p1, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    iput-object p1, v0, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    iput-object p3, v0, Lcom/oppo/camera/Ipa/b$c;->d:Ljava/lang/String;

    iput-boolean p5, v0, Lcom/oppo/camera/Ipa/b$c;->n:Z

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->O()I

    move-result p1

    iput p1, v0, Lcom/oppo/camera/Ipa/b$c;->m:I

    new-instance p1, Lcom/oppo/camera/e$36;

    invoke-direct {p1, p0}, Lcom/oppo/camera/e$36;-><init>(Lcom/oppo/camera/e;)V

    iput-object p1, v0, Lcom/oppo/camera/Ipa/b$c;->o:Lcom/oppo/camera/ui/control/e$a;

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$c;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    check-cast p2, Lcom/oppo/camera/Ipa/ImageProcessService$c;

    invoke-virtual {p2}, Lcom/oppo/camera/Ipa/ImageProcessService$c;->a()Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected, mIpaService: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a()V

    invoke-static {}, Lcom/oppo/camera/a/a;->a()Lcom/oppo/camera/a/a;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/Ipa/ImageProcessService;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/location/Location;)V
    .locals 6

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    const-string v1, "CameraManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onLocationUpdated, GetAddressThread is running"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/camera/e;->G:J

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationUpdated, mLastGetAddressTimesGap: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationUpdated, lat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", lon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/e$j;

    const-string v1, "get_address_thread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oppo/camera/e$j;-><init>(Lcom/oppo/camera/e;Ljava/lang/String;Landroid/content/Context;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.media.EXTRA_RECORD_START_PACKAGE_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiver, intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraManager"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    iget-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oppo/camera/e;->ai:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-ne p1, v5, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v6}, Lcom/oppo/camera/ui/e;->c(Z)V

    goto/16 :goto_4

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v7, 0x7f0f0178

    const-string v8, "pref_camera_storage_key"

    const-string v9, "on"

    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v8, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {p1}, Lcom/oppo/camera/f;->a()V

    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v6}, Lcom/oppo/camera/ui/e;->c(Z)V

    goto/16 :goto_4

    :cond_7
    const-string v2, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v2, "com.oppo.gallery3d.action.DELETE_PICTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_1b

    iget-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v2, :cond_1b

    invoke-virtual {p1, v6}, Lcom/oppo/camera/ui/e;->c(Z)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, -0x1

    const-string v5, "level"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/oppo/camera/e;->a:I

    iget v5, p0, Lcom/oppo/camera/e;->a:I

    invoke-virtual {p0, v5}, Lcom/oppo/camera/e;->g(I)V

    const-string v5, "temperature"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/e;->b:I

    iget p1, p0, Lcom/oppo/camera/e;->b:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->f(I)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "clearLockDB"

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_b

    iget-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v2, :cond_b

    invoke-virtual {p1, v6}, Lcom/oppo/camera/d/i;->e(Z)V

    :cond_b
    iget-boolean p1, p0, Lcom/oppo/camera/e;->cf:Z

    if-nez p1, :cond_c

    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v2, Lcom/oppo/camera/e$47;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$47;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {p1, v2, v7}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/oppo/camera/e;->cf:Z

    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->n()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/oppo/camera/e;->b()V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0, v5}, Lcom/oppo/camera/e;->u(Z)V

    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->N()Lcom/oppo/camera/ui/control/e;

    move-result-object p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->Z()V

    goto/16 :goto_4

    :cond_f
    const-string v2, "android.media.ACTION_AUDIO_RECORD_INVALID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->an()V

    goto/16 :goto_4

    :cond_10
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v6, "phone"

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/e;->y:I

    if-eqz p1, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiver, phone state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mPhoneState: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oppo/camera/e;->y:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "onReceiver, phone offhook, forceStopVideoRecording"

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v5}, Lcom/oppo/camera/d/i;->f(Z)V

    goto/16 :goto_4

    :cond_11
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceiver, ACTION_CLOSE_SYSTEM_DIALOGS, reason:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "homekey"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "recentapps"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_12
    const-string p1, "onReceiver, system dialog reason, saveCameraExitState"

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bJ()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->a()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->n()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v6}, Lcom/oppo/camera/d/i;->e(Z)V

    :cond_13
    iget-boolean p1, p0, Lcom/oppo/camera/e;->cf:Z

    if-nez p1, :cond_14

    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v2, Lcom/oppo/camera/e$48;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$48;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {p1, v2, v7}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/oppo/camera/e;->cf:Z

    :cond_14
    invoke-static {}, Lcom/oppo/camera/MyApplication;->c()V

    goto/16 :goto_4

    :cond_15
    const-string p1, "com.heytap.speechassist.intent.action.WINDOW_MANAGER_OCCUPIED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v5}, Lcom/oppo/camera/d/i;->b(Z)Z

    goto :goto_4

    :cond_16
    iget-object p1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/h;->e()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/h;->g()V

    goto :goto_4

    :cond_17
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v6}, Lcom/oppo/camera/d/i;->f(Z)V

    goto :goto_4

    :cond_18
    const-string p1, "com.heytap.speechassist.intent.action.FLOAT_ACTIVITY_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_19
    :goto_2
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v8, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_1a
    :goto_3
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    :cond_1b
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiver X, intent action: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraManager"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/oppo/camera/e;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {v0, v2}, Lcom/oppo/camera/e;->h(Ljava/lang/String;)V

    :cond_0
    iget-object v3, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/oppo/camera/ui/e;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1
    iget-object v3, v0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1, v2}, Lcom/oppo/camera/ui/preview/h;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_2
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, v2}, Lcom/oppo/camera/d/i;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_3
    const-string v3, "pref_camera_id_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->M()I

    move-result v1

    iget v2, v0, Lcom/oppo/camera/e;->q:I

    if-ne v2, v1, :cond_4

    return-void

    :cond_4
    iget-object v2, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v2}, Lcom/oppo/camera/entry/b;->g()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bJ()V

    invoke-direct {v0, v1, v5, v6}, Lcom/oppo/camera/e;->a(IZZ)V

    return-void

    :cond_5
    const-string v4, "pref_camera_mode_key"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v4}, Lcom/oppo/camera/entry/b;->r()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_6

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v6

    :goto_0
    invoke-static {v4}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-boolean v6, v0, Lcom/oppo/camera/e;->ag:Z

    iget-object v1, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->g()V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bJ()V

    invoke-direct {v0, v6, v5, v6}, Lcom/oppo/camera/e;->a(ZZZ)V

    :cond_7
    return-void

    :cond_8
    const-string v7, "pref_subsetting_key"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "on"

    const-string v10, "off"

    if-eqz v8, :cond_a

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v7, v10}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/e;->t(Z)V

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/oppo/camera/e;->U:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v1

    iget-object v3, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v4, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v7, 0x7f0f0124

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501d1

    invoke-virtual {v3, v1, v6, v2}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;II)V

    :cond_9
    return-void

    :cond_a
    const-string v7, "pref_setting_key"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "pref_video_size_key"

    const-string v11, "key_high_picture_size"

    const-string v12, "pref_camera_photo_ratio_key"

    if-eqz v7, :cond_b

    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.oppo.camera.action.SETTING_MENU"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iget v14, v0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v14, "pref_camera_tap_shutter_key"

    invoke-virtual {v3, v14}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v14, "pref_camera_tap_shutter_key"

    invoke-virtual {v13, v14, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v14, "pref_camera_gesture_shutter_key"

    invoke-virtual {v3, v14}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v14, "pref_camera_gesture_shutter_key"

    invoke-virtual {v13, v14, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->e()Z

    move-result v3

    const-string v14, "key_is_capture_mode"

    invoke-virtual {v13, v14, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_assistant_line_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_camera_assistant_line_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_ai_scene_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_ai_scene_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_mirror_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_mirror_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_slogan_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_camera_slogan_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->P()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_full_pic_size_type"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pref_raw_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_raw_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "pref_camera_gradienter_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_camera_gradienter_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_time_lapse_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_time_lapse_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v11}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v13, v11, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aP()I

    move-result v3

    const-string v4, "pref_video_fps_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "key_support_video_high_fps"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "key_support_video_high_fps"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    const-string v4, "camera_enter_type"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->n()Z

    move-result v3

    const-string v4, "camera_enter_form_lock_screen"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pref_video_ratio_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_video_ratio_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "pref_video_codec_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_video_codec_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->bb()Z

    move-result v3

    const-string v4, "key_support_video_ultra_wide_angel"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "camera_intent_data"

    invoke-virtual {v7, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Lcom/oppo/camera/e;->y(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bI()V

    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_b
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "pref_slow_video_frame_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "pref_video_fps_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_e

    :cond_c
    const-string v3, "pref_switch_camera_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aP()V

    return-void

    :cond_d
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "standard"

    const-string v7, "pref_camera_high_resolution_key"

    const-string v8, "standard_high"

    if-eqz v3, :cond_f

    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1, v2, v6}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v12, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2, v3, v6}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    invoke-virtual {v1, v11, v6}, Lcom/oppo/camera/i$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v7}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aN()V

    return-void

    :cond_f
    const-string v3, "pref_camera_timer_shutter_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v4, 0x7f0f015c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_timer_shutter_key"

    invoke-virtual {v1, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "normal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {v0, v2, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_10
    invoke-direct {v0, v2, v5}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_11
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1, v3, v6}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_12
    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    invoke-virtual {v3, v12, v1}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v11, v4}, Lcom/oppo/camera/i$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v12}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {v0, v2, v5}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_14
    invoke-direct {v0, v2, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    :cond_15
    :goto_2
    const-string v3, "square"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "full"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v11, v1}, Lcom/oppo/camera/i$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v12}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_17
    invoke-direct {v0, v2, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    :cond_18
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->f()V

    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v11, v6}, Lcom/oppo/camera/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v2, "func_face_beauty_process"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v6, v6, v6}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    :cond_19
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    :cond_1a
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v2, "pref_filter_process_key"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v5, v6}, Lcom/oppo/camera/ui/e;->h(ZZ)V

    goto :goto_3

    :cond_1b
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v5}, Lcom/oppo/camera/ui/e;->m(Z)V

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v6}, Lcom/oppo/camera/ui/e;->n(Z)V

    :cond_1c
    :goto_3
    return-void

    :cond_1d
    const-string v3, "pref_camera_hdr_mode_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-direct {v0, v2}, Lcom/oppo/camera/e;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aR()V

    goto :goto_4

    :cond_1e
    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/d/i;->j(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_1f
    const-string v3, "pref_high_resolution_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    return-void

    :cond_20
    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v2, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->s()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->r(Z)V

    invoke-virtual {v0, v6, v5}, Lcom/oppo/camera/e;->b(ZZ)V

    :cond_21
    return-void

    :cond_22
    const-string v3, "pref_camera_videoflashmode_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->I()Ljava/lang/String;

    move-result-object v1

    :cond_23
    sget-boolean v2, Lcom/oppo/camera/Camera;->b:Z

    if-nez v2, :cond_26

    sget-boolean v2, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v2, :cond_24

    goto :goto_6

    :cond_24
    const-string v2, "torch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v7, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v8, -0x1

    const v9, 0x7f0703de

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    goto :goto_5

    :cond_25
    iget-object v2, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v6, v5, v5}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    :goto_5
    iget-object v2, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v2, :cond_2a

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_8

    :cond_26
    :goto_6
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    sget-boolean v1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v1, :cond_27

    iget-object v11, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v12, 0x7f0f00e1

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    const-string v1, "temps_flash"

    invoke-direct {v0, v1}, Lcom/oppo/camera/e;->i(Ljava/lang/String;)V

    goto :goto_7

    :cond_27
    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v1, :cond_28

    iget-object v11, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v12, 0x7f0f00f3

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    :cond_28
    :goto_7
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    invoke-interface {v1, v3, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_29
    iget-object v1, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v6, v6}, Lcom/oppo/camera/d/i;->a(ZZ)V

    :cond_2a
    :goto_8
    return-void

    :cond_2b
    const-string v3, "pref_camera_torch_mode_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v2, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "func_torch_soft_light"

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v2, "torch"

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_2c
    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v10}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    :goto_9
    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_b

    :cond_2d
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_a

    :cond_2e
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(F)V

    goto :goto_b

    :cond_2f
    :goto_a
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(F)V

    :goto_b
    return-void

    :cond_30
    const-string v1, "key_filter_index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->G(Z)V

    :cond_31
    return-void

    :cond_32
    const-string v1, "pref_camera_vivid_effect_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-boolean v1, v0, Lcom/oppo/camera/e;->X:Z

    if-nez v1, :cond_34

    const v1, 0x7f0f01b9

    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->ah()Z

    move-result v2

    if-eqz v2, :cond_33

    const v1, 0x7f0f01bd

    :cond_33
    move v3, v1

    iget-object v2, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v2, :cond_34

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    :cond_34
    return-void

    :cond_35
    const-string v1, "pref_current_sticker_uuid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v1

    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    iget v4, v0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3, v4}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-nez v3, :cond_36

    iget v3, v0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_36
    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    iget v4, v0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3, v4}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-eqz v3, :cond_38

    iget v3, v0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aS()V

    goto :goto_c

    :cond_38
    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->m()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v4, "type_preview_frame"

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->b(Ljava/lang/String;)V

    goto :goto_c

    :cond_39
    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->m()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v4, "type_preview_frame"

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    :cond_3a
    :goto_c
    iput-object v1, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    :cond_3b
    const-string v1, "pref_switch_dual_camera_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->M()I

    move-result v1

    invoke-direct {v0, v1, v5, v5}, Lcom/oppo/camera/e;->a(IZZ)V

    return-void

    :cond_3c
    const-string v1, "pref_common_facebeauty_level_menu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "pref_portrait_facebeauty_level_menu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "pref_sticker_facebeauty_level_menu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_d

    :cond_3d
    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aP()V

    :cond_3e
    return-void

    :cond_3f
    :goto_d
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_40

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->G(Z)V

    :cond_40
    return-void

    :cond_41
    :goto_e
    iget-object v1, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v1

    if-nez v1, :cond_42

    iget-boolean v1, v0, Lcom/oppo/camera/e;->W:Z

    if-nez v1, :cond_42

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aO()V

    :cond_42
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v2

    invoke-static {v0}, Lcom/oppo/camera/o/d;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/oppo/camera/ui/e;->a(BZ)V

    :cond_0
    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/ui/e;->c(II)V

    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/ui/e;->a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    const-string v1, "CameraManager"

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v2, "com.oppo.ai.scene.app.data"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->af()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->L()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    array-length v4, v4

    if-lez v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v3

    iget v4, p0, Lcom/oppo/camera/e;->v:I

    if-eq v4, v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewCaptureResult, value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/oppo/camera/e;->v:I

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v4, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/e;->s(I)V

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget v4, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v2, v4}, Lcom/oppo/camera/d/i;->g(I)V

    :cond_1
    const-string v2, "com.oppo.iris.aperture.switching"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v5, v5

    if-lez v5, :cond_5

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v3

    if-ne v2, v4, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/oppo/camera/e;->aB:Z

    iget-boolean v5, p0, Lcom/oppo/camera/e;->aB:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewCaptureResult, apertureSwitchValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v1, p0, Lcom/oppo/camera/e;->aB:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/preview/e;->b(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/preview/e;->b(Z)V

    :cond_5
    :goto_1
    const-string v1, "display.iso"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/oppo/camera/e;->a(IZ)V

    :cond_6
    const-string v1, "post.process"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v2, v4, :cond_7

    const/16 v2, 0x64

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_9

    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$22;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$22;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    :goto_2
    const-string v1, "com.oppo.process.meta.queue.limit"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(I)V

    :cond_a
    const-string v1, "com.oppo.process.image.queue.limit"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->b(I)V

    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_c
    return-void

    :cond_d
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, mOneCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 3

    const-string v0, "onPreviewSizeChanged"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/e;->o(I)V

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;Z)V

    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$10;

    invoke-direct {v2, p0, p1}, Lcom/oppo/camera/e$10;-><init>(Lcom/oppo/camera/e;Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/e;->e(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSettingControlBg, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", needControllerAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/oppo/camera/e;->A:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_1

    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->o(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne v1, p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/e;->am:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    if-eqz p1, :cond_1

    iput v2, p0, Lcom/oppo/camera/e;->s:I

    invoke-virtual {p1, v2}, Lcom/oppo/camera/e$p;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOpticalZoomMenu, listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/i;Lcom/oppo/camera/entry/b;Z)V
    .locals 2

    const-string v0, "CameraManager create instance"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iput-object p2, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->i()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->r(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    instance-of p1, p1, Lcom/oppo/camera/MyApplication;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/MyApplication;

    invoke-virtual {p1}, Lcom/oppo/camera/MyApplication;->d()V

    :cond_0
    new-instance p1, Lcom/oppo/camera/e$l;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/e$l;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object p1, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/e;->bC()V

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/e;->bA()V

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->bD()V

    :cond_2
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->l(I)V

    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/e;->aA()V

    const/4 p3, 0x2

    invoke-direct {p0, p3}, Lcom/oppo/camera/e;->m(I)V

    iget-object p3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p3}, Lcom/oppo/camera/entry/b;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/e;->bF()V

    :cond_4
    iget-object p3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v1, "rom_update_info"

    invoke-virtual {p3, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    iget-object p3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v1, "local_update_info"

    invoke-virtual {p3, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->aW:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {p1}, Lcom/color/compat/os/PowerManagerNative;->getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/e;->k:I

    const-string p1, "oppo.camera.gallery.backlight.optimize"

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ab:Z

    const-string p1, "oppo.autobrightctl.animation.support"

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ac:Z

    new-instance p1, Lcom/oppo/camera/e$n;

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/e$n;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object p1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/v$a;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storeImagePictureTakenDone, mJpegRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oppo/camera/v$a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", jpegName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v2, p0, Lcom/oppo/camera/e;->n:I

    iput v2, v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mOrientation:I

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2, v0, p1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iput-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->report()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/v$a;)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/e;->u:I

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    iput v2, p1, Lcom/oppo/camera/v$a;->q:I

    iget-object v2, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v2}, Lcom/oppo/camera/entry/b;->r()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-virtual {v2}, Lcom/oppo/camera/m;->c()Landroid/location/Location;

    move-result-object v2

    iget-boolean v4, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :cond_3
    :goto_0
    iput-object v2, p1, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->O()I

    move-result v2

    iput v2, p1, Lcom/oppo/camera/v$a;->s:I

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/oppo/camera/v$a;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/oppo/camera/v$a;->l:J

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->K()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/oppo/camera/v$a;->z:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/oppo/camera/e$19;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$19;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p1, Lcom/oppo/camera/v$a;->v:Lcom/oppo/camera/ui/control/e$a;

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/Ipa/c;->a(Lcom/oppo/camera/v$a;)V

    sget p1, Lcom/oppo/camera/v;->s:I

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    const-string p1, "storeImagePictureTakenDone X"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {p1}, Lcom/oppo/camera/f;->c()V

    const-string p1, "CameraManager"

    const-string v0, "notifyFirstFrame, sendBroadcast com.oppo.camera.start notifyFirstFrame"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->b(Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/e;->aR:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/e;->ah:Z

    if-eqz v1, :cond_0

    const-string p1, "CameraManager"

    const-string p2, "setAutoBrightnessAdjust, Process would be kill, don\'t set adjustValue!"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/oppo/camera/e;->ah:Z

    iget-boolean p2, p0, Lcom/oppo/camera/e;->ab:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_1

    :cond_2
    iget-boolean p2, p0, Lcom/oppo/camera/e;->ac:Z

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/e;->aM()I

    move-result p2

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz p1, :cond_3

    const/high16 p1, 0x43960000    # 300.0f

    goto :goto_0

    :cond_3
    const/high16 p1, 0x43fa0000    # 500.0f

    :goto_0
    int-to-float p2, p2

    mul-float/2addr p2, p1

    div-float p1, p2, v2

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    cmpl-float p2, p1, v1

    if-nez p2, :cond_5

    const-string p1, "CameraManager"

    const-string p2, "setAutoBrightnessAdjust, No need set adjustValue!"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_5
    const-string p2, "CameraManager"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "setAutoBrightnessAdjust %f on sdk %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    if-eqz p2, :cond_6

    invoke-static {p2, p1}, Lcom/color/compat/hardware/display/DisplayManagerNative;->setTemporaryAutoBrightnessAdjustment(Landroid/hardware/display/DisplayManager;F)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([Landroid/hardware/camera2/params/Face;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    iget-object p1, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/oppo/camera/e;->bm:I

    iget-object p1, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iget v1, p0, Lcom/oppo/camera/e;->bm:I

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/o;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown, keycode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/e;->z:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "fingerprint"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-eq p1, v0, :cond_d

    const/16 v0, 0x52

    if-eq p1, v0, :cond_c

    const/16 v0, 0x54

    if-eq p1, v0, :cond_b

    const/16 v0, 0x13f

    if-eq p1, v0, :cond_d

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_7

    const/16 v0, 0x50

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/e;->c(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_5
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    :cond_6
    return v1

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    const-wide/16 v4, 0x258

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    iget-wide v6, p0, Lcom/oppo/camera/e;->A:J

    sub-long v6, v2, v6

    cmp-long p1, v6, v4

    if-gtz p1, :cond_8

    return v1

    :cond_8
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_9

    iget-wide v6, p0, Lcom/oppo/camera/e;->A:J

    sub-long v6, v2, v6

    cmp-long p1, v6, v4

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/e;->an()Z

    move-result p1

    if-eqz p1, :cond_9

    iput-wide v2, p0, Lcom/oppo/camera/e;->A:J

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    goto :goto_1

    :cond_9
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_a

    iput-wide v2, p0, Lcom/oppo/camera/e;->A:J

    :cond_a
    :goto_1
    return v1

    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    return p1

    :cond_c
    return v1

    :cond_d
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/oppo/camera/e;->a(Landroid/view/KeyEvent;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/d/i;->b(I)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/d/i;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->G(Z)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->K(Z)V

    :cond_0
    return p1
.end method

.method public aa()V
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Z()V

    new-instance v0, Lcom/oppo/camera/ui/preview/a/j;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/preview/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->cQ:Lcom/oppo/camera/ui/preview/a/i$a;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/ui/preview/a/i$a;)V

    new-instance v0, Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/ui/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->m(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/a;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    new-instance v1, Lcom/oppo/camera/e$o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$o;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/d;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cX:Lcom/oppo/camera/ui/control/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/f;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cK:Lcom/oppo/camera/e$t;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/preview/e$b;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/preview/a/i;)V

    new-instance v0, Lcom/oppo/camera/ui/preview/h;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->cT:Lcom/oppo/camera/ui/preview/c;

    invoke-direct {v0, v1, v3, v4}, Lcom/oppo/camera/ui/preview/h;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/preview/c;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->b()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v4, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {v0, v1, v3, v4}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Y()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bq()V

    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->d()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/f;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oppo/camera/e;->aS:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->J(Z)V

    :cond_0
    const-string v0, "CameraManager"

    const-string v1, "onCreate, open the block"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oppo.display.miravision.support"

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aq:Z

    new-instance v0, Lcom/oppo/camera/m;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {v0, v1, v3}, Lcom/oppo/camera/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/m;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    new-instance v1, Lcom/oppo/camera/e$w;

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$w;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/m;->a(Lcom/oppo/camera/m$e;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    return-void
.end method

.method public ab()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aC:Z

    return-void
.end method

.method public ac()V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/e;->an:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$25;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$25;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public ad()V
    .locals 12

    const-string v0, "CameraManager"

    const-string v1, "onResumeMessage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/e;->ao:Z

    if-eqz v1, :cond_0

    const-string v1, "onResumeMessage, return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/e;->ao:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oppo/camera/e;->z(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->j(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->i(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->f(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->k(Z)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->c(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->A()V

    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v4, :cond_1

    iget-boolean v5, p0, Lcom/oppo/camera/e;->U:Z

    xor-int/2addr v5, v1

    invoke-virtual {v4, v5, v2}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->g(Z)V

    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->K()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/oppo/camera/x;->a(I)V

    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v4, :cond_12

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->w(Z)V

    iget-object v4, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v4}, Lcom/oppo/camera/entry/b;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "pref_filter_process_key"

    invoke-virtual {p0, v4}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v11, v1

    goto :goto_0

    :cond_5
    move v11, v2

    :goto_0
    iget-object v5, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v6

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v7

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aI()Z

    move-result v8

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v9

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->a()Z

    move-result v10

    invoke-virtual/range {v5 .. v11}, Lcom/oppo/camera/ui/e;->a(ZZZZZZ)V

    iget-object v4, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/oppo/camera/ui/preview/h;->c()V

    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v4}, Lcom/oppo/camera/entry/b;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v5, v4}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v5, v3, v4}, Lcom/oppo/camera/ui/e;->c(II)V

    :cond_7
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/oppo/camera/config/ConfigDataBase;->KEY_GOOGLE_LENS_ENABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_8

    const/4 v5, 0x0

    const-string v6, "google_lens_switch"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResumeMessage, enableGoogleLens: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    if-nez v3, :cond_9

    new-instance v3, Lcom/google/lens/sdk/LensApi;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    iget-object v3, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    new-instance v4, Lcom/oppo/camera/e$26;

    invoke-direct {v4, p0}, Lcom/oppo/camera/e$26;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v3, v4}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    :cond_9
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "func_face_beauty_process"

    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "beauty"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aM()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/d/i;->n(I)V

    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/e;->k(I)V

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/e;->n(Z)V

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aD()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->a()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/e;->s(Z)V

    :cond_c
    :goto_2
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    if-ne v3, v1, :cond_e

    iget-boolean v1, p0, Lcom/oppo/camera/e;->ca:Z

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/oppo/camera/e;->az()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/e;->r(I)V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/e;->q(I)V

    :cond_e
    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aI()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->h(Z)V

    :cond_f
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_portrait_new_style_menu"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    const-string v1, "pref_filter_menu"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    const-string v1, "pref_video_filter_menu"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    :cond_12
    :goto_4
    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/oppo/camera/m;->d()V

    :cond_13
    iget-object v1, p0, Lcom/oppo/camera/e;->cV:Lcom/oppo/camera/ui/menu/e;

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/f;->a(Lcom/oppo/camera/ui/menu/e;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v1}, Lcom/oppo/camera/f;->d()V

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v2, v3, v1}, Lcom/oppo/camera/ui/e;->b(ILjava/lang/String;)V

    :cond_14
    iget-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-nez v1, :cond_15

    new-instance v1, Lcom/oppo/camera/w;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oppo/camera/w;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    :cond_15
    iget-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    invoke-virtual {v1}, Lcom/oppo/camera/w;->a()V

    const-string v1, "onResumeMessage, end"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ae()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/h;->d()V

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->a()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/m;->f()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->g()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->b()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->V()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/o;->e()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/k;->d()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->G()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->e()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/oppo/camera/n;->c()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oppo/camera/s;->a()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oppo/camera/w;->b()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    :cond_a
    invoke-direct {p0}, Lcom/oppo/camera/e;->aD()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/oppo/camera/t;->c()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/oppo/camera/Ipa/e;->a(Lcom/oppo/camera/Ipa/e$b;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/e;->a()V

    iput-object v1, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    iput-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    iput-object v1, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-void
.end method

.method public af()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchUIByCurrentModeType, getCurrentModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/control/c;Z)V

    return-void
.end method

.method public ag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    return v0
.end method

.method public ah()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->h()V

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/e/f;->a(ZLcom/oppo/camera/e/f$b;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/e;->O:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->j(I)V

    iput-boolean v1, p0, Lcom/oppo/camera/e;->ax:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ai()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterStartUpCamera, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFirstTimeInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->av:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aS:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/f;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/h;->c(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/h;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/oppo/camera/e/a;->a(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->l(I)V

    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->r(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/oppo/camera/e;->b(ZZ)V

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_1

    const-string v0, "afterStartUpCamera, activity paused, so return"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "key_beauty3d"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/e$30;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$30;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aj()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->v(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/e;->an:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$31;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$31;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public aj()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCaptureSession, mCameraState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbAEAFLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->j(I)V

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->d()V

    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->q()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->u()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/e;->R:Z

    iget-boolean v0, p0, Lcom/oppo/camera/e;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$33;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$33;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ak()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public al()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "showOpticalZoomMenu"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/x;->b()V

    :cond_1
    return-void
.end method

.method public am()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "collapseOpticalZoomMenu"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->c()V

    :cond_0
    return-void
.end method

.method public an()Z
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->M()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->M()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->M()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/ShutterButton;->getVisibility()I

    move-result v2

    const-string v3, "CameraManager"

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sticker"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVolumeCanCapture, getCurrentModeName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "common"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVolumeCanCapture, will return, isClickable : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isClickable()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", enable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", recording: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public ao()Z
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/e;->br()Lcom/oppo/camera/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0}, Lcom/oppo/camera/u;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ap()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->ar()V

    :cond_0
    return-void
.end method

.method public aq()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    return v0
.end method

.method public ar()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/m;->g()V

    :cond_0
    return-void
.end method

.method public as()J
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ay()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public at()Lcom/oppo/camera/e$c;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-object v0
.end method

.method public au()F
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->a()F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aw()F

    move-result v0

    return v0
.end method

.method public av()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aw()F
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    const-string v1, "func_sat_camera"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "pref_switch_camera_key"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/e/h;->a(ZZ)F

    move-result v0

    return v0
.end method

.method public ax()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oppo/camera/e;->bz()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "func_sat_camera"

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_switch_camera_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oppo/camera/e/h;->a(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->T()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->at:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onScreenOffWhenLocked"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->m(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/e;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->i(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/e$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$6;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/e;->a(FZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$27;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e$27;-><init>(Lcom/oppo/camera/e;F)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSound, cameraSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aJ:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/o;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    const-string v1, "CameraManager"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewOk, mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oppo/camera/e;->ap:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    iget-boolean p1, p0, Lcom/oppo/camera/e;->an:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->j()V

    :cond_1
    const-string p1, "CameraTest Displayed com.oppo.camera"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/oppo/camera/e;->an:Z

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->u(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewOk, mbDisplayOnLock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {p1}, Lcom/oppo/camera/f;->d()V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->j()V

    :cond_3
    return-void
.end method

.method public b(ZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAEAFLocked, mbAEAFLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "setAEAFLocked, isCapturing, so return!"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "setAEAFLocked"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->Q:Z

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/e;->R:Z

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->ao()V

    const-string p1, "pref_camera_flashmode_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/e;->B(Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/h;->e(Z)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyUp, keyCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraManager"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "oppo.camera.stresstest"

    const-string v0, "false"

    invoke-static {p2, v0}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0}, Lcom/oppo/camera/e;->F()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/16 v0, 0x18

    const/4 v3, 0x3

    if-eq p1, v0, :cond_6

    const/16 v0, 0x19

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x50

    if-eq p1, v0, :cond_4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/16 v0, 0x83

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13f

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_a

    const-string p1, "night"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    return v2

    :pswitch_1
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_2
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v3}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_3
    if-eqz p2, :cond_a

    const-string p1, "portrait"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    return v2

    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->b(Z)Z

    :cond_1
    return v2

    :pswitch_5
    if-eqz p2, :cond_a

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_6
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_7
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_8
    if-eqz p2, :cond_a

    return v2

    :pswitch_9
    if-eqz p2, :cond_a

    const-string p1, "commonVideo"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    return v2

    :cond_2
    if-eqz p2, :cond_a

    const-string p1, "common"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    :cond_3
    return v2

    :cond_4
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    :cond_5
    return v2

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-ne p1, v3, :cond_7

    return v2

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v0, 0x7f0f01be

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_volume_key_function_key"

    invoke-virtual {p1, v0, p2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "shutter"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "zoom"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    :goto_1
    return v1

    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/d/a;)Landroid/util/Size;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/d/a;)Landroid/util/Size;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v1, v0}, Lcom/oppo/camera/q;->a(Landroid/util/Size;Landroid/util/Size;)V

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isModeSwitchNeedBlurAnimate, previewSize:("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") => ("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eq v3, v4, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public c(F)Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr p1, v5

    div-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    sub-int v0, v2, v4

    sub-int v5, v3, p1

    add-int/2addr v2, v4

    add-int/2addr v3, p1

    invoke-virtual {v1, v0, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v1
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlurAnimType, animType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/e;->x:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraTriggerShutterType, shutterTriggerType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterStartPreview, mbFrameAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->ap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromAsync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->D(Z)V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bc()V

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/oppo/camera/e;->w:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/e;->c(F)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {p1}, Lcom/oppo/camera/e$n;->c()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_sticker_process_key"

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p1

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    :cond_3
    iget-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/e;->aF()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {v1, p1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(ZZ)V

    :cond_5
    return-void
.end method

.method public c(ZZ)V
    .locals 6

    const-string v0, "CameraManager"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->k()V

    const-string v1, "normal"

    iput-object v1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/e;->cg:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/e;->ci:Z

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->bK()Z

    move-result v3

    iput-boolean v3, p0, Lcom/oppo/camera/e;->cg:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, mbAllowObtainExifLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/e;->cg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/e;->bC()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bF()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bA()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bD()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/oppo/camera/e;->r(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->i()I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->r(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iput v2, p0, Lcom/oppo/camera/e;->bY:I

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    iget v4, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/oppo/camera/e;->A:J

    iput-boolean v2, p0, Lcom/oppo/camera/e;->ar:Z

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ax:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->ad()V

    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/e;->bB()V

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p0, v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->m(I)V

    invoke-virtual {p0, p2}, Lcom/oppo/camera/e;->t(Z)V

    iget-boolean p2, p0, Lcom/oppo/camera/e;->P:Z

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/oppo/camera/e;->u(Z)V

    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/e;->y:I

    invoke-direct {p0}, Lcom/oppo/camera/e;->aB()V

    invoke-static {}, Landroid/hardware/foss/FossManager;->getInstance()Landroid/hardware/foss/FossManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/e;->by:Landroid/hardware/foss/FossManager;

    iget-object p2, p0, Lcom/oppo/camera/e;->by:Landroid/hardware/foss/FossManager;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/hardware/foss/FossManager;->disableFoss()Z

    :cond_8
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->j(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->J(Z)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->r(Z)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_9
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->K(Z)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_support_switch_camera"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, p2, v3}, Lcom/oppo/camera/ui/e;->a(ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/d/i;->d(Z)V

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->r(Z)V

    :cond_a
    iget-boolean p2, p0, Lcom/oppo/camera/e;->at:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->bd()V

    :cond_b
    iput-boolean v2, p0, Lcom/oppo/camera/e;->as:Z

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->y(Z)V

    iput-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    iget-boolean p2, p0, Lcom/oppo/camera/e;->ax:Z

    if-nez p2, :cond_d

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p2

    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/oppo/camera/e;->ba()V

    iput-boolean v2, p0, Lcom/oppo/camera/e;->cf:Z

    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->l(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ad()V

    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    if-eqz p1, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_3
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/t;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(ILandroid/view/KeyEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v4, 0x7f0f01be

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_volume_key_function_key"

    invoke-virtual {v2, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/camera/e;->av:Z

    const-wide/16 v4, 0x258

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-wide v7, p0, Lcom/oppo/camera/e;->A:J

    sub-long v7, v0, v7

    cmp-long v3, v7, v4

    if-gtz v3, :cond_0

    return v6

    :cond_0
    const-string v3, "shutter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/oppo/camera/e;->A:J

    sub-long v2, v0, v2

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->an()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    const-string p1, "volume"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_2

    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    :cond_2
    :goto_0
    return v6

    :cond_3
    const-string p2, "zoom"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/oppo/camera/e;->T:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->az()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->K()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_zoom_key"

    invoke-virtual {p2, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->L()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->V()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 p2, 0x18

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v6}, Lcom/oppo/camera/x;->b(Z)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/oppo/camera/x;->b(Z)V

    :cond_6
    :goto_1
    return v6

    :cond_7
    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->X()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->d(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "CameraManager"

    const-string v0, "dispatchTouchEvent, do mFocus manager touchevent"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    if-nez v0, :cond_5

    new-instance v0, Lcom/oppo/camera/e$p;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/e$p;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Landroid/view/MotionEvent;)Z

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->X()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    if-nez v0, :cond_a

    new-instance v0, Lcom/oppo/camera/e$p;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/e$p;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)V
    .locals 2

    iput p1, p0, Lcom/oppo/camera/e;->n:I

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->o(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->e(I)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->b(I)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/oppo/camera/e;->n:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/x;->a(IZ)V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-static {v0, v1}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_5
    return-void
.end method

.method public d(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v1, 0x7f0f0190

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->at()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-nez p1, :cond_1

    new-instance p1, Lcom/oppo/camera/k;

    invoke-direct {p1}, Lcom/oppo/camera/k;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/oppo/camera/k;->a(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    iget-object v0, p0, Lcom/oppo/camera/e;->cF:Lcom/oppo/camera/k$c;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/k;->a(Lcom/oppo/camera/k$c;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/e$h;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(F)Z
    .locals 1

    const-string v0, "func_sat_camera"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v0}, Lcom/oppo/camera/e$n;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToSwitchMode, lastModeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "checkToSwitchMode"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v3

    iget v4, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/a;->f(I)V

    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->a()Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/a;->e(Z)V

    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->b()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->c()V

    const-string v4, "checkToSwitchMode, CloseSessionTask execute"

    invoke-static {v2, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/oppo/camera/e$i;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/oppo/camera/e$i;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v2, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    iget-object v2, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    iget-object v4, p0, Lcom/oppo/camera/e;->j:Ljava/util/concurrent/ExecutorService;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v7}, Lcom/oppo/camera/d/i;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v7}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v4, v6}, Lcom/oppo/camera/e$i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    iput-boolean v5, p0, Lcom/oppo/camera/e;->aC:Z

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->j(I)V

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v2}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v2

    const-string v4, "pref_camera_mode_key"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/d/a;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v5

    :cond_3
    :goto_1
    return v1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->l()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    iput p1, p0, Lcom/oppo/camera/e;->o:I

    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->f(I)V

    :cond_0
    const-string v0, "pref_camera_gradienter_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v2, "off"

    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/x;->d()Z

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/ui/e;->a(IZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoubleFinger, mbDoubleFinger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->am:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->am:Z

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->H()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 6

    iget-object v1, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    const-string v2, "temperature_limit"

    const-string v3, "temperature_limit"

    const-string v4, "ro.camera.temperature.limit"

    const-string v5, "480"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemperatureChanged, level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sbHightTemperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oppo/camera/Camera;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", temperatureLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aV()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->q(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_1

    const-string v2, "pref_support_high_temperature_ultimate_limit"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/e;->aW()V

    :cond_1
    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    sget-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    sput-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    iput-boolean p1, p0, Lcom/oppo/camera/e;->N:Z

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_2

    const v0, 0x7f0f00e1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sget-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    sput-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    iput-boolean p1, p0, Lcom/oppo/camera/e;->N:Z

    :try_start_0
    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/e;->aG()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureModeChangeState, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/e;->t:[I

    return-void
.end method

.method public g(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryChanged, level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sbLowBatteryState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-le p1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->g(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v3, 0x7f0f00f4

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/e;->b(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->g(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->f(Z)V

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v4, 0x7f0f00f4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    :cond_1
    :goto_0
    const/16 v0, 0xf

    const/4 v3, 0x0

    if-le p1, v0, :cond_3

    sget-boolean p1, Lcom/oppo/camera/Camera;->a:Z

    if-eqz p1, :cond_2

    sput-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    iput-boolean v1, p0, Lcom/oppo/camera/e;->M:Z

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_2

    const v0, 0x7f0f00f3

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0, v3}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0, v3}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sget-boolean p1, Lcom/oppo/camera/Camera;->a:Z

    if-nez p1, :cond_7

    sput-boolean v2, Lcom/oppo/camera/Camera;->a:Z

    iput-boolean v2, p0, Lcom/oppo/camera/e;->M:Z

    :try_start_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "off"

    if-nez p1, :cond_5

    :try_start_1
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/oppo/camera/e;->aA:Z

    goto :goto_1

    :cond_5
    const-string p1, "func_torch_soft_light"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->aH()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method public g(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchingCameraState, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->T:Z

    return-void
.end method

.method public h()V
    .locals 5

    iget-boolean v0, p0, Lcom/oppo/camera/e;->av:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oppo/camera/e$y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$y;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$8;-><init>(Lcom/oppo/camera/e;)V

    const-string v2, "initBaseModeMap"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->o(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/oppo/camera/ui/e;->a(IZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bq()V

    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->d()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->I()V

    :cond_1
    iput-boolean v4, p0, Lcom/oppo/camera/e;->au:Z

    iput-boolean v4, p0, Lcom/oppo/camera/e;->av:Z

    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeFirstTime, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbFirstTimeInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->av:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    const-string v1, "pref_camera_mode_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public h(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayToDisableBustShot, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->al:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->al:Z

    return-void
.end method

.method public i()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeSecondTime, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->o(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v0

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v4, p0, Lcom/oppo/camera/e;->q:I

    iget-object v5, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v5}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v5

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v5, v0}, Lcom/oppo/camera/ui/e;->a(IZZ)V

    iput-boolean v1, p0, Lcom/oppo/camera/e;->L:Z

    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->bq()V

    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->d()V

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->I()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_filter_process_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->r()Lcom/oppo/camera/ui/preview/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/ui/preview/a/g;)V

    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/e;->au:Z

    return-void
.end method

.method public i(I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCamera, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOperation, cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oppo.camera.switch"

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->b()I

    move-result v0

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4, p1, v3}, Lcom/oppo/camera/ui/e;->b(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/d/i;->b(I)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->h(I)V

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->x()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->p(Z)V

    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->aa()V

    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->aI()V

    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->D()V

    iget-object v4, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v5, Lcom/oppo/camera/e$21;

    invoke-direct {v5, p0}, Lcom/oppo/camera/e$21;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->r(I)V

    iget-object v4, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v4, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v4, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3, v4}, Lcom/oppo/camera/e/a;->a(II)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/e;->l(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->b(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/preview/h;->c(I)V

    invoke-direct {p0}, Lcom/oppo/camera/e;->aY()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object p1

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p1, v3}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCamera, properCameraId: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Lcom/oppo/camera/e$l;->a(I)V

    :cond_1
    const/16 p1, 0x300

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->i(Z)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v6}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    iput v1, p0, Lcom/oppo/camera/e;->w:I

    iget-object v4, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v7, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    const/4 v8, 0x1

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Lcom/oppo/camera/e/f;->a(Landroid/content/Context;ILcom/oppo/camera/e/f$b;ZI)V

    return-void
.end method

.method public i(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSizeChangeState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->V:Z

    return-void
.end method

.method public j()V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "onPreviewOKMessage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oppo/camera/e;->an:Z

    if-eqz v1, :cond_0

    const-string v1, "onPreviewOKMessage, mbPreviewOKMessageEnd is true, so return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/e;->an:Z

    invoke-direct {p0}, Lcom/oppo/camera/e;->aE()V

    invoke-direct {p0, v1}, Lcom/oppo/camera/e;->m(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ad()V

    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-virtual {v1}, Lcom/oppo/camera/m;->d()V

    iget-object v1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v1}, Lcom/oppo/camera/f;->b()V

    iget-boolean v1, p0, Lcom/oppo/camera/e;->av:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->h()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/e;->i()V

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/h;->c(I)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/oppo/camera/e/a;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->l(I)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->Y()V

    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->c(Z)V

    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$9;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$9;-><init>(Lcom/oppo/camera/e;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/camera/n/a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const-string v1, "onPreviewOKMessage X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraState, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/e;->l:I

    return-void
.end method

.method public j(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceChangeRecSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->W:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->W:Z

    return-void
.end method

.method public k(I)V
    .locals 3

    const-string v0, "CameraManager"

    invoke-static {}, Lcom/oppo/camera/o/d;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v1, "KEYCODE_SYSTEM_FINGERPRINT_KEYMODE"

    invoke-static {v1}, Lcom/oppo/camera/o/d;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/e;->z:I

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setFingerKeymode(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "setFingerKeymode, FingerprintManager NoSuchMethodError"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerKeymode, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public k(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlurAnimRunning, running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/e;->S:Z

    return-void
.end method

.method public k()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v2, 0x7f0f00d0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_gesture_shutter_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/k;->close()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    const v1, 0x7f0f0190

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Z)V

    :cond_1
    return-void
.end method

.method public l(I)V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$d;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-nez v1, :cond_1

    new-instance v1, Lcom/oppo/camera/e/g;

    invoke-direct {v1}, Lcom/oppo/camera/e/g;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a()V

    :cond_1
    iput p1, p0, Lcom/oppo/camera/e;->w:I

    iget-object v3, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v6, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v8

    move v5, v0

    invoke-interface/range {v3 .. v8}, Lcom/oppo/camera/e/f;->a(Landroid/content/Context;ILcom/oppo/camera/e/f$b;ZI)V

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e$l;->a(I)V

    :cond_3
    iget p1, p0, Lcom/oppo/camera/e;->bY:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/e;->bY:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    iput-boolean v1, p0, Lcom/oppo/camera/e;->ax:Z

    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/e$29;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$29;-><init>(Lcom/oppo/camera/e;)V

    const-string v1, "pre init keys"

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public l(Z)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightness, fSysBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", fSysBrightnessMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", maxScreenBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/e;->k:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mbSupportAutoBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/e;->ab:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbSupportAutoBrightAnimation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/e;->ac:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraManager"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result v2

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    const v5, 0x3dcccccd    # 0.1f

    iput v5, p0, Lcom/oppo/camera/e;->K:F

    :cond_0
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$15;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/camera/e$15;-><init>(Lcom/oppo/camera/e;Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/oppo/camera/e;->ab:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oppo/camera/e;->ac:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, p1, :cond_3

    iget p1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float p1, p1

    div-float v0, p1, v7

    :cond_3
    cmpl-float p1, v5, v0

    const v1, 0x3f19999a    # 0.6f

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    div-float/2addr v0, v7

    cmpg-float p1, v0, v1

    if-gez p1, :cond_4

    move v5, v1

    goto :goto_0

    :cond_4
    move v5, v0

    :goto_0
    iput v5, p0, Lcom/oppo/camera/e;->K:F

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v0, Lcom/oppo/camera/e$16;

    invoke-direct {v0, p0, v2, v6}, Lcom/oppo/camera/e$16;-><init>(Lcom/oppo/camera/e;Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public m(Z)V
    .locals 11

    const-string v0, "oppo.display.colormode.support"

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "oppo.camera.display.mode"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayActiveMode, bEnterCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cameraDisplayMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mLastActiveDisplayMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/oppo/camera/e;->ct:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iget-object v4, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_2

    const-string v4, "com.oppo.display.OppoMMDisplayQcomQXDM"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    aput-object v10, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    const-string v8, "getActiveMode"

    new-array v9, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/camera/e;->cv:Ljava/lang/reflect/Method;

    const-string v8, "setActiveMode"

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    :cond_2
    iget-wide v8, p0, Lcom/oppo/camera/e;->ct:J

    cmp-long v4, v8, v2

    if-nez v4, :cond_4

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/e;->cv:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    check-cast v4, [J

    if-eqz v4, :cond_3

    array-length v8, v4

    if-lez v8, :cond_3

    aget-wide v8, v4, v7

    iput-wide v8, p0, Lcom/oppo/camera/e;->ct:J

    :cond_3
    const-string v4, "CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDisplayActiveMode, get last active mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/oppo/camera/e;->ct:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-wide v8, p0, Lcom/oppo/camera/e;->ct:J

    cmp-long v5, v8, v2

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v7, p0, Lcom/oppo/camera/e;->ct:J

    long-to-int v7, v7

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v2, p0, Lcom/oppo/camera/e;->ct:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iput-wide v2, p0, Lcom/oppo/camera/e;->ct:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayActiveMode, errMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    invoke-virtual {v0}, Lcom/oppo/camera/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public n(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreenBrightness, bEnterCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/e;->a(ZZ)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->l(Z)V

    const-string p1, "initScreenBrightness X"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/k;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v2, 0x7f0f00e1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    const-string v0, "temps_flash"

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    return-void
.end method

.method public o(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Z)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v2, 0x7f0f00f3

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    return-void
.end method

.method public p(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBurstCaptureEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->q(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/g;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/g;->a(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->f()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/e;->v:I

    iget p1, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->s(I)V

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget v0, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->g(I)V

    :cond_2
    return-void
.end method

.method public q()V
    .locals 7

    const-string v0, "CameraManager"

    const-string v1, "prepareRealTimeDcsMsgData"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oppo/camera/statistics/model/CaptureMsgData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v2, p0, Lcom/oppo/camera/e;->u:I

    iput v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTouchEVValue:I

    iget-object v2, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v2}, Lcom/oppo/camera/entry/b;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCameraEnterType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_camera_slogan_key"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "off"

    const-string v3, "on"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v1}, Lcom/oppo/camera/u;->e()I

    move-result v1

    iput v1, v4, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mSloganType:I

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ao()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    iput-object v4, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsSlogan:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_ai_scene_key"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->af()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsAiScene:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_zoom_key"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->W()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mZoomValue:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_assistant_line_key"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f007c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsAssistantLine:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00f0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsRecordLocation:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f0178

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_storage_key"

    invoke-virtual {v4, v6, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsSDCard:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f01be

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_volume_key_function_key"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mVolumeFunction:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00c3

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_fingerprint_shutter_key"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsFingerprintShutter:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f016e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_sound_key"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsShutterVoice:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_gesture_shutter_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f00d0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsGestureCaptureType:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f018a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_tap_shutter_key"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsTapCaptureType:Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00f7

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_mirror_key"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsMirror:Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_pi_mode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v4, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsPi:Ljava/lang/String;

    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_hdr_mode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v5, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3, v5}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHdrMode:Ljava/lang/String;

    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_torch_mode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0195

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_videoflashmode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    :cond_c
    :goto_1
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-virtual {v1}, Lcom/oppo/camera/m;->c()Landroid/location/Location;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    const-string v1, ""

    :goto_2
    iput-object v1, v3, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mLocation:Ljava/lang/String;

    :cond_e
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-wide v3, p0, Lcom/oppo/camera/e;->D:J

    iput-wide v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPreviewCaptureCostTime:J

    iget-wide v3, p0, Lcom/oppo/camera/e;->F:J

    iput-wide v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mBetweenClickBtnCostTime:J

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->U()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mDelayTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v3, p0, Lcom/oppo/camera/e;->v:I

    iput v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAiScene:I

    invoke-direct {p0}, Lcom/oppo/camera/e;->aJ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTouchXYValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v1, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mDelayTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/h;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTimerSize:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/h;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTimerCoordinate:Ljava/lang/String;

    :cond_f
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAeAfLock:Ljava/lang/String;

    :cond_10
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iput-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    const-string v1, "prepareRealTimeDcsMsgData X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->X:Z

    return-void
.end method

.method public r()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oppo/camera/e;->bm:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oppo/camera/e;->R:Z

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->c(Z)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, mbSwitchingCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->k(I)V

    iget-object v2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lcom/oppo/camera/e/f;->a(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/oppo/camera/e;->at:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/e;->as:Z

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/oppo/camera/e;->aC:Z

    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    :cond_1
    iput-byte v0, p0, Lcom/oppo/camera/e;->ce:B

    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    invoke-direct {p0}, Lcom/oppo/camera/e;->by()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v2}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v2

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f00d0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_gesture_shutter_key"

    invoke-virtual {v4, v6, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "last_camera_gesture_shutter_key"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    iput-boolean v3, p0, Lcom/oppo/camera/e;->P:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->au:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ao:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ay:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/camera/e;->cp:J

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/oppo/camera/e;->n(I)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->o(Z)V

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->R()V

    invoke-direct {p0}, Lcom/oppo/camera/e;->aC()V

    iget-object v2, p0, Lcom/oppo/camera/e;->by:Landroid/hardware/foss/FossManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/foss/FossManager;->enableFoss()Z

    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/h;->g()V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->h(Z)V

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iput-boolean v0, p0, Lcom/oppo/camera/e;->R:Z

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/e;->b(ZZ)V

    iput-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    iput-object v2, p0, Lcom/oppo/camera/e;->bR:[B

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aB:Z

    iget-object v4, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/oppo/camera/k;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/e;->l()V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aw:Z

    iput-object v2, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    const/4 v4, -0x1

    iput v4, p0, Lcom/oppo/camera/e;->cH:I

    iget-object v4, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/oppo/camera/q;->a()V

    iput-object v2, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v4, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->k()V

    :cond_7
    iget-object v4, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/oppo/camera/e$y;->d()V

    :cond_8
    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->T()V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ah()V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->m(Z)V

    if-nez p1, :cond_9

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->n(Z)V

    :cond_9
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/j/b;->c()V

    invoke-static {}, Lcom/oppo/camera/j/a;->a()Lcom/oppo/camera/j/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/j/a;->c()V

    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/n/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->k()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/oppo/camera/k;->c()V

    :cond_b
    invoke-direct {p0}, Lcom/oppo/camera/e;->bd()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/oppo/camera/x;->e()V

    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/e;->x()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->N(Z)V

    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    invoke-virtual {p1}, Lcom/oppo/camera/e$h;->c()V

    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->d()V

    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/oppo/camera/u;->f()V

    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/oppo/camera/m;->e()V

    :cond_10
    iget-object p1, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/oppo/camera/n;->b()V

    :cond_11
    iget-object p1, p0, Lcom/oppo/camera/e;->cV:Lcom/oppo/camera/ui/menu/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/f;->b(Lcom/oppo/camera/ui/menu/e;)V

    iput v0, p0, Lcom/oppo/camera/e;->v:I

    iget-boolean p1, p0, Lcom/oppo/camera/e;->at:Z

    if-eqz p1, :cond_13

    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->I()Ljava/lang/String;

    move-result-object p1

    const-string v2, "off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    :cond_12
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/g;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_13
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/g;->b(Landroid/content/Context;)V

    :cond_14
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    if-eqz p1, :cond_15

    :try_start_0
    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_1
    iget-boolean p1, p0, Lcom/oppo/camera/e;->ch:Z

    if-eqz p1, :cond_16

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v2, 0x7f0f00e0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-boolean v0, p0, Lcom/oppo/camera/e;->ch:Z

    :cond_16
    const-string p1, "onPause X"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$11;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$11;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ai:Z

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ai:Z

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->u(Z)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$13;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$13;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    if-nez p1, :cond_2

    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/e;->cf:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v1, Lcom/oppo/camera/e$28;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$28;-><init>(Lcom/oppo/camera/e;)V

    const-string v2, "clearLockDB"

    invoke-virtual {p1, v1, v2}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->e(Z)V

    :cond_3
    return-void
.end method

.method public v(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$m;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCaptureSession, mCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbAEAFLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOneCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mbPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isHFR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modeChangeTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-boolean v0, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    if-nez v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e$n;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oppo/camera/e$y;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    invoke-virtual {v1}, Lcom/oppo/camera/e$y;->d()V

    :cond_5
    iget-boolean v1, p0, Lcom/oppo/camera/e;->aC:Z

    if-eqz v1, :cond_6

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    iget-boolean v1, p0, Lcom/oppo/camera/e;->aC:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_zoom_key"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    invoke-virtual {v1}, Lcom/oppo/camera/x;->a()F

    move-result v1

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aw()F

    move-result v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->b(F)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/e;->aC:Z

    iget-object v1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->a()V

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/e/h;->a(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/oppo/camera/e;->bj()V

    const-string v0, "pref_face_detection_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/e;->t()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/oppo/camera/e;->u()V

    :goto_3
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->d()I

    move-result v1

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->e()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    invoke-direct {p0}, Lcom/oppo/camera/e;->bl()I

    move-result v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/oppo/camera/e/f;->a(ILcom/oppo/camera/e/f$e;ZI)V

    :cond_b
    :goto_4
    return-void
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/e;->O:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->z(Z)V

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    return v0
.end method

.method public x(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableOpticalZoomMenu, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Z)V

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->S:Z

    return v0
.end method

.method public y(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/oppo/camera/e;->at:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExitCameraToSetting, mbSettingClickCausedPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->at:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y()Z
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "needPreviewImage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/e;->U:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public z()V
    .locals 8

    const-string v0, "CameraManager"

    const-string v1, "restoreScreenBrightnessForChangeOnRuningtime"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ab:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ac:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/oppo/camera/e;->K:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v4, p0, Lcom/oppo/camera/e;->k:I

    int-to-double v4, v4

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const-string v5, "screen_brightness"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->j(I)V

    :cond_2
    const-string v1, "restoreScreenBrightnessForChangeOnRuningtime X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
