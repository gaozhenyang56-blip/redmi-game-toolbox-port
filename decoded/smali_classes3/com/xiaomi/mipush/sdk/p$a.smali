.class public Lcom/xiaomi/mipush/sdk/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/p$a$a;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/xiaomi/mipush/sdk/p$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Lcom/xiaomi/mipush/sdk/p$a$a;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzi/u7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/mipush/sdk/p$a$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/p$a$a;-><init>(Lcom/xiaomi/mipush/sdk/p$a;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->d:Lcom/xiaomi/mipush/sdk/p$a$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/p$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mipush/sdk/p$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static b()Lcom/xiaomi/mipush/sdk/p$a;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/p$a;->f:Lcom/xiaomi/mipush/sdk/p$a;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/mipush/sdk/p$a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/p$a;->f:Lcom/xiaomi/mipush/sdk/p$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/mipush/sdk/p$a;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/p$a;-><init>()V

    sput-object v1, Lcom/xiaomi/mipush/sdk/p$a;->f:Lcom/xiaomi/mipush/sdk/p$a;

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
    sget-object v0, Lcom/xiaomi/mipush/sdk/p$a;->f:Lcom/xiaomi/mipush/sdk/p$a;

    return-object v0
.end method

.method private d(Lzi/u7;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private f(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d0;->J()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x6c

    if-ge p1, v2, :cond_2

    return v0

    :cond_2
    return v1

    :catch_0
    return v0
.end method

.method private i(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/p$a;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j(Lzi/u7;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/f1;->f(Lzi/u7;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient Send item by PushServiceClient.sendTinyData(ClientUploadDataItem)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u7;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/d0;->w(Lzi/u7;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->d:Lcom/xiaomi/mipush/sdk/p$a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/p$a$a;->e(Lzi/u7;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "context is null, MiTinyDataClientImp.init() failed."

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/p$a;->f(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a;->c:Ljava/lang/Boolean;

    const-string p1, "com.xiaomi.xmpushsdk.tinydataPending.init"

    invoke-virtual {p0, p1}, Lcom/xiaomi/mipush/sdk/p$a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized g(Lzi/u7;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lcom/xiaomi/push/service/f1;->f(Lzi/u7;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lzi/u7;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/p$a;->e()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/p$a;->a:Landroid/content/Context;

    if-eqz v4, :cond_4

    invoke-direct {p0, v4}, Lcom/xiaomi/mipush/sdk/p$a;->i(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    if-nez v3, :cond_b

    if-nez v2, :cond_b

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient Send item immediately."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u7;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/u7;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzi/u7;->E(Ljava/lang/String;)Lzi/u7;

    :cond_7
    invoke-virtual {p1}, Lzi/u7;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/u7;->f(Ljava/lang/String;)Lzi/u7;

    :cond_8
    invoke-virtual {p1}, Lzi/u7;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzi/u7;->C(Ljava/lang/String;)Lzi/u7;

    :cond_9
    invoke-virtual {p1}, Lzi/u7;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lzi/u7;->o(J)Lzi/u7;

    :cond_a
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/p$a;->j(Lzi/u7;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiTinyDataClient Pending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u7;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.xiaomi.xmpushsdk.tinydataPending.channel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    if-eqz v3, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiTinyDataClient Pending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u7;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.xiaomi.xmpushsdk.tinydataPending.init"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiTinyDataClient Pending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u7;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.xiaomi.xmpushsdk.tinydataPending.appId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_e
    :goto_4
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/p$a;->d(Lzi/u7;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient.processPendingList("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->B(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/u7;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/p$a;->g(Lzi/u7;)Z

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
