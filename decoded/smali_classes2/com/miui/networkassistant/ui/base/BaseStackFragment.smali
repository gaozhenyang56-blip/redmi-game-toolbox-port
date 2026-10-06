.class public abstract Lcom/miui/networkassistant/ui/base/BaseStackFragment;
.super Lcom/miui/common/base/ui/LoadingFragment;
.source "SourceFile"


# static fields
.field private static sCurrentStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/ui/base/BaseStackFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityKey:Ljava/lang/String;

.field private mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/LoadingFragment;-><init>()V

    return-void
.end method

.method private declared-synchronized getCurrentFragment()Lcom/miui/networkassistant/ui/base/BaseStackFragment;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/common/base/ui/BaseFragment;->applyTitle()V

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected clearBackStack()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->D(I)Landroidx/fragment/app/s;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-object v1, p0

    :goto_0
    iget-object v2, v1, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    return-void
.end method

.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-direct {p0, p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/ui/BaseFragment;->onDetach()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->D(I)Landroidx/fragment/app/s;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method protected switchToFragment(Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/common/base/ui/BaseFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected switchToFragment(Ljava/lang/String;Landroid/os/Bundle;Z)Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->getCurrentFragment()Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/s;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v2}, Landroidx/fragment/app/s;->k()I

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->D(I)Landroidx/fragment/app/s;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    const p2, 0x1020002

    invoke-virtual {v0, p2, v1, p1}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    if-eqz p3, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/s;->i(Ljava/lang/String;)Landroidx/fragment/app/s;

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    return-object v1
.end method
