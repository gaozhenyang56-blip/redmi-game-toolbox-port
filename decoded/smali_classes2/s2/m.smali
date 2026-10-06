.class public Ls2/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lx4/k1;->h(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lx4/k1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPrivacyInputMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",UserId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserSwitchReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, v0, v1}, Lx4/k1;->r(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-class v0, Landroid/content/Intent;

    const-string v1, "UserSwitchReceiver"

    const-string v2, "ACTION_USER_SWITCHED"

    invoke-static {v1, v0, v2}, Lbh/e;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Landroid/content/Intent;

    const-string v2, "EXTRA_USER_HANDLE"

    invoke-static {v1, v0, v2}, Lbh/e;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-static {}, Lo2/h;->r()Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_0

    const-string v0, "action_register_foreground_notification"

    goto :goto_0

    :cond_0
    const-string v0, "action_unregister_foreground_notification"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/miui/permcenter/o$a;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Ls2/m;->a(Landroid/content/Context;I)V

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/securitycenter/Application;->N()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/permcenter/o;->A()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object p1

    invoke-virtual {p1}, Lkc/q;->V()V

    :cond_2
    return-void
.end method
