.class public Lw2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/miui/gamebooster/mutiwindow/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw2/b$c;

    invoke-direct {v0}, Lw2/b$c;-><init>()V

    sput-object v0, Lw2/b;->a:Lcom/miui/gamebooster/mutiwindow/b$b;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw2/b;->h(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lw2/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    sget-object v1, Lw2/b;->a:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lw2/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lo2/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lo2/c;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_anti_fraud_auto_scan_apps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lo2/c;->h(Landroid/content/Context;J)V

    return-void
.end method

.method public static d(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lw2/b$a;

    invoke-direct {v0, p0, p1}, Lw2/b$a;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lw2/b$b;

    invoke-direct {v0, p1, p0}, Lw2/b$b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lo2/h;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_anti_fraud_auto_scan_single_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "curPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AntiFraud"

    const-string v0, "hookDetectUnsafeAppStart error, "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static g()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static h(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 12

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    invoke-static {v3}, Lo2/h;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rejectAntiFraudAppsPermission pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AntiFraud"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    invoke-static {p0, v4, v3}, Lcom/miui/permcenter/n;->f(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_2
    move v9, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v8

    :goto_3
    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-array v7, v8, [Ljava/lang/String;

    aput-object v3, v7, v1

    invoke-virtual {v6, v9, v10, v8, v7}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v3, v8}, Lo2/h;->Q(Ljava/lang/String;Z)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static i()V
    .locals 2

    invoke-static {}, Lw2/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    sget-object v1, Lw2/b;->a:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method public static j(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AntiFraud"

    const-string v4, "showDetectAppNotification error, "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Lw4/b$b;

    invoke-direct {v2, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3f5

    invoke-virtual {v2, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    const v4, 0x7f120f27

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.miui.securitycenter"

    invoke-virtual {v2, v5, v4}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    const v4, 0x7f080db9

    invoke-virtual {v2, v4}, Lw4/b$b;->q(I)Lw4/b$b;

    invoke-virtual {v2, v4}, Lw4/b$b;->v(I)Lw4/b$b;

    invoke-virtual {v2, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    array-length p1, p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f12010a

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f120109

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    const p1, 0x7f120108

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    const/4 p1, 0x2

    invoke-virtual {v2, p1}, Lw4/b$b;->l(I)Lw4/b$b;

    invoke-virtual {v2, v4}, Lw4/b$b;->o(I)Lw4/b$b;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.ANTI_VIRUS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "enter_homepage_way"

    const-string v1, "notification"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "notificationId"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x44000000    # 512.0f

    invoke-static {p0, v3, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v2, p0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v2}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    const-string p0, "module_show"

    const-string p1, "Antivirus"

    invoke-static {p0, p1, v3}, Lq4/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method
