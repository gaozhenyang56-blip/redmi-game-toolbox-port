.class Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$302(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    :try_start_0
    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$300(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {p2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$400(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/NotificationListenerCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;->Z2(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNoticationListenerBinder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$302(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-void
.end method
