.class public Lcom/miui/common/widgets/gif/GifImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/widgets/gif/GifImageView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/common/widgets/gif/a;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Thread;

.field private g:Lcom/miui/common/widgets/gif/GifImageView$c;

.field private h:J

.field private i:I

.field private j:I

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->g:Lcom/miui/common/widgets/gif/GifImageView$c;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->h:J

    new-instance p1, Lcom/miui/common/widgets/gif/GifImageView$a;

    invoke-direct {p1, p0}, Lcom/miui/common/widgets/gif/GifImageView$a;-><init>(Lcom/miui/common/widgets/gif/GifImageView;)V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->k:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/common/widgets/gif/GifImageView$b;

    invoke-direct {p1, p0}, Lcom/miui/common/widgets/gif/GifImageView$b;-><init>(Lcom/miui/common/widgets/gif/GifImageView;)V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->g:Lcom/miui/common/widgets/gif/GifImageView$c;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->h:J

    new-instance p1, Lcom/miui/common/widgets/gif/GifImageView$a;

    invoke-direct {p1, p0}, Lcom/miui/common/widgets/gif/GifImageView$a;-><init>(Lcom/miui/common/widgets/gif/GifImageView;)V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->k:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/common/widgets/gif/GifImageView$b;

    invoke-direct {p1, p0}, Lcom/miui/common/widgets/gif/GifImageView$b;-><init>(Lcom/miui/common/widgets/gif/GifImageView;)V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/miui/common/widgets/gif/GifImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/widgets/gif/GifImageView;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/common/widgets/gif/GifImageView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/widgets/gif/GifImageView;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/common/widgets/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic d(Lcom/miui/common/widgets/gif/GifImageView;Lcom/miui/common/widgets/gif/a;)Lcom/miui/common/widgets/gif/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/common/widgets/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->f:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic f(Lcom/miui/common/widgets/gif/GifImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->e:Z

    return p1
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x800

    :try_start_1
    new-array v2, v2, [B

    :goto_0
    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    throw v0

    :catch_2
    move-object v1, v0

    :catch_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/common/widgets/gif/a;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->h:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {v0}, Lcom/miui/common/widgets/gif/a;->g()I

    move-result v0

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {v0}, Lcom/miui/common/widgets/gif/a;->k()I

    move-result v0

    return v0
.end method

.method public getOnFrameAvailable()Lcom/miui/common/widgets/gif/GifImageView$c;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->g:Lcom/miui/common/widgets/gif/GifImageView$c;

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->d:Z

    invoke-direct {p0}, Lcom/miui/common/widgets/gif/GifImageView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "GifDecoderView"

    iget-boolean v1, p0, Lcom/miui/common/widgets/gif/GifImageView;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/common/widgets/gif/GifImageView;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/miui/common/widgets/gif/a;->e()I

    move-result v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    iget-boolean v3, p0, Lcom/miui/common/widgets/gif/GifImageView;->d:Z

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {v7}, Lcom/miui/common/widgets/gif/a;->j()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/common/widgets/gif/GifImageView;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v7, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v5, p0, Lcom/miui/common/widgets/gif/GifImageView;->g:Lcom/miui/common/widgets/gif/GifImageView$c;

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/miui/common/widgets/gif/GifImageView;->b:Landroid/graphics/Bitmap;

    invoke-interface {v5, v6}, Lcom/miui/common/widgets/gif/GifImageView$c;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/common/widgets/gif/GifImageView;->b:Landroid/graphics/Bitmap;

    :cond_4
    iget-boolean v5, p0, Lcom/miui/common/widgets/gif/GifImageView;->d:Z

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lcom/miui/common/widgets/gif/GifImageView;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/common/widgets/gif/GifImageView;->k:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v5

    :goto_1
    move-wide v7, v3

    :goto_2
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-boolean v5, p0, Lcom/miui/common/widgets/gif/GifImageView;->d:Z

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v5, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {v5}, Lcom/miui/common/widgets/gif/a;->a()V

    :try_start_2
    iget-object v5, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {v5}, Lcom/miui/common/widgets/gif/a;->i()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-lez v5, :cond_8

    iget-wide v6, p0, Lcom/miui/common/widgets/gif/GifImageView;->h:J

    cmp-long v3, v6, v3

    if-lez v3, :cond_7

    goto :goto_4

    :cond_7
    int-to-long v6, v5

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_5
    iget v2, p0, Lcom/miui/common/widgets/gif/GifImageView;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/common/widgets/gif/GifImageView;->i:I

    iget-boolean v3, p0, Lcom/miui/common/widgets/gif/GifImageView;->d:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/miui/common/widgets/gif/GifImageView;->j:I

    if-lt v2, v3, :cond_2

    if-eqz v3, :cond_2

    :cond_a
    return-void
.end method

.method public setBytes([B)V
    .locals 2

    new-instance v0, Lcom/miui/common/widgets/gif/a;

    invoke-direct {v0}, Lcom/miui/common/widgets/gif/a;-><init>()V

    iput-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/miui/common/widgets/gif/a;->l([B)I

    iget-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {p1}, Lcom/miui/common/widgets/gif/a;->a()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/miui/common/widgets/gif/GifImageView;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->f:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    iput-object v1, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    iput-object v1, p0, Lcom/miui/common/widgets/gif/GifImageView;->a:Lcom/miui/common/widgets/gif/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifDecoderView"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->h:J

    return-void
.end method

.method public setOnFrameAvailable(Lcom/miui/common/widgets/gif/GifImageView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->g:Lcom/miui/common/widgets/gif/GifImageView$c;

    return-void
.end method

.method public setRepeatCounts(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/widgets/gif/GifImageView;->j:I

    return-void
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/widgets/gif/GifImageView;->h(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/common/widgets/gif/GifImageView;->setBytes([B)V

    return-void
.end method
