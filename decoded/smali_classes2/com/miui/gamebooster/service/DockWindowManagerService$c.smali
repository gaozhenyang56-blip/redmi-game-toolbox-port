.class Lcom/miui/gamebooster/service/DockWindowManagerService$c;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$c;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wonder action:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DockWindowManagerService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.miui.securitycenter.gamebooster.WONDERFULL_FLOAT_MANUAL"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$c;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n1()V

    goto :goto_0

    :cond_1
    const-string p2, "com.miui.securitycenter.gamebooster.WONDERFULL_FLOAT_FINISH"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$c;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->U0()V

    :cond_2
    :goto_0
    return-void
.end method
