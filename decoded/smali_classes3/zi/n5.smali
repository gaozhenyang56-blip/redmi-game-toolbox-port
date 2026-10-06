.class public Lzi/n5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi/n5$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:J

.field private e:Lzi/l5;

.field private f:Lzi/m0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/n5;->b:Z

    invoke-static {}, Lzi/m0;->c()Lzi/m0;

    move-result-object v0

    iput-object v0, p0, Lzi/n5;->f:Lzi/m0;

    return-void
.end method

.method private b(Lzi/m0$a;)Lzi/f5;
    .locals 2

    iget v0, p1, Lzi/m0$a;->a:I

    if-nez v0, :cond_1

    iget-object p1, p1, Lzi/m0$a;->c:Ljava/lang/Object;

    instance-of v0, p1, Lzi/f5;

    if-eqz v0, :cond_0

    check-cast p1, Lzi/f5;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lzi/n5;->a()Lzi/f5;

    move-result-object v0

    sget-object v1, Lzi/e5;->l:Lzi/e5;

    invoke-virtual {v1}, Lzi/e5;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lzi/f5;->c(I)Lzi/f5;

    iget v1, p1, Lzi/m0$a;->a:I

    invoke-virtual {v0, v1}, Lzi/f5;->m(I)Lzi/f5;

    iget-object p1, p1, Lzi/m0$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lzi/f5;->n(Ljava/lang/String;)Lzi/f5;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private d(I)Lzi/g5;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lzi/g5;

    iget-object v2, p0, Lzi/n5;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lzi/g5;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lzi/n5;->e:Lzi/l5;

    iget-object v2, v2, Lzi/l5;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lzi/h0;->y(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lzi/n5;->e:Lzi/l5;

    iget-object v2, v2, Lzi/l5;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lzi/o7;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/g5;->b(Ljava/lang/String;)Lzi/g5;

    :cond_0
    new-instance v2, Lzi/w9;

    invoke-direct {v2, p1}, Lzi/w9;-><init>(I)V

    new-instance v3, Lzi/u9$a;

    invoke-direct {v3}, Lzi/u9$a;-><init>()V

    invoke-virtual {v3, v2}, Lzi/u9$a;->L(Lzi/y9;)Lzi/n9;

    move-result-object v3

    :try_start_0
    invoke-virtual {v1, v3}, Lzi/g5;->p(Lzi/n9;)V
    :try_end_0
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v4, p0, Lzi/n5;->f:Lzi/m0;

    invoke-virtual {v4}, Lzi/m0;->b()Ljava/util/LinkedList;

    move-result-object v4

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzi/m0$a;

    invoke-direct {p0, v5}, Lzi/n5;->b(Lzi/m0$a;)Lzi/f5;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Lzi/f5;->p(Lzi/n9;)V

    :cond_1
    invoke-virtual {v2}, Lzi/w9;->h()I

    move-result v6

    if-le v6, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lzi/h9; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static e()Lzi/l5;
    .locals 2

    sget-object v0, Lzi/n5$a;->a:Lzi/n5;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lzi/n5;->e:Lzi/l5;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static f()Lzi/n5;
    .locals 1

    sget-object v0, Lzi/n5$a;->a:Lzi/n5;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-boolean v0, p0, Lzi/n5;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lzi/n5;->d:J

    sub-long/2addr v0, v2

    iget v2, p0, Lzi/n5;->c:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/n5;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzi/n5;->d:J

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized a()Lzi/f5;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lzi/f5;

    invoke-direct {v0}, Lzi/f5;-><init>()V

    iget-object v1, p0, Lzi/n5;->e:Lzi/l5;

    iget-object v1, v1, Lzi/l5;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lzi/h0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/f5;->d(Ljava/lang/String;)Lzi/f5;

    const/4 v1, 0x0

    iput-byte v1, v0, Lzi/f5;->a:B

    const/4 v1, 0x1

    iput v1, v0, Lzi/f5;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lzi/f5;->r(I)Lzi/f5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Lzi/g5;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lzi/n5;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2ee

    iget-object v1, p0, Lzi/n5;->e:Lzi/l5;

    iget-object v1, v1, Lzi/l5;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lzi/h0;->y(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x177

    :cond_0
    invoke-direct {p0, v0}, Lzi/n5;->d(I)Lzi/g5;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(I)V
    .locals 3

    if-lez p1, :cond_2

    mul-int/lit16 p1, p1, 0x3e8

    const v0, 0x240c8400

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lzi/n5;->c:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lzi/n5;->b:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/n5;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/n5;->d:J

    iput p1, p0, Lzi/n5;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable dot duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " start = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzi/n5;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->B(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized i(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lzi/l5;

    invoke-direct {v0, p1}, Lzi/l5;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lzi/n5;->e:Lzi/l5;

    const-string p1, ""

    iput-object p1, p0, Lzi/n5;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/push/service/a1;->b()Lcom/xiaomi/push/service/a1;

    move-result-object p1

    new-instance v0, Lzi/o5;

    invoke-direct {v0, p0}, Lzi/o5;-><init>(Lzi/n5;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/a1;->j(Lcom/xiaomi/push/service/a1$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized j(Lzi/f5;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzi/n5;->f:Lzi/m0;

    invoke-virtual {v0, p1}, Lzi/m0;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lzi/n5;->b:Z

    return v0
.end method

.method l()Z
    .locals 1

    invoke-direct {p0}, Lzi/n5;->g()V

    iget-boolean v0, p0, Lzi/n5;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/n5;->f:Lzi/m0;

    invoke-virtual {v0}, Lzi/m0;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
