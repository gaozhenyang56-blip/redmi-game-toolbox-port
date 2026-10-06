.class public Lcom/xiaomi/mipush/sdk/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/xiaomi/mipush/sdk/b0;

.field private static c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/b0;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/service/o;->O(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private c(Lzi/m8;Z[BLjava/lang/String;ILandroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    const-class v4, Lcom/xiaomi/mipush/sdk/v;

    const/4 v10, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/xiaomi/mipush/sdk/x;->d(Landroid/content/Context;Lzi/m8;)Lzi/c9;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiving an un-recognized message. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lzi/m8;->a:Lzi/q7;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "18"

    invoke-virtual {v0, v4, v5, v8, v6}, Lzi/q4;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/z0;->f(Landroid/content/Context;Lzi/m8;Z)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/b1; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_3

    return-object v10

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lzi/m8;->c()Lzi/q7;

    move-result-object v6

    const-string v7, "processing a message, action="

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const-string v14, ", hasNotified="

    const/4 v15, 0x1

    aput-object v14, v12, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v11, 0x2

    aput-object v14, v12, v11

    invoke-static {v7, v12}, Lpi/c;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/xiaomi/mipush/sdk/c0;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const-wide/16 v17, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v6, Lzi/q7;->j:Lzi/q7;

    array-length v0, v0

    invoke-static {v2, v3, v5, v6, v0}, Lzi/u2;->f(Ljava/lang/String;Landroid/content/Context;Lzi/c9;Lzi/q7;I)V

    instance-of v0, v5, Lzi/h8;

    if-eqz v0, :cond_d

    check-cast v5, Lzi/h8;

    invoke-virtual {v5}, Lzi/h8;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resp-type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lzi/h8;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lzi/h8;->f:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpi/c;->E(Ljava/lang/String;)V

    sget-object v2, Lzi/a8;->F:Lzi/a8;

    iget-object v2, v2, Lzi/a8;->a:Ljava/lang/String;

    iget-object v3, v5, Lzi/h8;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_6

    iget-wide v5, v5, Lzi/h8;->f:J

    cmp-long v2, v5, v17

    if-nez v2, :cond_2

    monitor-enter v4

    :try_start_1
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    const-string v0, "syncing"

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/j0;->a:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    const-string v2, "synced"

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/mipush/sdk/v;->d(Lcom/xiaomi/mipush/sdk/j0;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->o(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->n(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d0;->N()V

    :cond_1
    monitor-exit v4

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v2, "syncing"

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/j0;->a:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    monitor-enter v4

    :try_start_2
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->a(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v3, :cond_3

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->g(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Lcom/xiaomi/mipush/sdk/d0;->I(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    :cond_4
    :goto_0
    monitor-exit v4

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_6
    sget-object v2, Lzi/a8;->G:Lzi/a8;

    iget-object v2, v2, Lzi/a8;->a:Ljava/lang/String;

    iget-object v6, v5, Lzi/h8;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v5, v5, Lzi/h8;->f:J

    cmp-long v2, v5, v17

    if-nez v2, :cond_8

    monitor-enter v4

    :try_start_3
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    const-string v0, "syncing"

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/j0;->b:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    const-string v2, "synced"

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/mipush/sdk/v;->d(Lcom/xiaomi/mipush/sdk/j0;Ljava/lang/String;)V

    :cond_7
    monitor-exit v4

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_8
    const-string v2, "syncing"

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/j0;->b:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    monitor-enter v4

    :try_start_4
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->a(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v3, :cond_9

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->g(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v2

    invoke-virtual {v2, v13, v0}, Lcom/xiaomi/mipush/sdk/d0;->I(ZLjava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    :cond_a
    :goto_1
    monitor-exit v4

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :cond_b
    sget-object v0, Lzi/a8;->O:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/h8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v1, v5}, Lcom/xiaomi/mipush/sdk/b0;->o(Lzi/h8;)V

    goto/16 :goto_11

    :cond_c
    sget-object v0, Lzi/a8;->C:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/h8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-direct {v1, v5}, Lcom/xiaomi/mipush/sdk/b0;->i(Lzi/h8;)V

    goto/16 :goto_11

    :cond_d
    instance-of v0, v5, Lzi/q8;

    if-eqz v0, :cond_47

    check-cast v5, Lzi/q8;

    const-string v0, "registration id expired"

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->u(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/n;->v(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/n;->w(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/n;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resp-type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lzi/q8;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpi/c;->E(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v6, Lzi/e8;->b:Lzi/e8;

    invoke-static {v5, v6}, Lcom/xiaomi/mipush/sdk/n;->G(Landroid/content/Context;Lzi/e8;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/xiaomi/mipush/sdk/n;->N(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v6, v5, v10}, Lcom/xiaomi/mipush/sdk/n;->W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/xiaomi/mipush/sdk/n;->R(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v5, v2, v10}, Lcom/xiaomi/mipush/sdk/n;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/n;->M(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3, v2, v10}, Lcom/xiaomi/mipush/sdk/n;->Z(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ne v2, v11, :cond_47

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/n;->L(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    aget-object v3, v0, v13

    aget-object v0, v0, v15

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mipush/sdk/n;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_11
    sget-object v0, Lzi/a8;->i:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    const-string v2, "app_version"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    const-string v2, "app_version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/m0;->g(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_12
    sget-object v0, Lzi/a8;->o:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lzi/o8;

    invoke-direct {v0}, Lzi/o8;-><init>()V

    :try_start_5
    invoke-virtual {v5}, Lzi/q8;->o()[B

    move-result-object v2

    invoke-static {v0, v2}, Lzi/b9;->d(Lzi/c9;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/f0;->d(Lcom/xiaomi/push/service/e0;Lzi/o8;)V
    :try_end_5
    .catch Lzi/h9; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_11

    :cond_13
    sget-object v0, Lzi/a8;->p:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lzi/n8;

    invoke-direct {v0}, Lzi/n8;-><init>()V

    :try_start_6
    invoke-virtual {v5}, Lzi/q8;->o()[B

    move-result-object v2

    invoke-static {v0, v2}, Lzi/b9;->d(Lzi/c9;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/f0;->c(Lcom/xiaomi/push/service/e0;Lzi/n8;)V
    :try_end_6
    .catch Lzi/h9; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_11

    :cond_14
    sget-object v0, Lzi/a8;->x:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/xiaomi/mipush/sdk/k0;->c(Landroid/content/Context;Lzi/q8;)V

    goto/16 :goto_11

    :cond_15
    sget-object v0, Lzi/a8;->y:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "receive force sync notification"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/xiaomi/mipush/sdk/k0;->d(Landroid/content/Context;Z)V

    goto/16 :goto_11

    :cond_16
    sget-object v0, Lzi/a8;->D:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resp-type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lzi/q8;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->E(Ljava/lang/String;)V

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/o0;->M:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_17

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/push/service/o0;->M:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_5
    const/4 v0, -0x1

    if-lt v2, v0, :cond_18

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/n;->p(Landroid/content/Context;I)V

    goto :goto_6

    :cond_18
    const-string v0, ""

    const-string v2, ""

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/o0;->K:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/push/service/o0;->K:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_19
    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/o0;->L:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v5}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/o0;->L:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_1a
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mipush/sdk/n;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_6
    invoke-direct {v1, v5}, Lcom/xiaomi/mipush/sdk/b0;->k(Lzi/q8;)V

    goto/16 :goto_11

    :cond_1c
    sget-object v0, Lzi/a8;->L:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_8
    new-instance v0, Lzi/s8;

    invoke-direct {v0}, Lzi/s8;-><init>()V

    invoke-virtual {v5}, Lzi/q8;->o()[B

    move-result-object v2

    invoke-static {v0, v2}, Lzi/b9;->d(Lzi/c9;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lzi/s8;)V
    :try_end_8
    .catch Lzi/h9; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_11

    :catch_1
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :cond_1d
    sget-object v0, Lzi/a8;->N:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_9
    new-instance v0, Lzi/y8;

    invoke-direct {v0}, Lzi/y8;-><init>()V

    invoke-virtual {v5}, Lzi/q8;->o()[B

    move-result-object v2

    invoke-static {v0, v2}, Lzi/b9;->d(Lzi/c9;[B)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/o;->b(Landroid/content/Context;Lzi/y8;)V
    :try_end_9
    .catch Lzi/h9; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_11

    :cond_1e
    sget-object v0, Lzi/a8;->Q:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_11

    :cond_1f
    sget-object v0, Lzi/a8;->l0:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    iget-object v2, v5, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "receive detect msg"

    invoke-static {v0}, Lpi/c;->y(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Lcom/xiaomi/mipush/sdk/b0;->q(Lzi/q8;)V

    goto/16 :goto_11

    :cond_20
    invoke-static {v5}, Lcom/xiaomi/push/service/k2;->b(Lzi/q8;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "receive notification handle by cpra"

    invoke-static {v0}, Lpi/c;->y(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_1
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v4, Lzi/q7;->k:Lzi/q7;

    array-length v0, v0

    invoke-static {v2, v3, v5, v4, v0}, Lzi/u2;->f(Ljava/lang/String;Landroid/content/Context;Lzi/c9;Lzi/q7;I)V

    check-cast v5, Lzi/l8;

    invoke-virtual {v5}, Lzi/l8;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lzi/l8;->c()Ljava/util/List;

    move-result-object v2

    iget-wide v3, v5, Lzi/l8;->e:J

    cmp-long v3, v3, v17

    if-nez v3, :cond_27

    sget-object v3, Lzi/y4;->j:Lzi/y4;

    iget-object v3, v3, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v15, :cond_22

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lcom/xiaomi/mipush/sdk/n;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "00:00"

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "00:00"

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/xiaomi/mipush/sdk/m0;->j(Z)V

    goto :goto_7

    :cond_21
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/xiaomi/mipush/sdk/m0;->j(Z)V

    :goto_7
    const-string v3, "GMT+08"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/xiaomi/mipush/sdk/b0;->f(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_8

    :cond_22
    sget-object v3, Lzi/y4;->d:Lzi/y4;

    iget-object v3, v3, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/n;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_23
    sget-object v3, Lzi/y4;->e:Lzi/y4;

    iget-object v3, v3, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_24

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/n;->N(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_24
    sget-object v3, Lzi/y4;->f:Lzi/y4;

    iget-object v3, v3, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/n;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_25
    sget-object v3, Lzi/y4;->g:Lzi/y4;

    iget-object v3, v3, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_26

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/n;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_26
    sget-object v3, Lzi/y4;->k:Lzi/y4;

    iget-object v3, v3, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    return-object v10

    :cond_27
    :goto_8
    move-object/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resp-cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lzi/l8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpi/c;->E(Ljava/lang/String;)V

    iget-wide v2, v5, Lzi/l8;->e:J

    iget-object v4, v5, Lzi/l8;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lzi/l8;->k()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v19, v0

    move-wide/from16 v21, v2

    move-object/from16 v23, v4

    invoke-static/range {v19 .. v25}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v5, Lzi/a9;

    iget-wide v2, v5, Lzi/a9;->e:J

    cmp-long v0, v2, v17

    if-nez v0, :cond_28

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lzi/a9;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/n;->R(Landroid/content/Context;Ljava/lang/String;)V

    :cond_28
    invoke-virtual {v5}, Lzi/a9;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lzi/a9;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    move-object v12, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resp-cmd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lzi/y4;->i:Lzi/y4;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lzi/a9;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->E(Ljava/lang/String;)V

    iget-object v11, v2, Lzi/y4;->a:Ljava/lang/String;

    iget-wide v13, v5, Lzi/a9;->e:J

    iget-object v15, v5, Lzi/a9;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lzi/a9;->i()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v5, Lzi/w8;

    iget-wide v2, v5, Lzi/w8;->e:J

    cmp-long v0, v2, v17

    if-nez v0, :cond_2a

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lzi/w8;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/n;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2a
    invoke-virtual {v5}, Lzi/w8;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lzi/w8;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object v12, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resp-cmd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lzi/y4;->h:Lzi/y4;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lzi/w8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->E(Ljava/lang/String;)V

    iget-object v11, v2, Lzi/y4;->a:Ljava/lang/String;

    iget-wide v13, v5, Lzi/w8;->e:J

    iget-object v15, v5, Lzi/w8;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lzi/w8;->i()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lzi/m8;->v()Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "receiving an un-encrypt message(UnRegistration)."

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    return-object v10

    :cond_2c
    check-cast v5, Lzi/y8;

    iget-wide v2, v5, Lzi/y8;->e:J

    cmp-long v0, v2, v17

    if-nez v0, :cond_2d

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->e()V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->l(Landroid/content/Context;)V

    :cond_2d
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_11

    :pswitch_5
    move-object v0, v5

    check-cast v0, Lzi/s8;

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/m0;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v0}, Lzi/s8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto/16 :goto_a

    :cond_2e
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/d0;->b()J

    move-result-wide v2

    cmp-long v4, v2, v17

    if-lez v4, :cond_2f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2f

    const-string v0, "The received registration result has expired."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "26"

    invoke-virtual {v0, v2, v3, v8, v4}, Lzi/q4;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_2f
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    iput-object v10, v2, Lcom/xiaomi/mipush/sdk/m0;->d:Ljava/lang/String;

    iget-wide v2, v0, Lzi/s8;->e:J

    cmp-long v2, v2, v17

    if-nez v2, :cond_30

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    iget-object v3, v0, Lzi/s8;->g:Ljava/lang/String;

    iget-object v4, v0, Lzi/s8;->h:Ljava/lang/String;

    iget-object v5, v0, Lzi/s8;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/mipush/sdk/m0;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1776

    const-string v7, "1"

    goto :goto_9

    :cond_30
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1776

    const-string v7, "2"

    :goto_9
    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lzi/q4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v0, Lzi/s8;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lzi/s8;->g:Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object v4, v10

    invoke-virtual {v0}, Lzi/s8;->d()Ljava/util/List;

    move-result-object v9

    sget-object v2, Lzi/y4;->b:Lzi/y4;

    iget-object v3, v2, Lzi/y4;->a:Ljava/lang/String;

    iget-wide v5, v0, Lzi/s8;->e:J

    iget-object v7, v0, Lzi/s8;->f:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/d0;->W()V

    return-object v0

    :cond_32
    :goto_a
    const-string v0, "bad Registration result:"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "21"

    invoke-virtual {v0, v2, v3, v8, v4}, Lzi/q4;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lzi/m8;->v()Z

    move-result v4

    if-nez v4, :cond_33

    const-string v0, "receiving an un-encrypt message(SendMessage)."

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    return-object v10

    :cond_33
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/m0;->w()Z

    move-result v4

    if-eqz v4, :cond_34

    if-nez v3, :cond_34

    const-string v0, "receive a message in pause state. drop it"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "12"

    invoke-virtual {v0, v2, v3, v8, v4}, Lzi/q4;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_34
    check-cast v5, Lzi/u8;

    invoke-virtual {v5}, Lzi/u8;->c()Lzi/c8;

    move-result-object v4

    if-nez v4, :cond_35

    const-string v0, "receive an empty message without push content, drop it"

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "22"

    invoke-virtual {v0, v4, v5, v8, v6}, Lzi/q4;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/z0;->g(Landroid/content/Context;Lzi/m8;Z)V

    return-object v10

    :cond_35
    const-string v6, "notification_click_button"

    move-object/from16 v7, p6

    invoke-virtual {v7, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v3, :cond_39

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/o;->L(Lzi/m8;)Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lzi/c8;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v14

    iget-object v11, v2, Lzi/m8;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lzi/c8;->h()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v12, v14, v11, v15}, Lcom/xiaomi/mipush/sdk/n;->S(Landroid/content/Context;Ljava/lang/String;Lzi/d8;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_36
    invoke-virtual/range {p1 .. p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v7

    if-eqz v7, :cond_37

    new-instance v7, Lzi/d8;

    invoke-virtual/range {p1 .. p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v11

    invoke-direct {v7, v11}, Lzi/d8;-><init>(Lzi/d8;)V

    goto :goto_b

    :cond_37
    new-instance v7, Lzi/d8;

    invoke-direct {v7}, Lzi/d8;-><init>()V

    :goto_b
    invoke-virtual {v7}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v11

    if-nez v11, :cond_38

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, v11}, Lzi/d8;->h(Ljava/util/Map;)Lzi/d8;

    :cond_38
    invoke-virtual {v7}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v11

    const-string v12, "notification_click_button"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lzi/c8;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lzi/c8;->h()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v12, v7, v14}, Lcom/xiaomi/mipush/sdk/n;->T(Landroid/content/Context;Ljava/lang/String;Lzi/d8;Ljava/lang/String;)V

    :cond_39
    :goto_c
    if-nez v3, :cond_3b

    invoke-virtual {v5}, Lzi/u8;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lzi/u8;->l()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/xiaomi/mipush/sdk/n;->j(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v7, v11, v17

    if-gez v7, :cond_3a

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lzi/u8;->l()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/xiaomi/mipush/sdk/n;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_3a
    invoke-virtual {v5}, Lzi/u8;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3b

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lzi/u8;->j()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/xiaomi/mipush/sdk/n;->f0(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v7, v11, v17

    if-gez v7, :cond_3b

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lzi/u8;->j()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/xiaomi/mipush/sdk/n;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3b
    :goto_d
    iget-object v7, v2, Lzi/m8;->h:Lzi/d8;

    if-eqz v7, :cond_3c

    invoke-virtual {v7}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_3c

    iget-object v7, v2, Lzi/m8;->h:Lzi/d8;

    iget-object v7, v7, Lzi/d8;->j:Ljava/util/Map;

    const-string v11, "jobkey"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_e

    :cond_3c
    move-object v7, v10

    :goto_e
    move-object v11, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3d

    invoke-virtual {v4}, Lzi/c8;->c()Ljava/lang/String;

    move-result-object v7

    :cond_3d
    if-nez v3, :cond_3e

    iget-object v12, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/xiaomi/mipush/sdk/b0;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop a duplicate message, key="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "2:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v6, v8, v7}, Lzi/q4;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v12

    invoke-static {v5, v12, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Lzi/u8;Lzi/d8;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v14

    if-nez v14, :cond_3f

    if-nez v3, :cond_3f

    invoke-virtual {v12}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaomi/push/service/o;->J(Ljava/util/Map;)Z

    move-result v14

    if-eqz v14, :cond_3f

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/xiaomi/push/service/o;->q(Landroid/content/Context;Lzi/m8;[B)Lcom/xiaomi/push/service/o$c;

    return-object v10

    :cond_3f
    invoke-virtual {v12}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/o;->s(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    const-string v14, "receive a message, msgid="

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4}, Lzi/c8;->c()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v13

    const-string v13, ", jobkey="

    const/16 v17, 0x1

    aput-object v13, v15, v17

    const/4 v13, 0x2

    aput-object v7, v15, v13

    const-string v7, ", btn="

    const/4 v13, 0x3

    aput-object v7, v15, v13

    const/4 v7, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v15, v7

    const/4 v7, 0x5

    const-string v13, ", typeId="

    aput-object v13, v15, v7

    const/4 v7, 0x6

    aput-object v0, v15, v7

    const/4 v7, 0x7

    const-string v13, ", hasNotified="

    aput-object v13, v15, v7

    const/16 v7, 0x8

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v15, v7

    invoke-static {v14, v15}, Lpi/c;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_46

    invoke-virtual {v12}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_46

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_46

    invoke-virtual {v12}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v3

    if-eqz v6, :cond_40

    invoke-virtual/range {p1 .. p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v5

    if-eqz v5, :cond_40

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v7

    invoke-virtual {v7}, Lzi/d8;->v()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Lcom/xiaomi/mipush/sdk/d0;->o(II)V

    :cond_40
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/o;->L(Lzi/m8;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    iget-object v7, v2, Lzi/m8;->f:Ljava/lang/String;

    invoke-static {v5, v7, v3, v6}, Lcom/xiaomi/mipush/sdk/b0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "eventMessageType"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "messageId"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "jobkey"

    invoke-virtual {v3, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Lzi/c8;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, "payload"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/z0;->b(Landroid/content/Context;Lzi/m8;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xbbe

    move-object/from16 v5, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lzi/q4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PushMessageProcessor"

    const-string v2, "start business activity succ"

    invoke-static {v0, v2}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_42
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v3, v6}, Lcom/xiaomi/mipush/sdk/b0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_44

    sget-object v4, Lcom/xiaomi/push/service/o0;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "key_message"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "eventMessageType"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "messageId"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "jobkey"

    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_43
    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/z0;->b(Landroid/content/Context;Lzi/m8;)V

    const-string v2, "PushMessageProcessor"

    const-string v3, "start activity succ"

    invoke-static {v2, v3}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3ee

    move-object/from16 v5, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lzi/q4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v2, Lcom/xiaomi/push/service/o0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "13"

    invoke-virtual {v0, v2, v3, v8, v4}, Lzi/q4;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_44
    const-string v2, "PushMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing target intent for message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzi/c8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", typeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lpi/c;->C(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    :goto_f
    const-string v0, "PushMessageProcessor"

    const-string v2, "pre-def msg process done."

    invoke-static {v0, v2}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_46
    move-object v10, v12

    :goto_10
    invoke-virtual/range {p1 .. p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    if-nez v0, :cond_47

    if-nez v3, :cond_47

    invoke-direct {v1, v5, v2}, Lcom/xiaomi/mipush/sdk/b0;->l(Lzi/u8;Lzi/m8;)V

    :catch_2
    :cond_47
    :goto_11
    return-object v10

    :catch_3
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    const-string v0, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "20"

    invoke-virtual {v0, v4, v5, v8, v6}, Lzi/q4;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/z0;->f(Landroid/content/Context;Lzi/m8;Z)V

    return-object v10

    :catch_4
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/mipush/sdk/b0;->j(Lzi/m8;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "19"

    invoke-virtual {v0, v4, v5, v8, v6}, Lzi/q4;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/z0;->f(Landroid/content/Context;Lzi/m8;Z)V

    return-object v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lzi/m8;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 4

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/x;->d(Landroid/content/Context;Lzi/m8;)Lzi/c9;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lzi/m8;->a:Lzi/q7;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/b1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lzi/m8;->c()Lzi/q7;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message arrived: processing an arrived message, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/c0;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lzi/m8;->v()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "message arrived: receiving an un-encrypt message(SendMessage)."

    :goto_0
    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    return-object p2

    :cond_2
    check-cast v0, Lzi/u8;

    invoke-virtual {v0}, Lzi/u8;->c()Lzi/c8;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "message arrived: receive an empty message without push content, drop it"

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lzi/m8;->h:Lzi/d8;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object p2, p1, Lzi/m8;->h:Lzi/d8;

    iget-object p2, p2, Lzi/d8;->j:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Lzi/u8;Lzi/d8;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setArrivedMessage(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receive a message, msgid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lzi/c8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jobkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lpi/c;->n(Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    const-string p1, "message arrived: receive a message which action string is not valid. is the reg expired?"

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    const-string p1, "message arrived: receive a message but decrypt failed. report when click."

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b0;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/b0;->b:Lcom/xiaomi/mipush/sdk/b0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/b0;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/b0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/b0;->b:Lcom/xiaomi/mipush/sdk/b0;

    :cond_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/b0;->b:Lcom/xiaomi/mipush/sdk/b0;

    return-object p0
.end method

.method private g()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_reinitialize"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v5, Lzi/e8;->c:Lzi/e8;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/n;->G(Landroid/content/Context;Lzi/e8;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private h(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/o0;)V
    .locals 4

    const-class v0, Lcom/xiaomi/mipush/sdk/v;

    invoke-static {p4}, Lcom/xiaomi/mipush/sdk/v0;->a(Lcom/xiaomi/mipush/sdk/o0;)Lcom/xiaomi/mipush/sdk/j0;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-nez p2, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/v;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    const-string p1, "syncing"

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p1

    const-string p2, "synced"

    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/mipush/sdk/v;->d(Lcom/xiaomi/mipush/sdk/j0;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p2, "syncing"

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/v;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/v;->a(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0xa

    if-ge p2, p3, :cond_3

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/v;->g(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p2

    const-string p3, "retry"

    invoke-virtual {p2, p1, v1, p4, p3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    :cond_4
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_5
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/v;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private i(Lzi/h8;)V
    .locals 7

    invoke-virtual {p1}, Lzi/h8;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive ack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->y(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/h8;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "real_source"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ack : messageId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  realSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpi/c;->y(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lzi/h1;->d(Landroid/content/Context;)Lzi/h1;

    move-result-object v2

    iget-wide v3, p1, Lzi/h8;->f:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Lzi/h1;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method private j(Lzi/m8;)V
    .locals 4

    const-string v0, "receive a message but decrypt failed. report now."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    new-instance v0, Lzi/q8;

    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v1

    iget-object v1, v1, Lzi/d8;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzi/q8;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lzi/a8;->v:Lzi/a8;

    iget-object v1, v1, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-virtual {p1}, Lzi/m8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    iget-object p1, p1, Lzi/m8;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lzi/q8;->A(Ljava/lang/String;)Lzi/q8;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lzi/q8;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/n;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "regid"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p1

    sget-object v1, Lzi/q7;->j:Lzi/q7;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/d0;->B(Lzi/c9;Lzi/q7;ZLzi/d8;)V

    return-void
.end method

.method private k(Lzi/q8;)V
    .locals 10

    new-instance v1, Lzi/h8;

    invoke-direct {v1}, Lzi/h8;-><init>()V

    sget-object v0, Lzi/a8;->E:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lzi/h8;->n(Ljava/lang/String;)Lzi/h8;

    invoke-virtual {p1}, Lzi/q8;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzi/h8;->e(Ljava/lang/String;)Lzi/h8;

    invoke-virtual {p1}, Lzi/q8;->d()Lzi/f8;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzi/h8;->f(Lzi/f8;)Lzi/h8;

    invoke-virtual {p1}, Lzi/q8;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzi/h8;->l(Ljava/lang/String;)Lzi/h8;

    invoke-virtual {p1}, Lzi/q8;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzi/h8;->s(Ljava/lang/String;)Lzi/h8;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lzi/h8;->d(J)Lzi/h8;

    const-string p1, "success clear push message."

    invoke-virtual {v1, p1}, Lzi/h8;->q(Ljava/lang/String;)Lzi/h8;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v2, Lzi/q7;->j:Lzi/q7;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/mipush/sdk/d0;->F(Lzi/c9;Lzi/q7;ZZLzi/d8;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private l(Lzi/u8;Lzi/m8;)V
    .locals 4

    invoke-virtual {p2}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/d8;->f()Lzi/d8;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/w0;->a(Lzi/d8;)Lzi/d8;

    move-result-object v0

    :cond_0
    new-instance v1, Lzi/g8;

    invoke-direct {v1}, Lzi/g8;-><init>()V

    invoke-virtual {p1}, Lzi/u8;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/g8;->i(Ljava/lang/String;)Lzi/g8;

    invoke-virtual {p1}, Lzi/u8;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/g8;->c(Ljava/lang/String;)Lzi/g8;

    invoke-virtual {p1}, Lzi/u8;->c()Lzi/c8;

    move-result-object v2

    invoke-virtual {v2}, Lzi/c8;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzi/g8;->b(J)Lzi/g8;

    invoke-virtual {p1}, Lzi/u8;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lzi/u8;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/g8;->l(Ljava/lang/String;)Lzi/g8;

    :cond_1
    invoke-virtual {p1}, Lzi/u8;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lzi/u8;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzi/g8;->o(Ljava/lang/String;)Lzi/g8;

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lzi/b9;->c(Landroid/content/Context;Lzi/m8;)S

    move-result p1

    invoke-virtual {v1, p1}, Lzi/g8;->d(S)Lzi/g8;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p1

    sget-object p2, Lzi/q7;->g:Lzi/q7;

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaomi/mipush/sdk/d0;->z(Lzi/c9;Lzi/q7;Lzi/d8;)V

    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lcom/xiaomi/mipush/sdk/b0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "pref_msg_ids"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    sget-object v6, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v1, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/16 v1, 0x19

    if-le p1, v1, :cond_2

    sget-object p1, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/xiaomi/mipush/sdk/b0;->c:Ljava/util/Queue;

    const-string v1, ","

    invoke-static {p1, v1}, Lzi/q0;->d(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_msg_ids"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lzi/ea;->a(Landroid/content/SharedPreferences$Editor;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private n(Lzi/m8;)Z
    .locals 2

    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object p1

    invoke-virtual {p1}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v1, "push_server_action"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "hybrid_message"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "platform_message"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private o(Lzi/h8;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASSEMBLE_PUSH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/h8;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/h8;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzi/h8;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "RegInfo"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/mipush/sdk/w;->c:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ASSEMBLE_PUSH : receive fcm token sync ack"

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/o0;->c:Lcom/xiaomi/mipush/sdk/o0;

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mipush/sdk/s0;->m(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    iget-wide v1, p1, Lzi/h8;->f:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/b0;->h(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/o0;)V

    goto/16 :goto_3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/mipush/sdk/w;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/mipush/sdk/w;->d:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/mipush/sdk/w;->e:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    const-string v2, "ASSEMBLE_PUSH : receive FTOS token sync ack"

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/o0;->e:Lcom/xiaomi/mipush/sdk/o0;

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v2, "ASSEMBLE_PUSH : receive COS token sync ack"

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/o0;->d:Lcom/xiaomi/mipush/sdk/o0;

    goto/16 :goto_0

    :cond_5
    :goto_2
    const-string v2, "ASSEMBLE_PUSH : receive hw token sync ack"

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/o0;->b:Lcom/xiaomi/mipush/sdk/o0;

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private p(Lzi/m8;)V
    .locals 4

    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/d8;->f()Lzi/d8;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/w0;->a(Lzi/d8;)Lzi/d8;

    move-result-object v0

    :cond_0
    new-instance v1, Lzi/g8;

    invoke-direct {v1}, Lzi/g8;-><init>()V

    invoke-virtual {p1}, Lzi/m8;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/g8;->i(Ljava/lang/String;)Lzi/g8;

    invoke-virtual {v0}, Lzi/d8;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/g8;->c(Ljava/lang/String;)Lzi/g8;

    invoke-virtual {v0}, Lzi/d8;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzi/g8;->b(J)Lzi/g8;

    invoke-virtual {v0}, Lzi/d8;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lzi/d8;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/g8;->l(Ljava/lang/String;)Lzi/g8;

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lzi/b9;->c(Landroid/content/Context;Lzi/m8;)S

    move-result p1

    invoke-virtual {v1, p1}, Lzi/g8;->d(S)Lzi/g8;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p1

    sget-object v2, Lzi/q7;->g:Lzi/q7;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/xiaomi/mipush/sdk/d0;->B(Lzi/c9;Lzi/q7;ZLzi/d8;)V

    return-void
.end method

.method private q(Lzi/q8;)V
    .locals 8

    invoke-virtual {p1}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "detect failed because null"

    :goto_0
    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "pkgList"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/b0;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "detect failed because empty"

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lzi/m5;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "alive"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "notAlive"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lzi/q8;

    invoke-direct {v6}, Lzi/q8;-><init>()V

    invoke-virtual {p1}, Lzi/q8;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    invoke-virtual {p1}, Lzi/q8;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    invoke-virtual {p1}, Lzi/q8;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lzi/q8;->A(Ljava/lang/String;)Lzi/q8;

    sget-object p1, Lzi/a8;->m0:Lzi/a8;

    iget-object p1, p1, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v6, p1}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v6, Lzi/q8;->h:Ljava/util/Map;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reportNotAliveApp"

    const-string v3, "false"

    invoke-static {v0, p1, v3}, Lcom/xiaomi/push/service/b0;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v6, Lzi/q8;->h:Ljava/util/Map;

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p1

    sget-object v0, Lzi/q7;->j:Lzi/q7;

    const/4 v1, 0x0

    invoke-virtual {p1, v6, v0, v1, v2}, Lcom/xiaomi/mipush/sdk/d0;->B(Lzi/c9;Lzi/q7;ZLzi/d8;)V

    goto :goto_1

    :cond_3
    const-string p1, "detect failed because no alive process"

    invoke-static {p1}, Lpi/c;->y(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "detect failed because get status illegal"

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive an intent from server, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    const-string v1, "mrt"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "messageId"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    const-string v4, "eventMessageType"

    invoke-virtual {v9, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v3, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "mipush_payload"

    const/4 v10, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_10

    invoke-virtual {v9, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    const-string v0, "mipush_notified"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v4, :cond_1

    const-string v0, "receiving an empty message, drop"

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "12"

    invoke-virtual {v0, v1, v9, v2}, Lzi/q4;->d(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-object v10

    :cond_1
    new-instance v0, Lzi/m8;

    invoke-direct {v0}, Lzi/m8;-><init>()V

    :try_start_0
    invoke-static {v0, v4}, Lzi/b9;->d(Lzi/c9;[B)V

    iget-object v11, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v11

    invoke-virtual {v0}, Lzi/m8;->d()Lzi/d8;

    move-result-object v12

    invoke-virtual {v0}, Lzi/m8;->c()Lzi/q7;

    move-result-object v13

    sget-object v14, Lzi/q7;->f:Lzi/q7;

    if-ne v13, v14, :cond_3

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/m0;->w()Z

    move-result v13

    if-nez v13, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v12, v1, v2}, Lzi/d8;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lzi/d8;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Lcom/xiaomi/mipush/sdk/b0;->n(Lzi/m8;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {v8, v0}, Lcom/xiaomi/mipush/sdk/b0;->p(Lzi/m8;)V

    goto :goto_0

    :cond_2
    const-string v1, "this is a mina\'s message, ack later"

    invoke-static {v1}, Lpi/c;->y(Ljava/lang/String;)V

    const-string v1, "__hybrid_message_ts"

    invoke-virtual {v12}, Lzi/d8;->c()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lzi/d8;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "__hybrid_device_status"

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lzi/b9;->c(Landroid/content/Context;Lzi/m8;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lzi/d8;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lzi/m8;->c()Lzi/q7;

    move-result-object v1
    :try_end_0
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    const/4 v13, 0x2

    const/4 v15, 0x1

    if-ne v1, v14, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lzi/m8;->v()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->L(Lzi/m8;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "drop an un-encrypted wake-up messages. %1$s, %2$s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lzi/d8;->d()Ljava/lang/String;

    move-result-object v2

    :cond_4
    aput-object v2, v4, v15

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v1

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "13: %1$s"

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v0}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v2, v9, v4}, Lzi/q4;->d(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "drop an un-encrypted messages. %1$s, %2$s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lzi/d8;->d()Ljava/lang/String;

    move-result-object v2

    :cond_6
    aput-object v2, v4, v15

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v1

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "14: %1$s"

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v0}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_2
    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/xiaomi/mipush/sdk/z0;->c(Landroid/content/Context;Lzi/m8;Z)V

    return-object v10

    :cond_7
    invoke-virtual {v0}, Lzi/m8;->c()Lzi/q7;

    move-result-object v1

    if-ne v1, v14, :cond_a

    invoke-virtual {v0}, Lzi/m8;->v()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->L(Lzi/m8;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v3, :cond_8

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v1

    const-string v14, "notify_effect"

    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const-string v1, "drop a wake-up messages which not has \'notify_effect\' attr. %1$s, %2$s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lzi/d8;->d()Ljava/lang/String;

    move-result-object v2

    :cond_9
    aput-object v2, v4, v15

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v1

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "25: %1$s"

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v0}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v9, v4}, Lzi/q4;->d(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/xiaomi/mipush/sdk/z0;->e(Landroid/content/Context;Lzi/m8;Z)V

    return-object v10

    :cond_a
    :goto_3
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/m0;->s()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lzi/m8;->a:Lzi/q7;

    sget-object v2, Lzi/q7;->b:Lzi/q7;

    if-eq v1, v2, :cond_c

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->L(Lzi/m8;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/b0;->c(Lzi/m8;Z[BLjava/lang/String;ILandroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/xiaomi/mipush/sdk/z0;->h(Landroid/content/Context;Lzi/m8;Z)V

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/m0;->u()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message without registration. need re-register!registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->D(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v1

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "15"

    invoke-virtual {v1, v2, v9, v3}, Lzi/q4;->d(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/b0;->g()V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/m0;->s()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/m0;->x()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lzi/m8;->a:Lzi/q7;

    sget-object v2, Lzi/q7;->c:Lzi/q7;

    if-ne v1, v2, :cond_e

    invoke-virtual {v0}, Lzi/m8;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/m0;->e()V

    iget-object v0, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->l(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_6

    :cond_d
    const-string v0, "receiving an un-encrypt unregistration message"

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/xiaomi/mipush/sdk/z0;->h(Landroid/content/Context;Lzi/m8;Z)V

    iget-object v0, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->g0(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/b0;->c(Lzi/m8;Z[BLjava/lang/String;ILandroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object v0
    :try_end_1
    .catch Lzi/h9; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v1

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "17"

    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v1, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v1

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "16"

    :goto_4
    invoke-virtual {v1, v2, v9, v3}, Lzi/q4;->d(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_10
    const-string v1, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    new-instance v1, Lzi/m8;

    invoke-direct {v1}, Lzi/m8;-><init>()V

    :try_start_2
    invoke-virtual {v9, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-static {v1, v2}, Lzi/b9;->d(Lzi/c9;[B)V
    :try_end_2
    .catch Lzi/h9; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_11
    invoke-virtual {v1}, Lzi/m8;->c()Lzi/q7;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    const-string v1, "mipush_error_code"

    invoke-virtual {v9, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setResultCode(J)V

    const-string v2, "mipush_error_msg"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive a error message. code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg= "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->D(Ljava/lang/String;)V

    return-object v0

    :cond_12
    const-string v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v9, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "message arrived: receiving an empty message, drop"

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    return-object v10

    :cond_13
    new-instance v1, Lzi/m8;

    invoke-direct {v1}, Lzi/m8;-><init>()V

    :try_start_3
    invoke-static {v1, v0}, Lzi/b9;->d(Lzi/c9;[B)V

    iget-object v2, v8, Lcom/xiaomi/mipush/sdk/b0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaomi/push/service/o;->L(Lzi/m8;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v0, "message arrived: receive ignore reg message, ignore!"

    :goto_5
    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->s()Z

    move-result v3

    if-nez v3, :cond_15

    const-string v0, "message arrived: receive message without registration. need unregister or re-register!"

    goto :goto_5

    :cond_15
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->s()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->x()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v0, "message arrived: app info is invalidated"

    goto :goto_5

    :cond_16
    invoke-direct {v8, v1, v0}, Lcom/xiaomi/mipush/sdk/b0;->d(Lzi/m8;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to deal with arrived message. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_17
    :goto_6
    return-object v10
.end method

.method public f(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x5a0

    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v15, 0x3c

    mul-long/2addr v8, v15

    add-long/2addr v8, v11

    sub-long/2addr v8, v3

    add-long/2addr v8, v1

    rem-long/2addr v8, v1

    mul-long/2addr v13, v15

    add-long/2addr v13, v6

    sub-long/2addr v13, v3

    add-long/2addr v13, v1

    rem-long/2addr v13, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    div-long v3, v8, v15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    rem-long/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "%1$02d:%2$02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [Ljava/lang/Object;

    div-long v6, v13, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    rem-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
