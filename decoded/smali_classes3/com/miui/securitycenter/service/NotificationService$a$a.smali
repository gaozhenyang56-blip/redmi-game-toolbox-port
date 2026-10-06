.class Lcom/miui/securitycenter/service/NotificationService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/NotificationService$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/securitycenter/service/NotificationService$a;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService$a;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iput-object p2, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.securitycenter.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    const-string v0, "update_notification"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v0, v0, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->a:Landroid/content/Intent;

    const-string v5, "notify"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->a(Lcom/miui/securitycenter/service/NotificationService;Z)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lk6/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v0, v0, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->c(Lcom/miui/securitycenter/service/NotificationService;I)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v0, v0, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0, v3, v4}, Lcom/miui/securitycenter/service/NotificationService;->e(Lcom/miui/securitycenter/service/NotificationService;J)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "com.miui.securitycenter.action.CLEAR_MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "clear_memory"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.taskmanager.Clear"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v2, v2, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {}, Lx4/t;->g()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/miui/securitycenter/service/NotificationService;->g(Lcom/miui/securitycenter/service/NotificationService;J)J

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v2, v2, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/miui/securitycenter/service/NotificationService;->i(Lcom/miui/securitycenter/service/NotificationService;J)J

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v2, v2, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v2, v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->e(Lcom/miui/securitycenter/service/NotificationService;J)V

    goto :goto_1

    :cond_3
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_4

    invoke-static {}, Lk6/d;->c()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "update_battery"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->a:Landroid/content/Intent;

    const-string v1, "level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->a:Landroid/content/Intent;

    const-string v5, "scale"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v1, v1, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v1}, Lcom/miui/securitycenter/service/NotificationService;->b(Lcom/miui/securitycenter/service/NotificationService;)I

    move-result v1

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$a$a;->c:Lcom/miui/securitycenter/service/NotificationService$a;

    iget-object v1, v1, Lcom/miui/securitycenter/service/NotificationService$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v1, v0}, Lcom/miui/securitycenter/service/NotificationService;->c(Lcom/miui/securitycenter/service/NotificationService;I)I

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
