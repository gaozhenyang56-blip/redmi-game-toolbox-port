.class Loi/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loi/c;->k()V
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

    iput-object p1, p0, Loi/c$b;->a:Loi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Loi/c$b;->a:Loi/c;

    invoke-static {v0}, Loi/c;->i(Loi/c;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Loi/c$b;->a:Loi/c;

    invoke-static {v1}, Loi/c;->i(Loi/c;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Loi/c$b;->a:Loi/c;

    invoke-static {v1}, Loi/c;->i(Loi/c;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Loi/c$b;->a:Loi/c;

    invoke-static {v2}, Loi/c;->i(Loi/c;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "com.miui.analytics.ICore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "trackEvents"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Loi/c$b;->a:Loi/c;

    invoke-static {v3}, Loi/c;->d(Loi/c;)Lcom/miui/analytics/ICore;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SysAnalytics"

    const-string v2, "onServiceConnected drain %d pending events"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Loi/c$b;->a:Loi/c;

    invoke-static {v4}, Loi/c;->i(Loi/c;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lni/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Loi/c$b;->a:Loi/c;

    invoke-static {v1}, Loi/c;->i(Loi/c;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SysAnalytics"

    invoke-static {v2}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected drain pending events exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
