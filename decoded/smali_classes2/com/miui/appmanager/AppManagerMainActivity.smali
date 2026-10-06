.class public Lcom/miui/appmanager/AppManagerMainActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/appmanager/AppManagerMainActivity$e;,
        Lcom/miui/appmanager/AppManagerMainActivity$b;,
        Lcom/miui/appmanager/AppManagerMainActivity$d;,
        Lcom/miui/appmanager/AppManagerMainActivity$c;,
        Lcom/miui/appmanager/AppManagerMainActivity$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field private c:Lcom/miui/appmanager/fragment/ManageFragment;

.field private d:Lcom/miui/appmanager/fragment/AppFragment;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh3/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Le3/d;

.field private h:Landroid/view/MenuItem;

.field private i:Landroid/view/MenuItem;

.field private j:Lxm/a;

.field private k:Lmiuix/springback/view/SpringBackLayout;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->j0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->p0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->o0()V

    return-void
.end method

.method static synthetic h0(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/fragment/AppFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->d:Lcom/miui/appmanager/fragment/AppFragment;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/fragment/ManageFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->c:Lcom/miui/appmanager/fragment/ManageFragment;

    return-object p0
.end method

.method private j0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh3/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lpf/g;->w()Z

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Leg/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lpf/g;->v()Z

    move-result v4

    if-eqz v2, :cond_1

    if-eqz v4, :cond_0

    const-string v2, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "app_manager_adv"

    invoke-static {v0, v2}, Leg/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lef/x;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lh3/h;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lh3/h;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lh3/h;->c()Ljava/util/ArrayList;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private k0()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->l0()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120088

    goto :goto_0

    :cond_0
    const v1, 0x7f1201fb

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->n:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "other"

    :goto_1
    invoke-static {v1}, Lf3/a;->c(Ljava/lang/String;)V

    const-string v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f6

    const-string v1, "module_click"

    const-string v2, "AppManager"

    invoke-static {v1, v2, v0}, Lq4/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->n:Ljava/lang/String;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private l0()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->n:Ljava/lang/String;

    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Ldb/c;->k()Z

    move-result v0

    return v0
.end method

.method private o0()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120088

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1201fb

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-direct {v1}, Lcom/miui/appmanager/fragment/ManageFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->c:Lcom/miui/appmanager/fragment/ManageFragment;

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->l()I

    return-void
.end method

.method private p0()V
    .locals 9

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v1, 0x7f1201f9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/appmanager/fragment/AppFragment;

    const-string v1, "AppFragment"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v1, 0x7f1201fa

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/appmanager/fragment/ManageFragment;

    const-string v1, "ManageFragment"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    invoke-virtual {v6, v8}, Lmiuix/appcompat/app/ActionBar;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ManageFragment;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->c:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-virtual {v6, v7}, Lmiuix/appcompat/app/ActionBar;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/AppFragment;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->d:Lcom/miui/appmanager/fragment/AppFragment;

    const v0, 0x7f0b0d8d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxm/a;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->j:Lxm/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->j:Lxm/a;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->k:Lmiuix/springback/view/SpringBackLayout;

    :cond_0
    return-void
.end method


# virtual methods
.method public m0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->mTabletSplitMode:Z

    return v0
.end method

.method public n0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->j:Lxm/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lxm/a;->setDraggable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->k:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->k0()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->a:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->f:Landroid/os/Handler;

    new-instance p1, Le3/d;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Le3/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->g:Le3/d;

    iget-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->a:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/appmanager/AppManagerMainActivity$c;

    invoke-direct {p1, p0}, Lcom/miui/appmanager/AppManagerMainActivity$c;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->o0()V

    :goto_1
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->l0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->needHideHomeBackButton()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->f:Landroid/os/Handler;

    new-instance v0, Lcom/miui/appmanager/AppManagerMainActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/AppManagerMainActivity$a;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b00c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->h:Landroid/view/MenuItem;

    new-instance v0, Le3/d;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Le3/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le3/d;->f()Z

    move-result v0

    const v1, 0x7f0b00c1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->i:Landroid/view/MenuItem;

    const v1, 0x7f0b00ac

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p0}, Lcom/miui/appmanager/AppManageUtils;->Z(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->l:Z

    iget-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->m:Z

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->r0(ZZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->g:Le3/d;

    invoke-virtual {v0}, Le3/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "app_manager_adv"

    invoke-static {v0, v1}, Leg/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->c:Lcom/miui/appmanager/fragment/ManageFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->C1()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->c:Lcom/miui/appmanager/fragment/ManageFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/fragment/ManageFragment;->v1(Landroid/view/MenuItem;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/appmanager/AppManagerSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "settings"

    invoke-static {v0}, Lf3/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/miui/appmanager/AppManageUtils;->t(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f0b00ac -> :sswitch_3
        0x7f0b00be -> :sswitch_2
        0x7f0b00c0 -> :sswitch_1
        0x7f0b00c1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    new-instance v0, Lcom/miui/appmanager/AppManagerMainActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/AppManagerMainActivity$b;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "mimarket://update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipicks"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.xiaomi.market.UPDATE_APP_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-static {p0, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120210

    invoke-static {v0, v1}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->v0(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/appmanager/AppManageUtils;->A0(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Le3/e;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v0, "update"

    invoke-static {v0}, Lf3/a;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgb/b;->h(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgb/b;->n(I)V

    :goto_1
    return-void
.end method

.method public r0(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->h:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->i:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f1201d1

    goto :goto_0

    :cond_1
    const p1, 0x7f1201f3

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iput-boolean p2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->l:Z

    iput-boolean p3, p0, Lcom/miui/appmanager/AppManagerMainActivity;->m:Z

    iget-object p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->i:Landroid/view/MenuItem;

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->i:Landroid/view/MenuItem;

    iget-boolean p2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->m:Z

    if-eqz p2, :cond_2

    const p2, 0x7f120d94

    goto :goto_1

    :cond_2
    const p2, 0x7f120daf

    :goto_1
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_2
    return-void
.end method
