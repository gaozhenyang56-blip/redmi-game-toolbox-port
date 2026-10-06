.class public Lcom/miui/powercenter/continuity/ContinuityReceiver;
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
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.CONTINUITY_OPEN_SAVE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "deviceNum"

    const-string v3, "deviceId"

    if-eqz v0, :cond_1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->a(Landroid/content/Context;I)V

    invoke-static {p1}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lpd/c;->u(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lpd/c;->p(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lpd/c;->E(Ljava/lang/String;)V

    :goto_0
    const-string p1, "send_open_save"

    :goto_1
    invoke-static {p1}, Lhd/a;->Z0(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.miui.powercenter.CONTINUITY_CLOSE_SAVE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->b(Landroid/content/Context;I)V

    invoke-static {p1}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lpd/c;->u(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p1

    if-nez p2, :cond_2

    const/4 p2, 0x2

    invoke-virtual {p1, v0, p2}, Lpd/c;->p(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lpd/c;->D(Ljava/lang/String;)V

    :goto_2
    const-string p1, "send_close_save"

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method
