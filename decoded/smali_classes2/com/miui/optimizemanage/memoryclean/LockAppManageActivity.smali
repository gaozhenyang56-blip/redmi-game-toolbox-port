.class public Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;
    }
.end annotation


# static fields
.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lcom/miui/optimizemanage/memoryclean/a;

.field private c:Landroid/widget/ProgressBar;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/memoryclean/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic d0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;ILjb/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->j0(ILjb/d;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->k0(Z)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)Lcom/miui/optimizemanage/memoryclean/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->b:Lcom/miui/optimizemanage/memoryclean/a;

    return-object p0
.end method

.method private g0()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v0, v0, Llb/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Llb/d;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07145e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Llb/d;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;I)V

    :cond_2
    return-void
.end method

.method private h0()V
    .locals 2

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;

    invoke-interface {v1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static i0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;)V
    .locals 1

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private j0(ILjb/d;)V
    .locals 3

    iget-boolean v0, p2, Ljb/d;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p2, Ljb/d;->b:Ljava/lang/String;

    iget v2, p2, Ljb/d;->a:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lx4/t;->R(Ljava/lang/String;IZ)V

    iput-boolean v0, p2, Ljb/d;->c:Z

    iget-object p2, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->b:Lcom/miui/optimizemanage/memoryclean/a;

    const-string v0, "payload_type_click"

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->h0()V

    return-void
.end method

.method private k0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->c:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->c:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static l0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;)V
    .locals 1

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private m0()V
    .locals 3

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;-><init>(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)V

    invoke-static {}, Llb/g;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public n0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljb/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/a$b;

    invoke-direct {v0}, Lcom/miui/optimizemanage/memoryclean/a$b;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/optimizemanage/memoryclean/a$b;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/optimizemanage/memoryclean/a$b;->b:Ljava/util/List;

    new-instance v1, Lcom/miui/optimizemanage/memoryclean/a$b;

    invoke-direct {v1}, Lcom/miui/optimizemanage/memoryclean/a$b;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lcom/miui/optimizemanage/memoryclean/a$b;->a:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/miui/optimizemanage/memoryclean/a$b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljb/d;

    iget-boolean v3, v2, Ljb/d;->c:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/miui/optimizemanage/memoryclean/a$b;->b:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/miui/optimizemanage/memoryclean/a$b;->b:Ljava/util/List;

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/miui/optimizemanage/memoryclean/a$b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, v1, Lcom/miui/optimizemanage/memoryclean/a$b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->b:Lcom/miui/optimizemanage/memoryclean/a;

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/memoryclean/a;->p(Ljava/util/List;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->g0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const p1, 0x7f0e03aa

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const p1, 0x7f0b06cc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p1, Lcom/miui/optimizemanage/memoryclean/a;

    invoke-direct {p1, p0}, Lcom/miui/optimizemanage/memoryclean/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->b:Lcom/miui/optimizemanage/memoryclean/a;

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->b:Lcom/miui/optimizemanage/memoryclean/a;

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$a;-><init>(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)V

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/memoryclean/a;->o(Lcom/miui/optimizemanage/memoryclean/a$d;)V

    const p1, 0x7f0b090e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->g0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->m0()V

    return-void
.end method
