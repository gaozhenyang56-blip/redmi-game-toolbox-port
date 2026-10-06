.class public Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/TcSmsReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TcSmsReportServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/TcSmsReportService;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->lambda$report$0(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;ZLorg/json/JSONArray;Lcom/miui/networkassistant/config/SimUserInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->lambda$report$1(ZLorg/json/JSONArray;Lcom/miui/networkassistant/config/SimUserInfo;I)V

    return-void
.end method

.method private getEncryptPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "(?<=\\d{3})\\d(?=\\d{4})"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private synthetic lambda$report$0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f12198b    # 1.9419991E38f

    goto :goto_0

    :cond_0
    const p1, 0x7f12198a

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$report$1(ZLorg/json/JSONArray;Lcom/miui/networkassistant/config/SimUserInfo;I)V
    .locals 11

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$500(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$600(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$200(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->reportTrafficCorrectionSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/common/net/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/net/c;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "report success"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report: result.code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/common/net/c;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TcSmsReportService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Lcom/miui/networkassistant/service/d;

    invoke-direct {p1, p0, v0}, Lcom/miui/networkassistant/service/d;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;Z)V

    invoke-static {p1}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnUi(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_3

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$500(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$600(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$200(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p3}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$800(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTcSmsReportCache(Ljava/lang/String;)Z

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public getCurrentSlotNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$800(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result v0

    return v0
.end method

.method public getReportSmsType()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$700(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result v0

    return v0
.end method

.method public getSmsDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$600(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$500(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsReceiveNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$200(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsReturned()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1200(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$400(Lcom/miui/networkassistant/service/TcSmsReportService;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    move-result-object v0

    return-object v0
.end method

.method public registerSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1300(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1300(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public report(I)V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$800(Lcom/miui/networkassistant/service/TcSmsReportService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v6

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1100(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1100(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getEncryptPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v4

    new-instance v0, Lcom/miui/networkassistant/service/c;

    move-object v2, v0

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/service/c;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;ZLorg/json/JSONArray;Lcom/miui/networkassistant/config/SimUserInfo;I)V

    invoke-static {v0}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnPool(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$402(Lcom/miui/networkassistant/service/TcSmsReportService;Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1100(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1100(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1202(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startMonitorSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Receiving:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$402(Lcom/miui/networkassistant/service/TcSmsReportService;Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$502(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$602(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0, p5}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$702(Lcom/miui/networkassistant/service/TcSmsReportService;I)I

    iget-object p5, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p5, p4}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$802(Lcom/miui/networkassistant/service/TcSmsReportService;I)I

    iget-object p5, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p5, p3}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$202(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;

    iget-object p3, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p3, p1, p2, p4}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$900(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1000(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    return-void
.end method

.method public unRegisterSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1300(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$1300(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
