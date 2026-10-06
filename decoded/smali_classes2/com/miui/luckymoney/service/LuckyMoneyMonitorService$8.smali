.class Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$600(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/luckymoney/stats/MiStatUtil;->trackSettingSwitchState(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MSG_SENSOR_SHAKE"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->access$600(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/luckymoney/utils/PackageUtil;->startStickerActivityWithVibrator(Landroid/content/Context;)V

    :goto_0
    return v0
.end method
