.class public Lzi/y5;
.super Lzi/j6;
.source "SourceFile"


# instance fields
.field private D:Ljava/lang/Thread;

.field private E:Lzi/t5;

.field private F:Lzi/u5;

.field private G:[B


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lzi/d6;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzi/j6;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/d6;)V

    return-void
.end method

.method private U(Z)Lzi/r5;
    .locals 2

    new-instance v0, Lzi/x5;

    invoke-direct {v0}, Lzi/x5;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    invoke-virtual {v0, p1}, Lzi/r5;->k(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lzi/p5;->i()[B

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Lzi/k4;

    invoke-direct {v1}, Lzi/k4;-><init>()V

    invoke-static {p1}, Lzi/a;->b([B)Lzi/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzi/k4;->l(Lzi/a;)Lzi/k4;

    invoke-virtual {v1}, Lzi/c3;->h()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lzi/r5;->n([BLjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method static synthetic V(Lzi/y5;)Lzi/t5;
    .locals 0

    iget-object p0, p0, Lzi/y5;->E:Lzi/t5;

    return-object p0
.end method

.method private Z()V
    .locals 3

    :try_start_0
    new-instance v0, Lzi/t5;

    iget-object v1, p0, Lzi/j6;->u:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lzi/t5;-><init>(Ljava/io/InputStream;Lzi/y5;)V

    iput-object v0, p0, Lzi/y5;->E:Lzi/t5;

    new-instance v0, Lzi/u5;

    iget-object v1, p0, Lzi/j6;->u:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lzi/u5;-><init>(Ljava/io/OutputStream;Lzi/y5;)V

    iput-object v0, p0, Lzi/y5;->F:Lzi/u5;

    new-instance v0, Lzi/z5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/c6;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lzi/z5;-><init>(Lzi/y5;Ljava/lang/String;)V

    iput-object v0, p0, Lzi/y5;->D:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lzi/o6;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lzi/o6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected declared-synchronized I()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lzi/y5;->Z()V

    iget-object v0, p0, Lzi/y5;->F:Lzi/u5;

    invoke-virtual {v0}, Lzi/u5;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized J(ILjava/lang/Exception;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzi/y5;->E:Lzi/t5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/t5;->e()V

    iput-object v1, p0, Lzi/y5;->E:Lzi/t5;

    :cond_0
    iget-object v0, p0, Lzi/y5;->F:Lzi/u5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lzi/u5;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SlimConnection shutdown cause exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lzi/y5;->F:Lzi/u5;

    :cond_1
    iput-object v1, p0, Lzi/y5;->G:[B

    invoke-super {p0, p1, p2}, Lzi/j6;->J(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected O(Z)V
    .locals 2

    iget-object v0, p0, Lzi/y5;->F:Lzi/u5;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lzi/y5;->U(Z)Lzi/r5;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] SND ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzi/y5;->w(Lzi/r5;)V

    invoke-virtual {p0}, Lzi/j6;->S()V

    return-void

    :cond_0
    new-instance p1, Lzi/o6;

    const-string v0, "The BlobWriter is null."

    invoke-direct {p1, v0}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method W(Lzi/r5;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/push/service/f2;->a(Lzi/r5;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lzi/r5;

    invoke-direct {v0}, Lzi/r5;-><init>()V

    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lzi/r5;->h(I)V

    const-string v1, "SYNC"

    const-string v2, "ACK_RTT"

    invoke-virtual {v0, v1, v2}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/r5;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/r5;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzi/r5;->u(J)V

    invoke-virtual {p1}, Lzi/r5;->y()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzi/r5;->i(J)V

    iget-object v1, p0, Lzi/c6;->o:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/y0;

    invoke-direct {v2, v1, v0}, Lcom/xiaomi/push/service/y0;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    :cond_1
    invoke-virtual {p1}, Lzi/r5;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV blob chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzi/j6;->T()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lzi/j6;->Q(ILjava/lang/Exception;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lzi/c6;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi/c6$a;

    invoke-virtual {v1, p1}, Lzi/c6$a;->a(Lzi/r5;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method declared-synchronized X()[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzi/y5;->G:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lzi/c6;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/a1;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lzi/c6;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzi/c6;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/s0;->i([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lzi/y5;->G:[B

    :cond_0
    iget-object v0, p0, Lzi/y5;->G:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method Y(Lzi/u6;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzi/c6;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi/c6$a;

    invoke-virtual {v1, p1}, Lzi/c6$a;->b(Lzi/u6;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized i(Lcom/xiaomi/push/service/k0$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lzi/j6;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lzi/q5;->a(Lcom/xiaomi/push/service/k0$b;Ljava/lang/String;Lzi/c6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p0}, Lzi/q5;->b(Ljava/lang/String;Ljava/lang/String;Lzi/c6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o(Lzi/u6;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzi/r5;->f(Lzi/u6;Ljava/lang/String;)Lzi/r5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzi/y5;->w(Lzi/r5;)V

    return-void
.end method

.method public p([Lzi/r5;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lzi/y5;->w(Lzi/r5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w(Lzi/r5;)V
    .locals 11

    iget-object v0, p0, Lzi/y5;->F:Lzi/u5;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Lzi/u5;->a(Lzi/r5;)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lzi/c6;->q:J

    invoke-virtual {p1}, Lzi/r5;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lzi/c6;->o:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static/range {v3 .. v10}, Lzi/i7;->j(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    :cond_0
    iget-object v0, p0, Lzi/c6;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi/c6$a;

    invoke-virtual {v1, p1}, Lzi/c6$a;->a(Lzi/r5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lzi/o6;

    invoke-direct {v0, p1}, Lzi/o6;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Lzi/o6;

    const-string v0, "the writer is null."

    invoke-direct {p1, v0}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p1
.end method
