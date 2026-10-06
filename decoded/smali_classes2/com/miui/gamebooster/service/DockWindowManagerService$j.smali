.class Lcom/miui/gamebooster/service/DockWindowManagerService$j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$j;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pannel receive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DockWindowManagerService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.miui.gamebooster.PANNEL_OPEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$j;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->D(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$j;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->E(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$j;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->D(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    :goto_0
    return-void
.end method
