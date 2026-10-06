.class public abstract Lcom/miui/common/base/ui/BaseFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# static fields
.field private static final TITLE_FILED:I = -0x1

.field public static final TITLE_FILED_NAME:Ljava/lang/String; = "TITLE_FILED"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAppContext:Landroid/content/Context;

.field protected mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mUIHandler:Landroid/os/Handler;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mMsgQueue:Landroid/os/MessageQueue;

    return-void
.end method


# virtual methods
.method protected applyTitle()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->onSetTitle()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTitle(I)V

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_1
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected finish()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method protected abstract initView()V
.end method

.method protected isAttatched()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->applyTitle()V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->initView()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionBar"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, p1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    :cond_0
    return-void
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected abstract onCreateViewLayout()I
.end method

.method protected abstract onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->onCreateViewLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/common/base/ui/BaseFragment;->onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelectedByActivity(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenuByActivity(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onSetTitle()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method protected postOnUiDelayed(Lcom/miui/common/base/asyn/b;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected postOnUiThread(Lcom/miui/common/base/asyn/b;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
