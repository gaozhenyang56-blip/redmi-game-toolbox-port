.class public Lcom/miui/dock/sidebar/SidebarColorParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fraction:F

.field mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

.field private mCurrentColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mEndColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mStartColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mCurrentColor:I

    return v0
.end method

.method public getEndColor()I
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mEndColor:I

    return v0
.end method

.method public getFraction()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->fraction:F

    return v0
.end method

.method public getStartColor()I
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mStartColor:I

    return v0
.end method

.method public setEndColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mEndColor:I

    return-void
.end method

.method public setFraction(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mStartColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mEndColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mCurrentColor:I

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->fraction:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setStartColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarColorParams;->mStartColor:I

    return-void
.end method
