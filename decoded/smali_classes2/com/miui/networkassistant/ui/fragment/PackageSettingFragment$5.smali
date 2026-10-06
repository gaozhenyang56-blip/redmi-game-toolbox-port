.class Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->showTipsForAutoCorrection(Landroidx/preference/CheckBoxPreference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

.field final synthetic val$switchStyle:Landroidx/preference/CheckBoxPreference;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Landroidx/preference/CheckBoxPreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$switchStyle:Landroidx/preference/CheckBoxPreference;

    iput p3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1402(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1502(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1602(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$switchStyle:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$switchStyle:Landroidx/preference/CheckBoxPreference;

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$type:I

    invoke-static {p1, v1, p2, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1800(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result v2

    aget-object p2, p2, v2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$switchStyle:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1402(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result p2

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1502(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result p2

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p2, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1602(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$switchStyle:Landroidx/preference/CheckBoxPreference;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;->val$type:I

    invoke-static {p2, v2, v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;ZLandroidx/preference/CheckBoxPreference;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_2
    return-void
.end method
