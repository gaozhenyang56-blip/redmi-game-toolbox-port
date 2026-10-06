.class public Lrh/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh/d$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "d"

.field private static volatile e:Lrh/d;


# instance fields
.field private a:Lrh/e;

.field private b:Lrh/f;

.field private c:Lyh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyh/d;

    invoke-direct {v0}, Lyh/d;-><init>()V

    iput-object v0, p0, Lrh/d;->c:Lyh/a;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lrh/d$a;

    invoke-direct {v1, p0}, Lrh/d$a;-><init>(Lrh/d;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "miui.intent.action.ACTION_THEME_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lrh/d;)Lrh/e;
    .locals 0

    iget-object p0, p0, Lrh/d;->a:Lrh/e;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lrh/d;->a:Lrh/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(Lrh/c;)Landroid/os/Handler;
    .locals 2

    invoke-virtual {p0}, Lrh/c;->z()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lrh/c;->M()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static o()Lrh/d;
    .locals 2

    sget-object v0, Lrh/d;->e:Lrh/d;

    if-nez v0, :cond_1

    const-class v0, Lrh/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrh/d;->e:Lrh/d;

    if-nez v1, :cond_0

    new-instance v1, Lrh/d;

    invoke-direct {v1}, Lrh/d;-><init>()V

    sput-object v1, Lrh/d;->e:Lrh/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lrh/d;->e:Lrh/d;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lrh/d;->b:Lrh/f;

    new-instance v1, Lxh/c;

    invoke-direct {v1, p1}, Lxh/c;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lrh/f;->d(Lxh/b;)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-direct {p0}, Lrh/d;->c()V

    iget-object v0, p0, Lrh/d;->a:Lrh/e;

    iget-object v0, v0, Lrh/e;->n:Lph/a;

    invoke-interface {v0}, Lph/a;->clear()V

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v0, p1}, Lrh/f;->f(Z)V

    return-void
.end method

.method public g(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    new-instance v2, Lxh/c;

    invoke-direct {v2, p2}, Lxh/c;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrh/d;->m(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public h(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V
    .locals 6

    new-instance v2, Lxh/c;

    invoke-direct {v2, p2}, Lxh/c;-><init>(Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lrh/d;->m(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public i(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Lyh/a;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrh/d;->j(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public j(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Lyh/a;Lyh/b;)V
    .locals 6

    new-instance v2, Lxh/c;

    invoke-direct {v2, p2}, Lxh/c;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lrh/d;->m(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public k(Ljava/lang/String;Lxh/b;Lrh/c;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lrh/d;->m(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public l(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrh/d;->m(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public m(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;Lyh/b;)V
    .locals 13

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct {p0}, Lrh/d;->c()V

    invoke-static {}, Lx4/l1;->b()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lrh/d;->f(Z)V

    if-eqz v3, :cond_b

    if-nez p4, :cond_0

    iget-object v1, v0, Lrh/d;->c:Lyh/a;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    if-nez p3, :cond_1

    iget-object v1, v0, Lrh/d;->a:Lrh/e;

    iget-object v1, v1, Lrh/e;->r:Lrh/c;

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v1, p2}, Lrh/f;->d(Lxh/b;)V

    invoke-interface {p2}, Lxh/b;->a()Landroid/view/View;

    move-result-object v1

    invoke-interface {v7, p1, v1}, Lyh/a;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v10}, Lrh/c;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lrh/d;->a:Lrh/e;

    iget-object v1, v1, Lrh/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v10, v1}, Lrh/c;->A(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v1}, Lxh/b;->b(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    :cond_2
    invoke-interface {p2, v5}, Lxh/b;->b(Landroid/graphics/drawable/Drawable;)Z

    :goto_2
    invoke-interface {p2}, Lxh/b;->a()Landroid/view/View;

    move-result-object v1

    invoke-interface {v7, p1, v1, v5}, Lyh/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    iget-object v1, v0, Lrh/d;->a:Lrh/e;

    invoke-virtual {v1}, Lrh/e;->b()Lsh/e;

    move-result-object v1

    invoke-static {p2, v1}, Lai/a;->e(Lxh/b;Lsh/e;)Lsh/e;

    move-result-object v6

    invoke-static {p1, v6}, Lai/d;->b(Ljava/lang/String;Lsh/e;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v1, p2, v8}, Lrh/f;->p(Lxh/b;Ljava/lang/String;)V

    invoke-interface {p2}, Lxh/b;->a()Landroid/view/View;

    move-result-object v1

    invoke-interface {v7, p1, v1}, Lyh/a;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    iget-object v1, v0, Lrh/d;->a:Lrh/e;

    iget-object v1, v1, Lrh/e;->n:Lph/a;

    invoke-interface {v1, v8}, Lph/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v1, v4

    const-string v4, "Load image from memory cache [%s]"

    invoke-static {v4, v1}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10}, Lrh/c;->O()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v12, Lrh/g;

    iget-object v1, v0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v1, p1}, Lrh/f;->i(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v9

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lrh/g;-><init>(Ljava/lang/String;Lxh/b;Lsh/e;Ljava/lang/String;Lrh/c;Lyh/a;Lyh/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lrh/i;

    iget-object v2, v0, Lrh/d;->b:Lrh/f;

    invoke-static {v10}, Lrh/d;->e(Lrh/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v11, v12, v3}, Lrh/i;-><init>(Lrh/f;Landroid/graphics/Bitmap;Lrh/g;Landroid/os/Handler;)V

    invoke-virtual {v10}, Lrh/c;->M()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lrh/i;->run()V

    goto/16 :goto_4

    :cond_4
    iget-object v2, v0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v2, v1}, Lrh/f;->s(Lrh/i;)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v10}, Lrh/c;->x()Lvh/a;

    move-result-object v1

    sget-object v4, Lsh/f;->c:Lsh/f;

    invoke-interface {v1, v11, p2, v4}, Lvh/a;->a(Landroid/graphics/Bitmap;Lxh/b;Lsh/f;)V

    invoke-interface {p2}, Lxh/b;->a()Landroid/view/View;

    move-result-object v1

    invoke-interface {v7, p1, v1, v11}, Lyh/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Lrh/c;->S()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lrh/d;->a:Lrh/e;

    iget-object v1, v1, Lrh/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v10, v1}, Lrh/c;->C(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_7

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-interface {p2, v1}, Lxh/b;->b(Landroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_3

    :cond_7
    invoke-interface {p2, v1}, Lxh/b;->b(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v10}, Lrh/c;->L()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2, v5}, Lxh/b;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_9
    :goto_3
    new-instance v11, Lrh/g;

    iget-object v1, v0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v1, p1}, Lrh/f;->i(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v9

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lrh/g;-><init>(Ljava/lang/String;Lxh/b;Lsh/e;Ljava/lang/String;Lrh/c;Lyh/a;Lyh/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lrh/h;

    iget-object v2, v0, Lrh/d;->b:Lrh/f;

    invoke-static {v10}, Lrh/d;->e(Lrh/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v11, v3}, Lrh/h;-><init>(Lrh/f;Lrh/g;Landroid/os/Handler;)V

    invoke-virtual {v10}, Lrh/c;->M()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lrh/h;->run()V

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v2, v1}, Lrh/f;->r(Lrh/h;)V

    :goto_4
    return-void

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public n()Llh/a;
    .locals 1

    invoke-direct {p0}, Lrh/d;->c()V

    iget-object v0, p0, Lrh/d;->a:Lrh/e;

    iget-object v0, v0, Lrh/e;->o:Llh/a;

    return-object v0
.end method

.method public declared-synchronized p(Lrh/e;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lrh/d;->a:Lrh/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Initialize ImageLoader with configuration"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lrh/f;

    invoke-direct {v0, p1}, Lrh/f;-><init>(Lrh/e;)V

    iput-object v0, p0, Lrh/d;->b:Lrh/f;

    iput-object p1, p0, Lrh/d;->a:Lrh/e;

    goto :goto_0

    :cond_0
    const-string p1, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lai/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageLoader configuration can not be initialized with null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lrh/d;->a:Lrh/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r(Ljava/lang/String;Lrh/c;Lyh/a;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lrh/d;->t(Ljava/lang/String;Lsh/e;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public s(Ljava/lang/String;Lsh/e;Lrh/c;Lyh/a;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrh/d;->t(Ljava/lang/String;Lsh/e;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public t(Ljava/lang/String;Lsh/e;Lrh/c;Lyh/a;Lyh/b;)V
    .locals 6

    invoke-direct {p0}, Lrh/d;->c()V

    if-nez p2, :cond_0

    iget-object p2, p0, Lrh/d;->a:Lrh/e;

    invoke-virtual {p2}, Lrh/e;->b()Lsh/e;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lrh/d;->a:Lrh/e;

    iget-object p3, p3, Lrh/e;->r:Lrh/c;

    :cond_1
    move-object v3, p3

    new-instance v2, Lxh/d;

    sget-object p3, Lsh/h;->b:Lsh/h;

    invoke-direct {v2, p1, p2, p3}, Lxh/d;-><init>(Ljava/lang/String;Lsh/e;Lsh/h;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lrh/d;->m(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;Lyh/b;)V

    return-void
.end method

.method public u(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lrh/d;->w(Ljava/lang/String;Lsh/e;Lrh/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;Lrh/c;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lrh/d;->w(Ljava/lang/String;Lsh/e;Lrh/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/String;Lsh/e;Lrh/c;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p3, :cond_0

    iget-object p3, p0, Lrh/d;->a:Lrh/e;

    iget-object p3, p3, Lrh/e;->r:Lrh/c;

    :cond_0
    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    invoke-virtual {v0, p3}, Lrh/c$b;->z(Lrh/c;)Lrh/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lrh/c$b;->J(Z)Lrh/c$b;

    move-result-object p3

    invoke-virtual {p3}, Lrh/c$b;->w()Lrh/c;

    move-result-object p3

    new-instance v0, Lrh/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrh/d$b;-><init>(Lrh/d$a;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lrh/d;->s(Ljava/lang/String;Lsh/e;Lrh/c;Lyh/a;)V

    invoke-virtual {v0}, Lrh/d$b;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v0}, Lrh/f;->o()V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lrh/d;->b:Lrh/f;

    invoke-virtual {v0}, Lrh/f;->q()V

    return-void
.end method
