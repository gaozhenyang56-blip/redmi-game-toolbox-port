.class public Lcom/miui/warningcenter/policeassist/PaService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/policeassist/PaService$TransDataTask;,
        Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;,
        Lcom/miui/warningcenter/policeassist/PaService$TransType;
    }
.end annotation


# static fields
.field public static final ACTION_PA_INIT:Ljava/lang/String; = "action_pa_init"

.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "action_send_message"

.field public static final ACTION_SEND_MESSAGE_DONE:Ljava/lang/String; = "action_send_message_done"

.field public static final ACTION_SHOW_FLOAT_VIEW:Ljava/lang/String; = "action_show_float_view"

.field private static final CLASS_PROCESS_MANAGER:Ljava/lang/String; = "miui.process.ProcessManager"

.field private static final LOOP_TIME:J = 0xea60L

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final METHOD_REGISTER_FOREGROUND_LISTENER:Ljava/lang/String; = "registerForegroundInfoListener"

.field private static final METHOD_UNREGISTER_FOREGROUND_LISTENER:Ljava/lang/String; = "unregisterForegroundInfoListener"

.field private static final PACKAGE_INCALL_UI:Ljava/lang/String; = "com.android.incallui"

.field private static final TAG:Ljava/lang/String; = "PAService"


# instance fields
.field private isSendMessage:Z

.field private listener:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

.field private mCallNumber:Ljava/lang/String;

.field private mCallTime:J

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCounterStart:Z

.field private mCurrentCallState:I

.field private mEnableSend:Z

.field private mFinishLocationTime:J

.field private mFlag:Z

.field private mFloatWindowManager:Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

.field private mForegroundPkgName:Ljava/lang/String;

.field private mGetMyPhoneNumberTask:Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;

.field private mLastRequest:Z

.field private mLocationTimer:Landroid/os/CountDownTimer;

.field private mMobileDataEnable:Z

.field private mMobileDataRequest:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSendCount:I

.field private mStartLocationTime:J

.field private mStopServiceTimer:Landroid/os/CountDownTimer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTransDataTask:Lcom/miui/warningcenter/policeassist/PaService$TransDataTask;

.field private mTransType:Lcom/miui/warningcenter/policeassist/PaService$TransType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mMobileDataRequest:Z

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mEnableSend:Z

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLastRequest:Z

    iput v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mSendCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFlag:Z

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$4;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaService$4;-><init>(Lcom/miui/warningcenter/policeassist/PaService;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$6;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaService$6;-><init>(Lcom/miui/warningcenter/policeassist/PaService;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->listener:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/policeassist/PaService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCallNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/policeassist/PaService;)Lcom/miui/warningcenter/policeassist/PaService$TransType;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTransType:Lcom/miui/warningcenter/policeassist/PaService$TransType;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/warningcenter/policeassist/PaService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFinishLocationTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/miui/warningcenter/policeassist/PaService;Lcom/miui/warningcenter/policeassist/PaService$TransType;)Lcom/miui/warningcenter/policeassist/PaService$TransType;
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTransType:Lcom/miui/warningcenter/policeassist/PaService$TransType;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/warningcenter/policeassist/PaService;)I
    .locals 0

    iget p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCurrentCallState:I

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/warningcenter/policeassist/PaService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCurrentCallState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/warningcenter/policeassist/PaService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->isSendMessage:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/warningcenter/policeassist/PaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->unregisterForegroundInfoListener()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/warningcenter/policeassist/PaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->sendLastRequest()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/warningcenter/policeassist/PaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->stopServiceTimer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/warningcenter/policeassist/PaService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mForegroundPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/miui/warningcenter/policeassist/PaService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mForegroundPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/miui/warningcenter/policeassist/PaService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/PaService;->isInCallUI(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/policeassist/PaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->startRequestLoop()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/policeassist/PaService;)I
    .locals 0

    iget p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mSendCount:I

    return p0
.end method

.method static synthetic access$308(Lcom/miui/warningcenter/policeassist/PaService;)I
    .locals 2

    iget v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mSendCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/warningcenter/policeassist/PaService;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/warningcenter/policeassist/PaService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/warningcenter/policeassist/PaService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLastRequest:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/warningcenter/policeassist/PaService;Landroid/location/Location;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/warningcenter/policeassist/PaService;->onLocationCallback(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/miui/warningcenter/policeassist/PaService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/warningcenter/policeassist/PaService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCallTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/miui/warningcenter/policeassist/PaService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mStartLocationTime:J

    return-wide v0
.end method

.method private isInCallUI(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.incallui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private onLocationCallback(Landroid/location/Location;Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mEnableSend:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mEnableSend:Z

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFinishLocationTime:J

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$TransDataTask;

    move-object v1, v0

    move-object v2, p0

    move v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/miui/warningcenter/policeassist/PaService$TransDataTask;-><init>(Lcom/miui/warningcenter/policeassist/PaService;Ljava/lang/String;DDZLandroid/location/Location;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTransDataTask:Lcom/miui/warningcenter/policeassist/PaService$TransDataTask;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private registerProcessManager()V
    .locals 7

    const-string v0, "PAService"

    :try_start_0
    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerForegroundInfoListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/warningcenter/policeassist/PaService;->listener:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    aput-object v5, v3, v6

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerProcessManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendLastRequest()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCallNumber:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/warningcenter/policeassist/PaService;->startLocation(Ljava/lang/String;Z)V

    return-void
.end method

.method private showFloatingView()V
    .locals 2

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setGpsStatus(Landroid/content/Context;)V

    invoke-static {}, Lx4/w1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PAService"

    const-string v1, "showFloatingView: skip when in satellite mode!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/warningcenter/policeassist/PaService;->addView()V

    return-void
.end method

.method private startLocationAndSendMessage()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;-><init>(Lcom/miui/warningcenter/policeassist/PaService;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mGetMyPhoneNumberTask:Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private startRequestLoop()V
    .locals 7

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$1;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/policeassist/PaService$1;-><init>(Lcom/miui/warningcenter/policeassist/PaService;JJ)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCounterStart:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCounterStart:Z

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method private stopServiceTimer()V
    .locals 7

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mStopServiceTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$5;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/policeassist/PaService$5;-><init>(Lcom/miui/warningcenter/policeassist/PaService;JJ)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mStopServiceTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mStopServiceTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private unregisterForegroundInfoListener()V
    .locals 7

    const-string v0, "PAService"

    :try_start_0
    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unregisterForegroundInfoListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/warningcenter/policeassist/PaService;->listener:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    aput-object v5, v3, v6

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unRegisterForegroundInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFloatWindowManager:Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

    invoke-virtual {v0}, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->addView()V

    return-void
.end method

.method public isTelephonyCalling()Z
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "PAService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->registerProcessManager()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFloatWindowManager:Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFloatWindowManager:Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "PAService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->stopLocation()V

    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mGetMyPhoneNumberTask:Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/miui/warningcenter/policeassist/PaService;->mGetMyPhoneNumberTask:Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;

    :cond_0
    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTransDataTask:Lcom/miui/warningcenter/policeassist/PaService$TransDataTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTransDataTask:Lcom/miui/warningcenter/policeassist/PaService$TransDataTask;

    :cond_1
    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_2
    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mStopServiceTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/miui/warningcenter/policeassist/PaService;->mStopServiceTimer:Landroid/os/CountDownTimer;

    :cond_3
    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLocationTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLocationTimer:Landroid/os/CountDownTimer;

    :cond_4
    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->resetGPS(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mMobileDataRequest:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mMobileDataEnable:Z

    if-nez v1, :cond_5

    const-string v1, "reset mobile enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lmiui/securitycenter/NetworkUtils;->setMobileDataState(Landroid/content/Context;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/warningcenter/policeassist/PaService;->releaseViews()V

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->unregisterForegroundInfoListener()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    iput-object v3, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFloatWindowManager:Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_pa_init"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CallNumber"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCallNumber:Ljava/lang/String;

    const-string v1, "CallTime"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCallTime:J

    :goto_0
    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->showFloatingView()V

    goto :goto_1

    :cond_1
    const-string v1, "action_send_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaService;->startLocationAndSendMessage()V

    goto :goto_1

    :cond_2
    const-string v1, "action_show_float_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "action_send_message_done"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PAService"

    const-string v1, "already send sms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/utils/MsgObservable;->sendEmptyMessage(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCurrentCallState:I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public releaseViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/warningcenter/policeassist/PaService;->removeView()V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFloatWindowManager:Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

    invoke-virtual {v0}, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->releaseViews()V

    return-void
.end method

.method public removeView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFloatWindowManager:Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;

    invoke-virtual {v0}, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->removeView()V

    return-void
.end method

.method public startLocation(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/warningcenter/policeassist/PaService;->startLocation(Ljava/lang/String;Z)V

    return-void
.end method

.method public startLocation(Ljava/lang/String;Z)V
    .locals 6

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLastRequest:Z

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mEnableSend:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mStartLocationTime:J

    iget-boolean v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mMobileDataRequest:Z

    if-nez v1, :cond_1

    iput-boolean p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mMobileDataRequest:Z

    invoke-static {p0}, Lp4/d;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mMobileDataEnable:Z

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lmiui/securitycenter/NetworkUtils;->setMobileDataState(Landroid/content/Context;Z)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLocation:lastRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PAService"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFlag:Z

    if-eqz p2, :cond_3

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/PaService;->mFlag:Z

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object p2

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaService$2;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaService$2;-><init>(Lcom/miui/warningcenter/policeassist/PaService;)V

    invoke-virtual {p2, p1, v0}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->startLocation(ZLcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLocationTimer:Landroid/os/CountDownTimer;

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/warningcenter/policeassist/PaService$3;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/warningcenter/policeassist/PaService$3;-><init>(Lcom/miui/warningcenter/policeassist/PaService;JJ)V

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLocationTimer:Landroid/os/CountDownTimer;

    :cond_2
    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->mLocationTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_3
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    instance-of p1, p2, Landroid/os/Message;

    if-eqz p1, :cond_1

    check-cast p2, Landroid/os/Message;

    iget p1, p2, Landroid/os/Message;->what:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/warningcenter/policeassist/PaService;->isSendMessage:Z

    :cond_1
    :goto_0
    return-void
.end method
