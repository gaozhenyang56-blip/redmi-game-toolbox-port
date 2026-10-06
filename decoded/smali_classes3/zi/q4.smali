.class public Lzi/q4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lzi/q4;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi/q4;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lzi/q4;
    .locals 2

    sget-object v0, Lzi/q4;->b:Lzi/q4;

    if-nez v0, :cond_1

    const-class v0, Lzi/q4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzi/q4;->b:Lzi/q4;

    if-nez v1, :cond_0

    new-instance v1, Lzi/q4;

    invoke-direct {v1, p0}, Lzi/q4;-><init>(Landroid/content/Context;)V

    sput-object v1, Lzi/q4;->b:Lzi/q4;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lzi/q4;->b:Lzi/q4;

    return-object p0
.end method

.method private h(Lqi/d;)V
    .locals 1

    instance-of v0, p1, Lqi/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/q4;->a:Landroid/content/Context;

    check-cast p1, Lqi/c;

    invoke-static {v0, p1}, Lri/a;->c(Landroid/content/Context;Lqi/c;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lqi/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzi/q4;->a:Landroid/content/Context;

    check-cast p1, Lqi/b;

    invoke-static {v0, p1}, Lri/a;->b(Landroid/content/Context;Lqi/b;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;IJJ)V
    .locals 7

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzi/q4;->a:Landroid/content/Context;

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lzi/p4;->h(Landroid/content/Context;IJJ)Lqi/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lqi/d;->a(Ljava/lang/String;)V

    const-string p1, "5_7_8-C"

    invoke-virtual {p2, p1}, Lqi/d;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lzi/q4;->h(Lqi/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "messageId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    const-string v1, "eventMessageType"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lzi/q4;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "messageId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    const-string v1, "eventMessageType"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lzi/p4;->c(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lzi/q4;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzi/q4;->a:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lzi/p4;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lqi/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lqi/d;->a(Ljava/lang/String;)V

    const-string p1, "5_7_8-C"

    invoke-virtual {p2, p1}, Lqi/d;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lzi/q4;->h(Lqi/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lzi/q4;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v4, 0x138a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lzi/q4;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v4, 0x1389

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lzi/q4;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v4, 0xfa2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lzi/q4;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method
