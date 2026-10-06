.class public final Lcom/miui/permcenter/permissions/ButtonPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/permissions/ButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41880000    # 17.0f

    iput p1, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->e:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0712db

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->c:I

    const p2, 0x7f0712dc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->d:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->b:I

    iput p1, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->a:I

    return-void
.end method

.method private final a(I)V
    .locals 9

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/ButtonPanel;->c(I)Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move p1, v3

    move v4, p1

    :goto_1
    if-ge p1, v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    move v6, v1

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v6, :cond_2

    move v7, v4

    goto :goto_3

    :cond_2
    move v7, v3

    :goto_3
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-eqz v6, :cond_3

    iget v4, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->d:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result p1

    move v4, v3

    move v5, v4

    :goto_4
    if-ge v4, v0, :cond_9

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v3

    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v7, :cond_7

    if-eqz p1, :cond_6

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_6

    :cond_6
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    :cond_7
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_6
    if-eqz v7, :cond_8

    iget v5, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->c:I

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private final b(Landroid/widget/TextView;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final c(I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-lt v2, v4, :cond_3

    return v5

    :cond_3
    iget v2, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->c:I

    sub-int/2addr p1, v2

    div-int/2addr p1, v1

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, p1}, Lcom/miui/permcenter/permissions/ButtonPanel;->b(Landroid/widget/TextView;I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v3
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->b:I

    iput v0, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->a:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->b:I

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->c:I

    iget v0, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->d:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->e:F

    invoke-static {v1, v2}, Lmiuix/view/e;->b(Landroid/widget/TextView;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/ButtonPanel;->a(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setForceVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/ButtonPanel;->f:Z

    return-void
.end method
