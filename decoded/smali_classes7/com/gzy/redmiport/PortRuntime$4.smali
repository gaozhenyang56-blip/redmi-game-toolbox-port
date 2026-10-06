.class Lcom/gzy/redmiport/PortRuntime$4;
.super Ljava/lang/Object;
.source "PortRuntime.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/PortRuntime;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 59
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 63
    # getter for: Lcom/gzy/redmiport/PortRuntime;->foreground:Landroid/app/Activity;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$7()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gzy/redmiport/PortRuntime;->access$8(Landroid/app/Activity;)V

    :cond_a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 58
    # getter for: Lcom/gzy/redmiport/PortRuntime;->foreground:Landroid/app/Activity;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$7()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gzy/redmiport/PortRuntime;->access$8(Landroid/app/Activity;)V

    :cond_a
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 54
    invoke-static {p1}, Lcom/gzy/redmiport/PortRuntime;->access$8(Landroid/app/Activity;)V

    .line 55
    # invokes: Lcom/gzy/redmiport/PortRuntime;->requestPermission()V
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$0()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.gamebooster."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/gzy/redmiport/SidebarRuntime;->start(Landroid/content/Context;)V

    .line 57
    :cond_19
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 62
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 60
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 61
    return-void
.end method
