.class public Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;->lambda$onCreate$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "method"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "contentValues"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v1, Landroid/net/Uri;

    if-eqz v0, :cond_1

    instance-of v0, p2, Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast v1, Landroid/net/Uri;

    check-cast p2, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "scence_traffic"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickGrantSendSms(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "scence_traffic"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickCancelSendSms(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->makeDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120e82

    new-instance v1, Lcom/miui/networkassistant/ui/activity/a;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/activity/a;-><init>(Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121917

    new-instance v1, Lcom/miui/networkassistant/ui/activity/b;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/activity/b;-><init>(Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->setDialogParams(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string p1, "scence_traffic"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackShowGrantSendSmsDialog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
