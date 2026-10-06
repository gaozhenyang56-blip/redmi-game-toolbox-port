.class Lcom/miui/permcenter/monitor/AppUsagePersistService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/monitor/AppUsagePersistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/monitor/AppUsagePersistService;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/monitor/AppUsagePersistService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService$a;->a:Lcom/miui/permcenter/monitor/AppUsagePersistService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe13

    if-eq v0, v1, :cond_1

    const/16 p1, 0xe14

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService$a;->a:Lcom/miui/permcenter/monitor/AppUsagePersistService;

    invoke-static {p1}, Lcom/miui/permcenter/monitor/AppUsagePersistService;->c(Lcom/miui/permcenter/monitor/AppUsagePersistService;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService$a;->a:Lcom/miui/permcenter/monitor/AppUsagePersistService;

    invoke-static {v1}, Lcom/miui/permcenter/monitor/AppUsagePersistService;->b(Lcom/miui/permcenter/monitor/AppUsagePersistService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService$a;->a:Lcom/miui/permcenter/monitor/AppUsagePersistService;

    invoke-static {v2}, Lcom/miui/permcenter/monitor/AppUsagePersistService;->b(Lcom/miui/permcenter/monitor/AppUsagePersistService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService$a;->a:Lcom/miui/permcenter/monitor/AppUsagePersistService;

    invoke-static {v3}, Lcom/miui/permcenter/monitor/AppUsagePersistService;->b(Lcom/miui/permcenter/monitor/AppUsagePersistService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
