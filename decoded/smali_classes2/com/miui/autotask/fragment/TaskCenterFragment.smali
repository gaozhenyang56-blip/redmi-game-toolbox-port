.class public Lcom/miui/autotask/fragment/TaskCenterFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lmiuix/recyclerview/widget/RecyclerView;

.field private c:Lr3/b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lt3/d;

.field private g:Lr3/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->f:Lt3/d;

    new-instance v0, Lv3/f2;

    invoke-direct {v0, p0}, Lv3/f2;-><init>(Lcom/miui/autotask/fragment/TaskCenterFragment;)V

    iput-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->g:Lr3/b$a;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/autotask/fragment/TaskCenterFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/TaskCenterFragment;->g0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/autotask/fragment/TaskCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/TaskCenterFragment;->f0(Landroid/view/View;)V

    return-void
.end method

.method private d0()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DTT_SLEEP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DTT_NOON_BREAK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DTT_DRIVER_CAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DTT_SAVE_POWER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DTT_WATCH_VIDEO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DTT_LISTENER_MUSIC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->c:Lr3/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private e0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->a:Landroid/view/View;

    const v0, 0x7f0b02f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->a:Landroid/view/View;

    new-instance v0, Lv3/e2;

    invoke-direct {v0, p0}, Lv3/e2;-><init>(Lcom/miui/autotask/fragment/TaskCenterFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lr3/b;

    iget-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->g:Lr3/b$a;

    invoke-direct {p1, v0, v1}, Lr3/b;-><init>(Ljava/util/List;Lr3/b$a;)V

    iput-object p1, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->c:Lr3/b;

    iget-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance p1, Lt3/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {p1, v0, v1}, Lt3/d;-><init>(Landroid/content/Context;[I)V

    iput-object p1, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->f:Lt3/d;

    iget-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/TaskCenterFragment;->d0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic f0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/miui/autotask/activity/NewTaskActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lhd/a;->Q()V

    return-void
.end method

.method private synthetic g0(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/16 v0, 0x3f7

    invoke-static {p1, p2, v0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->H0(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onExtraPaddingChanged(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->f:Lt3/d;

    iget-object v1, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, v1}, Lt3/d;->y(ILandroidx/recyclerview/widget/RecyclerView;)I

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0e0181

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/TaskCenterFragment;->e0(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autotask/fragment/TaskCenterFragment;->e:Z

    invoke-static {}, Lhd/a;->N0()V

    :cond_0
    return-void
.end method
