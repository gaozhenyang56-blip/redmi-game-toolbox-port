.class public Lcom/miui/autotask/activity/TaskManagerActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String; = "select_tab"

.field private static c:Ljava/lang/String; = "my_task"


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/TaskManagerActivity;->a:Z

    return-void
.end method

.method public static synthetic d0(Lcom/miui/autotask/activity/TaskManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/TaskManagerActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/autotask/activity/AutoTaskSettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0xd3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3f7

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3f8

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_3
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setGestureLineEnableSupport(Z)V

    invoke-static {p0}, Lx4/y1;->g(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/autotask/activity/TaskManagerActivity;->a:Z

    invoke-static {p0}, Lx4/y1;->i(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_1
    const v1, 0x7f120318

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v1

    const v2, 0x7f120083

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v4

    const-class v5, Lcom/miui/autotask/fragment/TaskCenterFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "TaskCenterFragment"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v1

    const v2, 0x7f12007e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v4

    const-class v5, Lcom/miui/autotask/fragment/MineTaskFragment;

    const-string v3, "MineTaskFragment"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121622

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f08104d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/miui/autotask/activity/w;

    invoke-direct {v2, p0}, Lcom/miui/autotask/activity/w;-><init>(Lcom/miui/autotask/activity/TaskManagerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/miui/autotask/activity/TaskManagerActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/miui/autotask/activity/TaskManagerActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/autotask/activity/TaskManagerActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "taskEnable"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "openFrom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "open_from_un_know_out_side"

    :cond_3
    invoke-static {p1}, Lhd/a;->L0(Ljava/lang/String;)V

    const-string p1, "dau_task_manager_activity"

    invoke-static {p1}, Lhd/a;->Z(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/miui/autotask/activity/TaskManagerActivity;->a:Z

    invoke-static {p0}, Lx4/y1;->g(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lx4/y1;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/TaskManagerActivity;->a:Z

    invoke-static {p0}, Lx4/y1;->i(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
