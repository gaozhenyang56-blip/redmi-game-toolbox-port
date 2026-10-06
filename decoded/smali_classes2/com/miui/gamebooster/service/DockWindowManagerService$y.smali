.class Lcom/miui/gamebooster/service/DockWindowManagerService$y;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$y;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$y;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$y;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-object v2, v1, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    iget v1, v1, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lp7/a;->a(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
