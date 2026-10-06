.class public Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private mDialog:Landroid/app/Dialog;


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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1219ab

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1219aa

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;)V

    const v1, 0x7f1219a9

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
