.class public Lcom/miui/powercenter/autotask/ChooseConditionActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;,
        Lcom/miui/powercenter/autotask/ChooseConditionActivity$c;,
        Lcom/miui/powercenter/autotask/ChooseConditionActivity$b;
    }
.end annotation


# instance fields
.field private d:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->d:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    invoke-direct {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->d:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bundle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$b;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->d:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$b;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;Lcom/miui/powercenter/autotask/ChooseConditionActivity$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->e:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->d:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    return-void
.end method
