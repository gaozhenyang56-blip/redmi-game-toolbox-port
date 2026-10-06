.class public Lcom/miui/gamebooster/beauty/BeautySmallView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/beauty/BeautySmallView;->f(Landroid/content/Context;)V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->a:Landroid/view/View;

    invoke-static {}, Lw5/f;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->b:Landroid/view/View;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->c:Landroid/view/View;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->l()Lw5/a;

    move-result-object v1

    invoke-static {v1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->d:Landroid/view/View;

    invoke-static {}, Lw5/f;->W()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0633

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->a:Landroid/view/View;

    const v0, 0x7f0b0634

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->b:Landroid/view/View;

    const v0, 0x7f0b0636

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->c:Landroid/view/View;

    const v0, 0x7f0b0635

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->d:Landroid/view/View;

    invoke-static {}, Lw5/f;->G()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->a:Landroid/view/View;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ldb/i;->m(I[Landroid/view/View;)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->b:Landroid/view/View;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ldb/i;->m(I[Landroid/view/View;)V

    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    new-array v5, v3, [Landroid/view/View;

    iget-object v6, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->c:Landroid/view/View;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ldb/i;->m(I[Landroid/view/View;)V

    invoke-static {}, Lw5/f;->Y()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v4

    invoke-virtual {v4}, Lw5/f;->D()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->d:Landroid/view/View;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ldb/i;->m(I[Landroid/view/View;)V

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->b:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautySmallView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/gamebooster/beauty/BeautySmallView;->g()V

    return-void
.end method
