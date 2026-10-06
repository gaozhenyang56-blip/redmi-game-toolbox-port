.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;
    }
.end annotation


# static fields
.field public static final EXTRA_DISASTERALERTMODEL:Ljava/lang/String; = "DisasterAlertModel"

.field private static final TAG:Ljava/lang/String; = "WarningCenterDisasterAlertActivity"


# instance fields
.field private final helper:Lcom/miui/warningcenter/AlertWindowHelper;

.field private mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;

.field private mCloseContainer:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mTinyScreen:Z

.field private mViewModel:Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/AlertWindowHelper;-><init>(Landroidx/activity/ComponentActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->lambda$initView$1(IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method private initView(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 4

    const v0, 0x7f0b0db4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/a;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/a;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b025e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mCloseContainer:Landroid/view/View;

    const v0, 0x7f0b02aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0968

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mContentView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mTinyScreen:Z

    invoke-direct {p1, p0, v2, v1, v3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-boolean p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mTinyScreen:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mContentView:Landroid/view/View;

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/b;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/b;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$initView$1(IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Ldb/e;->c(Landroid/content/Context;I)I

    move-result v0

    iget v1, p4, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, p1

    iget p1, p4, Landroid/graphics/Insets;->right:I

    add-int/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cbf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mCloseContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mCloseContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/AlertWindowHelper;->setWindowBackground(Landroid/view/Window;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/AlertWindowHelper;->delegate(Z)V

    invoke-static {p0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mTinyScreen:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0e055c

    goto :goto_0

    :cond_1
    const p1, 0x7f0e055b

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "DisasterAlertModel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->initView(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    new-instance p1, Landroidx/lifecycle/u0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mViewModel:Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->playSound()V

    const-string p1, "disaster_alert_receive"

    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaModuleClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "DisasterAlertModel"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;->addData(ILcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    const-string p1, "disaster_alert_receive"

    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaModuleClick(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "disaster_models"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$Adapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "disaster_models"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
