.class Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->showTipsForAutoCorrection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I

    move-result p2

    aget-object p1, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/widget/Button;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
