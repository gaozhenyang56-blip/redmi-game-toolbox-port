.class public Lcom/miui/push/XiaomiPushReceiver;
.super Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final ACCURATE_DISASTER_WARNING:Ljava/lang/String; = "accurate-warning"

.field public static final ACTION_DELAY_UPDATE_WAKEPAT:Ljava/lang/String; = "miui.intent.action.DELAY_UPDATE_WAKEPATH"

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field public static final MODULE_DISASTER_WARNING:Ljava/lang/String; = "12379Warning"

.field public static final MODULE_MIJIA_WARNING:Ljava/lang/String; = "MijiaWarning"

.field public static final SECURITY_CENTER_PASS_THROUGH_MESSAGE:Ljava/lang/String; = "SecurityCenterPassThroughMessage"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/push/XiaomiPushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/push/XiaomiPushReceiver;->showNotification(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static parsePassThrough(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/push/XiaomiPushReceiver$a;

    invoke-direct {v0, p1, p0}, Lcom/miui/push/XiaomiPushReceiver$a;-><init>(Lcom/xiaomi/mipush/sdk/MiPushMessage;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static showNotification(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroidx/core/app/NotificationCompat$c;

    const-string v1, "securitycenter_xiaomi_push"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080f25

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->y(I)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$c;->m(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->l(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/app/NotificationCompat$c;->D(J)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$c;->k(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$c;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$c;->g(Z)Landroidx/core/app/NotificationCompat$c;

    const-string p1, "single"

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$c;->r(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$c;->d()Landroid/app/Notification;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/app/Notification;->flags:I

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->f(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    new-instance p3, Landroidx/core/app/k$c;

    const/4 v0, 0x3

    invoke-direct {p3, v1, v0}, Landroidx/core/app/k$c;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f120f25

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/core/app/k$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/k$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/k$c;->a()Landroidx/core/app/k;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationManagerCompat;->e(Landroidx/core/app/k;)V

    const/16 p0, 0x4e23

    invoke-virtual {p2, p0, p1}, Landroidx/core/app/NotificationManagerCompat;->h(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 7

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object p1

    const-string v0, "register"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandResult register success : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onCommandResult register failed"

    :goto_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    const-string v0, "set-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandResult alias : "

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onCommandResult set alias failed"

    goto :goto_1

    :cond_3
    const-string v0, "unset-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandResult unset alias : "

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onCommandResult unset alias failed"

    goto :goto_1

    :cond_5
    const-string v0, "subscribe-topic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-nez p1, :cond_7

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_6
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCommandResult subscribe topic : "

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :cond_7
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onCommandResult subscribe topic failed"

    goto/16 :goto_1

    :cond_8
    const-string v0, "unsubscibe-topic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-nez p1, :cond_a

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_9
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCommandResult unsubscribe topic : "

    goto :goto_2

    :cond_a
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onCommandResult unsubscribe topic failed"

    goto/16 :goto_1

    :cond_b
    const-string v0, "set-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-nez p1, :cond_c

    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onCommandResult SET_ACCOUNT  success"

    goto/16 :goto_1

    :cond_c
    sget-object p1, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onCommandResult SET_ACCOUNT  failed"

    goto/16 :goto_1

    :cond_d
    :goto_3
    return-void
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 4

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v1

    sget-object v2, Lcom/miui/push/XiaomiPushReceiver;->TAG:Ljava/lang/String;

    const-string v3, "onReceivePassThroughMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/push/XiaomiPushReceiver;->parsePassThrough(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    :cond_0
    return-void
.end method
