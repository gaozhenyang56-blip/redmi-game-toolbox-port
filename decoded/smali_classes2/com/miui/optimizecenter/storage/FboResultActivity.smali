.class public Lcom/miui/optimizecenter/storage/FboResultActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final b:Landroidx/constraintlayout/widget/e;

.field private c:Lcb/a;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lmiuix/core/widget/NestedScrollView;

.field private g:Landroidx/constraintlayout/widget/Group;

.field private final h:[Landroid/view/View;

.field private final i:[Landroid/widget/TextView;

.field private final j:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->b:Landroidx/constraintlayout/widget/e;

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->i:[Landroid/widget/TextView;

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->j:[Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/optimizecenter/storage/FboResultActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->l0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/optimizecenter/storage/FboResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->p0()V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/optimizecenter/storage/FboResultActivity;Lcb/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->n0(Lcb/a$a;)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/optimizecenter/storage/FboResultActivity;Lcb/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->o0(Lcb/a$b;)V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/optimizecenter/storage/FboResultActivity;Lcb/a$a;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->m0(Lcb/a$a;)Z

    move-result p0

    return p0
.end method

.method private i0()I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lx4/y;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->k0(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemViews width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FboResultActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private initData()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_fbo_result_number"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lta/d;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->r0()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->g:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v3

    invoke-static {v8}, Lab/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcb/a;->d([Ljava/lang/String;)V

    return-void
.end method

.method private j0()V
    .locals 8

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    aget v7, v1, v5

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v6, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->i0()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v7, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    aget-object v7, v7, v5

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->j:[Landroid/widget/TextView;

    aget v7, v2, v5

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v6, v5

    if-ge v5, v3, :cond_0

    iget-object v6, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->i:[Landroid/widget/TextView;

    aget v7, v4, v5

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v6, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f0b09bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->f:Lmiuix/core/widget/NestedScrollView;

    const v0, 0x7f0b02d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->g:Landroidx/constraintlayout/widget/Group;

    const v0, 0x7f0b027c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0825

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0828

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->s0()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->b:Landroidx/constraintlayout/widget/e;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/e;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    :array_0
    .array-data 4
        0x7f0b059e
        0x7f0b059f
        0x7f0b05a0
        0x7f0b05a1
        0x7f0b05a2
        0x7f0b05a3
        0x7f0b05a4
    .end array-data

    :array_1
    .array-data 4
        0x7f0b02db
        0x7f0b02dc
        0x7f0b02dd
        0x7f0b02de
        0x7f0b02df
        0x7f0b02e0
        0x7f0b02e1
    .end array-data

    :array_2
    .array-data 4
        0x7f0b0d62
        0x7f0b0d63
        0x7f0b0d64
        0x7f0b0d65
        0x7f0b0d66
    .end array-data
.end method

.method private synthetic l0(Ljava/lang/Integer;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->g:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->b:Landroidx/constraintlayout/widget/e;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/widget/e;->R(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->b:Landroidx/constraintlayout/widget/e;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/e;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private synthetic m0(Lcb/a$a;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->u0(Lcb/a$a;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcb/a;->d:Z

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic n0(Lcb/a$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->t0(Lcb/a$a;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    iget-boolean v0, v0, Lcb/a;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->u0(Lcb/a$a;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lra/j;

    invoke-direct {v1, p0, p1}, Lra/j;-><init>(Lcom/miui/optimizecenter/storage/FboResultActivity;Lcb/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private synthetic o0(Lcb/a$b;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    invoke-virtual {v0}, Lcb/a;->b()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a$a;

    iget v1, p1, Lcb/a$b;->a:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->j:[Landroid/widget/TextView;

    iget v3, p1, Lcb/a$b;->a:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->j:[Landroid/widget/TextView;

    iget v3, p1, Lcb/a$b;->b:I

    aget-object v1, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    iget v4, p1, Lcb/a$b;->b:I

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100134

    iget-object v0, v0, Lcb/a$a;->d:[J

    iget v5, p1, Lcb/a$b;->b:I

    aget-wide v5, v0, v5

    long-to-int v0, v5

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {v1, v4, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f121869

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->j:[Landroid/widget/TextView;

    iget p1, p1, Lcb/a$b;->b:I

    aget-object p1, v4, p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v4, 0x7f121870

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lme/b0;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FboResultActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic p0()V
    .locals 2

    const v0, 0x7f0b033b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const v1, 0x7f0b033f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    invoke-virtual {v1, v0}, Lcb/a;->e(I)V

    return-void
.end method

.method private q0()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->i0()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->b:Landroidx/constraintlayout/widget/e;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v3, v2, v0}, Landroidx/constraintlayout/widget/e;->v(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private r0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lra/f;

    invoke-direct {v1, p0}, Lra/f;-><init>(Lcom/miui/optimizecenter/storage/FboResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private s0()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071523

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07151b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->f:Lmiuix/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->f:Lmiuix/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private t0(Lcb/a$a;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->i:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcb/a$a;->b:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->j:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcb/a$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    const v4, 0x7f121870

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lme/b0;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcb/a$a;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->d:Landroid/widget/TextView;

    iget-object p1, p1, Lcb/a$a;->c:[I

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    invoke-virtual {p1, v1}, Lcb/a;->f(I)V

    return-void
.end method

.method private u0(Lcb/a$a;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    iget-boolean v0, v0, Lcb/a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcb/a$a;->d:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->b:Landroidx/constraintlayout/widget/e;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->h:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p1, Lcb/a$a;->c:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/e;->u(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->b:Landroidx/constraintlayout/widget/e;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/e;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method


# virtual methods
.method public k0(Landroid/app/Activity;)Z
    .locals 3

    invoke-static {p1}, Lx4/n1;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/window/layout/a;->a(Landroid/app/Activity;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b059f

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b02dc

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05a0

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b02dd

    if-ne v0, v1, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05a1

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b02de

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05a2

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b02df

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05a3

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b02e0

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05a4

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b02e1

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_6

    :cond_6
    :goto_0
    const/4 p1, 0x6

    goto :goto_6

    :cond_7
    :goto_1
    const/4 p1, 0x5

    goto :goto_6

    :cond_8
    :goto_2
    const/4 p1, 0x4

    goto :goto_6

    :cond_9
    :goto_3
    const/4 p1, 0x3

    goto :goto_6

    :cond_a
    :goto_4
    const/4 p1, 0x2

    goto :goto_6

    :cond_b
    :goto_5
    const/4 p1, 0x1

    :goto_6
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    invoke-virtual {v0, p1}, Lcb/a;->f(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->q0()V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->r0()V

    const-string p1, "FboResultActivity"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const p1, 0x7f0e004e

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    new-instance p1, Landroidx/lifecycle/u0$c;

    invoke-direct {p1}, Landroidx/lifecycle/u0$c;-><init>()V

    const-class v0, Lcb/a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u0$c;->create(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    check-cast p1, Lcb/a;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    invoke-virtual {p1}, Lcb/a;->a()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lra/g;

    invoke-direct {v0, p0}, Lra/g;-><init>(Lcom/miui/optimizecenter/storage/FboResultActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    invoke-virtual {p1}, Lcb/a;->b()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lra/h;

    invoke-direct {v0, p0}, Lra/h;-><init>(Lcom/miui/optimizecenter/storage/FboResultActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/FboResultActivity;->c:Lcb/a;

    invoke-virtual {p1}, Lcb/a;->c()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lra/i;

    invoke-direct {v0, p0}, Lra/i;-><init>(Lcom/miui/optimizecenter/storage/FboResultActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->j0()V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/FboResultActivity;->initData()V

    return-void
.end method
