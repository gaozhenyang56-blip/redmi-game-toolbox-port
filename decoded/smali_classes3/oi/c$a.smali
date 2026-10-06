.class Loi/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Loi/c;


# direct methods
.method constructor <init>(Loi/c;)V
    .locals 0

    iput-object p1, p0, Loi/c$a;->a:Loi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Loi/c;->c(Loi/c;Z)Z

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Loi/c;->f(Loi/c;Z)Z

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    invoke-static {p2}, Lcom/miui/analytics/ICore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ICore;

    move-result-object p2

    invoke-static {p1, p2}, Loi/c;->e(Loi/c;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    const-string p1, "SysAnalytics"

    invoke-static {p1}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected %s, pid:%d, tid:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Loi/c$a;->a:Loi/c;

    invoke-static {v3}, Loi/c;->d(Loi/c;)Lcom/miui/analytics/ICore;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    invoke-static {p1}, Loi/c;->g(Loi/c;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Loi/c$a;->a:Loi/c;

    invoke-static {p2}, Loi/c;->g(Loi/c;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "SysAnalytics"

    invoke-static {v0}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected notifyAll exception:"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    invoke-static {p1}, Loi/c;->h(Loi/c;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string p1, "SysAnalytics"

    invoke-static {p1}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "onServiceDisconnected, pid:%d, tid:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    invoke-static {p1, v2}, Loi/c;->c(Loi/c;Z)Z

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loi/c;->e(Loi/c;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    iget-object p1, p0, Loi/c$a;->a:Loi/c;

    invoke-static {p1, v2}, Loi/c;->f(Loi/c;Z)Z

    return-void
.end method
