.class Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->addSaveButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "TO_BUSINESS_HALL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sim_slot_num_tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f010089

    const v1, 0x7f01008c

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)V

    :goto_0
    return-void
.end method
