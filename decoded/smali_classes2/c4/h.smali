.class public Lc4/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc4/h;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc4/h;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "notificationId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    const-string v0, "operation"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p1}, Lc4/h;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lc4/h;->d(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "flag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x7d8

    const-string v3, "garbageSize"

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_2

    const/16 v2, 0xfa0

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b58

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Lc4/q;->l(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v2}, Lc4/q;->l(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lc4/q;->k(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "uselessApkCount"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-le p2, v0, :cond_3

    invoke-static {p1, p2}, Lc4/q;->j(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Lc4/q;->d(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v2}, Lc4/q;->d(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lc4/q;->e(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p2, v0, v4

    if-lez p2, :cond_3

    invoke-static {p1, v0, v1}, Lc4/q;->f(Landroid/content/Context;J)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lc4/q;->i(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lc4/q;->h(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p2, v0, v4

    if-lez p2, :cond_3

    invoke-static {p1, v0, v1}, Lc4/q;->g(Landroid/content/Context;J)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lc4/g;

    invoke-direct {v1, p0, p2, p1}, Lc4/g;-><init>(Lc4/h;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
