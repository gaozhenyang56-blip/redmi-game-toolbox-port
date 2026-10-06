.class public Lcom/miui/autotask/activity/NewTaskActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# instance fields
.field private d:Lcom/miui/autotask/fragment/NewTaskFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/activity/NewTaskActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/activity/NewTaskActivity;->l0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/autotask/activity/NewTaskActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewTaskActivity;->k0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic k0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/activity/NewTaskActivity;->f0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/activity/NewTaskActivity;->d:Lcom/miui/autotask/fragment/NewTaskFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/autotask/fragment/NewTaskFragment;->j0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/activity/NewTaskActivity;->d:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-virtual {p1}, Lcom/miui/autotask/fragment/NewTaskFragment;->w0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private n0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120306

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120304

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/autotask/activity/o;

    invoke-direct {v2, p0}, Lcom/miui/autotask/activity/o;-><init>(Lcom/miui/autotask/activity/NewTaskActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/miui/autotask/activity/p;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/p;-><init>(Lcom/miui/autotask/activity/NewTaskActivity;)V

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/NewTaskActivity;->d:Lcom/miui/autotask/fragment/NewTaskFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/autotask/fragment/NewTaskFragment;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/autotask/activity/NewTaskActivity;->n0()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected h0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewTaskActivity;->d:Lcom/miui/autotask/fragment/NewTaskFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/autotask/fragment/NewTaskFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskBean"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/r;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/autotask/fragment/NewTaskFragment;->u0(Lcom/miui/autotask/bean/r;Z)Lcom/miui/autotask/fragment/NewTaskFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/autotask/activity/NewTaskActivity;->d:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    if-nez p1, :cond_0

    const v2, 0x7f120081

    goto :goto_0

    :cond_0
    const v2, 0x7f12007d

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isRepeat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "at_click_repeat_notify"

    invoke-static {v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    :cond_2
    const-string v1, "dau_task_detail_activity"

    invoke-static {v1}, Lhd/a;->Z(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v1

    const v2, 0x1020002

    iget-object v4, p0, Lcom/miui/autotask/activity/NewTaskActivity;->d:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-virtual {v1, v2, v4}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/s;->k()I

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
