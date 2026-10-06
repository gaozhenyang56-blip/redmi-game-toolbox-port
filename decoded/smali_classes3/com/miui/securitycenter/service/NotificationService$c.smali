.class Lcom/miui/securitycenter/service/NotificationService$c;
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

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$c;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.securitycenter.action.TRACK_NOTIFICATION_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "track_module"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "securitycenter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lgh/b;->e()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const-string v2, "memory_clean"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "miui.intent.action.OPTIMIZE_MANAGE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const-string v2, "config"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "NotificationService"

    if-eqz v2, :cond_4

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_3

    invoke-static {}, Lk6/d;->c()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p2, "gameboost"

    const-string v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$c;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {p1, v3, v4}, Lcom/miui/securitycenter/service/NotificationService;->e(Lcom/miui/securitycenter/service/NotificationService;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "start gameboost failed"

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "miui.intent.action.POWER_MANAGER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "powercenter"

    move-object p2, p1

    :goto_1
    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$c;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiui/securitycenter/utils/SecurityCenterHelper;->collapseStatusPanels(Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    const-string v1, "garbage_clean"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "enter_homepage_way"

    const-string v2, "securityscan_notification"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v1}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    invoke-static {p1, v1, v0}, Lc4/f;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    :goto_2
    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$c;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiui/securitycenter/utils/SecurityCenterHelper;->collapseStatusPanels(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$c;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {p1, v3, v4}, Lcom/miui/securitycenter/service/NotificationService;->e(Lcom/miui/securitycenter/service/NotificationService;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "garbage clean"

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    invoke-static {p2}, Lqf/c;->R0(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
