.class public Lcom/miui/optimizemanage/OptimizemanageMainActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/OptimizemanageMainActivity$b;,
        Lcom/miui/optimizemanage/OptimizemanageMainActivity$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:J

.field private d:Lmiuix/appcompat/app/ActionBar;

.field private e:Landroidx/fragment/app/FragmentManager;

.field private f:Lcom/miui/optimizemanage/OptimizemanageMainActivity$b;

.field private g:Landroid/os/Handler;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->a:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->c:J

    return-void
.end method

.method public static synthetic d0(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->j0(Landroid/view/View;)V

    return-void
.end method

.method private e0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v1

    if-nez v0, :cond_3

    const/4 v2, 0x0

    const-string v3, "result_fragment"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/miui/optimizemanage/ResultFragment;

    invoke-direct {v0}, Lcom/miui/optimizemanage/ResultFragment;-><init>()V

    const v2, 0x7f0b0980

    goto :goto_0

    :cond_0
    const-string v3, "clean_fragment"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/miui/optimizemanage/CleanFragment;

    invoke-direct {v0}, Lcom/miui/optimizemanage/CleanFragment;-><init>()V

    const v2, 0x7f0b0247

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->i:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    :cond_2
    iput-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->i:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0, p1}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()I

    :cond_3
    return-void
.end method

.method private f0(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->b:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g0(Z)V

    return-void
.end method

.method private h0()V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120dd4

    goto :goto_0

    :cond_0
    const v0, 0x7f120f8c

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->d:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0809ff

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121622

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f08104d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Lcom/miui/optimizemanage/d;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/d;-><init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->d:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->f0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private i0()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "data_config"

    invoke-static {v0, v1}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v0

    const-string v1, "om_request_mode"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Luf/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/optimizemanage/settings/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "speedboost_settings"

    invoke-static {p1}, Lgb/a;->r(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "result_settings_click"

    goto :goto_0

    :cond_0
    const-string p1, "scan_settings_click"

    :goto_0
    invoke-static {p1}, Lgb/a;->q(Ljava/lang/String;)V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {p1}, Lgb/b;->q()V

    return-void
.end method

.method private k0()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/u0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lx9/c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lx9/c;

    invoke-virtual {v0, p0}, Lx9/b;->e(Landroidx/lifecycle/v;)V

    invoke-virtual {v0}, Lx9/b;->f()V

    return-void
.end method


# virtual methods
.method public g0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->d:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/optimizemanage/OptimizemanageMainActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity$1;-><init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Z)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V

    return-void
.end method

.method public isUninstalledDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l0()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->k0()V

    new-instance v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity$b;-><init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity$1;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->f:Lcom/miui/optimizemanage/OptimizemanageMainActivity$b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public m0(Lcom/miui/optimizemanage/optimizeresult/a;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    const-string v1, "result_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/ResultFragment;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/ResultFragment;->I0(Lcom/miui/optimizemanage/optimizeresult/a;)V

    return-void
.end method

.method public n0(Lcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "result_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/ResultFragment;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/ResultFragment;->J0(Lcom/miui/optimizemanage/optimizeresult/b;)V

    return-void
.end method

.method public o0(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->i:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onActivityCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e03ba

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizemanage/c;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->h0()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity$a;-><init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/OptimizemanageMainActivity$1;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g:Landroid/os/Handler;

    const v0, 0x7f0b0247

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->h:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const-string v0, "current_fragment_tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->i:Landroidx/fragment/app/Fragment;

    :cond_1
    invoke-direct {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->i0()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: isNewRequestMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptimizemanageMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->l0()V

    :cond_2
    invoke-static {}, Llb/g;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->a:Z

    if-nez v0, :cond_4

    const-string p1, "result_fragment"

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e0(Ljava/lang/String;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->k0()V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g0(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lx4/t;->h()I

    move-result v0

    invoke-static {p0}, Lx4/t;->B(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x9

    if-gt v0, v2, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g0(Z)V

    :cond_6
    const-string v0, "clean_fragment"

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e0(Ljava/lang/String;)V

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->l0()V

    :cond_7
    :goto_0
    const-string p1, "1.306.1.7"

    const-string v0, "1.306.1.8"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/optimizemanage/c;->e([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "enter_homepage_way"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lgb/a;->g(Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x3f3

    const-string v0, "module_click"

    const-string v1, "OptimezeManage"

    invoke-static {v0, v1, p1}, Lq4/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    invoke-static {p0}, Llb/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityDestroy()V

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->f:Lcom/miui/optimizemanage/OptimizemanageMainActivity$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    const-string v1, "result_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/ResultFragment;

    iget-boolean v1, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->b:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/optimizemanage/ResultFragment;->H0()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->e:Landroidx/fragment/app/FragmentManager;

    const-string v1, "clean_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/CleanFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/optimizemanage/CleanFragment;->D0()V

    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->f0(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g0(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0, p0, p1}, Lcom/miui/common/base/e;->c(Lcom/miui/common/base/BaseActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f060d09

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->d()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->i:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lcom/miui/optimizemanage/CleanFragment;

    if-eqz v0, :cond_0

    const-string v0, "clean_fragment"

    goto :goto_0

    :cond_0
    const-string v0, "result_fragment"

    :goto_0
    const-string v1, "current_fragment_tag"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/securitycenter/ad/view/AdImageView;->startTime(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method
