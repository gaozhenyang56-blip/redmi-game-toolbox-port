.class Lcom/miui/dock/DockMonitorService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/dock/DockMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/DockMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GlobalDock-MonitorService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :goto_1
    :pswitch_0
    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->o(Lcom/miui/dock/DockMonitorService;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/dock/DockMonitorService;->d(Lcom/miui/dock/DockMonitorService;Z)Z

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2}, Lx4/g0;->c(Landroid/content/Context;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/miui/dock/DockMonitorService;->s(Lcom/miui/dock/DockMonitorService;Z)Z

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->u(Lcom/miui/dock/DockMonitorService;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/dock/DockMonitorService;->t(Lcom/miui/dock/DockMonitorService;Z)Z

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->i(Lcom/miui/dock/DockMonitorService;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->q(Lcom/miui/dock/DockMonitorService;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->j(Lcom/miui/dock/DockMonitorService;)V

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$a;->a:Lcom/miui/dock/DockMonitorService;

    invoke-virtual {p1}, Lcom/miui/dock/DockMonitorService;->K()V

    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2
        -0x56ac2893 -> :sswitch_1
        0x311a1d6c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
