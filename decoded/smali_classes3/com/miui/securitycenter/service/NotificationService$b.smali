.class Lcom/miui/securitycenter/service/NotificationService$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/service/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/service/NotificationService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$b;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "screen_on"

    invoke-static {p1}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$b;->a:Lcom/miui/securitycenter/service/NotificationService;

    const/4 p2, 0x1

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/securitycenter/service/NotificationService;->j(Lcom/miui/securitycenter/service/NotificationService;Z)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "screen_off"

    invoke-static {p1}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$b;->a:Lcom/miui/securitycenter/service/NotificationService;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$b;->a:Lcom/miui/securitycenter/service/NotificationService;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->e(Lcom/miui/securitycenter/service/NotificationService;J)V

    return-void
.end method
