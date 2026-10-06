.class public Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    const/4 p1, 0x1

    sput-boolean p1, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d0;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->x()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.push.network_status_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/push/service/a;->h(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/a;->i(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Lzi/i7;->h(Landroid/content/Context;)V

    invoke-static {p1}, Lzi/h0;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d0;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/d0;->R()V

    :cond_1
    invoke-static {p1}, Lzi/h0;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/j0;->a:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/n;->r(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->b:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/n;->s(Landroid/content/Context;)V

    :cond_3
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->c:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "net"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v5, Lcom/xiaomi/mipush/sdk/o0;->b:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    :cond_4
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v5, Lcom/xiaomi/mipush/sdk/j0;->d:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v5}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v5, Lcom/xiaomi/mipush/sdk/o0;->b:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    :cond_5
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->e:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v5, Lcom/xiaomi/mipush/sdk/o0;->d:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    :cond_6
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v;->b(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/j0;->f:Lcom/xiaomi/mipush/sdk/j0;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/v;->c(Lcom/xiaomi/mipush/sdk/j0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/o0;->e:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/xiaomi/mipush/sdk/d0;->t(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/j0;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/xiaomi/mipush/sdk/g;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/g;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/g;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/g;->b(Landroid/content/Context;)V

    :cond_8
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/f;->b(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-boolean p2, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lzi/h0;->r()V

    invoke-static {}, Lzi/aa;->e()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/xiaomi/push/service/receivers/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/receivers/a;-><init>(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
