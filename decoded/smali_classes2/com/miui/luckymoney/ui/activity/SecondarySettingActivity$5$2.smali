.class Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckySoundWarningLevel(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$700(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$600(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;

    iget-object p2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    iget-object p2, p2, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p1, p2}, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    iget-object p2, p2, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/luckymoney/utils/NotificationUtil;->playNotificationSound(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
