.class public Lcom/miui/bubbles/services/MiuiBubbleServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.MiuiBubbleServiceManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startBubbleRemoteServicesIfNeed(Landroid/content/Context;)V
    .locals 5

    const-string v0, "startBubblesServicesIfNeed: "

    const-string v1, "MiuiBubbles.MiuiBubbleServiceManager"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\tpid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "startBubbleRemoteService"

    invoke-virtual {v2, v3, v4}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(ZLjava/lang/String;)V

    invoke-static {}, Lcom/miui/bubbles/utils/MiuiFreeFormManagerWrapper;->isSupportPin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/common/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.bubbles.BUBBLE_REMOTE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/common/a;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->migrateSpToSettings(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/miui/bubbles/services/BubblesNotificationListenerService;->configNotificationListener(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
