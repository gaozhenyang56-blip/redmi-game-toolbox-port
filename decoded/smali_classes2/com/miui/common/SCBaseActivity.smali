.class public abstract Lcom/miui/common/SCBaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAppContext:Landroid/content/Context;

.field protected mExtraHorizontalPaddingLevel:I

.field private mMsgQueue:Landroid/os/MessageQueue;

.field protected mTabletSplitMode:Z

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

.field protected needHorizontalPadding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    invoke-static {}, Lx4/g;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/SCBaseActivity;->needHorizontalPadding:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/SCBaseActivity;->mExtraHorizontalPaddingLevel:I

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/SCBaseActivity;->mMsgQueue:Landroid/os/MessageQueue;

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

    invoke-virtual {p0}, Lcom/miui/common/SCBaseActivity;->isTabletSpitModel()Z

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

.method private customizeActionBar(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/common/SCBaseActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V

    invoke-static {}, Lx4/g;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lx4/h;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected isTabletSpitModel()Z
    .locals 1

    invoke-static {p0}, Lx4/g;->f(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/common/SCBaseActivity;->isTabletSpitModel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/common/SCBaseActivity;->mTabletSplitMode:Z

    iput-object p0, p0, Lcom/miui/common/SCBaseActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/SCBaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/common/SCBaseActivity;->isTabletSpitModel()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/common/SCBaseActivity;->needHorizontalPadding:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/common/SCBaseActivity;->mExtraHorizontalPaddingLevel:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/common/SCBaseActivity;->setCustomExtraHorizontalPaddingLevel(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/common/SCBaseActivity;->customizeActionBar(Landroid/content/res/Configuration;)V

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

.method protected postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/SCBaseActivity;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    iget-boolean p1, p0, Lcom/miui/common/SCBaseActivity;->needHorizontalPadding:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/common/SCBaseActivity;->mExtraHorizontalPaddingLevel:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/SCBaseActivity;->setDefaultExtraHorizontalPaddingLevel()V

    :cond_0
    return-void
.end method

.method protected setCustomExtraHorizontalPaddingLevel(I)V
    .locals 1

    iput p1, p0, Lcom/miui/common/SCBaseActivity;->mExtraHorizontalPaddingLevel:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingLevel(I)V

    return-void
.end method

.method protected setDefaultExtraHorizontalPaddingLevel()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0}, Lcom/miui/common/SCBaseActivity;->isTabletSpitModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/common/SCBaseActivity;->setCustomExtraHorizontalPaddingLevel(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingLevel(I)V

    :goto_0
    return-void
.end method

.method public setNeedHorizontalPadding(Z)V
    .locals 1

    invoke-static {}, Lx4/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/SCBaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/g;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-boolean p1, p0, Lcom/miui/common/SCBaseActivity;->needHorizontalPadding:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method protected setViewHorizontalPadding(Landroid/view/View;II)V
    .locals 3

    invoke-static {}, Lx4/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/SCBaseActivity;->mViewCache:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/common/SCBaseActivity;->mViewCache:Ljava/util/Map;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/common/SCBaseActivity;->mViewCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/SCBaseActivity;->addPaddingForView(Landroid/view/View;II)V

    return-void
.end method
