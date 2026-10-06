.class public Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;
    }
.end annotation


# static fields
.field private static final EXTRA_ANDROID_TEXT:Ljava/lang/String; = "android.text"

.field private static final EXTRA_ANDROID_TITLE:Ljava/lang/String; = "android.title"

.field public static final MSG_REMOVE_FLOAT_TIPS:I = 0x4

.field private static final MSG_SENSOR_SHAKE:I = 0x1

.field private static final MSG_UPDATE_CONFIG:I = 0x2

.field private static final MSG_UPLOAD_SETTING_SWITCH_STATE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field public mMainHandler:Landroid/os/Handler;

.field private mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private mNoticationListenerBinder:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

.field private mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

.field private mNotificationListenerConn:Landroid/content/ServiceConnection;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

.field private mQQConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

.field private mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$3;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$3;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-direct {v0}, Lcom/miui/luckymoney/service/CloudControlReceiver;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$9;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$9;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNoticationListenerBinder:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNoticationListenerBinder:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/NotificationListenerCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private processTypeUnknownNotification(Landroid/service/notification/StatusBarNotification;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isHongbao()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isGroupMessage()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v2, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    iget-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v5}, Lcom/miui/luckymoney/service/QQGroupCollector;->findQQGroupByName(Ljava/lang/String;)Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    move-result-object v7

    iget-object v8, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.text"

    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.title"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "getIntent"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v4}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lbh/d$a;->k()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/content/Intent;

    const/4 v3, 0x1

    if-eqz v7, :cond_6

    sget-boolean v4, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isNewVersionOfQQ:Z

    if-eqz v4, :cond_3

    const-string v4, "key_chat_type"

    goto :goto_0

    :cond_3
    const-string v4, "uintype"

    :goto_0
    iget v8, v7, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->type:I

    invoke-virtual {v12, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v4, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isNewVersionOfQQ:Z

    if-eqz v4, :cond_4

    const-string v4, "key_peerUin"

    goto :goto_1

    :cond_4
    const-string v4, "uin"

    :goto_1
    iget-object v8, v7, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->id:Ljava/lang/String;

    invoke-virtual {v12, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v4, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isNewVersionOfQQ:Z

    if-eqz v4, :cond_5

    const-string v4, "key_chat_name"

    goto :goto_2

    :cond_5
    const-string v4, "uinname"

    :goto_2
    iget-object v7, v7, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "open_chatfragment"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x6

    const-string v7, "entrance"

    invoke-virtual {v12, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Lcom/miui/luckymoney/utils/NotificationUtil;->getUniqueNotificationId()I

    move-result v11

    const/high16 v13, 0x44000000    # 512.0f

    const/4 v14, 0x0

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Lx4/v;->f(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v4, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/miui/luckymoney/utils/NotificationUtil;->getUniqueNotificationId()I

    move-result v7

    invoke-direct {v4, v6, v7, v9, v0}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    :try_start_0
    new-instance v0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;

    invoke-direct {v0, v1, v4}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v4, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v6, "failed to create qqmessage object"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-nez v9, :cond_7

    return-void

    :cond_7
    iput-boolean v3, v2, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->treatedAsGroupMessage:Z

    iput-object v5, v2, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isHongbao()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v3, "qq message is lucky money message, continue"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;

    invoke-direct {v3, v1, v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_4
    return-void
.end method

.method private registerCloudControlReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerConfigChangedReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.config_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerConfigUpdateReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.luckymoney.ACTION_UPDATE_TIPS_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerPhoneStateMonitor()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->registerListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method

.method private registerScreenReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterCloudControlReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

    return-void
.end method

.method private unRegisterPackageReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private unRegisterScreenReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private unregisterConfigChangedReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private unregisterPhoneStateMonitor()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->unregisterListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v0, Lcom/miui/luckymoney/model/config/impl/QQConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/model/config/impl/QQConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v1, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;

    invoke-direct {v1, v0}, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    invoke-static {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v1, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;

    invoke-direct {v1, v0}, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    invoke-static {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerConfigChangedReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerScreenReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerConfigUpdateReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerCloudControlReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerPackageReceiver()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->startMonitor(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerPhoneStateMonitor()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterCloudControlReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterScreenReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterConfigChangedReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterPhoneStateMonitor()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->stopMonitor(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->recycle(Lcom/miui/luckymoney/controller/Pipeline;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->recycle(Lcom/miui/luckymoney/controller/Pipeline;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 10

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "received a mm message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;

    new-instance v1, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "failed to create WechatMessage object"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Lcom/miui/luckymoney/model/message/AppMessage;->isHongbao()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v0, "mm message is lucky money message, continue"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$4;

    invoke-direct {v0, p0, v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$4;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/AppMessage;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "received a qq message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {v1}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object v3

    const-string v4, "getIntent"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2, v5}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lbh/d$a;->k()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/miui/luckymoney/utils/NotificationUtil;->getUniqueNotificationId()I

    move-result v5

    const/high16 v7, 0x44000000    # 512.0f

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lx4/v;->f(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;

    new-instance v3, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {v1, p0, v3}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v3, "failed to create QQMessage object"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-static {p0, v2}, Lcom/miui/luckymoney/service/QQGroupCollector;->collect(Landroid/content/Context;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V

    iget v0, v2, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isHongbao()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string v0, "qq message is lucky money message, continue"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;

    invoke-direct {v0, p0, v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->processTypeUnknownNotification(Landroid/service/notification/StatusBarNotification;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
