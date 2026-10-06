.class public Lp7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/c$a;,
        Lp7/c$b;
    }
.end annotation


# static fields
.field private static c:Lp7/c;


# instance fields
.field private a:Lmiui/hardware/shoulderkey/ShoulderKeyManager;

.field private b:Lp7/c$b;


# direct methods
.method private constructor <init>()V
    .locals 4

    const-string v0, "ShoulderKeyManagerDelegate: "

    const-string v1, "ShoulderKeyManagerD"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const-string v3, "shoulderkey"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    iput-object v2, p0, Lp7/c;->a:Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp7/c;->a:Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static declared-synchronized a()Lp7/c;
    .locals 2

    const-class v0, Lp7/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp7/c;->c:Lp7/c;

    if-nez v1, :cond_0

    new-instance v1, Lp7/c;

    invoke-direct {v1}, Lp7/c;-><init>()V

    sput-object v1, Lp7/c;->c:Lp7/c;

    :cond_0
    sget-object v1, Lp7/c;->c:Lp7/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e(Ljava/util/Map;)V
    .locals 0
    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public c()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public d()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public f(Lp7/d$b;)V
    .locals 0
    return-void
.end method

.method public g(Lp7/c$a;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lp7/c;->b:Lp7/c$b;

    if-nez v0, :cond_0

    new-instance v0, Lp7/c$b;

    invoke-direct {v0, p1}, Lp7/c$b;-><init>(Lp7/c$a;)V

    iput-object v0, p0, Lp7/c;->b:Lp7/c$b;

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.shoulderkey"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lp7/c;->b:Lp7/c$b;

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public h()V
    .locals 0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lp7/c;->b:Lp7/c$b;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lp7/c;->b:Lp7/c$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp7/c;->b:Lp7/c$b;

    :cond_0
    return-void
.end method

.method public j(Lp7/d$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lp7/c;->f(Lp7/d$b;)V

    return-void
.end method
