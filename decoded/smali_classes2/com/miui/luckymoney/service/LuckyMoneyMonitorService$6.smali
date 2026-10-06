.class Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->processTypeUnknownNotification(Landroid/service/notification/StatusBarNotification;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

.field final synthetic val$qqMessage:Lcom/miui/luckymoney/model/message/Impl/QQMessage;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iput-object p2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->val$qqMessage:Lcom/miui/luckymoney/model/message/Impl/QQMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->isPhoneBusy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phony is busy, do not remind qq lucky money"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$100(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$100(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->val$qqMessage:Lcom/miui/luckymoney/model/message/Impl/QQMessage;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->process(Lcom/miui/luckymoney/model/message/AppMessage;)Z

    :cond_1
    return-void
.end method
