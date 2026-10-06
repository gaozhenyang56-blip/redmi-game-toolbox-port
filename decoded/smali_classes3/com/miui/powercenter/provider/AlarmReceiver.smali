.class public Lcom/miui/powercenter/provider/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/provider/AlarmReceiver$a;

    invoke-direct {v1, p0, v0}, Lcom/miui/powercenter/provider/AlarmReceiver$a;-><init>(Lcom/miui/powercenter/provider/AlarmReceiver;Landroid/content/Context;)V

    invoke-static {p1, v1}, Lfe/m;->e(Landroid/content/Context;Lfe/m$c;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "key_last_mobile_data_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lzg/a;->a(Landroid/content/Context;)Lzg/a;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lzg/a;->c(Z)V

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string p1, "AlarmReceiver"

    const-string v0, "Enable mobile data"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive broadcast action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.miui.powercenter.action.TRY_ENABLE_MOBILE_DATA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/AlarmReceiver;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    const-string v0, "com.miui.powercenter.action.CLEAN_MEMORY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/AlarmReceiver;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const-string v0, "ACTION_START_WIRELESS_CHARGE_SILENCE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-static {p1}, Lme/f;->n(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const-string v0, "ACTION_END_WIRELESS_CHARGE_SILENCE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
