.class public Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final DIALOG_MESSAGE:Ljava/lang/String; = "dialog_message"

.field public static final DIALOG_TITLE:Ljava/lang/String; = "dialog_title"

.field private static final TAG:Ljava/lang/String; = "RoamingStateAlertActivity"


# instance fields
.field public mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog_message"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1200bb

    new-instance v0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V

    invoke-virtual {v1, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x1040009

    new-instance v0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V

    invoke-virtual {v1, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;->mDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;-><init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
