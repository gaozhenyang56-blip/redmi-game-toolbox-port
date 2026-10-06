.class public Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lsb/c;


# instance fields
.field private a:Z

.field private b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->startAnim()V

    return-void
.end method

.method public varargs b([F)Landroid/animation/ObjectAnimator;
    .locals 1

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->startAnim()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->release()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b08ff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    invoke-virtual {p0}, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->c()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->release()V

    return-void
.end method

.method public setMainViewScaleX(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public setMainViewScaleY(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->a:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->a:Z

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    sget-object v0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;->b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;

    invoke-virtual {p1, v0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->setType(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskLiteAnimView;->b:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a()V

    return-void
.end method
