.class public Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;
.super Lcom/miui/common/base/ui/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;->lambda$onCreate$0()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/miui/networkassistant/ui/activity/h;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/activity/h;-><init>(Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragmentActivity;->postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 5

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "sim_slot_num_tag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
