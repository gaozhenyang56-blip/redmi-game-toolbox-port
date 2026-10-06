.class public Lcom/miui/fastplayer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fastplayer/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private d:Landroid/media/MediaCodec;

.field private e:Landroid/media/MediaMuxer;

.field private f:I

.field private g:Ljava/lang/Exception;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/Surface;

.field private j:I

.field private k:J

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/fastplayer/a;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fastplayer/a;->i:Landroid/view/Surface;

    const/16 v0, 0x438

    iput v0, p0, Lcom/miui/fastplayer/a;->a:I

    iput v0, p0, Lcom/miui/fastplayer/a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/fastplayer/a;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/fastplayer/a;->l:J

    iput-wide v0, p0, Lcom/miui/fastplayer/a;->m:J

    return-void
.end method

.method static synthetic a(Lcom/miui/fastplayer/a;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/fastplayer/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/fastplayer/a;->l:J

    return-wide v0
.end method

.method static synthetic c(Lcom/miui/fastplayer/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/fastplayer/a;->l:J

    return-wide p1
.end method

.method static synthetic d(Lcom/miui/fastplayer/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/fastplayer/a;->m:J

    return-wide v0
.end method

.method static synthetic e(Lcom/miui/fastplayer/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/fastplayer/a;->m:J

    return-wide p1
.end method

.method static synthetic f(Lcom/miui/fastplayer/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/fastplayer/a;->k:J

    return-wide v0
.end method

.method static synthetic g(Lcom/miui/fastplayer/a;)I
    .locals 0

    iget p0, p0, Lcom/miui/fastplayer/a;->f:I

    return p0
.end method

.method static synthetic h(Lcom/miui/fastplayer/a;I)I
    .locals 0

    iput p1, p0, Lcom/miui/fastplayer/a;->f:I

    return p1
.end method

.method static synthetic i(Lcom/miui/fastplayer/a;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/a;->e:Landroid/media/MediaMuxer;

    return-object p0
.end method


# virtual methods
.method public j()Landroid/view/Surface;
    .locals 5

    const-string v0, "video/avc"

    const-string v1, "MediaEncoder"

    const-string v2, "configure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch encoder to  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v2, p0, Lcom/miui/fastplayer/a;->a:I

    iget v3, p0, Lcom/miui/fastplayer/a;->b:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const v2, 0x7f000789

    const-string v3, "color-format"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x1e

    const-string v3, "frame-rate"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v2, p0, Lcom/miui/fastplayer/a;->a:I

    iget v3, p0, Lcom/miui/fastplayer/a;->b:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x5

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "i-frame-interval"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :try_start_1
    iget-object v2, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    new-instance v3, Lcom/miui/fastplayer/a$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/fastplayer/a$b;-><init>(Lcom/miui/fastplayer/a;Lcom/miui/fastplayer/a$a;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    const-string v2, "priority"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/miui/fastplayer/a;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/fastplayer/a;->e:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/miui/fastplayer/a;->c:I

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v0, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fastplayer/a;->i:Landroid/view/Surface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "configure Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/miui/fastplayer/a;->g:Ljava/lang/Exception;

    :goto_1
    iget-object v0, p0, Lcom/miui/fastplayer/a;->i:Landroid/view/Surface;

    return-object v0
.end method

.method public k()V
    .locals 5

    const-string v0, "MediaEncoder"

    const-string v1, "release: stop muxer, release audio extractor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    iget-object v2, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch release Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/fastplayer/a;->e:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, Lcom/miui/fastplayer/a;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lcom/miui/fastplayer/a;->e:Landroid/media/MediaMuxer;

    :cond_1
    iget-object v0, p0, Lcom/miui/fastplayer/a;->i:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_2
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/a;->h:Ljava/lang/String;

    return-void
.end method

.method public m(FII)V
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/fastplayer/a;->j:I

    iput p2, p0, Lcom/miui/fastplayer/a;->b:I

    iput p3, p0, Lcom/miui/fastplayer/a;->a:I

    int-to-long p1, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/fastplayer/a;->k:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mFrameRate : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/fastplayer/a;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", FrameDuration: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/miui/fastplayer/a;->k:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",height: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/fastplayer/a;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/fastplayer/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaEncoder"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/miui/fastplayer/a;->g:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const-string v0, "MediaEncoder"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :cond_0
    throw v0
.end method

.method public o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/fastplayer/a;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch stop exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaEncoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
