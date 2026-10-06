.class public Lzi/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi/p4$a;
    }
.end annotation


# static fields
.field private static a:Lzi/p4$a;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzi/a8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)I
    .locals 0

    if-lez p0, :cond_0

    add-int/lit16 p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/Enum;)I
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Lzi/q7;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0x3e9

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lzi/a8;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0x7d1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lzi/y4;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0xbb9

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const-string p0, "E100000"

    return-object p0

    :cond_0
    const/16 v0, 0xbb8

    if-ne p0, v0, :cond_1

    const-string p0, "E100002"

    return-object p0

    :cond_1
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_2

    const-string p0, "E100001"

    return-object p0

    :cond_2
    const/16 v0, 0x1770

    if-ne p0, v0, :cond_3

    const-string p0, "E100003"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lqi/a;
    .locals 6

    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    sget-object v1, Lzi/v7;->G0:Lzi/v7;

    invoke-virtual {v1}, Lzi/v7;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/e0;->m(IZ)Z

    move-result v0

    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v1

    sget-object v3, Lzi/v7;->a1:Lzi/v7;

    invoke-virtual {v3}, Lzi/v7;->a()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/push/service/e0;->m(IZ)Z

    move-result v1

    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v2

    sget-object v3, Lzi/v7;->I0:Lzi/v7;

    invoke-virtual {v3}, Lzi/v7;->a()I

    move-result v3

    const v4, 0x15180

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/e0;->a(II)I

    move-result v2

    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v3

    sget-object v5, Lzi/v7;->H0:Lzi/v7;

    invoke-virtual {v5}, Lzi/v7;->a()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/xiaomi/push/service/e0;->a(II)I

    move-result v3

    invoke-static {}, Lqi/a;->b()Lqi/a$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lqi/a$a;->l(Z)Lqi/a$a;

    move-result-object v1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lqi/a$a;->k(J)Lqi/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqi/a$a;->o(Z)Lqi/a$a;

    move-result-object v0

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lqi/a$a;->n(J)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqi/a$a;->h(Landroid/content/Context;)Lqi/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lqi/b;
    .locals 0

    invoke-static {p1}, Lzi/p4;->f(Ljava/lang/String;)Lqi/b;

    move-result-object p0

    iput-object p2, p0, Lqi/b;->h:Ljava/lang/String;

    iput p3, p0, Lqi/b;->i:I

    iput-wide p4, p0, Lqi/b;->j:J

    iput-object p6, p0, Lqi/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Lqi/b;
    .locals 2

    new-instance v0, Lqi/b;

    invoke-direct {v0}, Lqi/b;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Lqi/d;->a:I

    const/16 v1, 0x3e9

    iput v1, v0, Lqi/d;->c:I

    iput-object p0, v0, Lqi/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Lqi/c;
    .locals 2

    new-instance v0, Lqi/c;

    invoke-direct {v0}, Lqi/c;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Lqi/d;->a:I

    iput v1, v0, Lqi/d;->c:I

    const-string v1, "P100000"

    iput-object v1, v0, Lqi/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static h(Landroid/content/Context;IJJ)Lqi/c;
    .locals 0

    invoke-static {}, Lzi/p4;->g()Lqi/c;

    move-result-object p0

    iput p1, p0, Lqi/c;->h:I

    iput-wide p2, p0, Lqi/c;->i:J

    iput-wide p4, p0, Lqi/c;->j:J

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Lzi/u7;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lzi/u7;

    invoke-direct {v0}, Lzi/u7;-><init>()V

    const-string v1, "category_client_report_data"

    invoke-virtual {v0, v1}, Lzi/u7;->z(Ljava/lang/String;)Lzi/u7;

    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lzi/u7;->f(Ljava/lang/String;)Lzi/u7;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lzi/u7;->e(J)Lzi/u7;

    invoke-virtual {v0, p1}, Lzi/u7;->q(Ljava/lang/String;)Lzi/u7;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lzi/u7;->h(Z)Lzi/u7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzi/u7;->o(J)Lzi/u7;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzi/u7;->G(Ljava/lang/String;)Lzi/u7;

    const-string p0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Lzi/u7;->C(Ljava/lang/String;)Lzi/u7;

    invoke-static {}, Lcom/xiaomi/push/service/f1;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzi/u7;->E(Ljava/lang/String;)Lzi/u7;

    const-string p0, "quality_support"

    invoke-virtual {v0, p0}, Lzi/u7;->v(Ljava/lang/String;)Lzi/u7;

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Lzi/a8;
    .locals 7

    sget-object v0, Lzi/p4;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    const-class v0, Lzi/a8;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzi/p4;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lzi/p4;->b:Ljava/util/Map;

    invoke-static {}, Lzi/a8;->values()[Lzi/a8;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lzi/p4;->b:Ljava/util/Map;

    iget-object v6, v4, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    sget-object v0, Lzi/p4;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzi/a8;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lzi/a8;->b:Lzi/a8;

    :goto_2
    return-object p0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lzi/p4;->d(Landroid/content/Context;)Lqi/a;

    move-result-object v0

    invoke-static {p0, v0}, Lri/a;->d(Landroid/content/Context;Lqi/a;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lzi/p4;->i(Landroid/content/Context;Ljava/lang/String;)Lzi/u7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/f1;->f(Lzi/u7;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lzi/p4;->n(Landroid/content/Context;Lzi/u7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static m(Landroid/content/Context;Lqi/a;)V
    .locals 2

    new-instance v0, Lzi/m4;

    invoke-direct {v0, p0}, Lzi/m4;-><init>(Landroid/content/Context;)V

    new-instance v1, Lzi/o4;

    invoke-direct {v1, p0}, Lzi/o4;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, v0, v1}, Lri/a;->a(Landroid/content/Context;Lqi/a;Lsi/a;Lsi/b;)V

    return-void
.end method

.method private static n(Landroid/content/Context;Lzi/u7;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/p4;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/g1;->a(Landroid/content/Context;Lzi/u7;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lzi/p4;->a:Lzi/p4$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lzi/p4$a;->a(Landroid/content/Context;Lzi/u7;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static o(Lzi/p4$a;)V
    .locals 0

    sput-object p0, Lzi/p4;->a:Lzi/p4$a;

    return-void
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
