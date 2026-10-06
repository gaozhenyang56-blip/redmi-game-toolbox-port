.class Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showSetOperatorTips(II)V
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->val$type:I

    iput p3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->val$slotNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/app/Activity;

    move-result-object p1

    const-class p2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->val$type:I

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->val$slotNum:I

    aget-object p2, p2, v1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->val$slotNum:I

    aget-object p2, p2, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void
.end method
