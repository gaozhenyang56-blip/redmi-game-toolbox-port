.class public Lmf/a;
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

    const-string v0, "ConnectivityChangeReceiver"

    const-string v1, "receive broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v1, "action_update_sc_network_allow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "extra_network_status"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj2/a;->d(Lj2/a$b;)V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr0/a;->d(Landroid/content/Intent;)Z

    invoke-static {p1}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj2/a;->d(Lj2/a$b;)V

    invoke-static {}, Lcom/miui/permcenter/q;->b()V

    :cond_3
    :goto_0
    return-void
.end method
