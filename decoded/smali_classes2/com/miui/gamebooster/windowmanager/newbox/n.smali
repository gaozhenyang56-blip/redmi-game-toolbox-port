.class public Lcom/miui/gamebooster/windowmanager/newbox/n;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/n;->i()V

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/windowmanager/newbox/n;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/n;->j(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/windowmanager/newbox/n;)Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    return-object p0
.end method

.method private h()V
    .locals 3

    const v0, 0x7f0b07c6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isForceDarkAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/customview/recyclerview/UnscrollableGridLayoutManager;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->a:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/customview/recyclerview/UnscrollableGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->e:Lq6/f;

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, La8/u0;->c()I

    move-result v1

    new-instance v2, Lcom/miui/gamebooster/windowmanager/newbox/n$a;

    invoke-direct {v2, p0, v0, v1, v0}, Lcom/miui/gamebooster/windowmanager/newbox/n$a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/n;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->e:Lq6/f;

    invoke-virtual {v0, v2}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->e:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "GameMoreToolsView"

    const-string v1, "init GameMoreToolsView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01a9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0523

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/m;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/m;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/n;->h()V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->g:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->e:Lq6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public setMainView(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    return-void
.end method

.method public setMoreToolsFunctionData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/gzy/redmiport/SupportedTools;->filter(Ljava/util/List;)Ljava/util/List;
    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->e:Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lq6/f;->F(Ljava/util/List;)V

    return-void
.end method

.method public setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n;->g:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;

    return-void
.end method
