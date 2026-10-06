.class public Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/miui/gamebooster/customview/y;

.field private f:Lcom/miui/gamebooster/windowmanager/newbox/n;

.field private g:Lg6/a;

.field private h:Lcom/miui/gamebooster/customview/c;

.field private i:Lcom/miui/gamebooster/customview/k;

.field private j:Lw6/f;

.field private k:Lcom/miui/gamebooster/windowmanager/newbox/n0;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Ljava/lang/String;

.field private n:I

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->z()V

    return-void
.end method

.method private synthetic A(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p5

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->g:Lg6/a;

    invoke-virtual {p5, v0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p3, p4}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->J(ZI)V

    return-void
.end method

.method private synthetic B(Lcom/miui/gamebooster/model/n;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 1

    iget-object p6, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-static {p6, v0}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object p6

    invoke-virtual {p6}, Lx6/b;->c()Z

    move-result p6

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08060c

    goto :goto_0

    :cond_0
    const v0, 0x7f08060d

    goto :goto_0

    :cond_1
    const v0, 0x7f080600

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/model/n;->w(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    if-eqz p6, :cond_2

    const p6, 0x7f120a52

    goto :goto_1

    :cond_2
    const p6, 0x7f120a4f

    :goto_1
    invoke-virtual {v0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6}, Lcom/miui/gamebooster/model/n;->u(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object p6, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->j:Lw6/f;

    invoke-virtual {p1, p6, p2, p3}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p4, p5}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->J(ZI)V

    return-void
.end method

.method private synthetic C(Lcom/miui/gamebooster/windowmanager/newbox/k0;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private synthetic D(Lcom/miui/gamebooster/aihelper/i;)Loj/t;
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic E(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private synthetic F(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p5

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {p5, v0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p3, p4}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->J(ZI)V

    return-void
.end method

.method private synthetic G(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p5

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->i:Lcom/miui/gamebooster/customview/k;

    invoke-virtual {p5, v0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p3, p4}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->J(ZI)V

    return-void
.end method

.method private synthetic H(I)V
    .locals 4

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->e:Lcom/miui/gamebooster/customview/y;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v3}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->I(I)V

    return-void
.end method

.method private I(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->d:Lq6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private J(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/n;->k(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->I(I)V

    :goto_0
    return-void
.end method

.method private K(ILq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->L(IZLq6/i;Lcom/miui/gamebooster/model/n;)V

    return-void
.end method

.method private M(Landroid/content/Context;I)V
    .locals 9

    invoke-static {p1}, La8/j2;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La8/o0;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ll7/b;->b()Ll7/b;

    move-result-object v1

    const v0, 0x7f120bc2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120bc0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120bc1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$d;

    invoke-direct {v8, p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$d;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;I)V

    const-string v6, "https://xunyou.mobi/article-4584.html"

    const-string v7, "xunyou_voice"

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Ll7/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->Q(I)V

    return-void
.end method

.method private N(ILn6/c;Z)V
    .locals 9

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getThirdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    :goto_1
    move-object v7, v1

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h:Lcom/miui/gamebooster/customview/c;

    if-nez v1, :cond_3

    sget-object v1, Ln6/c;->C:Ln6/c;

    if-ne p2, v1, :cond_2

    new-instance p2, Lcom/miui/gamebooster/customview/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/miui/gamebooster/customview/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h:Lcom/miui/gamebooster/customview/c;

    move-object v1, p2

    check-cast v1, Lcom/miui/gamebooster/customview/g;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$e;

    invoke-direct {v1, p0, v7}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$e;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v1}, Lcom/miui/gamebooster/customview/g;->setPageChangeListener(Lcom/miui/gamebooster/customview/c$e;)V

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/miui/gamebooster/customview/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/miui/gamebooster/customview/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h:Lcom/miui/gamebooster/customview/c;

    :goto_2
    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h:Lcom/miui/gamebooster/customview/c;

    new-instance v8, Lcom/miui/gamebooster/windowmanager/newbox/z;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move v5, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/z;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZI)V

    invoke-virtual {p2, v8}, Lcom/miui/gamebooster/customview/c;->setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_3
    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {p1, p2, v7, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private O(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getThirdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    :goto_1
    move-object v7, v1

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->i:Lcom/miui/gamebooster/customview/k;

    if-nez v1, :cond_2

    new-instance v8, Lcom/miui/gamebooster/customview/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Lcom/miui/gamebooster/customview/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->i:Lcom/miui/gamebooster/customview/k;

    new-instance v9, Lcom/miui/gamebooster/windowmanager/newbox/w;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/w;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZI)V

    invoke-virtual {v8, v9}, Lcom/miui/gamebooster/customview/k;->setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_2
    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->i:Lcom/miui/gamebooster/customview/k;

    invoke-virtual {p1, p2, v7, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private P(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0b0447

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, La8/o0;->h()Z

    move-result v1

    const v2, 0x7f0b044c

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0602f7

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06030d

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private Q(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVoiceChangeView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameToolboxMainView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->e:Lcom/miui/gamebooster/customview/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/customview/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->e:Lcom/miui/gamebooster/customview/y;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getStatusListener()Ls8/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/y;->setOnStatusChangeListener(Ls8/w;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->e:Lcom/miui/gamebooster/customview/y;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/y;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/y;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;I)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/y;->setBackClick(Lcom/miui/gamebooster/customview/y$j;)V

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->e:Lcom/miui/gamebooster/customview/y;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private R(Ljava/util/List;)V
    .locals 4
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

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v2

    const v3, 0x98e567

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p:Ljava/util/List;

    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "splitFunctionData: mainFunction = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " moreFunction = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameToolboxMainView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->G(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/windowmanager/newbox/k0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->C(Lcom/miui/gamebooster/windowmanager/newbox/k0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/model/n;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->B(Lcom/miui/gamebooster/model/n;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->H(I)V

    return-void
.end method

.method public static synthetic j(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->A(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->F(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->E(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/aihelper/i;)Loj/t;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->D(Lcom/miui/gamebooster/aihelper/i;)Loj/t;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic o(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;ILq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->K(ILq6/i;Lcom/miui/gamebooster/model/n;)V

    return-void
.end method

.method static synthetic p(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->Q(I)V

    return-void
.end method

.method static synthetic r(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Lcom/miui/gamebooster/customview/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h:Lcom/miui/gamebooster/customview/c;

    return-object p0
.end method

.method static synthetic s(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic t(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Lcom/miui/gamebooster/windowmanager/newbox/n0;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->k:Lcom/miui/gamebooster/windowmanager/newbox/n0;

    return-object p0
.end method

.method static synthetic u(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->J(ZI)V

    return-void
.end method

.method private v(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getThirdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    :goto_1
    move-object v7, v1

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->g:Lg6/a;

    if-nez v1, :cond_2

    new-instance v8, Lg6/a;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-direct {v8, v1, v2, v3}, Lg6/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v8, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->g:Lg6/a;

    new-instance v9, Lcom/miui/gamebooster/windowmanager/newbox/v;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/v;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZI)V

    invoke-virtual {v8, v9}, Lg6/a;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_2
    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->g:Lg6/a;

    invoke-virtual {p1, p2, v7, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private w(IZLcom/miui/gamebooster/model/n;)V
    .locals 11

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getThirdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    :goto_1
    move-object v8, v1

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->j:Lw6/f;

    if-nez v1, :cond_2

    new-instance v9, Lw6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-direct {v9, v1, v2, v3}, Lw6/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->j:Lw6/f;

    new-instance v10, Lcom/miui/gamebooster/windowmanager/newbox/x;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p3

    move-object v4, v8

    move-object v5, v0

    move v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/windowmanager/newbox/x;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/model/n;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZI)V

    invoke-virtual {v9, v10}, Lw6/f;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lw6/f;->t()V

    :goto_2
    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->j:Lw6/f;

    invoke-virtual {p1, p2, v8, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private x(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getThirdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    :goto_1
    move-object v7, v1

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->k:Lcom/miui/gamebooster/windowmanager/newbox/n0;

    if-nez v1, :cond_2

    new-instance v8, Lcom/miui/gamebooster/windowmanager/newbox/n0;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/n0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->k:Lcom/miui/gamebooster/windowmanager/newbox/n0;

    new-instance v9, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZI)V

    invoke-virtual {v8, v9}, Lcom/miui/gamebooster/windowmanager/newbox/n0;->d(Lcom/miui/gamebooster/windowmanager/newbox/n0$b;)Lcom/miui/gamebooster/windowmanager/newbox/n0;

    :cond_2
    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->k:Lcom/miui/gamebooster/windowmanager/newbox/n0;

    invoke-virtual {p1, p2, v7, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    const-string p1, "manual_record"

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const/4 p1, 0x3

    const-string p2, "wonderful_moment_red_point"

    invoke-static {p2, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method private y()V
    .locals 4

    const v0, 0x7f0b09d0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->c:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isForceDarkAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    :cond_0
    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-virtual {v0, v1, v2, v3}, Lve/k;->P(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->saveAIFunctionSupport(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->switchTab(Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->q:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->R(Ljava/util/List;)V

    new-instance v0, Lcom/miui/gamebooster/customview/recyclerview/UnscrollableGridLayoutManager;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/customview/recyclerview/UnscrollableGridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->d:Lq6/f;

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$b;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->d:Lq6/f;

    invoke-virtual {v1, v0}, Lq6/f;->o(Lq6/b;)Lq6/f;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$c;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$c;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->d:Lq6/f;

    invoke-virtual {v2, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->d:Lq6/f;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o:Ljava/util/List;

    invoke-virtual {v1, v2}, Lq6/f;->p(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->d:Lq6/f;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/r;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/r;-><init>(Landroid/content/Context;Lu8/b;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method private z()V
    .locals 2

    const-string v0, "GameToolboxMainView"

    const-string v1, "init GameToolboxMainView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01a8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    invoke-static {}, La8/u0;->c()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->y()V

    return-void
.end method


# virtual methods
.method public L(IZLq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 5

    invoke-virtual {p4}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickToolItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameToolboxMainView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$g;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p4}, Lcom/miui/gamebooster/model/n;->e()I

    move-result p3

    if-nez p3, :cond_2

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object p3

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/miui/gamebooster/model/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lve/k;->L(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object p3

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/model/ActiveModel;->setUid(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    sget-object v2, Lve/d;->c:Lve/d;

    invoke-static {v1, p3, v2}, Lve/e;->a(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {p3}, La8/k0;->j(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->x(IZ)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->O(IZ)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->w(IZLcom/miui/gamebooster/model/n;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {p3}, La8/l0;->i(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object p3

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lp7/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    invoke-static {v1, p3, v2}, La8/l0;->r(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->J(ZI)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1, p3}, La8/l0;->s(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1, p3}, La8/l0;->t(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    if-nez p3, :cond_1

    new-instance p3, Lcom/miui/gamebooster/windowmanager/newbox/n;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/n;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    :cond_1
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p:Ljava/util/List;

    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/n;->setMoreToolsFunctionData(Ljava/util/List;)V

    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    invoke-virtual {p3, p0}, Lcom/miui/gamebooster/windowmanager/newbox/n;->setMainView(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)V

    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/u;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/u;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)V

    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/n;->setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p3

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v3}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p3, v1, v2, v3}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-direct {p0, v1, p3}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->P(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->N(ILn6/c;Z)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1, p3}, La8/l0;->p(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {p3}, La8/l0;->m(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->v(IZ)V

    goto/16 :goto_0

    :pswitch_10
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n:I

    invoke-static {p3, v1, v3, v2}, Le7/b;->k(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1, p3, v2}, La8/l0;->o(Landroid/content/Context;Landroid/view/View;Z)V

    goto/16 :goto_0

    :pswitch_12
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {p3}, La8/l0;->n(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {p3}, La8/l0;->j(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_14
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-direct {p0, p3, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->M(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_15
    new-instance p3, Lcom/miui/gamebooster/aihelper/i;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/miui/gamebooster/aihelper/i;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/t;

    invoke-direct {v1, p0, p3}, Lcom/miui/gamebooster/windowmanager/newbox/t;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/aihelper/i;)V

    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/aihelper/i;->setBackListener(Lak/a;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v3}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/aihelper/i;->l(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_16
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/miui/gamebooster/model/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7f1209a8

    invoke-static {p3, v1, v3, v4, v2}, La8/a0;->S(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;IZ)V

    goto :goto_0

    :pswitch_17
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {p3}, La8/l0;->h(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_18
    new-instance p3, Lcom/miui/gamebooster/windowmanager/newbox/k0;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/k0;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->setRootView(Lcom/miui/gamebooster/windowmanager/newbox/d0;)V

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/s;

    invoke-direct {v1, p0, p3}, Lcom/miui/gamebooster/windowmanager/newbox/s;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/windowmanager/newbox/k0;)V

    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v3}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getMainContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->a:Landroid/content/Context;

    invoke-static {p3, v0}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

    invoke-static {p4, p1, p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->functionClick(Lcom/miui/gamebooster/model/n;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setOnBrightnessChange(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRootView(Lcom/miui/gamebooster/windowmanager/newbox/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
