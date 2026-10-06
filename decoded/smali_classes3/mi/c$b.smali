.class Lmi/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmi/c;


# direct methods
.method constructor <init>(Lmi/c;)V
    .locals 0

    iput-object p1, p0, Lmi/c$b;->a:Lmi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lmi/c;->u()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2}, Lmi/c;->v(Lmi/c;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v3}, Lmi/c;->w(Lmi/c;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lmi/c;->x()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2}, Lmi/c;->y(Lmi/c;)Loi/a;

    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2}, Lmi/c;->z(Lmi/c;)Loi/c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Loi/a;->init()V

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "SdkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sys version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Loi/a;->getVersion()Lmi/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lmi/c;->x()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SdkManager"

    const-string v4, "use system analytics only, so don\'t load asset/local analytics.apk"

    invoke-static {v3, v4}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v3, v2}, Lmi/c;->b(Lmi/c;Loi/a;)Loi/a;

    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2}, Lmi/c;->a(Lmi/c;)Loi/a;

    move-result-object v3

    invoke-static {v2, v3}, Lmi/c;->A(Lmi/c;Loi/a;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v1, v0}, Lmi/c;->k(Lmi/c;Z)Z

    return-void

    :cond_3
    :try_start_2
    iget-object v3, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v3}, Lmi/c;->d(Lmi/c;)Loi/a;

    move-result-object v3

    const-string v4, "SdkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets analytics null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-nez v3, :cond_4

    move v7, v0

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v4}, Lmi/c;->e(Lmi/c;)Loi/a;

    move-result-object v4

    const-string v5, "SdkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "local analytics null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_5

    move v6, v0

    :cond_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    if-eqz v4, :cond_6

    invoke-interface {v4}, Loi/a;->getVersion()Lmi/e;

    move-result-object v5

    invoke-interface {v3}, Loi/a;->getVersion()Lmi/e;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmi/e;->a(Lmi/e;)I

    move-result v5

    if-lez v5, :cond_6

    goto :goto_1

    :cond_6
    const-string v4, "SdkManager"

    const-string v5, "use assets analytics."

    invoke-static {v4, v5}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string v3, "SdkManager"

    const-string v5, "use local analytics."

    invoke-static {v3, v5}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    if-eqz v2, :cond_9

    if-eqz v3, :cond_8

    invoke-interface {v3}, Loi/a;->getVersion()Lmi/e;

    move-result-object v4

    invoke-interface {v2}, Loi/a;->getVersion()Lmi/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmi/e;->a(Lmi/e;)I

    move-result v4

    if-lez v4, :cond_8

    goto :goto_3

    :cond_8
    const-string v4, "SdkManager"

    const-string v5, "use sys analytics."

    invoke-static {v4, v5}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v4, v3}, Lmi/c;->h(Lmi/c;Loi/a;)Loi/a;

    iget-object v3, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v3}, Lmi/c;->i(Lmi/c;)V

    goto :goto_4

    :cond_9
    :goto_3
    const-string v2, "SdkManager"

    const-string v4, "use dex analytics."

    invoke-static {v2, v4}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    invoke-interface {v3}, Loi/a;->init()V

    :cond_a
    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2, v0}, Lmi/c;->f(Lmi/c;Z)V

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_b

    invoke-interface {v2}, Loi/a;->getVersion()Lmi/e;

    move-result-object v3

    sget-object v4, Lmi/a;->b:Lmi/e;

    invoke-virtual {v3, v4}, Lmi/e;->a(Lmi/e;)I

    move-result v3

    if-ltz v3, :cond_b

    iget-object v3, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v3, v2}, Lmi/c;->b(Lmi/c;Loi/a;)Loi/a;

    :cond_b
    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2}, Lmi/c;->j(Lmi/c;)V

    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2}, Lmi/c;->a(Lmi/c;)Loi/a;

    move-result-object v3

    invoke-static {v2, v3}, Lmi/c;->A(Lmi/c;Loi/a;)V

    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "SdkManager"

    invoke-static {v2}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "heavy work exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    iget-object v1, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v1, v0}, Lmi/c;->k(Lmi/c;Z)Z

    return-void

    :goto_6
    iget-object v2, p0, Lmi/c$b;->a:Lmi/c;

    invoke-static {v2, v0}, Lmi/c;->k(Lmi/c;Z)Z

    throw v1
.end method
