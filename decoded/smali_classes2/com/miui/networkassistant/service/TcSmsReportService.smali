.class public Lcom/miui/networkassistant/service/TcSmsReportService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;,
        Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;,
        Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TcSmsReportService"


# instance fields
.field private mCurrentSlotNum:I

.field private mListenersSelfLocked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReportSmsType:I

.field private mReportStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsAllStr:Ljava/lang/String;

.field private mSmsDirection:Ljava/lang/String;

.field private mSmsListSelfLocked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsNum:Ljava/lang/String;

.field private mSmsReceiveNum:Ljava/lang/String;

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field mSmsSentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportSmsType:I

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$2;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$3;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$4;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->onTimeOut()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->onSmsSentFailure()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->startTimerTask()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsAllStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsAllStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiveNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiveNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->onSmsReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/service/TcSmsReportService;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/networkassistant/service/TcSmsReportService;Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsDirection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsDirection:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/service/TcSmsReportService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportSmsType:I

    return p0
.end method

.method static synthetic access$702(Lcom/miui/networkassistant/service/TcSmsReportService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportSmsType:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/service/TcSmsReportService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mCurrentSlotNum:I

    return p0
.end method

.method static synthetic access$802(Lcom/miui/networkassistant/service/TcSmsReportService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mCurrentSlotNum:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/service/TcSmsReportService;->sendSms(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private onSmsReceived(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopReceiving()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n________________________\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsAllStr:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Received:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-interface {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;->onSmsReceived()V

    goto :goto_1

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private onSmsSentFailure()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopReceiving()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-interface {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;->onSmsSentFailure()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onTimeOut()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopReceiving()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Timeout:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-interface {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;->onTimeOut()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerReportStatusReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_broadcast_tc_sms_report_status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerSmsReceiver()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BROADCAST_SMS"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private registerSmsSendedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "sms_receiver_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private sendSms(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerSmsSendedReceiver()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sms_receiver_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/miui/networkassistant/utils/TelephonyUtil;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private startTimerTask()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$1;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimerTask:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private stopReceiving()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopTimerTask()V

    return-void
.end method

.method private stopTimerTask()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private unRegisterReportStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSmsReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSmsSendedReceiver()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TcSmsReportService"

    const-string v2, "unRegisterSmsSendedReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->startup()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerSmsSendedReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerReportStatusReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unRegisterSmsSendedReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unRegisterSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unRegisterReportStatusReceiver()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
