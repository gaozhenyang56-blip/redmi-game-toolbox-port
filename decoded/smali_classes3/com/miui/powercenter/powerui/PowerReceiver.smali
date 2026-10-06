.class public Lcom/miui/powercenter/powerui/PowerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.OPEN_SAVE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LowBatteryNotification"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lde/j;->x(Landroid/content/Context;)V

    invoke-static {p1}, Lde/j;->q(Landroid/content/Context;)V

    invoke-static {v2, v1}, Lhd/a;->b1(ZLjava/lang/String;)V

    invoke-static {}, Lhd/a;->E0()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.miui.powercenter.powerui_18W_REVERSE_CHARGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lde/j;->w(Landroid/content/Context;)V

    invoke-static {}, Lme/j;->q()Z

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.systemui.CLOSE_SAVE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lde/j;->z(Landroid/content/Context;)V

    invoke-static {p1, v3}, Lme/w;->C0(Landroid/content/Context;Z)V

    invoke-static {v3, v1}, Lhd/a;->b1(ZLjava/lang/String;)V

    invoke-static {}, Lhd/a;->c1()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.CLOSE_PERFORMANCE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lde/j;->y(Landroid/content/Context;)V

    invoke-static {p1, v3, v2}, Lme/w;->A0(Landroid/content/Context;ZZ)V

    const-string p1, "performance_mode_activated_noti"

    invoke-static {v3, p1}, Lhd/a;->W0(ZLjava/lang/String;)V

    invoke-static {}, Lhd/a;->R0()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.powerui.CANCEL_TEMP_NOTIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lde/j;->h(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.powerui.CANCEL_EXTREME_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lde/j;->f(Landroid/content/Context;)V

    invoke-static {p1, v2, v2}, Lme/w;->w0(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.CANCEL_WIRELESS_CHARGE_NOTIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lde/j;->g(Landroid/content/Context;)V

    invoke-static {}, Lgd/c;->I1()V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.CLOSE_SMART_DISCHARGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lmd/c;->b()V

    invoke-static {v3}, Lgd/c;->M2(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.HIGH_FPS_VIDEO_SHOW_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lde/j;->W(Landroid/content/Context;)V

    const-string p1, "dialog"

    invoke-static {p1}, Lhd/a;->t0(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.CAR_HIGH_TEMP_PROTECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lde/j;->Q(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.ACTION_CHARGE_SPECIAL_STAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p2, "USE_STAND"

    invoke-static {p1, p2}, Lde/j;->m0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.miui.powercenter.ACTION_INTELLECT_CHARGE_PROTECT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {p1}, Lme/f;->k(Landroid/content/Context;)V

    const-string p1, "PowerReceiver"

    const-string p2, "ACTION_INTELLECT_PROTECT onReceive: "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_0
    return-void
.end method
