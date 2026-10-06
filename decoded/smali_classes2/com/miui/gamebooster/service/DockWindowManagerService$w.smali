.class Lcom/miui/gamebooster/service/DockWindowManagerService$w;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$w;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$w;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$w;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->o(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    :cond_0
    return-void
.end method
