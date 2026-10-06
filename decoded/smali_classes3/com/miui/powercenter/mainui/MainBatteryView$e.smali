.class Lcom/miui/powercenter/mainui/MainBatteryView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/mainui/MainBatteryView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/mainui/MainBatteryView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->c(Lcom/miui/powercenter/mainui/MainBatteryView;)Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->d(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v0

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v2}, Lcom/miui/powercenter/mainui/MainBatteryView;->e(Lcom/miui/powercenter/mainui/MainBatteryView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v3}, Lcom/miui/powercenter/mainui/MainBatteryView;->d(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v3}, Lcom/miui/powercenter/mainui/MainBatteryView;->f(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v3

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->e(Lcom/miui/powercenter/mainui/MainBatteryView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v2}, Lcom/miui/powercenter/mainui/MainBatteryView;->d(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v2}, Lcom/miui/powercenter/mainui/MainBatteryView;->f(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v2

    :goto_0
    sub-float/2addr v0, v2

    move v3, v0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->c(Lcom/miui/powercenter/mainui/MainBatteryView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->d(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v0

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v2}, Lcom/miui/powercenter/mainui/MainBatteryView;->e(Lcom/miui/powercenter/mainui/MainBatteryView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v4}, Lcom/miui/powercenter/mainui/MainBatteryView;->d(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v4

    mul-float/2addr v2, v4

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->e(Lcom/miui/powercenter/mainui/MainBatteryView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v2}, Lcom/miui/powercenter/mainui/MainBatteryView;->d(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    :goto_1
    move v5, v0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x2

    new-array v7, v2, [I

    const/4 v2, 0x0

    const v8, -0xc02d98

    aput v8, v7, v2

    const/4 v2, 0x1

    aput p1, v7, v2

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v0, v1}, Lcom/miui/powercenter/mainui/MainBatteryView;->h(Lcom/miui/powercenter/mainui/MainBatteryView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {p1}, Lcom/miui/powercenter/mainui/MainBatteryView;->p(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->g(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/graphics/LinearGradient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$e;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
