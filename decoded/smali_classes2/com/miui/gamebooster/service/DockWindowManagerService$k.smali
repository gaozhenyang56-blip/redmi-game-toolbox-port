.class Lcom/miui/gamebooster/service/DockWindowManagerService$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v1, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    invoke-virtual {v0}, Lve/g;->o()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->z(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    invoke-virtual {v0}, Lve/g;->B()V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {v0}, Ls8/h;->i1()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {v0}, Ls8/h;->W0()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->a0(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->b0(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->c0(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
