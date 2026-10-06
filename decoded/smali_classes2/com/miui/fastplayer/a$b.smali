.class Lcom/miui/fastplayer/a$b;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fastplayer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/fastplayer/a;


# direct methods
.method private constructor <init>(Lcom/miui/fastplayer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fastplayer/a;Lcom/miui/fastplayer/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/fastplayer/a$b;-><init>(Lcom/miui/fastplayer/a;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    const-string p1, "MediaEncoder"

    const-string v0, "onError"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    const-string p1, "MediaEncoder"

    const-string p2, "onInputBufferAvailable"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    const-string p1, "MediaEncoder"

    :try_start_0
    iget-object v0, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v0}, Lcom/miui/fastplayer/a;->a(Lcom/miui/fastplayer/a;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_2

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v1}, Lcom/miui/fastplayer/a;->b(Lcom/miui/fastplayer/a;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/fastplayer/a;->e(Lcom/miui/fastplayer/a;J)J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v1}, Lcom/miui/fastplayer/a;->b(Lcom/miui/fastplayer/a;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v4}, Lcom/miui/fastplayer/a;->f(Lcom/miui/fastplayer/a;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/miui/fastplayer/a;->e(Lcom/miui/fastplayer/a;J)J

    :goto_0
    iget-object v1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v1}, Lcom/miui/fastplayer/a;->d(Lcom/miui/fastplayer/a;)J

    move-result-wide v1

    iput-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v1}, Lcom/miui/fastplayer/a;->d(Lcom/miui/fastplayer/a;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/fastplayer/a;->c(Lcom/miui/fastplayer/a;J)J

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v1}, Lcom/miui/fastplayer/a;->i(Lcom/miui/fastplayer/a;)Landroid/media/MediaMuxer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v2}, Lcom/miui/fastplayer/a;->g(Lcom/miui/fastplayer/a;)I

    move-result v2

    invoke-virtual {v1, v2, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Too many frames"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "stop "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-virtual {v0}, Lcom/miui/fastplayer/a;->o()V

    :goto_1
    iget-object v0, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {v0}, Lcom/miui/fastplayer/a;->a(Lcom/miui/fastplayer/a;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_1
    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    const-string p2, "end of stream reached"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    const-string p3, "onOutputBufferAvailable exception"

    invoke-static {p1, p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOutputFormatChanged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaEncoder"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {p1}, Lcom/miui/fastplayer/a;->a(Lcom/miui/fastplayer/a;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {p2}, Lcom/miui/fastplayer/a;->i(Lcom/miui/fastplayer/a;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/fastplayer/a;->h(Lcom/miui/fastplayer/a;I)I

    iget-object p1, p0, Lcom/miui/fastplayer/a$b;->a:Lcom/miui/fastplayer/a;

    invoke-static {p1}, Lcom/miui/fastplayer/a;->i(Lcom/miui/fastplayer/a;)Landroid/media/MediaMuxer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
