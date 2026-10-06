.class public Lcom/miui/powercenter/autotask/OperationEditActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/OperationEditActivity$b;
    }
.end annotation


# instance fields
.field d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/autotask/OperationEditActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/autotask/OperationEditActivity$b;-><init>(Lcom/miui/powercenter/autotask/OperationEditActivity;Lcom/miui/powercenter/autotask/OperationEditActivity$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/OperationEditActivity;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic i0(Lcom/miui/powercenter/autotask/OperationEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->j0()V

    return-void
.end method

.method private j0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->k0()Lcom/miui/powercenter/autotask/OperationEditFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/OperationEditFragment;->e0()Z

    return-void
.end method

.method private k0()Lcom/miui/powercenter/autotask/OperationEditFragment;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/OperationEditFragment;

    return-object v0
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/OperationEditActivity;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12030a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->k0()Lcom/miui/powercenter/autotask/OperationEditFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/autotask/OperationEditActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/OperationEditActivity$a;-><init>(Lcom/miui/powercenter/autotask/OperationEditActivity;)V

    invoke-static {p0, v0}, Lcom/miui/powercenter/autotask/r;->i(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->onCreateFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    return-void
.end method

.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-direct {v1}, Lcom/miui/powercenter/autotask/OperationEditFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/autotask/OperationEditFragment;->f0(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-object v1
.end method
