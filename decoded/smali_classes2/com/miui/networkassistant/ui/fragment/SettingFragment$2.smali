.class Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showTipsForAutoCorrection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

.field final synthetic val$slotNum:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$slotNum:I

    iput p3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$slotNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$type:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/app/Activity;

    move-result-object p1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$slotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/app/Activity;

    move-result-object p1

    const-class p2, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$type:I

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$slotNum:I

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$slotNum:I

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->val$slotNum:I

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p2, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$902(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method
