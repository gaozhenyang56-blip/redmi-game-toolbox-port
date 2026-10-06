.class Landroidx/heifwriter/HeifEncoder$d;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/heifwriter/HeifEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Landroidx/heifwriter/HeifEncoder;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifEncoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method private a(Landroid/media/MediaCodec$CodecException;)V
    .locals 2
    .param p1    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->t()V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v0, p1, Landroidx/heifwriter/HeifEncoder;->b:Landroidx/heifwriter/HeifEncoder$c;

    invoke-virtual {v0, p1}, Landroidx/heifwriter/HeifEncoder$c;->a(Landroidx/heifwriter/HeifEncoder;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v1, v0, Landroidx/heifwriter/HeifEncoder;->b:Landroidx/heifwriter/HeifEncoder$c;

    invoke-virtual {v1, v0, p1}, Landroidx/heifwriter/HeifEncoder$c;->c(Landroidx/heifwriter/HeifEncoder;Landroid/media/MediaCodec$CodecException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v0, v0, Landroidx/heifwriter/HeifEncoder;->a:Landroid/media/MediaCodec;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeifEncoder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroidx/heifwriter/HeifEncoder$d;->a(Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v1, v0, Landroidx/heifwriter/HeifEncoder;->a:Landroid/media/MediaCodec;

    if-ne p1, v1, :cond_1

    iget-boolean p1, v0, Landroidx/heifwriter/HeifEncoder;->o:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Landroidx/heifwriter/HeifEncoder;->u:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {p1}, Landroidx/heifwriter/HeifEncoder;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v0, v0, Landroidx/heifwriter/HeifEncoder;->a:Landroid/media/MediaCodec;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$d;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v1, v1, Landroidx/heifwriter/HeifEncoder;->v:Landroidx/heifwriter/HeifEncoder$e;

    if-eqz v1, :cond_1

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/heifwriter/HeifEncoder$e;->e(J)V

    :cond_1
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v2, v1, Landroidx/heifwriter/HeifEncoder;->b:Landroidx/heifwriter/HeifEncoder$c;

    invoke-virtual {v2, v1, v0}, Landroidx/heifwriter/HeifEncoder$c;->b(Landroidx/heifwriter/HeifEncoder;Ljava/nio/ByteBuffer;)V

    :cond_2
    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$d;->a:Z

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p3, p3, 0x4

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_0
    or-int/2addr p3, v0

    iput-boolean p3, p0, Landroidx/heifwriter/HeifEncoder$d;->a:Z

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-boolean p1, p0, Landroidx/heifwriter/HeifEncoder$d;->a:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/heifwriter/HeifEncoder$d;->a(Landroid/media/MediaCodec$CodecException;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v0, v0, Landroidx/heifwriter/HeifEncoder;->a:Landroid/media/MediaCodec;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "mime"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/vnd.android.heic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget p1, p1, Landroidx/heifwriter/HeifEncoder;->f:I

    const-string v0, "width"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget p1, p1, Landroidx/heifwriter/HeifEncoder;->g:I

    const-string v0, "height"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-boolean v0, p1, Landroidx/heifwriter/HeifEncoder;->m:Z

    if-eqz v0, :cond_1

    iget p1, p1, Landroidx/heifwriter/HeifEncoder;->h:I

    const-string v0, "tile-width"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget p1, p1, Landroidx/heifwriter/HeifEncoder;->i:I

    const-string v0, "tile-height"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget p1, p1, Landroidx/heifwriter/HeifEncoder;->j:I

    const-string v0, "grid-rows"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget p1, p1, Landroidx/heifwriter/HeifEncoder;->k:I

    const-string v0, "grid-cols"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder$d;->b:Landroidx/heifwriter/HeifEncoder;

    iget-object v0, p1, Landroidx/heifwriter/HeifEncoder;->b:Landroidx/heifwriter/HeifEncoder$c;

    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifEncoder$c;->d(Landroidx/heifwriter/HeifEncoder;Landroid/media/MediaFormat;)V

    return-void
.end method
