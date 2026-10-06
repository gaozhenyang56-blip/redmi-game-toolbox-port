.class public Ly5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/b$a;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lh8/i;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:I

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroidx/recyclerview/widget/RecyclerView;

.field private i:Ly5/c;

.field private j:Landroidx/recyclerview/widget/GridLayoutManager;

.field private k:Ls8/h;

.field private l:Lcom/miui/gamebooster/beauty/conversation/view/LightView;

.field private m:Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

.field private n:Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

.field private o:Landroid/view/LayoutInflater;

.field private p:Landroid/database/ContentObserver;

.field private q:Landroid/os/Handler;

.field private r:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Ls8/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly5/i$a;

    invoke-direct {v0, p0}, Ly5/i$a;-><init>(Ly5/i;)V

    iput-object v0, p0, Ly5/i;->r:Landroid/view/View$OnAttachStateChangeListener;

    iput-object p1, p0, Ly5/i;->k:Ls8/h;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lz5/a;->b(Landroid/content/Context;)Lh8/i;

    move-result-object p1

    iput-object p1, p0, Ly5/i;->b:Lh8/i;

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lx5/p;->A(Ly5/i;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ly5/i;->q:Landroid/os/Handler;

    return-void
.end method

.method private C(Lh8/b;I)Z
    .locals 5

    instance-of v0, p1, Lc6/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lc6/c;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object v2

    sget-object v3, Ly5/i$h;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Ly5/i;->F(Lc6/c;I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object p1

    sget-object p2, Lg8/a;->q:Lg8/a;

    if-ne p1, p2, :cond_5

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->l()Lw5/a;

    move-result-object p1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lw5/f;->S(Lw5/a;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-static {p1}, Lw5/f;->Z(Lw5/a;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lw5/f;->b0()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ly5/i;->k:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->N0()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p2}, Ly5/i;->H(Lc6/c;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Ly5/i;->G(Lc6/c;I)V

    :goto_0
    move v1, v3

    :cond_5
    :goto_1
    return v1
.end method

.method private D(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private F(Lc6/c;I)V
    .locals 10

    iget-object v0, p0, Ly5/i;->n:Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Ly5/i;->o:Landroid/view/LayoutInflater;

    const v2, 0x7f0e00ff

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

    iput-object v0, p0, Ly5/i;->n:Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

    const v2, 0x7f0b055b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lx5/p;->E0()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f07066c

    goto :goto_0

    :cond_0
    const v4, 0x7f070753

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lx5/p;->E0()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    iget-object v3, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lx5/p;->E0()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f07092a

    goto :goto_2

    :cond_2
    const v4, 0x7f070944

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lx5/p;->E0()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0709f3

    goto :goto_3

    :cond_3
    const v5, 0x7f07057c

    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ge v6, v2, :cond_4

    if-lez v6, :cond_5

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_5

    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_5
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Ly5/i;->n:Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

    new-instance v2, Ly5/i$g;

    invoke-direct {v2, p0, p1, p2}, Ly5/i$g;-><init>(Ly5/i;Lc6/c;I)V

    invoke-virtual {v0, v2}, Le6/a;->setBackClick(Lb6/a;)V

    :cond_7
    iget-object p1, p0, Ly5/i;->n:Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

    invoke-direct {p0, p1}, Ly5/i;->p(Landroid/view/View;)V

    iget-object p1, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    iget-object p2, p0, Ly5/i;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Ly5/i;->r(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private G(Lc6/c;I)V
    .locals 3

    const-string v0, "ConversationViewAdapter"

    const-string v1, "showLightView: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ly5/i;->l:Lcom/miui/gamebooster/beauty/conversation/view/LightView;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly5/i;->o:Landroid/view/LayoutInflater;

    const v1, 0x7f0e0101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;

    iput-object v0, p0, Ly5/i;->l:Lcom/miui/gamebooster/beauty/conversation/view/LightView;

    new-instance v1, Ly5/h;

    invoke-direct {v1, p0, p1, p2}, Ly5/h;-><init>(Ly5/i;Lc6/c;I)V

    invoke-virtual {v0, v1}, Le6/a;->setBackClick(Lb6/a;)V

    :cond_0
    iget-object p1, p0, Ly5/i;->l:Lcom/miui/gamebooster/beauty/conversation/view/LightView;

    invoke-direct {p0, p1}, Ly5/i;->p(Landroid/view/View;)V

    iget-object p1, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    iget-object p2, p0, Ly5/i;->g:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ly5/i;->r(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private H(Lc6/c;I)V
    .locals 3

    const-string v0, "ConversationViewAdapter"

    const-string v1, "showPicupView: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ly5/i;->m:Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly5/i;->o:Landroid/view/LayoutInflater;

    const v1, 0x7f0e0102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

    iput-object v0, p0, Ly5/i;->m:Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

    new-instance v1, Ly5/g;

    invoke-direct {v1, p0, p1, p2}, Ly5/g;-><init>(Ly5/i;Lc6/c;I)V

    invoke-virtual {v0, v1}, Le6/a;->setBackClick(Lb6/a;)V

    :cond_0
    iget-object p1, p0, Ly5/i;->m:Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f()V

    iget-object p1, p0, Ly5/i;->m:Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

    invoke-direct {p0, p1}, Ly5/i;->p(Landroid/view/View;)V

    iget-object p1, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    iget-object p2, p0, Ly5/i;->g:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ly5/i;->r(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private I(Landroidx/recyclerview/widget/RecyclerView;Ly5/c;Lx5/e;)V
    .locals 2

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Lx5/e;->k()I

    move-result v0

    invoke-virtual {p2}, Ly5/c;->getItemCount()I

    move-result p2

    if-lt v0, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_6

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const v1, 0x7f0b064d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lh8/h;

    if-eqz v1, :cond_5

    check-cast v0, Lh8/h;

    invoke-virtual {p3, v0, p2}, Lx5/e;->w(Lh8/h;I)V

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic a(Ly5/i;Lc6/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly5/i;->v(Lc6/c;I)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Ly5/i;->u(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Ly5/i;Lc6/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly5/i;->w(Lc6/c;I)V

    return-void
.end method

.method public static synthetic e(Ly5/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ly5/i;->t(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Ly5/i;)Lh8/i;
    .locals 0

    iget-object p0, p0, Ly5/i;->b:Lh8/i;

    return-object p0
.end method

.method static synthetic g(Ly5/i;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ly5/i;->q:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Ly5/i;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Ly5/i;->h:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic i(Ly5/i;)Ly5/c;
    .locals 0

    iget-object p0, p0, Ly5/i;->i:Ly5/c;

    return-object p0
.end method

.method static synthetic j(Ly5/i;Landroidx/recyclerview/widget/RecyclerView;Ly5/c;Lx5/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ly5/i;->I(Landroidx/recyclerview/widget/RecyclerView;Ly5/c;Lx5/e;)V

    return-void
.end method

.method static synthetic k(Ly5/i;)Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;
    .locals 0

    iget-object p0, p0, Ly5/i;->n:Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

    return-object p0
.end method

.method static synthetic l(Ly5/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ly5/i;->D(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Ly5/i;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic n(Ly5/i;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Ly5/i;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic o(Ly5/i;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ly5/i;->r(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ly5/i;->D(Landroid/view/View;)V

    iget-object v0, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "ConversationViewAdapter"

    const-string v1, "addView error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private r(Landroid/view/View;Landroid/view/View;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071f1e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->b()I

    move-result v5

    iget v6, v0, Ly5/i;->e:I

    if-nez v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v0, Ly5/i;->e:I

    :cond_0
    new-instance v6, Ly5/i$e;

    invoke-direct {v6, v0, v3, v1}, Ly5/i$e;-><init>(Ly5/i;ZLandroid/view/View;)V

    new-instance v7, Ly5/i$f;

    invoke-direct {v7, v0, v3, v2}, Ly5/i$f;-><init>(Ly5/i;ZLandroid/view/View;)V

    const/4 v8, 0x1

    new-array v9, v8, [Landroid/view/View;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v9}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string v11, "start"

    invoke-direct {v9, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v12, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    if-eqz v3, :cond_1

    neg-int v15, v4

    int-to-double v13, v15

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0x0

    :goto_0
    invoke-virtual {v9, v12, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    new-instance v13, Lmiuix/animation/controller/AnimState;

    const-string v14, "end"

    invoke-direct {v13, v14}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    move-object/from16 p2, v11

    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_2
    neg-int v15, v4

    move-object/from16 p2, v11

    int-to-double v10, v15

    :goto_1
    invoke-virtual {v13, v12, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v10

    new-array v11, v8, [Lmiuix/animation/base/AnimConfig;

    new-instance v13, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v13}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v15, 0x2

    new-array v8, v15, [F

    fill-array-data v8, :array_0

    const/4 v15, -0x2

    invoke-virtual {v13, v15, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    const/4 v13, 0x1

    new-array v15, v13, [Lmiuix/animation/listener/TransitionListener;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-virtual {v8, v15}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    aput-object v7, v11, v16

    invoke-interface {v2, v9, v10, v11}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v2, v13, [Landroid/view/View;

    aput-object v1, v2, v16

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    move-object/from16 v7, p2

    invoke-direct {v2, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_3
    int-to-double v8, v4

    :goto_2
    invoke-virtual {v2, v12, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-instance v8, Lmiuix/animation/controller/AnimState;

    invoke-direct {v8, v14}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    int-to-double v9, v4

    goto :goto_3

    :cond_4
    const-wide/16 v9, 0x0

    :goto_3
    invoke-virtual {v8, v12, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    const/4 v8, 0x1

    new-array v9, v8, [Lmiuix/animation/base/AnimConfig;

    new-instance v10, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v10}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v11, 0x2

    new-array v12, v11, [F

    fill-array-data v12, :array_1

    const/4 v11, -0x2

    invoke-virtual {v10, v11, v12}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    new-array v11, v8, [Lmiuix/animation/listener/TransitionListener;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v10, v11}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    aput-object v6, v9, v12

    invoke-interface {v1, v2, v4, v9}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    invoke-static {}, Lc5/a;->a()Z

    move-result v1

    if-nez v1, :cond_7

    new-array v1, v8, [Landroid/view/View;

    iget-object v2, v0, Ly5/i;->d:Landroid/view/ViewGroup;

    aput-object v2, v1, v12

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    if-eqz v3, :cond_5

    int-to-double v6, v5

    goto :goto_4

    :cond_5
    iget v6, v0, Ly5/i;->e:I

    int-to-double v6, v6

    :goto_4
    invoke-virtual {v2, v4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6, v14}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz v3, :cond_6

    iget v3, v0, Ly5/i;->e:I

    int-to-double v7, v3

    goto :goto_5

    :cond_6
    int-to-double v7, v5

    :goto_5
    invoke-virtual {v6, v4, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    const/4 v7, -0x2

    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v1, v2, v3, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Ly5/i;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Ly5/i$c;

    invoke-direct {v1, p0}, Ly5/i$c;-><init>(Ly5/i;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ly5/i;->a:Landroid/content/Context;

    const-class v1, Lcom/miui/dock/settings/DockSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->T()Lx5/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lx5/e;->x()V

    :cond_0
    return-void
.end method

.method private static synthetic u(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic v(Lc6/c;I)V
    .locals 1

    invoke-static {}, Ld6/a;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Lc6/c;->q(Z)V

    iget-object p1, p0, Ly5/i;->i:Ly5/c;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    iget-object p1, p0, Ly5/i;->l:Lcom/miui/gamebooster/beauty/conversation/view/LightView;

    invoke-direct {p0, p1}, Ly5/i;->D(Landroid/view/View;)V

    iget-object p1, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    iget-object p2, p0, Ly5/i;->g:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ly5/i;->r(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic w(Lc6/c;I)V
    .locals 1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->x0()Z

    move-result v0

    invoke-virtual {p1, v0}, Lc6/c;->q(Z)V

    iget-object p1, p0, Ly5/i;->i:Ly5/c;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    iget-object p1, p0, Ly5/i;->m:Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

    invoke-direct {p0, p1}, Ly5/i;->D(Landroid/view/View;)V

    iget-object p1, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    iget-object p2, p0, Ly5/i;->g:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ly5/i;->r(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    sget-object v0, Lg8/a;->s:Lg8/a;

    invoke-virtual {p0, v0}, Ly5/i;->B(Lg8/a;)V

    iget-object v0, p0, Ly5/i;->m:Lcom/miui/gamebooster/beauty/conversation/view/PickupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g()V

    :cond_0
    return-void
.end method

.method public B(Lg8/a;)V
    .locals 4

    iget-object v0, p0, Ly5/i;->b:Lh8/i;

    invoke-virtual {v0}, Lh8/i;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/h;

    invoke-virtual {v2}, Lh8/h;->j()Lg8/a;

    move-result-object v3

    if-ne v3, p1, :cond_0

    check-cast v2, Lc6/c;

    invoke-virtual {v2}, Lc6/c;->p()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ly5/i;->x(I)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSpecialItem. type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", find in box : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConversationViewAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public E(Lg8/a;)V
    .locals 2

    iget-object v0, p0, Ly5/i;->i:Ly5/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ly5/i;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Ly5/c;->v(Landroidx/recyclerview/widget/RecyclerView;Lg8/a;)V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 4

    iget-object v0, p0, Ly5/i;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ly5/i;->i:Ly5/c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ly5/i$d;

    invoke-direct {v1, p0}, Ly5/i$d;-><init>(Ly5/i;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lh8/b;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ly5/i;->C(Lh8/b;I)Z

    move-result v0

    invoke-virtual {p1, p2}, Lh8/b;->onClick(Landroid/view/View;)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->T()Lx5/e;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, p1, Lc6/c;

    if-eqz v2, :cond_0

    check-cast p1, Lc6/c;

    invoke-virtual {v1, p1, p3, v0}, Lx5/e;->u(Lc6/c;IZ)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ly5/i;->x(I)V

    :cond_1
    return-void
.end method

.method public q(Landroid/content/Context;Z)Landroid/view/View;
    .locals 6

    iput-object p1, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Ly5/i;->o:Landroid/view/LayoutInflater;

    iget-object p2, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-static {p2}, Lx5/p;->a0(Landroid/content/Context;)Z

    move-result p2

    iget-object v0, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07030f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iget-object v0, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070311

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    invoke-static {p1}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object v2

    const v3, 0x7f0e00b0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ls8/x;->g(IZ)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Ly5/i;->o:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    :cond_1
    iget-object v2, p0, Ly5/i;->o:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    invoke-static {v2, v4}, La8/k0;->o(Landroid/view/View;Z)V

    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b073a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Ly5/i;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b0733

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Ly5/i;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b0a2e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Ly5/i;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b0cf3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-static {v3}, Lx5/p;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b0ccb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ly5/d;

    invoke-direct {v3, p0}, Ly5/d;-><init>(Ly5/i;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    new-instance v3, Ly5/e;

    invoke-direct {v3}, Ly5/e;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b0739

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Ly5/i;->d:Landroid/view/ViewGroup;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Ly5/i;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Ly5/i;->j:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p2, p0, Ly5/i;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p2, Ly5/c;

    iget-object v2, p0, Ly5/i;->b:Lh8/i;

    invoke-virtual {v2}, Lh8/i;->l()Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, v2}, Ly5/c;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Ly5/i;->i:Ly5/c;

    new-instance v2, Ly5/f;

    invoke-direct {v2, p0}, Ly5/f;-><init>(Ly5/i;)V

    invoke-virtual {p2, v2}, Ly5/c;->u(Lh8/b$a;)V

    iget-object p2, p0, Ly5/i;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Ly5/i;->i:Ly5/c;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p2

    invoke-virtual {p2}, Lx5/p;->b0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, La8/g0;->p(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ly5/i;->p:Landroid/database/ContentObserver;

    if-nez p1, :cond_2

    new-instance p1, Ly5/i$b;

    iget-object p2, p0, Ly5/i;->q:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Ly5/i$b;-><init>(Ly5/i;Landroid/os/Handler;)V

    iput-object p1, p0, Ly5/i;->p:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lj8/a;->b:Landroid/net/Uri;

    iget-object v2, p0, Ly5/i;->p:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object p1, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    iget-object p2, p0, Ly5/i;->r:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0}, Ly5/i;->s()V

    iget-object p1, p0, Ly5/i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Ly5/i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public x(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Ly5/i;->i:Ly5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 3

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->U0()V

    iget-object v0, p0, Ly5/i;->p:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Ly5/i;->p:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Ly5/i;->p:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Ly5/i;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Ly5/i;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Ly5/i;->r:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Ly5/i;->i:Ly5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
