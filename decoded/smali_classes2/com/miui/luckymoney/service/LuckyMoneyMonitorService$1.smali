.class Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;
.super Lcom/miui/gamebooster/service/NotificationListenerCallback;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/NotificationListenerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_2

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    :cond_2
    return-void
.end method

.method public onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
