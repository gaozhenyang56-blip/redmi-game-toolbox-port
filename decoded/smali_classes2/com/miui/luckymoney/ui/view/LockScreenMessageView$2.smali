.class Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;
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

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->access$100(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/ui/view/LockScreenView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->dismiss()V

    const-string p1, "close"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyLockedNoti(Ljava/lang/String;Z)V

    return-void
.end method
