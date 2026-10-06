.class Lcom/miui/gamebooster/service/DockWindowManagerService$a;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v1, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n0()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Le7/b;->k(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
