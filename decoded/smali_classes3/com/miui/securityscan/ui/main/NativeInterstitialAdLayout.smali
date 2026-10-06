.class public Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/securityscan/ui/main/BallView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/miui/common/customview/ScoreTextView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->c:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->a:Lcom/miui/securityscan/ui/main/BallView;

    iget v1, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->d:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/ui/main/BallView;->l(II)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->a:Lcom/miui/securityscan/ui/main/BallView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/BallView;->k()V

    iget v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->d:I

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->b:Landroid/widget/ImageView;

    const v0, 0x7f080f76

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->b:Landroid/widget/ImageView;

    const v0, 0x7f080f77

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->b:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->b:Landroid/widget/ImageView;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const-string v3, "scaleY"

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f01cac1    # 0.507f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f01cac1    # 0.507f
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b058c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/BallView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->a:Lcom/miui/securityscan/ui/main/BallView;

    const v0, 0x7f0b058d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b058e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->c:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {}, Lpf/g;->d()I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->d:I

    return-void
.end method
