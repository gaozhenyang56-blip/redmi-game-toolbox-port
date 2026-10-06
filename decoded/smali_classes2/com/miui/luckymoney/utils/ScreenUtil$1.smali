.class Lcom/miui/luckymoney/utils/ScreenUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/utils/ScreenUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/luckymoney/utils/ScreenUtil;->access$002(Z)Z

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->access$100()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->access$100()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;->run()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/luckymoney/utils/ScreenUtil;->access$102(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->notifyKeyguardUnlocked()V

    :cond_0
    return-void
.end method
