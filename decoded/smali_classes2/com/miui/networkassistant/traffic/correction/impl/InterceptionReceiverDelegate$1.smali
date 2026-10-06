.class Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doAbortBroadcast()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    iget-object p1, p1, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "TrafficManageService-ReceiverDel"

    const-string v1, "Delegate onReceive: intent : %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->access$000(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    aget-object v1, v0, v5

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficManageService-ReceiverDel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: sendersNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,sendNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-static {v4}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->access$000(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-static {v2}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->access$000(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v3, v0, v5

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :cond_2
    :goto_1
    const-string v0, "TrafficManageService-ReceiverDel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: sendNum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-static {v3}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->access$000(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",canReturn = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    new-instance v1, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-direct {v1, v0, p2, v2}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;Landroid/content/Intent;I)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->access$102(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    iget-object p2, p2, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->lock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;->doAbortBroadcast()V

    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
