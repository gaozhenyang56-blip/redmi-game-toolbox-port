.class public Lcom/miui/applicationlock/widget/PercentLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/widget/PercentLayout$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/PercentLayout;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/applicationlock/widget/PercentLayout;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/widget/PercentLayout;->a:I

    return p1
.end method

.method private c(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/applicationlock/widget/PercentLayout;->b:Landroid/app/Activity;

    new-instance v0, Lcom/miui/applicationlock/widget/PercentLayout$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/PercentLayout$a;-><init>(Lcom/miui/applicationlock/widget/PercentLayout;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public b(Landroid/util/AttributeSet;)Lcom/miui/applicationlock/widget/PercentLayout$b;
    .locals 2

    new-instance v0, Lcom/miui/applicationlock/widget/PercentLayout$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/applicationlock/widget/PercentLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/miui/applicationlock/widget/PercentLayout$b;

    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/PercentLayout;->b(Landroid/util/AttributeSet;)Lcom/miui/applicationlock/widget/PercentLayout$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/PercentLayout;->b(Landroid/util/AttributeSet;)Lcom/miui/applicationlock/widget/PercentLayout$b;

    move-result-object p1

    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 15

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, v0, Lcom/miui/applicationlock/widget/PercentLayout;->a:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/applicationlock/widget/PercentLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v5

    check-cast v6, Lcom/miui/applicationlock/widget/PercentLayout$b;

    invoke-static {v6}, Lcom/miui/applicationlock/widget/PercentLayout$b;->a(Lcom/miui/applicationlock/widget/PercentLayout$b;)F

    move-result v7

    invoke-static {v6}, Lcom/miui/applicationlock/widget/PercentLayout$b;->b(Lcom/miui/applicationlock/widget/PercentLayout$b;)F

    move-result v8

    invoke-static {v6}, Lcom/miui/applicationlock/widget/PercentLayout$b;->c(Lcom/miui/applicationlock/widget/PercentLayout$b;)F

    move-result v9

    invoke-static {v6}, Lcom/miui/applicationlock/widget/PercentLayout$b;->d(Lcom/miui/applicationlock/widget/PercentLayout$b;)F

    move-result v10

    invoke-static {v6}, Lcom/miui/applicationlock/widget/PercentLayout$b;->e(Lcom/miui/applicationlock/widget/PercentLayout$b;)F

    move-result v11

    invoke-static {v6}, Lcom/miui/applicationlock/widget/PercentLayout$b;->f(Lcom/miui/applicationlock/widget/PercentLayout$b;)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v14, v7, v13

    if-lez v14, :cond_0

    int-to-float v14, v1

    mul-float/2addr v14, v7

    float-to-int v7, v14

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    cmpl-float v7, v8, v13

    if-lez v7, :cond_1

    int-to-float v7, v2

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    cmpl-float v5, v9, v13

    if-lez v5, :cond_2

    int-to-float v5, v1

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_2
    cmpl-float v5, v10, v13

    if-lez v5, :cond_3

    int-to-float v5, v1

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_3
    cmpl-float v5, v11, v13

    if-lez v5, :cond_4

    int-to-float v5, v2

    mul-float/2addr v5, v11

    float-to-int v5, v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_4
    cmpl-float v5, v12, v13

    if-lez v5, :cond_5

    int-to-float v5, v2

    mul-float/2addr v5, v12

    float-to-int v5, v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
