.class public abstract Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field protected static final ACTION_UNIVERSAL_FRAGMENT_ACTIVITY:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_UNIVERSAL_FRAGMENT_ACTIVITY"

.field protected static final ACTION_UNIVERSAL_PREFERENCE_ACTIVITY:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_UNIVERSAL_PREFERENCE_ACTIVITY"

.field public static final EXTRA_MIUI_STARTING_WINDOW_LABEL:Ljava/lang/String; = ":miui:starting_window_label"

.field public static final FRAGMENT_ARGS:Ljava/lang/String; = "fragment_arg"

.field public static final FRAGMENT_NAME:Ljava/lang/String; = "fragment_name"

.field private static final TAG:Ljava/lang/String; = "BaseUniversalFragmentActivity"


# instance fields
.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->mMsgQueue:Landroid/os/MessageQueue;

    return-void
.end method


# virtual methods
.method protected abstract checkAction(Ljava/lang/String;)Z
.end method

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

.method protected launchFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/s;->k()I

    sget-object p2, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Fragment %s Displayed"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->checkAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->resolveAction(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/utils/PackageUtil;->reflectGetReferrer(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fragment_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fragment_arg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez p1, :cond_3

    invoke-virtual {p0, v1, v0}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->getCurrentBaseFragment()Lcom/miui/common/base/ui/BaseFragment;

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

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->getCurrentBaseFragment()Lcom/miui/common/base/ui/BaseFragment;

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

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->getCurrentBaseFragment()Lcom/miui/common/base/ui/BaseFragment;

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

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected postOnUiThread(Lcom/miui/common/base/asyn/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract resolveAction(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method
