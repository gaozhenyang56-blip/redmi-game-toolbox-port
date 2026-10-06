.class Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneRingMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method private constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object p1, p1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor$1;

    invoke-direct {p2, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor$1;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
