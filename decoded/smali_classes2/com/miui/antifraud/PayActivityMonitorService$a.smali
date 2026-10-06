.class Lcom/miui/antifraud/PayActivityMonitorService$a;
.super Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antifraud/PayActivityMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antifraud/PayActivityMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/antifraud/PayActivityMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antifraud/PayActivityMonitorService$a;->a:Lcom/miui/antifraud/PayActivityMonitorService;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic o8()V
    .locals 0

    invoke-static {}, Lcom/miui/antifraud/PayActivityMonitorService$a;->p8()V

    return-void
.end method

.method private static synthetic p8()V
    .locals 2

    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antifraud/d;->r(Z)V

    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antifraud/d;->o()V

    return-void
.end method

.method private static synthetic q8()V
    .locals 2

    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antifraud/d;->r(Z)V

    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antifraud/d;->j()V

    return-void
.end method

.method public static synthetic v1()V
    .locals 0

    invoke-static {}, Lcom/miui/antifraud/PayActivityMonitorService$a;->q8()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService$a;->a:Lcom/miui/antifraud/PayActivityMonitorService;

    invoke-static {v0}, Lcom/miui/antifraud/PayActivityMonitorService;->c(Lcom/miui/antifraud/PayActivityMonitorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/antifraud/PayActivityMonitorService$a;->a:Lcom/miui/antifraud/PayActivityMonitorService;

    invoke-static {v1}, Lcom/miui/antifraud/PayActivityMonitorService;->d(Lcom/miui/antifraud/PayActivityMonitorService;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/antifraud/PayActivityMonitorService$a;->a:Lcom/miui/antifraud/PayActivityMonitorService;

    invoke-static {p1}, Lcom/miui/antifraud/PayActivityMonitorService;->e(Lcom/miui/antifraud/PayActivityMonitorService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/antifraud/g;

    invoke-direct {p2}, Lcom/miui/antifraud/g;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/antifraud/PayActivityMonitorService$a;->a:Lcom/miui/antifraud/PayActivityMonitorService;

    invoke-static {p1}, Lcom/miui/antifraud/PayActivityMonitorService;->e(Lcom/miui/antifraud/PayActivityMonitorService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/antifraud/h;

    invoke-direct {p2}, Lcom/miui/antifraud/h;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
