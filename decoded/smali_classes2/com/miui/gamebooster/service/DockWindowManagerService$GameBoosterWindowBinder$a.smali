.class Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->b5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    iget-object v1, v1, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v1

    invoke-virtual {v1}, Lo7/a;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder$a;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Q(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    :cond_0
    return-void
.end method
