.class public Lcom/miui/luckymoney/service/CloudControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudControlReceiver"


# instance fields
.field private commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/service/CloudControlReceiver;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->needToCheckUpdate()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/service/CloudControlReceiver;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/service/CloudControlReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->syncConfigFromServer()V

    return-void
.end method

.method private needToCheckUpdate()Z
    .locals 9

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLastTimeCheckUpdateConfig()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getHotStartTime()J

    move-result-wide v6

    cmp-long v0, v2, v6

    const/4 v6, 0x1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getHotEndTime()J

    move-result-wide v7

    cmp-long v0, v2, v7

    if-gtz v0, :cond_2

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getHotFrequency()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move v1, v6

    :cond_1
    return v1

    :cond_2
    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getDefaultUpdateFrequency()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v1, v6

    :cond_3
    return v1
.end method

.method private syncConfigFromServer()V
    .locals 2

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;

    invoke-direct {v0}, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object p2, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/luckymoney/service/CloudControlReceiver$1;-><init>(Lcom/miui/luckymoney/service/CloudControlReceiver;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
