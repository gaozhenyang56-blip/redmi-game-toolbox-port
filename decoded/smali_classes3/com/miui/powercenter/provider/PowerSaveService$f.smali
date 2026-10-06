.class Lcom/miui/powercenter/provider/PowerSaveService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/provider/PowerSaveService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    iput-object p2, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.action.CHANGE_POWER_MODE_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    const-string v2, "extra_key_power_mode_open"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lme/w;->C0(Landroid/content/Context;Z)V

    const-string v1, "Alarm"

    invoke-static {v0, v1}, Lhd/a;->b1(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lie/a;->f(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.TIME_AUTO_TASK_ALARM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "task_restore"

    const-wide/16 v3, 0x0

    const-string v5, "task_id"

    const-string v6, "PowerSaveService"

    if-eqz v0, :cond_1

    const-string v0, "ACTION_TIME_AUTO_TASK_ALARM"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v1, v3, v4, v0}, Lcom/miui/powercenter/autotask/b;->e(Landroid/content/Context;JZ)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.miui.powercenter.action.APPLY_AUTO_TASK_ALARM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ACTION_APPLY_AUTO_TASK_ALARM"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    const-string v5, "hide_notification"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v2, v3, v4, v0}, Lcom/miui/powercenter/autotask/b;->c(Landroid/content/Context;JZ)V

    if-eqz v1, :cond_10

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.CANCEL_APPLY_AUTO_TASK_ALARM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ACTION_CANCEL_APPLY_AUTO_TASK_ALARM"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/powercenter/autotask/b;->a(Landroid/content/Context;J)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.APPLY_AUTO_TASK_NOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ACTION_APPLY_AUTO_TASK_NOW"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v0, v2, v3, v1}, Lcom/miui/powercenter/autotask/b;->c(Landroid/content/Context;JZ)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/h;->f(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.CLEAN_CLOUD_WHITE_LIST_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ACTION_CLEAN_CLOUD_WHITE_LIST_UPDATED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->i(Lcom/miui/powercenter/provider/PowerSaveService;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.TRY_CLOSE_SAVE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ACTION_TRY_CLOSE_SAVE_MODE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lgd/c;->F0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lie/a;->e()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_6
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/provider/PowerSaveService;->k(Lcom/miui/powercenter/provider/PowerSaveService;Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.ENTERSUPERPOWER_FROMNOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "enter superpower from notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-static {v0}, Lpg/e;->h(Ljava/lang/String;)V

    invoke-static {}, Lhd/a;->h0()V

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ljg/e;->W(ZZ)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.BATTERYHISTORY_RECORD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/k;->o(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/k;->f()V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.BATTERYHISTORY_CHECKRESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/k;->o(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/k;->j()V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.ACTION_RECHARGE_ALARM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lmd/h;->F()Lmd/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnd/a;->j(Z)V

    invoke-static {}, Lhd/a;->P()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.ACTION_CHECK_NIGHT_CHARGE_ALARM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lmd/h;->F()Lmd/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmd/h;->s(Landroid/content/Context;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.UNOFFICALBATTERY_WARNING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lgd/c;->V()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lle/b;->c(Landroid/content/Context;)V

    invoke-static {v1}, Lgd/c;->P1(Z)V

    goto :goto_1

    :cond_d
    invoke-static {}, Lgd/c;->V()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lgd/c;->W()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lle/c;->a(Landroid/content/Context;)V

    invoke-static {v1}, Lgd/c;->Q1(Z)V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.action.TURN_ON_FAST_CHARGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.action.TURN_OFF_FAST_CHARGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->e(Lcom/miui/powercenter/provider/PowerSaveService;)Lsd/b;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->e(Lcom/miui/powercenter/provider/PowerSaveService;)Lsd/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lsd/b;->h(Landroid/content/Intent;)V

    :cond_10
    :goto_1
    return-void
.end method
