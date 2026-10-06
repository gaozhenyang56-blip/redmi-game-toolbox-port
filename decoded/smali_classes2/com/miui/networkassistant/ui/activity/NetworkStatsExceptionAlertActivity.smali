.class public Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final REBOOT_REASON:Ljava/lang/String; = "network stats exception,reboot by security center"


# instance fields
.field private mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private buildAlertDialog()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    const v0, 0x7f1207f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1207f3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    const v3, 0x7f1207f4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/base/ui/a;->setPostiveText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v2, v0}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->buildAlertDialog()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->buildAlertDialog()V

    return-void
.end method
