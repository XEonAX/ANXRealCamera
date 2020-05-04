.class public Lcom/oppo/camera/Ipa/b$b;
.super Ljava/lang/Object;
.source "ImageCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Ipa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:[I

.field public B:Z

.field public C:Z

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:[I

.field public L:I

.field public M:I

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Z

.field public Q:Ljava/lang/String;

.field public R:I

.field public S:Ljava/lang/String;

.field public T:Z

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:I

.field public Z:Ljava/lang/String;

.field public a:[Landroid/hardware/camera2/params/Face;

.field public aa:I

.field public ab:I

.field public ac:I

.field public ad:I

.field public ae:I

.field public af:I

.field public ag:I

.field public ah:I

.field public ai:I

.field public aj:I

.field public ak:Z

.field public al:[I

.field public am:[B

.field public an:Z

.field public ao:Landroid/graphics/Rect;

.field public ap:I

.field public aq:Ljava/lang/String;

.field public ar:Z

.field public as:Ljava/lang/Object;

.field public at:I

.field public au:Lcom/oppo/camera/e/d;

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:F

.field public k:I

.field public l:I

.field public m:Landroid/location/Location;

.field public n:D

.field public o:D

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Ljava/lang/String;

.field public s:J

.field public t:J

.field public u:F

.field public v:I

.field public w:I

.field public x:F

.field public y:[B

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->b:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->c:Z

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->d:Z

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->e:Z

    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->f:J

    const/4 v4, 0x1

    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->g:I

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->h:Ljava/lang/String;

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->i:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->j:F

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->k:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->l:I

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->m:Landroid/location/Location;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/oppo/camera/Ipa/b$b;->n:D

    iput-wide v5, p0, Lcom/oppo/camera/Ipa/b$b;->o:D

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->p:Ljava/lang/String;

    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->q:J

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->s:J

    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->t:J

    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->u:F

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->v:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->w:I

    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->x:F

    const/16 v1, 0x18

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->y:[B

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->z:I

    const/16 v1, 0x8

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oppo/camera/Ipa/b$b;->A:[I

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->B:Z

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->C:Z

    const-string v2, " "

    iput-object v2, p0, Lcom/oppo/camera/Ipa/b$b;->D:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->E:Z

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->F:Z

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->G:Z

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->H:Z

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->I:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/Ipa/b$b;->J:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->K:[I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->L:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->M:I

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    const-string v1, "default"

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->P:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->Q:Ljava/lang/String;

    iput v2, p0, Lcom/oppo/camera/Ipa/b$b;->R:I

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->S:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->T:Z

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->U:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->V:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->W:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->X:Ljava/lang/String;

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->Y:I

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->Z:Ljava/lang/String;

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->aa:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ab:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ac:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ad:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ae:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->af:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ag:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ah:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ai:I

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->aj:I

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->ak:Z

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->al:[I

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->am:[B

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->an:Z

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->ao:Landroid/graphics/Rect;

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ap:I

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->aq:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->ar:Z

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->as:Ljava/lang/Object;

    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->at:I

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->au:Lcom/oppo/camera/e/d;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaItemInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "faceSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n iso:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n aperture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n whiteBalanceMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n flashValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->n:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->o:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n mExposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n mFocalLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n mManufacture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n jpegOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mJpegQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mBeautyLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mCustomBeautyParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->A:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mbVideoMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbFlashSnapshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mProjectName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mbFrontCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbPortrait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbSuperNight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbForbidBeauty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->H:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbHighResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->I:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mPreviewWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mPreviewHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mWatermarkPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mFilterType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputStride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ae:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputScanline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->af:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputStride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputScanline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->aj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mbMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mAlgoFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n mMergeNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mUserComment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
