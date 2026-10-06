.class public Lcom/miui/common/customview/ActionBarContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/customview/ActionBarContainer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:I

.field private h:I

.field private i:Lcom/miui/common/customview/ActionBarContainer$a;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/common/customview/ActionBarContainer;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/common/customview/ActionBarContainer;->j:Z

    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/ActionBarContainer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/common/customview/ActionBarContainer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/customview/ActionBarContainer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/miui/common/customview/ActionBarContainer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/ActionBarContainer;->j:Z

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/common/customview/ActionBarContainer;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/common/customview/ActionBarContainer;->g:I

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/common/customview/ActionBarContainer;->h:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/miui/common/customview/ActionBarContainer;->b:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b05e0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0632

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/common/customview/ActionBarContainer;->i:Lcom/miui/common/customview/ActionBarContainer$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/miui/common/customview/ActionBarContainer$a;->b()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/common/customview/ActionBarContainer;->i:Lcom/miui/common/customview/ActionBarContainer$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/miui/common/customview/ActionBarContainer$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b05e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b0632

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->d:Landroid/widget/ImageView;

    const v0, 0x7f0b03ee

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->f:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/miui/common/customview/ActionBarContainer;->a()V

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0c72

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0cca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0a2d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070061

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/miui/common/customview/ActionBarContainer;->h:I

    return-void
.end method

.method public setActionBarEventListener(Lcom/miui/common/customview/ActionBarContainer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/ActionBarContainer;->i:Lcom/miui/common/customview/ActionBarContainer$a;

    return-void
.end method

.method public setBackIconRes(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setEndIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->d:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setFirstTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIsShowSecondTitle(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/common/customview/ActionBarContainer;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/customview/ActionBarContainer;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/common/customview/ActionBarContainer;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setSecondTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lcom/miui/common/customview/ActionBarContainer;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    return-void
.end method
