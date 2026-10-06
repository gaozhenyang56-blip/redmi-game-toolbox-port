.class Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->showTipsForReminder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v1

    aget-object p2, p2, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v2

    aget-object p2, p2, v2

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v2

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$1000(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyTrafficReminderSwitch(Z)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficReminderSwitch(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->access$1500(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveInfiniteTrafficReminderSwitch(Z)V

    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void
.end method
