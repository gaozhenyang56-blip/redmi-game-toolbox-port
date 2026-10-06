.class public Lcom/miui/dock/edit/DockAppEditActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/dock/edit/DockAppEditActivity$e;,
        Lcom/miui/dock/edit/DockAppEditActivity$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lcom/miui/dock/edit/c;

.field private e:Lcom/miui/dock/edit/a;

.field private f:Landroidx/recyclerview/widget/GridLayoutManager;

.field private g:Landroid/content/BroadcastReceiver;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lcom/miui/dock/edit/DockAppEditActivity$d;

.field private l:Lj5/a;

.field private m:Lg5/k;

.field private n:Lf5/e;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    return-void
.end method

.method private B0()V
    .locals 5

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v2

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v1, v4

    invoke-interface {v2, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e19999a    # 0.15f
    .end array-data
.end method

.method private C0()V
    .locals 1

    invoke-static {}, Lcom/miui/dock/edit/DockAppEditActivity;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->n:Lf5/e;

    invoke-virtual {v0}, Lf5/e;->q()V

    return-void
.end method

.method private D0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->n:Lf5/e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->n:Lf5/e;

    invoke-virtual {p1}, Lf5/e;->r()V

    :cond_0
    return-void
.end method

.method public static synthetic d0(Lcom/miui/dock/edit/DockAppEditActivity;Lcom/miui/dock/edit/a;ILg5/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/dock/edit/DockAppEditActivity;->q0(Lcom/miui/dock/edit/a;ILg5/j;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/dock/edit/DockAppEditActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->r0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f0(Lg5/j;Lg5/j;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->u0(Lg5/j;Lg5/j;)I

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/miui/dock/edit/DockAppEditActivity;ILg5/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/dock/edit/DockAppEditActivity;->s0(ILg5/j;)V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->t0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/dock/edit/DockAppEditActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->o:Z

    return p0
.end method

.method private initView()V
    .locals 8

    const v0, 0x7f0b09bd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, La8/t1;->b(Landroid/content/Context;)I

    const v1, 0x7f0b0c59

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const v6, 0x7f10004a

    invoke-virtual {v2, v6, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01ab

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0b09ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b09c8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/dock/edit/c;

    iget-object v2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/miui/dock/edit/c;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    new-instance v1, Landroidx/recyclerview/widget/k;

    new-instance v2, Lcom/miui/dock/edit/DockAppEditActivity$a;

    invoke-direct {v2, p0}, Lcom/miui/dock/edit/DockAppEditActivity$a;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/k$e;)V

    iget-object v2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    const v1, 0x7f0b0aba

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p0, v1, v3, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/miui/dock/edit/DockAppEditActivity;->m0(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcom/miui/dock/edit/a;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    new-instance v2, Lf5/f;

    invoke-direct {v2, p0}, Lf5/f;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/dock/edit/c;->s(Lcom/miui/dock/edit/c$a;)V

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->a:Landroid/widget/Button;

    new-instance v2, Lf5/g;

    invoke-direct {v2, p0}, Lf5/g;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/miui/dock/edit/DockAppEditActivity;->p0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lf5/e;

    iget-object v2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/miui/dock/edit/DockAppEditActivity;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3, v4}, Lf5/e;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->n:Lf5/e;

    :cond_1
    return-void
.end method

.method static synthetic j0(Lcom/miui/dock/edit/DockAppEditActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->o:Z

    return p1
.end method

.method static synthetic k0(Lcom/miui/dock/edit/DockAppEditActivity;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/dock/edit/DockAppEditActivity;)Lcom/miui/dock/edit/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    return-object p0
.end method

.method private m0(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcom/miui/dock/edit/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;)",
            "Lcom/miui/dock/edit/a;"
        }
    .end annotation

    new-instance v0, Lcom/miui/dock/edit/a;

    invoke-direct {v0, p2}, Lcom/miui/dock/edit/a;-><init>(Ljava/util/List;)V

    new-instance p2, Lf5/j;

    invoke-direct {p2, p0, v0}, Lf5/j;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Lcom/miui/dock/edit/a;)V

    invoke-virtual {v0, p2}, Lcom/miui/dock/edit/a;->L(Lcom/miui/dock/edit/a$a;)V

    iget-object p2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ge p2, v3, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/miui/dock/edit/a;->K(Z)V

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {p2, p0, v3, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance p2, Lcom/miui/dock/edit/DockAppEditActivity$b;

    invoke-direct {p2, p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity$b;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Lcom/miui/dock/edit/a;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->t(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    return-object v0
.end method

.method private n0()V
    .locals 3

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/u0$a;->f(Landroid/app/Application;)Landroidx/lifecycle/u0$a;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/u0;

    invoke-direct {v1, p0, v0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/u0$b;)V

    const-class v0, Lj5/a;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lj5/a;

    iput-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->l:Lj5/a;

    new-instance v1, Lf5/h;

    invoke-direct {v1, p0}, Lf5/h;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;)V

    invoke-virtual {v0, p0, v1}, Lj5/a;->c(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->l:Lj5/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lf5/i;

    invoke-direct {v2, v1}, Lf5/i;-><init>(Lj5/a;)V

    invoke-virtual {v0, v2}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private o0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static p0()Z
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, La8/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic q0(Lcom/miui/dock/edit/a;ILg5/j;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->o:Z

    iget-object p2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    invoke-virtual {p2, p3}, Lcom/miui/dock/edit/c;->n(Lg5/j;)V

    invoke-virtual {p1, p3}, Lcom/miui/dock/edit/a;->J(Lg5/j;)V

    invoke-direct {p0}, Lcom/miui/dock/edit/DockAppEditActivity;->C0()V

    invoke-static {}, Lcom/miui/dock/edit/DockAppEditActivity;->p0()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/dock/edit/DockAppEditActivity;->D0(Ljava/lang/Boolean;)V

    instance-of p2, p3, Li5/c;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/dock/edit/a;->v()V

    invoke-virtual {p1}, Lcom/miui/dock/edit/a;->F()V

    invoke-virtual {p1}, Lcom/miui/dock/edit/a;->E()V

    :cond_1
    iget-object p2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    invoke-virtual {p2}, Lcom/miui/dock/edit/c;->m()I

    move-result p2

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/dock/edit/a;->K(Z)V

    invoke-virtual {p1}, Lcom/miui/dock/edit/a;->getItemCount()I

    move-result p3

    const-string v0, "icon"

    invoke-virtual {p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic r0(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quickModels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockEditPage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v0}, Lcom/miui/dock/edit/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempList: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lg5/k;

    invoke-direct {p1}, Lg5/k;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->y0(Lg5/j;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/j;

    invoke-virtual {p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity;->y0(Lg5/j;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lg5/h;

    const v0, 0x7f120b4d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg5/h$a;->a:Lg5/h$a;

    invoke-direct {p1, v0, v1}, Lg5/h;-><init>(Ljava/lang/String;Lg5/h$a;)V

    invoke-virtual {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->y0(Lg5/j;)V

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {p1}, Lcom/miui/dock/edit/a;->o()V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic s0(ILg5/j;)V
    .locals 5

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->o:Z

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    invoke-virtual {v0}, Lcom/miui/dock/edit/c;->m()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v1, p2}, Lcom/miui/dock/edit/a;->w(Lg5/j;)Z

    move-result v1

    iget-object v3, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v3}, Lcom/miui/dock/edit/a;->F()V

    iget-object v3, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v3}, Lcom/miui/dock/edit/a;->E()V

    if-nez v1, :cond_3

    instance-of v1, p2, Li5/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v1}, Lcom/miui/dock/edit/a;->t()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lg5/h;

    const v3, 0x7f120b4d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lg5/h$a;->a:Lg5/h$a;

    invoke-direct {v1, v3, v4}, Lg5/h;-><init>(Ljava/lang/String;Lg5/h$a;)V

    invoke-virtual {p0, v1}, Lcom/miui/dock/edit/DockAppEditActivity;->y0(Lg5/j;)V

    :cond_1
    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/miui/dock/edit/DockAppEditActivity;->A0(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/dock/edit/DockAppEditActivity;->C0()V

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-static {}, La8/p;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/dock/edit/DockAppEditActivity;->D0(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v1, p2}, Lcom/miui/dock/edit/a;->u(Lg5/j;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    invoke-virtual {v1, p2}, Lcom/miui/dock/edit/c;->r(Lg5/j;)V

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {p2, p1}, Lcom/miui/dock/edit/a;->K(Z)V

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {p1}, Lcom/miui/dock/edit/a;->getItemCount()I

    move-result p2

    const-string v0, "icon"

    invoke-virtual {p1, v2, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private synthetic t0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->z0(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private static synthetic u0(Lg5/j;Lg5/j;)I
    .locals 2

    check-cast p0, Lg5/c;

    check-cast p1, Lg5/c;

    invoke-virtual {p0}, Lg5/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg5/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg5/c;->c()Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Lg5/c;->c()Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lg5/c;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lg5/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private z0(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/dock/edit/DockAppEditActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity$c;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Z)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public A0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lf5/k;

    invoke-direct {v0}, Lf5/k;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    or-int/lit16 p1, p1, 0x200

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/miui/dock/edit/DockAppEditActivity;->p0()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0e0031

    goto :goto_0

    :cond_1
    const p1, 0x7f0e0030

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/dock/edit/DockAppEditActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/dock/edit/DockAppEditActivity;->n0()V

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->k:Lcom/miui/dock/edit/DockAppEditActivity$d;

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/dock/edit/DockAppEditActivity$d;

    invoke-direct {p1, p0}, Lcom/miui/dock/edit/DockAppEditActivity$d;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;)V

    iput-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->k:Lcom/miui/dock/edit/DockAppEditActivity$d;

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->k:Lcom/miui/dock/edit/DockAppEditActivity$d;

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_2
    new-instance p1, Lcom/miui/dock/edit/DockAppEditActivity$e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity$e;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Lcom/miui/dock/edit/b;)V

    iput-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.fullscreen_state_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/miui/dock/edit/DockAppEditActivity;->B0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->l:Lj5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj5/a;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->k:Lcom/miui/dock/edit/DockAppEditActivity$d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->g(Lcom/miui/dock/edit/DockAppEditActivity$d;Z)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->k:Lcom/miui/dock/edit/DockAppEditActivity$d;

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lm5/a;->a(Landroid/view/Window;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity;->z0(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/dock/edit/DockAppEditActivity;->o0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lm5/a;->a(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public v0()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->k:Lcom/miui/dock/edit/DockAppEditActivity$d;

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    iget-object v2, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    invoke-virtual {v2}, Lcom/miui/dock/edit/c;->m()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/dock/edit/a;->K(Z)V

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public w0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/miui/dock/edit/DockAppEditActivity;->C0()V

    return-void
.end method

.method public x0(Lg5/j;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->d:Lcom/miui/dock/edit/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public y0(Lg5/j;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNormalAppLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockEditPage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lg5/k;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->m:Lg5/k;

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Lg5/k;

    iput-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->m:Lg5/k;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    instance-of v1, p1, Li5/c;

    if-nez v1, :cond_4

    instance-of v1, p1, Lg5/h;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lg5/h;

    iget-object v1, v1, Lg5/h;->b:Lg5/h$a;

    sget-object v2, Lg5/h$a;->a:Lg5/h$a;

    if-eq v1, v2, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    :cond_5
    :goto_2
    return-void
.end method
