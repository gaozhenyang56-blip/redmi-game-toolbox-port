.class Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->showFirstly(Lcom/miui/luckymoney/model/message/AppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$100(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/ui/view/LockScreenView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x44000000    # 512.0f

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockKeyguard(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const-string p1, "settings"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyLockedNoti(Ljava/lang/String;Z)V

    return-void
.end method
