.class public La8/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lof/i$d;
    .locals 1

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, La8/l1;->d(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    iput-object p0, v0, Lof/i$d;->a:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lof/i$d;->h:Z

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lof/i$d;
    .locals 1

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    iput-object p0, v0, Lof/i$d;->a:Ljava/lang/String;

    iput-object p1, v0, Lof/i$d;->b:Ljava/lang/String;

    const p0, 0x7f0805ea

    iput p0, v0, Lof/i$d;->c:I

    iput-object p2, v0, Lof/i$d;->d:Ljava/lang/String;

    if-ltz p3, :cond_0

    int-to-long p0, p3

    iput-wide p0, v0, Lof/i$d;->i:J

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lof/i$d;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lof/i$d;->f:J

    iput p4, v0, Lof/i$d;->g:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lof/i$d;->h:Z

    return-object v0
.end method

.method private static c(Landroid/content/Context;II)I
    .locals 1

    const-string v0, "GameBooster"

    invoke-static {p0, v0, p1, p2}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.miui.securitycenter_com.miui.gamebooster_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.gamebooster.action.MI_PUSH_GAMEBOOSTER_HOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "param_xunyou_net_channel"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "force_show_game_award"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gamebooster_entrance"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, La8/g0;->Y()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "jump_target"

    const-string v1, "gamebox"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "enter_homepage_way"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x0

    const/high16 p2, 0xc000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const v0, 0x7f100009

    invoke-virtual {p2, v0, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f1200b8

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p3, "noti_enter_gameadd"

    const-string v0, "push_add"

    invoke-static {p0, p3, v0}, La8/l1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    const p3, 0x7f12043a

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x2712

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, La8/l1;->j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 p3, 0x2712

    invoke-static {p3}, La8/l1;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, p3, v1}, La8/l1;->c(Landroid/content/Context;II)I

    move-result p3

    const-string v1, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-static {v0, v1, p2, p1, p3}, La8/l1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lof/i$d;

    move-result-object p1

    invoke-static {p0, p1}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    const-string p0, "NotificationHelper"

    const-string p1, "Add Notification has shown!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "noti_gameadd"

    const-string p1, "show"

    invoke-static {p0, p1}, Lcom/miui/gamebooster/utils/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0, p2}, Lw4/b$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {v0, p3}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {v0, p5}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    const p2, 0x7f0805ea

    invoke-virtual {v0, p2}, Lw4/b$b;->q(I)Lw4/b$b;

    const p2, 0x7f0805e9

    invoke-virtual {v0, p2}, Lw4/b$b;->v(I)Lw4/b$b;

    invoke-virtual {v0, p6}, Lw4/b$b;->m(I)Lw4/b$b;

    invoke-virtual {v0, p4}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v0, p1}, Lw4/b$b;->r(I)Lw4/b$b;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120932

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.miui.gamebooster"

    invoke-virtual {v0, p1, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Lw4/b$b;->l(I)Lw4/b$b;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v0, p0}, Lw4/b$b;->p(Z)Lw4/b$b;

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method private static j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8

    const v6, 0x7f0805e8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, La8/l1;->i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 9

    const v0, 0x7f1209ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1209fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, La8/l1;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x4e24

    const-string v6, ""

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, La8/l1;->i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/Boolean;)V

    const-string p0, "NotificationHelper"

    const-string v0, "Game Award Notification has shown!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "noti_game_award"

    const-string v0, "show"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const v0, 0x7f120a96

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "noti_enter_predownload"

    const-string v0, "push_predownload"

    invoke-static {p0, p1, v0}, La8/l1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v4, 0x4e22

    const-string v8, ""

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p2

    invoke-static/range {v3 .. v10}, La8/l1;->i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/Boolean;)V

    const-string p0, "NotificationHelper"

    const-string p1, "Predownload Notification has shown!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "noti_predownload"

    const-string p1, "show"

    invoke-static {p0, p1}, Lcom/miui/gamebooster/utils/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120aca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ac9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "noti_enter_sign"

    const-string v2, "push_sign"

    invoke-static {p0, v1, v2}, La8/l1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    const v1, 0x7f12155a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v3, 0x2713

    move-object v2, p0

    move-object v4, v0

    invoke-static/range {v2 .. v8}, La8/l1;->j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v1, 0x2713

    invoke-static {v1}, La8/l1;->d(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v1, v3}, La8/l1;->c(Landroid/content/Context;II)I

    move-result v1

    const-string v3, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    const/4 v4, -0x1

    invoke-static {v2, v3, v0, v4, v1}, La8/l1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lof/i$d;

    move-result-object v0

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    const-string p0, "noti_sign"

    const-string v0, "show"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "NotificationHelper"

    const-string v0, "Sign Notification has shown!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/l1;->e()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v4, 0x4e23

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v10}, La8/l1;->i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100036

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, p4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x4e23

    invoke-static {p2}, La8/l1;->d(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, p2, v1}, La8/l1;->c(Landroid/content/Context;II)I

    move-result p2

    invoke-static {p4, v0, p1, p3, p2}, La8/l1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lof/i$d;

    move-result-object p1

    invoke-static {p0, p1}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    const-string p0, "NotificationHelper"

    const-string p1, "expiring soon Notification has shown!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
