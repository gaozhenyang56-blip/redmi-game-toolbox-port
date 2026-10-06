.class final Lrh/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lai/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh/h$d;
    }
.end annotation


# instance fields
.field private final a:Lrh/f;

.field private final b:Lrh/g;

.field private final c:Landroid/os/Handler;

.field private final d:Lrh/e;

.field private final e:Lwh/c;

.field private final f:Lwh/c;

.field private final g:Lwh/c;

.field private final h:Luh/b;

.field final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field final k:Lxh/b;

.field private final l:Lsh/e;

.field final m:Lrh/c;

.field final n:Lyh/a;

.field final o:Lyh/b;

.field private final p:Z

.field private q:Lsh/f;


# direct methods
.method public constructor <init>(Lrh/f;Lrh/g;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsh/f;->a:Lsh/f;

    iput-object v0, p0, Lrh/h;->q:Lsh/f;

    iput-object p1, p0, Lrh/h;->a:Lrh/f;

    iput-object p2, p0, Lrh/h;->b:Lrh/g;

    iput-object p3, p0, Lrh/h;->c:Landroid/os/Handler;

    iget-object p1, p1, Lrh/f;->a:Lrh/e;

    iput-object p1, p0, Lrh/h;->d:Lrh/e;

    iget-object p3, p1, Lrh/e;->p:Lwh/c;

    iput-object p3, p0, Lrh/h;->e:Lwh/c;

    iget-object p3, p1, Lrh/e;->s:Lwh/c;

    iput-object p3, p0, Lrh/h;->f:Lwh/c;

    iget-object p3, p1, Lrh/e;->t:Lwh/c;

    iput-object p3, p0, Lrh/h;->g:Lwh/c;

    iget-object p1, p1, Lrh/e;->q:Luh/b;

    iput-object p1, p0, Lrh/h;->h:Luh/b;

    iget-object p1, p2, Lrh/g;->a:Ljava/lang/String;

    iput-object p1, p0, Lrh/h;->i:Ljava/lang/String;

    iget-object p1, p2, Lrh/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lrh/h;->j:Ljava/lang/String;

    iget-object p1, p2, Lrh/g;->c:Lxh/b;

    iput-object p1, p0, Lrh/h;->k:Lxh/b;

    iget-object p1, p2, Lrh/g;->d:Lsh/e;

    iput-object p1, p0, Lrh/h;->l:Lsh/e;

    iget-object p1, p2, Lrh/g;->e:Lrh/c;

    iput-object p1, p0, Lrh/h;->m:Lrh/c;

    iget-object p3, p2, Lrh/g;->f:Lyh/a;

    iput-object p3, p0, Lrh/h;->n:Lyh/a;

    iget-object p2, p2, Lrh/g;->g:Lyh/b;

    iput-object p2, p0, Lrh/h;->o:Lyh/b;

    invoke-virtual {p1}, Lrh/c;->M()Z

    move-result p1

    iput-boolean p1, p0, Lrh/h;->p:Z

    return-void
.end method

.method static synthetic b(Lrh/h;)Lrh/e;
    .locals 0

    iget-object p0, p0, Lrh/h;->d:Lrh/e;

    return-object p0
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lrh/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lrh/h$d;

    invoke-direct {v0, p0}, Lrh/h$d;-><init>(Lrh/h;)V

    throw v0
.end method

.method private d()V
    .locals 0

    invoke-direct {p0}, Lrh/h;->e()V

    invoke-direct {p0}, Lrh/h;->f()V

    return-void
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Lrh/h;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lrh/h$d;

    invoke-direct {v0, p0}, Lrh/h$d;-><init>(Lrh/h;)V

    throw v0
.end method

.method private f()V
    .locals 1

    invoke-direct {p0}, Lrh/h;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lrh/h$d;

    invoke-direct {v0, p0}, Lrh/h$d;-><init>(Lrh/h;)V

    throw v0
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lrh/h;->k:Lxh/b;

    invoke-interface {v0}, Lxh/b;->d()Lsh/h;

    move-result-object v6

    new-instance v0, Luh/c;

    iget-object v2, p0, Lrh/h;->j:Ljava/lang/String;

    iget-object v4, p0, Lrh/h;->i:Ljava/lang/String;

    iget-object v5, p0, Lrh/h;->l:Lsh/e;

    invoke-direct {p0}, Lrh/h;->m()Lwh/c;

    move-result-object v7

    iget-object v8, p0, Lrh/h;->m:Lrh/c;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Luh/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsh/e;Lsh/h;Lwh/c;Lrh/c;)V

    iget-object p1, p0, Lrh/h;->h:Luh/b;

    invoke-interface {p1, v0}, Luh/b;->a(Luh/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private h()Z
    .locals 6

    iget-object v0, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v0}, Lrh/c;->N()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v2}, Lrh/c;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v2, p0, Lrh/h;->j:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Delay %d ms before loading...  [%s]"

    invoke-static {v2, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v0}, Lrh/c;->w()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lrh/h;->p()Z

    move-result v0

    return v0

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v0}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v1
.end method

.method private i()Z
    .locals 3

    invoke-direct {p0}, Lrh/h;->m()Lwh/c;

    move-result-object v0

    iget-object v1, p0, Lrh/h;->i:Ljava/lang/String;

    iget-object v2, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v2}, Lrh/c;->y()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lwh/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lrh/h;->j:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "No stream for image [%s]"

    invoke-static {v1, v0}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lrh/h;->d:Lrh/e;

    iget-object v1, v1, Lrh/e;->o:Llh/a;

    iget-object v2, p0, Lrh/h;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Llh/a;->b(Ljava/lang/String;Ljava/io/InputStream;Lai/b$a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lai/b;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lai/b;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private j()V
    .locals 4

    iget-boolean v0, p0, Lrh/h;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lrh/h;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lrh/h$c;

    invoke-direct {v0, p0}, Lrh/h$c;-><init>(Lrh/h;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lrh/h;->c:Landroid/os/Handler;

    iget-object v3, p0, Lrh/h;->a:Lrh/f;

    invoke-static {v0, v1, v2, v3}, Lrh/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lrh/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private k(Lsh/b$a;Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lrh/h;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lrh/h;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lrh/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lrh/h$b;

    invoke-direct {v0, p0, p1, p2}, Lrh/h$b;-><init>(Lrh/h;Lsh/b$a;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lrh/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lrh/h;->a:Lrh/f;

    invoke-static {v0, p1, p2, v1}, Lrh/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lrh/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private l(II)Z
    .locals 2

    invoke-direct {p0}, Lrh/h;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lrh/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrh/h;->o:Lyh/b;

    if-eqz v0, :cond_1

    new-instance v0, Lrh/h$a;

    invoke-direct {v0, p0, p1, p2}, Lrh/h$a;-><init>(Lrh/h;II)V

    iget-object p1, p0, Lrh/h;->c:Landroid/os/Handler;

    iget-object p2, p0, Lrh/h;->a:Lrh/f;

    invoke-static {v0, v1, p1, p2}, Lrh/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lrh/f;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private m()Lwh/c;
    .locals 1

    iget-object v0, p0, Lrh/h;->a:Lrh/f;

    invoke-virtual {v0}, Lrh/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrh/h;->f:Lwh/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrh/h;->a:Lrh/f;

    invoke-virtual {v0}, Lrh/f;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrh/h;->g:Lwh/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrh/h;->e:Lwh/c;

    :goto_0
    return-object v0
.end method

.method private o()Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v2}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method private p()Z
    .locals 1

    invoke-direct {p0}, Lrh/h;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lrh/h;->r()Z

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

.method private q()Z
    .locals 4

    iget-object v0, p0, Lrh/h;->k:Lxh/b;

    invoke-interface {v0}, Lxh/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v2}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method private r()Z
    .locals 4

    iget-object v0, p0, Lrh/h;->a:Lrh/f;

    iget-object v1, p0, Lrh/h;->k:Lxh/b;

    invoke-virtual {v0, v1}, Lrh/f;->h(Lxh/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lrh/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v2, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method

.method private s(II)Z
    .locals 11

    iget-object v0, p0, Lrh/h;->d:Lrh/e;

    iget-object v0, v0, Lrh/e;->o:Llh/a;

    iget-object v1, p0, Lrh/h;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Llh/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v7, Lsh/e;

    invoke-direct {v7, p1, p2}, Lsh/e;-><init>(II)V

    new-instance p1, Lrh/c$b;

    invoke-direct {p1}, Lrh/c$b;-><init>()V

    iget-object p2, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {p1, p2}, Lrh/c$b;->z(Lrh/c;)Lrh/c$b;

    move-result-object p1

    sget-object p2, Lsh/d;->d:Lsh/d;

    invoke-virtual {p1, p2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lrh/c$b;->w()Lrh/c;

    move-result-object v10

    new-instance p1, Luh/c;

    iget-object v4, p0, Lrh/h;->j:Ljava/lang/String;

    sget-object p2, Lwh/c$a;->e:Lwh/c$a;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lwh/c$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lrh/h;->i:Ljava/lang/String;

    sget-object v8, Lsh/h;->a:Lsh/h;

    invoke-direct {p0}, Lrh/h;->m()Lwh/c;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Luh/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsh/e;Lsh/h;Lwh/c;Lrh/c;)V

    iget-object p2, p0, Lrh/h;->h:Luh/b;

    invoke-interface {p2, p1}, Luh/b;->a(Luh/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lrh/h;->d:Lrh/e;

    iget-object p2, p2, Lrh/e;->f:Lzh/a;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Process image before cache on disk [%s]"

    invoke-static {v2, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lrh/h;->d:Lrh/e;

    iget-object v0, v0, Lrh/e;->f:Lzh/a;

    invoke-interface {v0, p1}, Lzh/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "Bitmap processor for disk cache returned null [%s]"

    invoke-static {v0, p2}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lrh/h;->d:Lrh/e;

    iget-object p2, p2, Lrh/e;->o:Llh/a;

    iget-object v0, p0, Lrh/h;->i:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Llh/a;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return v1
.end method

.method static t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lrh/f;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p3, p0}, Lrh/f;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private u()Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lrh/h;->j:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Cache image on disk [%s]"

    invoke-static {v2, v1}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lrh/h;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lrh/h;->d:Lrh/e;

    iget v4, v2, Lrh/e;->d:I

    iget v2, v2, Lrh/e;->e:I

    if-gtz v4, :cond_0

    if-lez v2, :cond_1

    :cond_0
    const-string v5, "Resize image in disk cache [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v6, v0, v3

    invoke-static {v5, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4, v2}, Lrh/h;->s(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v3, v1

    goto :goto_0

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Socket time out : tryCacheImageOnDisk"

    invoke-static {v1, v0}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v3
.end method

.method private v()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lrh/h;->d:Lrh/e;

    iget-object v2, v2, Lrh/e;->o:Llh/a;

    iget-object v3, p0, Lrh/h;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Llh/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const-string v4, "Load image from disk cache [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lsh/f;->b:Lsh/f;

    iput-object v4, p0, Lrh/h;->q:Lsh/f;

    invoke-direct {p0}, Lrh/h;->d()V

    sget-object v4, Lwh/c$a;->e:Lwh/c$a;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lwh/c$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lrh/h;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lrh/h$d; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_1
    const-string v4, "Load image from network [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-static {v4, v3}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lsh/f;->a:Lsh/f;

    iput-object v3, p0, Lrh/h;->q:Lsh/f;

    iget-object v3, p0, Lrh/h;->i:Ljava/lang/String;

    iget-object v4, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v4}, Lrh/c;->H()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lrh/h;->u()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lrh/h;->d:Lrh/e;

    iget-object v4, v4, Lrh/e;->o:Llh/a;

    iget-object v5, p0, Lrh/h;->i:Ljava/lang/String;

    invoke-interface {v4, v5}, Llh/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v3, Lwh/c$a;->e:Lwh/c$a;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwh/c$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-direct {p0}, Lrh/h;->d()V

    invoke-direct {p0, v3}, Lrh/h;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    sget-object v3, Lsh/b$a;->b:Lsh/b$a;

    invoke-direct {p0, v3, v1}, Lrh/h;->k(Lsh/b$a;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lrh/h$d; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v0}, Lai/c;->c(Ljava/lang/Throwable;)V

    sget-object v2, Lsh/b$a;->e:Lsh/b$a;

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_2
    invoke-static {v0}, Lai/c;->c(Ljava/lang/Throwable;)V

    sget-object v2, Lsh/b$a;->d:Lsh/b$a;

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_3
    invoke-static {v0}, Lai/c;->c(Ljava/lang/Throwable;)V

    sget-object v2, Lsh/b$a;->a:Lsh/b$a;

    :goto_4
    invoke-direct {p0, v2, v0}, Lrh/h;->k(Lsh/b$a;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_5
    move-exception v2

    :goto_5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Socket Time out"

    invoke-static {v3, v0}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lsh/b$a;->a:Lsh/b$a;

    invoke-direct {p0, v0, v2}, Lrh/h;->k(Lsh/b$a;Ljava/lang/Throwable;)V

    :goto_6
    move-object v2, v1

    goto :goto_7

    :catch_6
    move-exception v0

    throw v0

    :catch_7
    move-object v2, v1

    :catch_8
    sget-object v0, Lsh/b$a;->c:Lsh/b$a;

    invoke-direct {p0, v0, v1}, Lrh/h;->k(Lsh/b$a;Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    return-object v2
.end method

.method private w()Z
    .locals 6

    iget-object v0, p0, Lrh/h;->a:Lrh/f;

    invoke-virtual {v0}, Lrh/f;->j()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lrh/h;->a:Lrh/f;

    invoke-virtual {v1}, Lrh/f;->k()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lrh/h;->j:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lrh/h;->a:Lrh/f;

    invoke-virtual {v0}, Lrh/f;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Task was interrupted [%s]"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return v2

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lrh/h;->p()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    iget-boolean v0, p0, Lrh/h;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lrh/h;->l(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrh/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    invoke-direct {p0}, Lrh/h;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lrh/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lrh/h;->b:Lrh/g;

    iget-object v0, v0, Lrh/g;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lrh/h;->j:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Start display image task [%s]"

    invoke-static {v3, v2}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "Image already is loading. Waiting... [%s]"

    invoke-static {v3, v2}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lrh/h;->d()V

    iget-object v2, p0, Lrh/h;->d:Lrh/e;

    iget-object v2, v2, Lrh/e;->n:Lph/a;

    iget-object v3, p0, Lrh/h;->j:Ljava/lang/String;

    invoke-interface {v2, v3}, Lph/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lsh/f;->c:Lsh/f;

    iput-object v3, p0, Lrh/h;->q:Lsh/f;

    const-string v3, "...Get cached bitmap from memory after waiting. [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lrh/h;->v()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Lrh/h$d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lrh/h;->d()V

    invoke-direct {p0}, Lrh/h;->c()V

    iget-object v3, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v3}, Lrh/c;->P()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "PreProcess image before caching in memory [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v3}, Lrh/c;->F()Lzh/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lzh/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v3, "Pre-processor returned null [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v3, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v3}, Lrh/c;->G()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Cache image in memory [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lrh/h;->d:Lrh/e;

    iget-object v3, v3, Lrh/e;->n:Lph/a;

    iget-object v5, p0, Lrh/h;->j:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Lph/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    iget-object v3, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v3}, Lrh/c;->O()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "PostProcess image before displaying [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v3}, Lrh/c;->E()Lzh/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lzh/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v3, "Post-processor returned null [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lrh/h;->j:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lai/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0}, Lrh/h;->d()V

    invoke-direct {p0}, Lrh/h;->c()V
    :try_end_1
    .catch Lrh/h$d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lrh/b;

    iget-object v1, p0, Lrh/h;->b:Lrh/g;

    iget-object v3, p0, Lrh/h;->a:Lrh/f;

    iget-object v4, p0, Lrh/h;->q:Lsh/f;

    invoke-direct {v0, v2, v1, v3, v4}, Lrh/b;-><init>(Landroid/graphics/Bitmap;Lrh/g;Lrh/f;Lsh/f;)V

    iget-boolean v1, p0, Lrh/h;->p:Z

    iget-object v2, p0, Lrh/h;->c:Landroid/os/Handler;

    iget-object v3, p0, Lrh/h;->a:Lrh/f;

    invoke-static {v0, v1, v2, v3}, Lrh/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lrh/f;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-direct {p0}, Lrh/h;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
