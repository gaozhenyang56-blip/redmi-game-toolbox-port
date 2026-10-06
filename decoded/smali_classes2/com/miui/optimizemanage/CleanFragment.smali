.class public Lcom/miui/optimizemanage/CleanFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Landroid/view/View$OnClickListener;
.implements Lfb/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/CleanFragment$p;,
        Lcom/miui/optimizemanage/CleanFragment$m;,
        Lcom/miui/optimizemanage/CleanFragment$j;,
        Lcom/miui/optimizemanage/CleanFragment$q;,
        Lcom/miui/optimizemanage/CleanFragment$s;,
        Lcom/miui/optimizemanage/CleanFragment$t;,
        Lcom/miui/optimizemanage/CleanFragment$r;,
        Lcom/miui/optimizemanage/CleanFragment$k;,
        Lcom/miui/optimizemanage/CleanFragment$l;,
        Lcom/miui/optimizemanage/CleanFragment$o;,
        Lcom/miui/optimizemanage/CleanFragment$n;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/Fragment;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Ljb/f;",
        ">;>;",
        "Landroid/view/View$OnClickListener;",
        "Lfb/a$b;"
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lw4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw4/d<",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile C:Z

.field private D:J

.field private E:J

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

.field private h:Landroidx/recyclerview/widget/RecyclerView;

.field private i:Lfb/a;

.field private j:Ljava/lang/Object;

.field private k:Landroid/content/pm/PackageManager;

.field private l:Ljb/g;

.field private m:Ljb/h;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljb/f;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljb/b;",
            ">;"
        }
    .end annotation
.end field

.field private y:[Ljb/j;

.field private z:Ljb/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->w:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    sget-object v0, Ljb/i;->a:Ljb/i;

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->z:Ljb/i;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->A:Landroid/os/Handler;

    return-void
.end method

.method private A0(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;)J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/f;

    iget-boolean v3, v0, Ljb/f;->e:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v3, v0, Ljb/f;->m:Z

    if-eqz v3, :cond_1

    iget-wide v3, v0, Ljb/f;->d:J

    add-long/2addr v1, v3

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method private B0()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Ljb/j;

    sget-object v2, Ljb/j;->a:Ljb/j;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljb/j;->b:Ljb/j;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljb/j;->c:Ljb/j;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->y:[Ljb/j;

    :goto_0
    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->y:[Ljb/j;

    array-length v2, v1

    if-ge v3, v2, :cond_4

    aget-object v1, v1, v3

    const/4 v2, 0x0

    sget-object v6, Lcom/miui/optimizemanage/CleanFragment$i;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_2

    if-eq v6, v5, :cond_1

    if-eq v6, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljb/b;

    const v6, 0x7f120f5b

    invoke-direct {v2, v1, v6}, Ljb/b;-><init>(Ljb/j;I)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljb/b;

    const v6, 0x7f120f5a

    invoke-direct {v2, v1, v6}, Ljb/b;-><init>(Ljb/j;I)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljb/b;

    const v6, 0x7f120f5c

    invoke-direct {v2, v1, v6}, Ljb/b;-><init>(Ljb/j;I)V

    :goto_1
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lfb/a;

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-direct {v0, v1}, Lfb/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p0}, Lfb/a;->t(Lfb/a$b;)V

    return-void
.end method

.method private C0(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->j:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/optimizemanage/CleanFragment;->k:Landroid/content/pm/PackageManager;

    invoke-static {v1, v2, p1, v0, p2}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    move v0, p2

    :catch_0
    :cond_0
    return v0
.end method

.method private F0()V
    .locals 6

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/optimizemanage/CleanFragment;->D:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/optimizemanage/CleanFragment;->E:J

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/optimizemanage/CleanFragment;->s:J

    invoke-virtual {v0, v2, v3}, Lgb/b;->w(J)V

    sget-object v0, Ljb/i;->c:Ljb/i;

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/CleanFragment;->W0(Ljb/i;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/b;

    invoke-virtual {v0}, Ljb/b;->h()Ljb/j;

    move-result-object v0

    sget-object v2, Ljb/j;->a:Ljb/j;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, v1}, Lfb/a;->n(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private G0(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    const-string v1, "check_state_change"

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->X0(Z)V

    return-void
.end method

.method private H0(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    const-string v1, "check_state_change"

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(IILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->X0(Z)V

    return-void
.end method

.method private I0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->X0(Z)V

    return-void
.end method

.method private J0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->o:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->l()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/CleanFragment;->C:Z

    :cond_0
    return-void
.end method

.method private K0(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b083a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const v2, 0x7f071662

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lbl/i;->q(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lbl/i;->h(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v4, 0x7f071661

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    float-to-int v2, v2

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private L0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0b09e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071668

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071667

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private M0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lx4/t;->i(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lx4/t;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lx4/t;->h()I

    move-result v2

    const/16 v3, 0x780

    if-gt v0, v3, :cond_2

    const v0, 0x7f071672

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f071680

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/optimizemanage/CleanFragment;->O0(II)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x9

    if-gt v2, v0, :cond_3

    const v0, 0x7f071673

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f071681

    goto :goto_1

    :cond_3
    const v0, 0x7f071671

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f07167f

    goto :goto_1

    :goto_2
    return-void
.end method

.method private N0(Landroid/view/View;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lfb/a$c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfb/a$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lfb/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private O0(II)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/CleanFragment;->u:I

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private P0()V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/miui/optimizemanage/CleanFragment;->v:I

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/miui/optimizemanage/CleanFragment$r;

    invoke-direct {v5, p0}, Lcom/miui/optimizemanage/CleanFragment$r;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/optimizemanage/CleanFragment$e;

    invoke-direct {v5, p0}, Lcom/miui/optimizemanage/CleanFragment$e;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/optimizemanage/CleanFragment$k;

    invoke-direct {v3, p0}, Lcom/miui/optimizemanage/CleanFragment$k;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljb/b;

    sget-object v10, Lcom/miui/optimizemanage/CleanFragment$i;->a:[I

    invoke-virtual {v8}, Ljb/b;->h()Ljb/j;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v9, :cond_2

    if-eq v10, v2, :cond_1

    const/4 v9, 0x3

    if-eq v10, v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljb/b;->e()I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljb/b;->e()I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljb/b;->e()I

    move-result v7

    goto :goto_0

    :cond_3
    add-int/2addr v5, v6

    add-int/2addr v5, v7

    int-to-float v3, v7

    int-to-float v5, v5

    div-float/2addr v3, v5

    int-to-float v8, v6

    div-float/2addr v8, v5

    int-to-float v1, v1

    mul-float/2addr v3, v1

    float-to-long v10, v3

    mul-float/2addr v8, v1

    float-to-long v12, v8

    if-lez v7, :cond_4

    sget-object v1, Ljb/j;->a:Ljb/j;

    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/CleanFragment;->z0(Ljb/j;)Landroid/view/View;

    move-result-object v1

    new-array v3, v2, [I

    aput v7, v3, v4

    aput v4, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/miui/optimizemanage/CleanFragment$t;

    invoke-direct {v5, p0, v1}, Lcom/miui/optimizemanage/CleanFragment$t;-><init>(Lcom/miui/optimizemanage/CleanFragment;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-lez v6, :cond_5

    sget-object v1, Ljb/j;->b:Ljb/j;

    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/CleanFragment;->z0(Ljb/j;)Landroid/view/View;

    move-result-object v1

    new-array v2, v2, [I

    aput v6, v2, v4

    aput v4, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/miui/optimizemanage/CleanFragment$s;

    invoke-direct {v3, p0, v1}, Lcom/miui/optimizemanage/CleanFragment$s;-><init>(Lcom/miui/optimizemanage/CleanFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
        0x44340000    # 720.0f
        0x44b40000    # 1440.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private Q0(Z)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/optimizemanage/ResultFragment;

    invoke-direct {v1}, Lcom/miui/optimizemanage/ResultFragment;-><init>()V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "do_clean_anim"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "is_scanned"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v6, p0, Lcom/miui/optimizemanage/CleanFragment;->s:J

    const-string v4, "cleanable_size"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v6, p0, Lcom/miui/optimizemanage/CleanFragment;->E:J

    const-string v4, "scan_time"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v3, 0x7f0b0980

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "result_fragment"

    invoke-virtual {v2, v3, v1, v4}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    invoke-virtual {v2}, Landroidx/fragment/app/s;->l()I

    iget-object v2, p0, Lcom/miui/optimizemanage/CleanFragment;->o:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->o0(Landroidx/fragment/app/Fragment;)V

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean v5, p0, Lcom/miui/optimizemanage/CleanFragment;->C:Z

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->A:Landroid/os/Handler;

    new-instance v0, Lcom/miui/optimizemanage/a;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/a;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->g:Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    invoke-virtual {p1}, Lcom/miui/common/ui/a;->d()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->y0()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->o:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g0(Z)V

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->l()I

    :cond_4
    :goto_0
    return-void
.end method

.method private R0()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/miui/optimizemanage/CleanFragment;->v:I

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/miui/optimizemanage/CleanFragment$o;

    invoke-direct {v5, p0}, Lcom/miui/optimizemanage/CleanFragment$o;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/optimizemanage/CleanFragment$a;

    invoke-direct {v5, p0}, Lcom/miui/optimizemanage/CleanFragment$a;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/miui/optimizemanage/CleanFragment$l;

    invoke-direct {v6, p0}, Lcom/miui/optimizemanage/CleanFragment$l;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/miui/optimizemanage/CleanFragment;->p:I

    iget v6, p0, Lcom/miui/optimizemanage/CleanFragment;->q:I

    add-int/2addr v5, v6

    iget v7, p0, Lcom/miui/optimizemanage/CleanFragment;->r:I

    add-int/2addr v5, v7

    int-to-float v8, v7

    int-to-float v5, v5

    div-float/2addr v8, v5

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v1, v1

    mul-float/2addr v8, v1

    float-to-long v8, v8

    mul-float/2addr v6, v1

    float-to-long v5, v6

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-lez v7, :cond_0

    new-array v11, v2, [I

    aput v7, v11, v10

    aput v10, v11, v1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/miui/optimizemanage/CleanFragment$b;

    invoke-direct {v11, p0}, Lcom/miui/optimizemanage/CleanFragment$b;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v7, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v7, p0, Lcom/miui/optimizemanage/CleanFragment;->q:I

    if-lez v7, :cond_1

    new-array v11, v2, [I

    aput v7, v11, v10

    aput v10, v11, v1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v11, Lcom/miui/optimizemanage/CleanFragment$c;

    invoke-direct {v11, p0}, Lcom/miui/optimizemanage/CleanFragment$c;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v7, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v7, p0, Lcom/miui/optimizemanage/CleanFragment;->p:I

    if-lez v7, :cond_2

    new-array v2, v2, [I

    aput v7, v2, v10

    aput v10, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    sub-long/2addr v3, v8

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    add-long/2addr v8, v5

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/miui/optimizemanage/CleanFragment$d;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/CleanFragment$d;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Ljb/j;->c:Ljb/j;

    invoke-direct {p0, v2, v1}, Lcom/miui/optimizemanage/CleanFragment;->T0(Ljb/j;I)V

    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x44340000    # 720.0f
        0x43b40000    # 360.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private S0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private T0(Ljb/j;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljb/b;

    invoke-virtual {v1}, Ljb/b;->h()Ljb/j;

    move-result-object v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1, p2}, Ljb/b;->m(I)V

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->z0(Ljb/j;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfb/a$c;

    iget-object p2, p1, Lfb/a$c;->e:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x168

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Ljb/k;

    invoke-direct {v0}, Ljb/k;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/miui/optimizemanage/CleanFragment$q;

    invoke-direct {v0, p0, p1}, Lcom/miui/optimizemanage/CleanFragment$q;-><init>(Lcom/miui/optimizemanage/CleanFragment;Lfb/a$c;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private U0(J)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lx4/j0;->e(Landroid/content/Context;JI)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->a:Landroid/widget/TextView;

    aget-object v0, p1, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->b:Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private V0()V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/optimizemanage/CleanFragment;->p:I

    iput v0, p0, Lcom/miui/optimizemanage/CleanFragment;->q:I

    iput v0, p0, Lcom/miui/optimizemanage/CleanFragment;->r:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/optimizemanage/CleanFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljb/f;

    iget-boolean v6, v4, Ljb/f;->e:Z

    if-eqz v6, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/miui/optimizemanage/CleanFragment;->p:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/optimizemanage/CleanFragment;->p:I

    goto :goto_0

    :cond_1
    iget-wide v6, v4, Ljb/f;->d:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, v4, Ljb/f;->a:Ljava/lang/String;

    iget v7, v4, Ljb/f;->b:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/miui/optimizemanage/CleanFragment;->C0(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/miui/optimizemanage/CleanFragment;->q:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/optimizemanage/CleanFragment;->q:I

    goto :goto_0

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/miui/optimizemanage/CleanFragment;->r:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/optimizemanage/CleanFragment;->r:I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljb/b;

    sget-object v6, Lcom/miui/optimizemanage/CleanFragment$i;->a:[I

    invoke-virtual {v4}, Ljb/b;->h()Ljb/j;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Ljb/b;->k(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v0}, Ljb/b;->k(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v2}, Ljb/b;->k(Ljava/util/List;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private W0(Ljb/i;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->z:Ljb/i;

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lfb/a;->u(Ljb/i;)V

    :cond_0
    return-void
.end method

.method private X0(Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljb/b;

    invoke-virtual {v5}, Ljb/b;->d()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/optimizemanage/CleanFragment;->A0(Ljava/util/List;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    iput-wide v3, p0, Lcom/miui/optimizemanage/CleanFragment;->s:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-wide v5, p0, Lcom/miui/optimizemanage/CleanFragment;->s:J

    iput-wide v5, v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->c:J

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/miui/optimizemanage/CleanFragment;->U0(J)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->J0()V

    return-void
.end method

.method static synthetic c0(Lcom/miui/optimizemanage/CleanFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizemanage/CleanFragment;->D:J

    return-wide p1
.end method

.method static synthetic d0(Lcom/miui/optimizemanage/CleanFragment;)Ljb/h;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->m:Ljb/h;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/optimizemanage/CleanFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/CleanFragment;->q:I

    return p0
.end method

.method static synthetic f0(Lcom/miui/optimizemanage/CleanFragment;Ljb/h;)Ljb/h;
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->m:Ljb/h;

    return-object p1
.end method

.method static synthetic g0(Lcom/miui/optimizemanage/CleanFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/CleanFragment;->N0(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/optimizemanage/CleanFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/CleanFragment;->u:I

    return p0
.end method

.method static synthetic m0(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->x0()V

    return-void
.end method

.method static synthetic n0(Lcom/miui/optimizemanage/CleanFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->Q0(Z)V

    return-void
.end method

.method static synthetic o0(Lcom/miui/optimizemanage/CleanFragment;)Ljb/g;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->l:Ljb/g;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/optimizemanage/CleanFragment;)Lcom/miui/optimizemanage/view/OptimizeManageAnimView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->g:Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/optimizemanage/CleanFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizemanage/CleanFragment;->s:J

    return-wide v0
.end method

.method static synthetic r0(Lcom/miui/optimizemanage/CleanFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/CleanFragment;->U0(J)V

    return-void
.end method

.method static synthetic s0(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->F0()V

    return-void
.end method

.method static synthetic t0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/CleanFragment;->A:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/optimizemanage/CleanFragment;Ljb/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/CleanFragment;->T0(Ljb/j;I)V

    return-void
.end method

.method static synthetic v0(Lcom/miui/optimizemanage/CleanFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/CleanFragment;->r:I

    return p0
.end method

.method private w0(I)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/CleanFragment;->K0(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x258

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071666

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071665

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p1, -0x2

    :goto_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private x0()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljb/h;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/miui/optimizemanage/CleanFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljb/f;

    iget-boolean v6, v5, Ljb/f;->e:Z

    if-eqz v6, :cond_2

    iget-object v5, v5, Ljb/f;->a:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-boolean v6, v5, Ljb/f;->m:Z

    if-nez v6, :cond_3

    iget-object v5, v5, Ljb/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_1
    iget-object v7, v5, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, v5, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, v5, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/miui/optimizemanage/CleanFragment$m;

    invoke-direct {v4, v1, v3}, Lcom/miui/optimizemanage/CleanFragment$m;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v4}, Lx4/f;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkb/a;->r(J)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Ljb/g;->d(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkb/a;->s(J)V

    return-void
.end method

.method private y0()V
    .locals 10

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->g:Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Llb/a;->h()V

    iget-object v4, p0, Lcom/miui/optimizemanage/CleanFragment;->o:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g0(Z)V

    :cond_0
    new-instance v4, Lcom/miui/optimizemanage/CleanFragment$f;

    invoke-direct {v4, p0}, Lcom/miui/optimizemanage/CleanFragment$f;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-static {v4}, Llb/a;->d(Llb/a$d;)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v6, 0x3f147ae1    # 0.58f

    invoke-static {v4, v6}, Llb/a;->g(FF)V

    new-instance v4, Lcom/miui/optimizemanage/CleanFragment$g;

    invoke-direct {v4, p0}, Lcom/miui/optimizemanage/CleanFragment$g;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-static {v4}, Llb/a;->c(Llb/a$c;)V

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/miui/optimizemanage/CleanFragment$j;

    invoke-direct {v6, p0}, Lcom/miui/optimizemanage/CleanFragment$j;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    new-array v7, v1, [F

    fill-array-data v7, :array_2

    const-string v8, "scaleX"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/miui/optimizemanage/CleanFragment$p;

    invoke-direct {v7, p0}, Lcom/miui/optimizemanage/CleanFragment$p;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    new-array v8, v1, [F

    fill-array-data v8, :array_3

    const-string v9, "scaleY"

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/miui/optimizemanage/CleanFragment$p;

    invoke-direct {v8, p0}, Lcom/miui/optimizemanage/CleanFragment$p;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    new-array v1, v1, [F

    const/4 v9, 0x0

    aput v9, v1, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    aput v9, v1, v5

    const-string v5, "translationY"

    invoke-static {v8, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/optimizemanage/CleanFragment$p;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/CleanFragment$p;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private z0(Ljb/j;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/optimizemanage/CleanFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lfb/a$c;

    if-eqz v4, :cond_0

    check-cast v3, Lfb/a$c;

    iget-object v3, v3, Lfb/a$c;->h:Ljb/j;

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method


# virtual methods
.method public D0()V
    .locals 0

    invoke-static {}, Lgb/a;->o()V

    return-void
.end method

.method public E0(Lq0/c;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;>;",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->n:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/optimizemanage/CleanFragment;->z:Ljb/i;

    sget-object v3, Ljb/i;->c:Ljb/i;

    if-eq v2, v3, :cond_4

    sget-object v3, Ljb/i;->b:Ljb/i;

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->V0()V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/CleanFragment;->I0(Z)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->R0()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/CleanFragment;->Q0(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizemanage/CleanFragment;->E0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public n(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljb/b;

    if-eqz v0, :cond_1

    check-cast p1, Ljb/b;

    invoke-virtual {p1}, Ljb/b;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljb/b;->b()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->s(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/miui/optimizemanage/CleanFragment;->H0(II)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljb/f;

    if-eqz v0, :cond_2

    check-cast p1, Ljb/f;

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->s(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/CleanFragment;->G0(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->q(Ljb/f;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->G0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lkb/a;->a()I

    move-result p1

    iput p1, p0, Lcom/miui/optimizemanage/CleanFragment;->v:I

    sget-object p1, Ljb/i;->b:Ljb/i;

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->W0(Ljb/i;)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->M0()V

    invoke-static {}, Lgb/a;->p()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->o:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/optimizemanage/CleanFragment;->t:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->z:Ljb/i;

    sget-object v0, Ljb/i;->c:Ljb/i;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    sget-object v0, Ljb/i;->d:Ljb/i;

    invoke-virtual {p1, v0}, Lfb/a;->u(Ljb/i;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    const v0, 0x7f120faa

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->g:Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    invoke-virtual {p1}, Lcom/miui/common/ui/a;->c()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->P0()V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->A:Landroid/os/Handler;

    new-instance v0, Lcom/miui/optimizemanage/CleanFragment$h;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/CleanFragment$h;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    iget v1, p0, Lcom/miui/optimizemanage/CleanFragment;->v:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    iget-wide v0, p0, Lcom/miui/optimizemanage/CleanFragment;->s:J

    invoke-virtual {p1, v0, v1}, Lgb/b;->l(J)V

    invoke-static {}, Lgb/a;->i()V

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/optimizemanage/CleanFragment$i;->a:[I

    invoke-virtual {v0}, Ljb/b;->h()Ljb/j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "system_checked"

    goto :goto_1

    :cond_2
    const-string v1, "third_checked"

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljb/b;->e()I

    move-result v2

    invoke-virtual {v0}, Ljb/b;->b()I

    move-result v0

    if-ne v2, v0, :cond_0

    invoke-static {v1}, Lgb/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->L0()V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07167e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->w0(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f13043e

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    if-eqz p1, :cond_0

    const-string v0, "key_need_remove_oneself"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/optimizemanage/CleanFragment;->C:Z

    iget-boolean p1, p0, Lcom/miui/optimizemanage/CleanFragment;->C:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: mNeedRemoveOneSelf = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/optimizemanage/CleanFragment;->C:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CleanFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/miui/optimizemanage/CleanFragment;->C:Z

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->J0()V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/optimizemanage/CleanFragment$n;

    invoke-direct {p1, p0}, Lcom/miui/optimizemanage/CleanFragment$n;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->B:Lw4/d;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->S0()V

    invoke-static {}, Llb/a;->e()V

    invoke-static {}, Llb/a;->f()V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->B:Lw4/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p2, 0x7f0e03ab

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ljb/g;

    invoke-direct {p2}, Ljb/g;-><init>()V

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->l:Ljb/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->k:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string p2, "android.os.ServiceManager"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, "package"

    aput-object v6, v4, v5

    invoke-static {p2, v1, v3, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    const-string v1, "android.content.pm.IPackageManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v1, v3, v4, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->j:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "CleanFragment"

    const-string v2, "reflect error get package manager service"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const p2, 0x7f0b0773

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->a:Landroid/widget/TextView;

    const p2, 0x7f0b0d3c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->b:Landroid/widget/TextView;

    const p2, 0x7f0b0771

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->c:Landroid/widget/TextView;

    const p2, 0x7f0b0839

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v1}, Lx4/h0;->e(Landroid/view/View;F)V

    const p2, 0x7f0b05d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b05d5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->e:Landroid/view/View;

    const p2, 0x7f0b0707

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->g:Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->g:Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    invoke-virtual {p2}, Lcom/miui/common/ui/a;->c()V

    const p2, 0x7f0b04dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment;->f:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->B0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/a;

    move-result-object p2

    const/16 v1, 0x143

    invoke-virtual {p2, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v2, v1, v0, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_0
    const-wide/16 p2, 0x0

    invoke-direct {p0, p2, p3}, Lcom/miui/optimizemanage/CleanFragment;->U0(J)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/CleanFragment;->L0()V

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->K0(Landroid/view/View;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/optimizemanage/CleanFragment;->C:Z

    const-string v1, "key_need_remove_oneself"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lx4/q;->l(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgb/b;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/optimizemanage/CleanFragment;->s:J

    invoke-virtual {v0, v1, v2}, Lgb/b;->w(J)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->G0(I)V

    instance-of p1, v0, Ljb/f;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    check-cast v0, Ljb/f;

    invoke-virtual {p1, v0}, Lfb/a;->q(Ljb/f;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/CleanFragment;->G0(I)V

    :cond_1
    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/b;

    invoke-virtual {v0}, Ljb/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->m(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->n(I)V

    :goto_0
    return-void
.end method
