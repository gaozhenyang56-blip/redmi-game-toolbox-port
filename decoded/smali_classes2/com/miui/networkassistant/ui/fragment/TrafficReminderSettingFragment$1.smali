.class Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1219f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getOperatorTips(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
