.class Lcom/miui/gamebooster/service/DockWindowManagerService$b;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0}, Li6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-object v2, v1, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    iget v1, v1, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    invoke-static {}, La8/z;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Li6/a;->e(Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method
