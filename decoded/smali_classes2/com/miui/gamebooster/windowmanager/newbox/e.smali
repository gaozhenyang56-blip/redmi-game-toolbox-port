.class public Lcom/miui/gamebooster/windowmanager/newbox/e;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private A:Ls8/h;

.field private B:Landroid/os/Handler;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Landroid/content/Context;

.field private x:Ld5/d;

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/miui/dock/sidebar/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/miui/dock/sidebar/j;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->y:Ljava/util/List;

    iput-boolean p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->v:Z

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->u:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->w:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->B:Landroid/os/Handler;

    iput-object p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->z:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p4}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->A:Ls8/h;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/e;->E()V

    return-void
.end method

.method public static synthetic A(Lcom/miui/gamebooster/windowmanager/newbox/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e;->H(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic B(Lcom/miui/gamebooster/windowmanager/newbox/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/e;->G()V

    return-void
.end method

.method public static synthetic C(Lcom/miui/gamebooster/windowmanager/newbox/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e;->F(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/miui/gamebooster/windowmanager/newbox/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/e;->I()V

    return-void
.end method

.method private E()V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Ld5/d;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->z:Lcom/miui/dock/sidebar/j;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->y:Ljava/util/List;

    iget-boolean v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->v:Z

    invoke-direct {v0, v1, v2, v3}, Ld5/d;-><init>(Lcom/miui/dock/sidebar/j;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->x:Ld5/d;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/b;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/e;)V

    invoke-virtual {v0, v1}, Ld5/d;->y(Ld5/d$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->x:Ld5/d;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method private synthetic F(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->A:Ls8/h;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->z:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1, v0}, Ls8/h;->L(Lcom/miui/dock/sidebar/j;)V

    :cond_0
    return-void
.end method

.method private synthetic G()V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->x:Ld5/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ld5/d;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lm5/f;->g(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/q;

    iget v3, v2, Lg5/q;->c:I

    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, -0x2

    :cond_2
    iget-object v4, v2, Lg5/q;->a:Ljava/lang/String;

    iget-object v5, v2, Lg5/q;->b:Ljava/lang/String;

    iget v6, v2, Lg5/q;->d:I

    iget-object v2, v2, Lg5/q;->e:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v2}, Ll5/b;->e(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->x:Ld5/d;

    invoke-virtual {v0}, Ld5/d;->n()V

    return-void
.end method

.method private synthetic H(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->x:Ld5/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic I()V
    .locals 3

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    invoke-virtual {v0}, Lf5/v;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->B:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/miui/gamebooster/windowmanager/newbox/d;

    invoke-direct {v2, p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/d;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/e;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public J()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/gamebooster/windowmanager/newbox/e;->L()V

    return-void
.end method

.method public K(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->u:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->v:Z

    const-string v2, "gameturbo_main_pannel_dock"

    invoke-static {v2, v0, v1, p1}, Lcom/miui/gamebooster/utils/a$n;->L(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public L()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/c;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/e;)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->A:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->B:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/e;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->A:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e;->A:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->K()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
