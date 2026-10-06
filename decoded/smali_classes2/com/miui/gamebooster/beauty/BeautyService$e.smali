.class Lcom/miui/gamebooster/beauty/BeautyService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/BeautyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/beauty/BeautyService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BeautyService"

    const-string v1, "task Running..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/BeautyService;->E(Lcom/miui/gamebooster/beauty/BeautyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gamebooster/beauty/BeautyService;->r(Lcom/miui/gamebooster/beauty/BeautyService;Z)Z

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {}, La8/s1;->a()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gamebooster/beauty/BeautyService;->t(Lcom/miui/gamebooster/beauty/BeautyService;Z)Z

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v1}, Lcom/miui/gamebooster/beauty/BeautyService;->s(Lcom/miui/gamebooster/beauty/BeautyService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v1}, Lcom/miui/gamebooster/beauty/BeautyService;->u(Lcom/miui/gamebooster/beauty/BeautyService;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v1}, Lcom/miui/gamebooster/beauty/BeautyService;->v(Lcom/miui/gamebooster/beauty/BeautyService;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v1}, Lcom/miui/gamebooster/beauty/BeautyService;->w(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$e;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v1}, Lcom/miui/gamebooster/beauty/BeautyService;->H(Lcom/miui/gamebooster/beauty/BeautyService;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BeautyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskChange fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
