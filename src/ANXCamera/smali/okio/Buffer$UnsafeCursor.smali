.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandBuffer(I)J
    .locals 9

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2

    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_0

    iget-wide v1, v1, Lokio/Buffer;->size:J

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v3, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object p1

    iget v3, p1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    iput v0, p1, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v5, v3

    add-long v7, v1, v5

    iput-wide v7, v4, Lokio/Buffer;->size:J

    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object p1, p1, Lokio/Segment;->data:[B

    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v3, 0x2000

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()I
    .locals 4

    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    :cond_0
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public resizeBuffer(J)J
    .locals 12

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_6

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_3

    cmp-long v2, p1, v3

    if-ltz v2, :cond_2

    sub-long v5, v0, p1

    :goto_0
    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    iget v7, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v9, v7, v5

    if-gtz v9, :cond_0

    iget-object v9, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v10

    iput-object v10, v9, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    sub-long/2addr v5, v7

    goto :goto_0

    :cond_0
    iget v3, v2, Lokio/Segment;->limit:I

    int-to-long v3, v3

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Lokio/Segment;->limit:I

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v2, -0x1

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lez v2, :cond_5

    sub-long v5, p1, v0

    const/4 v2, 0x1

    move v7, v2

    :cond_4
    :goto_1
    cmp-long v8, v5, v3

    if-lez v8, :cond_5

    iget-object v8, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v8, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v8

    iget v9, v8, Lokio/Segment;->limit:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    iget v10, v8, Lokio/Segment;->limit:I

    add-int/2addr v10, v9

    iput v10, v8, Lokio/Segment;->limit:I

    int-to-long v10, v9

    sub-long/2addr v5, v10

    if-eqz v7, :cond_4

    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v7, v8, Lokio/Segment;->data:[B

    iput-object v7, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v7, v8, Lokio/Segment;->limit:I

    sub-int/2addr v7, v9

    iput v7, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v7, v8, Lokio/Segment;->limit:I

    iput v7, p0, Lokio/Buffer$UnsafeCursor;->end:I

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide p1, v2, Lokio/Buffer;->size:J

    return-wide v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(J)I
    .locals 11

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->size:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v6, :cond_2

    iget-wide v7, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v9, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v6, v6, Lokio/Segment;->pos:I

    sub-int/2addr v9, v6

    int-to-long v9, v9

    sub-long v6, v7, v9

    cmp-long v8, v6, p1

    if-lez v8, :cond_1

    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v2, v6

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v0, v6

    :cond_2
    :goto_0
    sub-long v6, v2, p1

    sub-long v8, p1, v0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    :goto_1
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4

    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_3
    move-wide v0, v2

    move-object v4, v5

    :goto_2
    cmp-long v2, v0, p1

    if-lez v2, :cond_4

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v4, Lokio/Segment;->shared:Z

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v2

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v2, v3, Lokio/Buffer;->head:Lokio/Segment;

    :cond_5
    invoke-virtual {v4, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v4

    iget-object v2, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    :cond_6
    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, v4, Lokio/Segment;->data:[B

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v2, v4, Lokio/Segment;->pos:I

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr v2, p1

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget p1, v4, Lokio/Segment;->limit:I

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget p2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr p1, p2

    return p1

    :cond_7
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 p1, -0x1

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return p1

    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object p2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, p2, Lokio/Buffer;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "offset=%s > size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
