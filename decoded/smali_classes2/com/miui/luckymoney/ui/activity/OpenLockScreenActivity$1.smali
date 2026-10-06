.class Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->startAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->access$000(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->access$002(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;Z)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    move v2, v0

    :cond_1
    const/16 v3, 0x12c

    if-ge v2, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xa

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-int v3, v5

    if-gez v3, :cond_2

    move v3, v0

    :cond_2
    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->access$100(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockSecureMiuiKeyguard(Landroid/content/Context;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->access$100(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->access$100(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;->run()V

    :cond_5
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->notifyKeyguardUnlocked()V

    :goto_0
    return-void
.end method
