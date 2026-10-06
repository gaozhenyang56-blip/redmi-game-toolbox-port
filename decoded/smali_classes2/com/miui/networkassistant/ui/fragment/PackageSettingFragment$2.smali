.class Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->lambda$onClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->lambda$onClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "scence_complete_package_setting"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickGrantSendSms(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    return-void
.end method

.method private static synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const-string p0, "scence_complete_package_setting"

    invoke-static {p0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickCancelSendSms(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIMOBILE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->makeDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120e82

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/m;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/m;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121917

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/n;

    invoke-direct {v1}, Lcom/miui/networkassistant/ui/fragment/n;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->setDialogParams(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string p1, "scence_complete_package_setting"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackShowGrantSendSmsDialog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    return-void
.end method
