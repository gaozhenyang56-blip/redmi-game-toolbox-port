.class public Ljd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljd/e$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ljd/e$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ljd/e;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljd/e;->f(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Ljd/e;->g(Landroid/content/Context;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lgd/c;->t0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Ljd/c;->e()Ljd/d;

    move-result-object v0

    invoke-virtual {v0}, Ljd/d;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljd/d;->b()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-lez v4, :cond_0

    const v4, 0x7f120440

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    const v2, 0x7f120441

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const v2, 0x7f12043f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const v0, 0x7f12043e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Ljd/e;->a:Landroid/os/Handler;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120f27

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.miui.securitycenter"

    const/4 v2, 0x5

    invoke-static {v0, v1, p0, v2}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    const p0, 0x7839e9b5

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static f(Landroid/content/Context;II)V
    .locals 7

    sget-object v0, Ljd/e;->a:Landroid/os/Handler;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "power_shutdown_ontime"

    const-string v2, "power_shutdown_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7839e9b5

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120379

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.miui.powercenter.high"

    invoke-virtual {v4, v6, v5}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    const v5, 0x7f08089f

    invoke-virtual {v4, v5}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v4

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_0

    const v5, 0x7f0808a0

    :cond_0
    invoke-virtual {v4, v5}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->d(Z)Lw4/b$b;

    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000ee

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v0, p2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-static {p0}, Ljd/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.miui.powercenter.CANCEL_SHUTDOWN"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f1212a0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    invoke-virtual {v3, p1}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v3, v1}, Lw4/b$b;->d(Z)Lw4/b$b;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/2addr p1, v4

    const-string p2, "miui.showAction"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, p0}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    const v0, 0x7f12164a

    if-ne p1, p2, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f12164b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v3, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {v3, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f12164c

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    :cond_3
    return-void
.end method

.method private static g(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/os/Message;->arg1:I

    sget-object p0, Ljd/e;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljd/e;->f(Landroid/content/Context;II)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljd/e;->f(Landroid/content/Context;II)V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Ljd/e;->f(Landroid/content/Context;II)V

    invoke-static {p0, v1}, Ljd/e;->g(Landroid/content/Context;I)V

    invoke-static {}, Lhd/a;->s1()V

    return-void
.end method
