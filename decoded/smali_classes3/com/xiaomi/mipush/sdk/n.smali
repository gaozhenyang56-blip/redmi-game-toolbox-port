.class public abstract Lcom/xiaomi/mipush/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/n$a;,
        Lcom/xiaomi/mipush/sdk/n$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/n;->b:J

    return-void
.end method

.method protected static A(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->d:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/p0;->k(Lcom/xiaomi/mipush/sdk/o0;)Z

    move-result p0

    return p0
.end method

.method protected static B(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->e:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/p0;->k(Lcom/xiaomi/mipush/sdk/o0;)Z

    move-result p0

    return p0
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/m0;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static D(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/mipush/sdk/l;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/l;-><init>()V

    invoke-static {v0}, Lzi/p4;->o(Lzi/p4$a;)V

    invoke-static {p0}, Lzi/p4;->d(Landroid/content/Context;)Lqi/a;

    move-result-object v0

    invoke-static {p0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v1

    const-string v2, "5_7_8-C"

    invoke-virtual {v1, v2}, Lri/b;->h(Ljava/lang/String;)V

    new-instance v1, Lzi/m4;

    invoke-direct {v1, p0}, Lzi/m4;-><init>(Landroid/content/Context;)V

    new-instance v2, Lzi/o4;

    invoke-direct {v2, p0}, Lzi/o4;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lri/a;->a(Landroid/content/Context;Lqi/a;Lsi/a;Lsi/b;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/t;->b(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/a1;->a(Landroid/content/Context;Lqi/a;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/m;

    const/16 v2, 0x64

    const-string v3, "perf event job update"

    invoke-direct {v1, v2, v3, p0}, Lcom/xiaomi/mipush/sdk/m;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/e0;->j(Lcom/xiaomi/push/service/e0$a;)V

    return-void
.end method

.method private static E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "update_devId"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lpi/c;->l(Landroid/content/Context;)V

    const-string v4, "sdk_version = 5_7_8-C"

    invoke-static {v4}, Lpi/c;->E(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lzi/x;->c(Landroid/content/Context;)Lzi/x;

    move-result-object v4

    invoke-virtual {v4}, Lzi/x;->d()V

    invoke-static/range {p0 .. p0}, Lzi/f3;->a(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lcom/xiaomi/mipush/sdk/n$b;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lcom/xiaomi/mipush/sdk/n$a;)V

    :cond_1
    sget-object v4, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v4}, Lzi/ga;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/c1;->b(Landroid/content/Context;)V

    :cond_2
    sget-object v4, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/m0;->a()I

    move-result v4

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->a()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v7

    :goto_0
    if-nez v4, :cond_4

    sget-object v5, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/n;->b0(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d0;->m()V

    const-string v0, "Could not send  register message within 5s repeatly ."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_4
    const v5, 0xc614

    const-string v8, "5_7_8-C"

    if-nez v4, :cond_9

    :try_start_1
    sget-object v9, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/mipush/sdk/m0;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/mipush/sdk/m0;->x()Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/r;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v6, v0, :cond_5

    const-string v0, "callback"

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v10, v1, v0}, Lcom/xiaomi/mipush/sdk/n$b;->c(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lzi/y4;->b:Lzi/y4;

    iget-object v11, v0, Lzi/y4;->a:Ljava/lang/String;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/r;->f(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    :goto_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d0;->m()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lzi/q8;

    invoke-direct {v0}, Lzi/q8;-><init>()V

    sget-object v2, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    sget-object v2, Lzi/a8;->h:Lzi/a8;

    iget-object v2, v2, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lzi/q8;->h:Ljava/util/Map;

    const-string v4, "app_version"

    sget-object v9, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lzi/m5;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lzi/q8;->h:Ljava/util/Map;

    const-string v4, "app_version_code"

    sget-object v9, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lzi/m5;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lzi/q8;->h:Ljava/util/Map;

    const-string v4, "push_sdk_vn"

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lzi/q8;->h:Ljava/util/Map;

    const-string v4, "push_sdk_vc"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lzi/q8;->h:Ljava/util/Map;

    const-string v5, "deviceid"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v2, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v2

    sget-object v4, Lzi/q7;->j:Lzi/q7;

    invoke-virtual {v2, v0, v4, v7, v1}, Lcom/xiaomi/mipush/sdk/d0;->B(Lzi/c9;Lzi/q7;ZLzi/d8;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/d0;->q(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0, v3, v7}, Lzi/q9;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->j0()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0, v3, v6}, Lzi/q9;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_8
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->a0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v2, Lzi/q8;

    invoke-direct {v2}, Lzi/q8;-><init>()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    sget-object v0, Lzi/a8;->k:Lzi/a8;

    iget-object v0, v0, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    invoke-virtual {v2, v7}, Lzi/q8;->h(Z)Lzi/q8;

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v1

    sget-object v3, Lzi/q7;->j:Lzi/q7;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/d0;->C(Lzi/c9;Lzi/q7;ZLzi/d8;Z)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->g(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x6

    invoke-static {v2}, Lzi/q0;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/m0;->e()V

    sget-object v3, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->a()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/xiaomi/mipush/sdk/m0;->f(I)V

    sget-object v3, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/xiaomi/mipush/sdk/m0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/p$a;->b()Lcom/xiaomi/mipush/sdk/p$a;

    move-result-object v3

    const-string v7, "com.xiaomi.xmpushsdk.tinydataPending.appId"

    invoke-virtual {v3, v7}, Lcom/xiaomi/mipush/sdk/p$a;->h(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/n;->l(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/n;->o(Landroid/content/Context;)V

    new-instance v3, Lzi/r8;

    invoke-direct {v3}, Lzi/r8;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/h0;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lzi/r8;->g(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {v3, v0}, Lzi/r8;->o(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {v3, v1}, Lzi/r8;->B(Ljava/lang/String;)Lzi/r8;

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lzi/r8;->y(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {v3, v2}, Lzi/r8;->E(Ljava/lang/String;)Lzi/r8;

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzi/m5;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lzi/r8;->v(Ljava/lang/String;)Lzi/r8;

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzi/m5;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lzi/r8;->n(I)Lzi/r8;

    invoke-virtual {v3, v8}, Lzi/r8;->M(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {v3, v5}, Lzi/r8;->f(I)Lzi/r8;

    sget-object v0, Lzi/e8;->d:Lzi/e8;

    invoke-virtual {v3, v0}, Lzi/r8;->h(Lzi/e8;)Lzi/r8;

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lzi/r8;->H(Ljava/lang/String;)Lzi/r8;

    :cond_a
    invoke-static {}, Lzi/p8;->t()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/o7;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lzi/q0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/o7;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lzi/r8;->P(Ljava/lang/String;)Lzi/r8;

    :cond_b
    invoke-static {}, Lzi/o7;->c()I

    move-result v0

    if-ltz v0, :cond_c

    invoke-virtual {v3, v0}, Lzi/r8;->u(I)Lzi/r8;

    :cond_c
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/d0;->x(Lzi/r8;Z)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mipush_registed"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    :cond_d
    :goto_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->V()V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->U(Landroid/content/Context;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->D(Landroid/content/Context;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/k0;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/xiaomi/mipush/sdk/h;->a()Lpi/a;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/h;->a()Lpi/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/h;->b(Landroid/content/Context;Lpi/a;)V

    :cond_e
    const/4 v0, 0x2

    invoke-static {v0}, Lpi/c;->h(I)V

    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/n;->F(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static F(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/j0;->a:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->r(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->b:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->s(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->c:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "init"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v5, Lcom/xiaomi/mipush/sdk/o0;->b:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->d:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->e0(Landroid/content/Context;)V

    :cond_3
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->e:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v5, Lcom/xiaomi/mipush/sdk/o0;->d:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->f:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->e:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {p0, v4, v2, v0, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static G(Landroid/content/Context;Lzi/e8;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "re-register reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->E(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {v0}, Lzi/q0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/m0;->e()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->m(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->o(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/mipush/sdk/d;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/m0;->f(I)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/xiaomi/mipush/sdk/m0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lzi/r8;

    invoke-direct {v3}, Lzi/r8;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/h0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lzi/r8;->g(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {v3, v1}, Lzi/r8;->o(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {v3, v2}, Lzi/r8;->B(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {v3, v0}, Lzi/r8;->E(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lzi/r8;->y(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzi/m5;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lzi/r8;->v(Ljava/lang/String;)Lzi/r8;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzi/m5;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lzi/r8;->n(I)Lzi/r8;

    const-string v0, "5_7_8-C"

    invoke-virtual {v3, v0}, Lzi/r8;->M(Ljava/lang/String;)Lzi/r8;

    const v0, 0xc614

    invoke-virtual {v3, v0}, Lzi/r8;->f(I)Lzi/r8;

    invoke-virtual {v3, p1}, Lzi/r8;->h(Lzi/e8;)Lzi/r8;

    invoke-static {}, Lzi/o7;->c()I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {v3, p1}, Lzi/r8;->u(I)Lzi/r8;

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/xiaomi/mipush/sdk/d0;->x(Lzi/r8;Z)V

    return-void
.end method

.method private static H(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lzi/aa;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamic register network status receiver failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {p0}, Lzi/h0;->d(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/mipush/sdk/q;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/q;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/mipush/sdk/n;->J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/q;)V

    return-void
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/q;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/n;->K(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/q;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V

    return-void
.end method

.method private static K(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/q;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appID"

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appToken"

    invoke-static {p2, v0}, Lcom/xiaomi/mipush/sdk/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {p0}, Lzi/ga;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->H(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/mipush/sdk/p0;->e(Lcom/xiaomi/mipush/sdk/q;)V

    invoke-static {p0}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object p0

    new-instance p3, Lcom/xiaomi/mipush/sdk/i;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/xiaomi/mipush/sdk/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V

    invoke-virtual {p0, p3}, Lzi/h;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method static declared-synchronized L(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "accept_time"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lzi/ea;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized M(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized N(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized O(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->w(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/n;->M(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized P(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->u(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/n;->N(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized Q(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->v(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/n;->R(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized R(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static S(Landroid/content/Context;Ljava/lang/String;Lzi/d8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v1, Lzi/q8;

    invoke-direct {v1}, Lzi/q8;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "do not report clicked message"

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1, p4}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    const-string v0, "bar:click"

    invoke-virtual {v1, v0}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-virtual {v1, p1}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lzi/q8;->h(Z)Lzi/q8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v2, Lzi/q7;->j:Lzi/q7;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/d0;->E(Lzi/c9;Lzi/q7;ZZLzi/d8;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static T(Landroid/content/Context;Ljava/lang/String;Lzi/d8;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lzi/q8;

    invoke-direct {v0}, Lzi/q8;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/m0;->p()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p0, "do not report clicked message"

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, p3}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    const-string p3, "bar:click"

    invoke-virtual {v0, p3}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-virtual {v0, p1}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lzi/q8;->h(Z)Lzi/q8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    sget-object p3, Lzi/q7;->j:Lzi/q7;

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/xiaomi/mipush/sdk/d0;->B(Lzi/c9;Lzi/q7;ZLzi/d8;)V

    return-void
.end method

.method private static U(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lzi/v7;->A:Lzi/v7;

    invoke-virtual {v0}, Lzi/v7;->a()I

    move-result v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->x()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/e0;->m(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lzi/r3;->b()Lzi/r3;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/y0;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/y0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lzi/r3;->c(Lzi/q3;)V

    sget-object p0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {p0}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object p0

    new-instance v0, Lcom/xiaomi/mipush/sdk/j;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/j;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lzi/h;->h(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method private static V()V
    .locals 4

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    sget-object v1, Lzi/v7;->B:Lzi/v7;

    invoke-virtual {v1}, Lzi/v7;->a()I

    move-result v1

    const v2, 0x15180

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/e0;->a(II)I

    move-result v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/u;

    sget-object v3, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/xiaomi/mipush/sdk/u;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lzi/h;->l(Lzi/h$a;II)Z

    return-void
.end method

.method public static W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lzi/y4;->d:Lzi/y4;

    iget-object v0, v0, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->X(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static X(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lzi/y4;->d:Lzi/y4;

    iget-object v1, v0, Lzi/y4;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/n;->j(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v7, 0x5265c00

    cmp-long v1, v3, v7

    if-gez v1, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/r;->c(Landroid/content/Context;)I

    move-result p2

    if-ne v2, p2, :cond_1

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, v0, Lzi/y4;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 p1, 0x0

    move-object v1, v6

    move-object v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/r;->f(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lzi/y4;->e:Lzi/y4;

    iget-object v0, v0, Lzi/y4;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " is unseted"

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/n;->j(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-gez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t cancel alias for "

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lzi/q0;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lzi/y4;->f:Lzi/y4;

    iget-object v7, v0, Lzi/y4;->a:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x36ee80

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/r;->c(Landroid/content/Context;)I

    move-result p2

    if-ne v2, p2, :cond_1

    goto :goto_0

    :cond_4
    sget-object v0, Lzi/y4;->g:Lzi/y4;

    iget-object v0, v0, Lzi/y4;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p2, v7, v4

    if-gez p2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t cancel account for "

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, v6, p3}, Lcom/xiaomi/mipush/sdk/n;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected static Y(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/k8;

    invoke-direct {v0}, Lzi/k8;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/k8;->c(Ljava/lang/String;)Lzi/k8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/k8;->i(Ljava/lang/String;)Lzi/k8;

    invoke-virtual {v0, p1}, Lzi/k8;->l(Ljava/lang/String;)Lzi/k8;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lzi/k8;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Lzi/k8;->r(Ljava/lang/String;)Lzi/k8;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lzi/k8;->o(Ljava/lang/String;)Lzi/k8;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cmd:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->E(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    sget-object p1, Lzi/q7;->k:Lzi/q7;

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/d0;->z(Lzi/c9;Lzi/q7;Lzi/d8;)V

    return-void
.end method

.method public static Z(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lzi/y4;->f:Lzi/y4;

    iget-object v0, v0, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->X(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a0(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_pull_notification"

    const-wide/16 v4, -0x1

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/xiaomi/mipush/sdk/n;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V

    return-void
.end method

.method private static b0(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_reg_request"

    const-wide/16 v4, -0x1

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c0(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/d0;->J()Z

    move-result p0

    return p0
.end method

.method static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "accept_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lzi/ea;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v5, p1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/n;->f0(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lzi/v8;

    invoke-direct {v0}, Lzi/v8;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/v8;->b(Ljava/lang/String;)Lzi/v8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/v8;->f(Ljava/lang/String;)Lzi/v8;

    invoke-virtual {v0, p1}, Lzi/v8;->h(Ljava/lang/String;)Lzi/v8;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/v8;->j(Ljava/lang/String;)Lzi/v8;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lzi/v8;->l(Ljava/lang/String;)Lzi/v8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lzi/y4;->h:Lzi/y4;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->E(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v1

    sget-object v2, Lzi/q7;->d:Lzi/q7;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/d0;->z(Lzi/c9;Lzi/q7;Lzi/d8;)V

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/r;->c(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide v2, v3

    move-object v4, v6

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lzi/y4;->h:Lzi/y4;

    iget-object v7, v0, Lzi/y4;->a:Ljava/lang/String;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/r;->f(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e0(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/j0;->d:Lcom/xiaomi/mipush/sdk/j0;

    sget-object v1, Lcom/xiaomi/mipush/sdk/o0;->c:Lcom/xiaomi/mipush/sdk/o0;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f0(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_pull_notification"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lzi/ea;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static g0(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s0;->n(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/e0;->h()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/x8;

    invoke-direct {v0}, Lzi/x8;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/x8;->b(Ljava/lang/String;)Lzi/x8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/x8;->g(Ljava/lang/String;)Lzi/x8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/m0;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/x8;->j(Ljava/lang/String;)Lzi/x8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/m0;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/x8;->n(Ljava/lang/String;)Lzi/x8;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/x8;->l(Ljava/lang/String;)Lzi/x8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/d0;->y(Lzi/x8;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->n()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->n(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->o(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->l(Landroid/content/Context;)V

    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_reg_request"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lzi/ea;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static h0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lzi/y4;->g:Lzi/y4;

    iget-object v0, v0, Lzi/y4;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->X(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static i0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/n;->f0(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Don\'t cancel subscribe for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lzi/q0;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unsubscribed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lzi/z8;

    invoke-direct {v0}, Lzi/z8;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/z8;->b(Ljava/lang/String;)Lzi/z8;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/z8;->f(Ljava/lang/String;)Lzi/z8;

    invoke-virtual {v0, p1}, Lzi/z8;->h(Ljava/lang/String;)Lzi/z8;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzi/z8;->j(Ljava/lang/String;)Lzi/z8;

    invoke-virtual {v0, p2}, Lzi/z8;->l(Ljava/lang/String;)Lzi/z8;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cmd:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lzi/y4;->i:Lzi/y4;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->E(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    sget-object p1, Lzi/q7;->e:Lzi/q7;

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/d0;->z(Lzi/c9;Lzi/q7;Lzi/d8;)V

    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alias_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static j0()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/k;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/k;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not nullable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static l(Landroid/content/Context;)V
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .locals 5

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->u(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->w(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->v(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    const-string p0, "accept_time"

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/d0;->b0()V

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/d0;->n(I)V

    return-void
.end method

.method public static p(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mipush/sdk/d0;->n(I)V

    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/d0;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/d0;->H(Z)V

    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/d0;->H(Z)V

    return-void
.end method

.method protected static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "accept_time"

    const-string v1, "00:00-23:59"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static v(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "**ALL**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static w(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static x()Z
    .locals 1

    invoke-static {}, Lzi/p8;->p()Z

    move-result v0

    return v0
.end method

.method protected static y(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->c:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/p0;->k(Lcom/xiaomi/mipush/sdk/o0;)Z

    move-result p0

    return p0
.end method

.method protected static z(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->b:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/p0;->k(Lcom/xiaomi/mipush/sdk/o0;)Z

    move-result p0

    return p0
.end method
