.class public abstract Lcom/miui/common/base/BaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lmiuix/autodensity/j;
.implements Lcom/miui/common/base/c;


# static fields
.field private static final FLAG_MIUI_SPLIT_ACTIVITY:I = 0x4

.field private static final MIUI_DISPLAY_CONTAINER:Ljava/lang/String; = ":miui:display.container"

.field private static final MIUI_DISPLAY_CONTAINER_AV:Ljava/lang/String; = ":miui:settings_av"

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field protected isFloatingTheme:Z

.field protected mActivity:Landroid/app/Activity;

.field private mAdapterGestureLineEnable:Z

.field protected mAppContext:Landroid/content/Context;

.field private mCurrentThemeId:I

.field protected mExtraHorizontalPaddingLevel:I

.field private mIsDarkMode:Ljava/lang/Boolean;

.field protected mManagerInterceptHelper:Lcom/miui/common/base/e;

.field private mMsgQueue:Landroid/os/MessageQueue;

.field protected mTabletSplitMode:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewMarginCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field protected needHorizontalPadding:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/base/BaseActivity;->mIsDarkMode:Ljava/lang/Boolean;

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->needHorizontalPadding:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/base/BaseActivity;->mExtraHorizontalPaddingLevel:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/common/base/BaseActivity;->mAdapterGestureLineEnable:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/common/base/BaseActivity;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/base/BaseActivity;->mMsgQueue:Landroid/os/MessageQueue;

    iput-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    new-instance v0, Lcom/miui/common/base/e;

    invoke-direct {v0, p0}, Lcom/miui/common/base/e;-><init>(Lcom/miui/common/base/c;)V

    iput-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    return-void
.end method

.method private addMarginLevelForView(Landroid/view/View;ILandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0716b8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0715f9

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addPaddingForView(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private addPaddingLevelForView(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0716b8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0715f9

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic c0(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/BaseActivity;->lambda$onCreate$0(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private customizeActionBar(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->mTabletSplitMode:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/miui/common/base/BaseActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/miui/common/base/BaseActivity$a;-><init>(Lcom/miui/common/base/BaseActivity;Lmiuix/appcompat/app/ActionBar;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleStartActivityIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lx4/q;->g()Lx4/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx4/q;->d(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lx4/t;->J(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private isInMultiWindowWithLaptopMode()Z
    .locals 1

    invoke-static {p0}, Lx4/n1;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$onCreate$0(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-static {p0}, Lpg/i;->c(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private setNaviBarColor()V
    .locals 4

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060ab6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public isDarkModeEnable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mIsDarkMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p0}, Lx4/y1;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/BaseActivity;->mIsDarkMode:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mIsDarkMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isMultiWindowMode()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isTabletSpitModel()Z
    .locals 1

    invoke-static {p0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isUninstalledDisable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needHideHomeBackButton()Z
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;->isInMultiWindowWithLaptopMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lx4/n1;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lx4/t;->p()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ":miui:display.container"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":miui:settings_av"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    return v0
.end method

.method public synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/miui/common/base/BaseActivity;->customizeActionBar(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->needHorizontalPadding:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/common/base/BaseActivity;->mExtraHorizontalPaddingLevel:I

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->setDefaultExtraHorizontalPaddingLevel()V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v3, v1}, Lcom/miui/common/base/BaseActivity;->addPaddingLevelForView(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/miui/common/base/BaseActivity;->addPaddingLevelForView(Landroid/view/View;I)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v4, v2}, Lcom/miui/common/base/BaseActivity;->addPaddingForView(Landroid/view/View;II)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mViewMarginCache:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mViewMarginCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v2, v1, v3}, Lcom/miui/common/base/BaseActivity;->addMarginLevelForView(Landroid/view/View;ILandroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v2, v0, v3}, Lcom/miui/common/base/BaseActivity;->addMarginLevelForView(Landroid/view/View;ILandroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lx4/q;->g()Lx4/q;

    move-result-object p1

    invoke-virtual {p1, p0}, Lx4/q;->h(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lw9/a;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->mTabletSplitMode:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->mAdapterGestureLineEnable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/common/base/a;

    invoke-direct {v0, p1}, Lcom/miui/common/base/a;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    iput-object p0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->onCreateContentView()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    :cond_1
    invoke-static {p0}, Lx4/d1;->d(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->needHorizontalPadding:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/common/base/BaseActivity;->mExtraHorizontalPaddingLevel:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setCustomExtraHorizontalPaddingLevel(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/common/base/BaseActivity;->customizeActionBar(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;->setNaviBarColor()V

    return-void
.end method

.method protected onCreateContentView()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewMarginCache:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/miui/common/base/BaseActivity;->mViewMarginCache:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected postOnUiDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected postOnUiThread(Lcom/miui/common/base/asyn/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    iget-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->needHorizontalPadding:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/common/base/BaseActivity;->mExtraHorizontalPaddingLevel:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->setDefaultExtraHorizontalPaddingLevel()V

    :cond_0
    return-void
.end method

.method protected setCustomExtraHorizontalPaddingLevel(I)V
    .locals 1

    iput p1, p0, Lcom/miui/common/base/BaseActivity;->mExtraHorizontalPaddingLevel:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingLevel(I)V

    return-void
.end method

.method protected setDefaultExtraHorizontalPaddingLevel()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingLevel(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setCustomExtraHorizontalPaddingLevel(I)V

    :goto_1
    return-void
.end method

.method protected setGestureLineEnableSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->mAdapterGestureLineEnable:Z

    return-void
.end method

.method public setNeedHorizontalPadding(Z)V
    .locals 1

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->needHorizontalPadding:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-static {p1}, Lx4/t;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f13041d

    :cond_0
    iput p1, p0, Lcom/miui/common/base/BaseActivity;->mCurrentThemeId:I

    invoke-static {p1}, Lx4/t;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method protected setTranslucentStatus(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    goto :goto_0

    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p1, v2

    :goto_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setViewHorizontalMargin(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewMarginCache:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewMarginCache:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewMarginCache:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/common/base/BaseActivity;->addMarginLevelForView(Landroid/view/View;ILandroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setViewHorizontalPadding(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/common/base/BaseActivity;->addPaddingLevelForView(Landroid/view/View;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected setViewHorizontalPadding(Landroid/view/View;II)V
    .locals 3

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mViewCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/base/BaseActivity;->addPaddingForView(Landroid/view/View;II)V

    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/BaseActivity;->handleStartActivityIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/BaseActivity;->handleStartActivityIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
