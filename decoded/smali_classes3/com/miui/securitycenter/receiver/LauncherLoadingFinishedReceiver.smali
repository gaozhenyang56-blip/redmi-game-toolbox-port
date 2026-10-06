.class public Lcom/miui/securitycenter/receiver/LauncherLoadingFinishedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "com.miui.home.intent.action.LOADING_FINISHED"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1, p3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    const-string v0, "LauncherLoadingFinishedReceiver"

    if-nez p3, :cond_0

    const-string p1, "Cleaner is not installed"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_7

    sget-object p3, Lcom/miui/securitycenter/receiver/LauncherLoadingFinishedReceiver;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, " Receiver launcher\'s broadcast"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/miui/securityscan/shortcut/d;->r(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result v1

    invoke-static {p1}, Lof/a;->a(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move p3, v3

    :cond_1
    if-eqz p3, :cond_2

    const-string p3, "Remove cleaner shortcut~"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/d;->u(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "Has clean shortcut database,  not extra add~"

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const-string p1, "Need deleted not extra add~"

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lef/x;->D(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p1, "Launcher loading finished not extra add~"

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lof/b;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p1, "New Device not extra add shortcut~"

    goto :goto_0

    :cond_6
    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    invoke-static {p1, v3}, Lef/x;->b0(Landroid/content/Context;Z)V

    const-string p1, "Create cleaner shortcut"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lc4/j;->d(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securitycenter/receiver/LauncherLoadingFinishedReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
