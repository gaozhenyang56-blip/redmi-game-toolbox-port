.class public Lcom/miui/antispam/ui/activity/MainActivity;
.super Lcom/miui/common/base/BaseAcquireCtaActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/MainActivity$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lj2/b;

.field private c:Lmiuix/appcompat/app/ActionBar;

.field private d:Z

.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;-><init>()V

    sget-object v0, Lm2/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->k0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->f0()V

    return-void
.end method

.method private f0()V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x31e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v1, 0x31d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private g0(Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Lm2/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1020002

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->d:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    invoke-static {v1}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y0(Z)Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lm2/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MainActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    invoke-static {v1}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->x0(Z)Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    iget-boolean p1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->d:Z

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object p1

    const v1, 0x7f121938

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, "SmsLogFragmentInMain"

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    :cond_2
    invoke-static {}, Lm2/a;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lm2/a;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object p1

    const v1, 0x7f121935

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, "CallLogFragmentInMain"

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    :cond_4
    :goto_1
    return-void
.end method

.method private h0()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    sget-object v0, Lm2/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    const v1, 0x7f12007b

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_1

    :cond_0
    sget-object v0, Lm2/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    const v1, 0x7f12007a

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08098c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f120097

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/antispam/ui/activity/MainActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/MainActivity$a;-><init>(Lcom/miui/antispam/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-static {}, Lm2/j;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private i0()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lm2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->a:Ljava/lang/String;

    :cond_1
    const-string v1, "is_from_intercept_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, -0x1

    const-string v4, "notification_block_type"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2

    const-string v3, "overseas"

    goto :goto_0

    :cond_2
    const-string v3, "mainland"

    :goto_0
    const-string v4, "antispam_noti_action"

    const-string v5, "click"

    invoke-static {v4, v3, v5}, Lc2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "notification_intercept_content"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-string v0, "sms"

    goto :goto_1

    :cond_3
    const-string v0, "call"

    :goto_1
    const-string v2, "antispam_notification"

    invoke-static {v2, v0, v5}, Lc2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "notification"

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lm2/f;->l(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "other"

    :cond_6
    :goto_2
    invoke-static {v0}, Lc2/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->d:Z

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->i0()V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lj2/b;

    invoke-direct {v0, p0}, Lj2/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->b:Lj2/b;

    :cond_0
    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->needHorizontalPadding:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->setDefaultExtraHorizontalPaddingLevel()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->h0()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->e:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/miui/antispam/ui/activity/MainActivity;->g0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/antispam/ui/activity/MainActivity;->j0(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->d:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object v0

    invoke-virtual {v0}, Lm2/d;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object v0

    invoke-virtual {v0}, Lm2/d;->j()V

    :cond_2
    return-void
.end method

.method private j0(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-static {p0}, Lm2/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notification_intercept_content"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    invoke-static {p0, v3}, Lm2/a;->v(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private k0()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Le2/b;->B(I)V

    invoke-static {v0}, Le2/b;->A(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/base/BaseAcquireCtaActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x12c

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->init()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    sget-boolean v0, Lm2/f;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f130434

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setGestureLineEnableSupport(Z)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->e:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;->acquireCTAPermissionsForResult()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "MainActivity"

    const-string v4, "windowDismissed"

    invoke-static {v3, v0, v4, v2, v1}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lm2/a;->v(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/MainActivity;->j0(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lm2/a;->v(Landroid/content/Context;Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lm2/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/miui/antispam/ui/activity/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/MainActivity$b;-><init>(Lcom/miui/antispam/ui/activity/MainActivity;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->b:Lj2/b;

    invoke-virtual {v0}, Lj2/b;->e()V

    :cond_2
    return-void
.end method
