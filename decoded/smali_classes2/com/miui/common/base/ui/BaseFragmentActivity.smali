.class public abstract Lcom/miui/common/base/ui/BaseFragmentActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragmentActivity;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragmentActivity;->mMsgQueue:Landroid/os/MessageQueue;

    return-void
.end method


# virtual methods
.method protected getCurrentBaseFragment()Lcom/miui/common/base/ui/BaseFragment;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/common/base/ui/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/common/base/ui/BaseFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->needHorizontalPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/common/base/BaseActivity;->mExtraHorizontalPaddingLevel:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->setDefaultExtraHorizontalPaddingLevel()V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragmentActivity;->onCreateFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_1
    return-void
.end method

.method public abstract onCreateFragment()Landroidx/fragment/app/Fragment;
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragmentActivity;->getCurrentBaseFragment()Lcom/miui/common/base/ui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/common/base/ui/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragmentActivity;->getCurrentBaseFragment()Lcom/miui/common/base/ui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onOptionsItemSelectedByActivity(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragmentActivity;->getCurrentBaseFragment()Lcom/miui/common/base/ui/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onPrepareOptionsMenuByActivity(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method protected postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragmentActivity;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method
