.class public Lcom/miui/autotask/activity/AddTimeConditionActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# instance fields
.field private d:Lcom/miui/autotask/fragment/AddTimeConditionFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/activity/AddTimeConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddTimeConditionActivity;->j0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/miui/autotask/activity/AddTimeConditionActivity;->d:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    invoke-virtual {v0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->f0()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v0

    const-string v1, "taskItem"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static k0(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/miui/autotask/activity/AddTimeConditionActivity;->l0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/CustomTimeConditionItem;I)V

    return-void
.end method

.method public static l0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/CustomTimeConditionItem;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/autotask/activity/AddTimeConditionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taskItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/miui/autotask/activity/a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/a;-><init>(Lcom/miui/autotask/activity/AddTimeConditionActivity;)V

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f0()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected h0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskItem"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AddTimeConditionFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v3, v1, Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    iput-object v1, p0, Lcom/miui/autotask/activity/AddTimeConditionActivity;->d:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    invoke-direct {v1}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/autotask/activity/AddTimeConditionActivity;->d:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    instance-of v1, p1, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/miui/autotask/activity/AddTimeConditionActivity;->d:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    iget-object v1, p0, Lcom/miui/autotask/activity/AddTimeConditionActivity;->d:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    return-void
.end method
