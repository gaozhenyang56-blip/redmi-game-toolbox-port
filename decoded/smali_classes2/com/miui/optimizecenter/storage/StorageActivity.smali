.class public Lcom/miui/optimizecenter/storage/StorageActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lra/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/StorageActivity$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/miui/optimizecenter/storage/StorageActivity$b;

.field private c:Lcb/e;

.field private d:Z

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->d:Z

    new-instance v0, Lcom/miui/optimizecenter/storage/StorageActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StorageActivity$a;-><init>(Lcom/miui/optimizecenter/storage/StorageActivity;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/optimizecenter/storage/StorageActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageActivity;->h0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/optimizecenter/storage/StorageActivity;)Lcb/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    return-object p0
.end method

.method private f0(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_channel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui_file_explore"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    sget-object p1, Lra/k0;->a:Lra/k0;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const v1, 0x7f121864

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v0, "miui_settings"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lra/k0;->b:Lra/k0;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const v1, 0x7f121866

    goto :goto_0

    :cond_2
    sget-object p1, Lra/k0;->e:Lra/k0;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const v1, 0x7f121865

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0, v1}, Lcb/e;->p(Ljava/lang/String;)V

    sget-object v0, Lab/h;->a:Lab/h;

    invoke-virtual {v0}, Lab/h;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lra/k0;->d:Lra/k0;

    :cond_4
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0, p1}, Lcb/e;->t(Lra/k0;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g0()V
    .locals 7

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v6

    sget-object v0, Lab/h;->a:Lab/h;

    invoke-virtual {v0}, Lab/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080972

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Lra/p;

    invoke-direct {v1, p0}, Lra/p;-><init>(Lcom/miui/optimizecenter/storage/StorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    invoke-virtual {v6, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v1, 0x7f12181f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/optimizecenter/storage/StorageFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "1"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v1, 0x7f121820

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/optimizecenter/storage/StorageFragmentWork;

    const-string v1, "2"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void

    :cond_0
    if-eqz v6, :cond_1

    const v0, 0x7f12181e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/miui/optimizecenter/storage/StorageFragment;

    invoke-direct {v2}, Lcom/miui/optimizecenter/storage/StorageFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->l()I

    return-void
.end method

.method private synthetic h0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private i0()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->e:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {p0, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0, v1, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public i(Lra/j0;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0, p1}, Lcb/e;->q(Lra/j0;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {p1}, Lcb/e;->u()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    new-instance v0, Lcom/miui/optimizecenter/storage/StorageActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StorageActivity$b;-><init>(Lcom/miui/optimizecenter/storage/StorageActivity;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->b:Lcom/miui/optimizecenter/storage/StorageActivity$b;

    new-instance v0, Landroidx/lifecycle/u0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcb/e;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lcb/e;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    new-instance v1, Leb/a;

    invoke-static {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Leb/a;-><init>(J)V

    invoke-virtual {v0, v1}, Lcb/e;->s(Leb/a;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->g()Lcom/miui/optimizecenter/storage/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/a;->U(Lra/l;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/optimizecenter/storage/StorageActivity;->f0(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StorageActivity;->i0()V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StorageActivity;->g0()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->g()Lcom/miui/optimizecenter/storage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/a;->H()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lra/j0;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v2, v1}, Lcb/e;->q(Lra/j0;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->g()Lcom/miui/optimizecenter/storage/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/a;->B()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcb/e;->o(Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v1}, Lcb/e;->g()Lcom/miui/optimizecenter/storage/a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/o;

    invoke-direct {v2, v1}, Lra/o;-><init>(Lcom/miui/optimizecenter/storage/a;)V

    invoke-virtual {v0, v2}, Lef/z;->a(Ljava/lang/Runnable;)V

    :goto_1
    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->d:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->b:Lcom/miui/optimizecenter/storage/StorageActivity$b;

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {p1}, Lcb/e;->u()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageActivity;->f0(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->w()V

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->g()Lcom/miui/optimizecenter/storage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/a;->T()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->d:Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->b:Lcom/miui/optimizecenter/storage/StorageActivity$b;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/utils/FoldScreenUtils;->a(Lcom/miui/optimizecenter/storage/utils/FoldScreenUtils$FoldChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->b:Lcom/miui/optimizecenter/storage/StorageActivity$b;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/utils/FoldScreenUtils;->b(Lcom/miui/optimizecenter/storage/utils/FoldScreenUtils$FoldChangeListener;)V

    return-void
.end method

.method public t(Ljava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcb/e;->o(Ljava/util/Set;)V

    sget-boolean v1, Luf/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v1}, Lcb/e;->h()Leb/a;

    move-result-object v1

    invoke-virtual {v1}, Leb/a;->a()J

    move-result-wide v1

    iget-object v3, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v3}, Lcb/e;->h()Leb/a;

    move-result-object v3

    invoke-virtual {v3}, Leb/a;->b()J

    move-result-wide v3

    iget-object v5, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v5}, Lcb/e;->h()Leb/a;

    move-result-object v5

    invoke-virtual {v5}, Leb/a;->d()J

    move-result-wide v5

    iget-object v7, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v7}, Lcb/e;->h()Leb/a;

    move-result-object v7

    invoke-virtual {v7}, Leb/a;->f()J

    move-result-wide v7

    iget-object v9, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v9}, Lcb/e;->h()Leb/a;

    move-result-object v9

    invoke-virtual {v9}, Leb/a;->n()J

    move-result-wide v9

    iget-object v11, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v11}, Lcb/e;->h()Leb/a;

    move-result-object v11

    invoke-virtual {v11}, Leb/a;->h()J

    move-result-wide v11

    iget-object v13, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v13}, Lcb/e;->h()Leb/a;

    move-result-object v13

    invoke-virtual {v13}, Leb/a;->o()J

    move-result-wide v13

    iget-object v15, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v15}, Lcb/e;->h()Leb/a;

    move-result-object v15

    invoke-virtual {v15}, Leb/a;->k()J

    move-result-wide v15

    add-long/2addr v1, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    add-long/2addr v1, v9

    add-long/2addr v1, v11

    add-long/2addr v1, v13

    add-long/2addr v1, v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanFinished: total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v1}, Lcb/e;->n()V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity;->c:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->m()V

    return-void
.end method
