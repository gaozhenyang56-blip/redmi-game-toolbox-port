.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lt1/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lt1/d;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-static {p3, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;Z)Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/d;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lt1/d;->isReady()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "TileLoadTask.doInBackground, tile.sRect=%s, tile.sampleSize=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)Landroid/graphics/Rect;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1, v3, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lt1/d;->isReady()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->w(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->w(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->w(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Lt1/d;->c(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_1
    :try_start_3
    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode tile - OutOfMemoryError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->d:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode tile"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->d:Ljava/lang/Exception;

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$k;Z)Z

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->d:Ljava/lang/Exception;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;

    move-result-object p1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->d:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->c(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$l;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
