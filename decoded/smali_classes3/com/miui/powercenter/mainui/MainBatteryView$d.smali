.class Lcom/miui/powercenter/mainui/MainBatteryView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/mainui/MainBatteryView;->t(Lcom/miui/powercenter/mainui/MainBatteryView$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/mainui/MainBatteryView$o;

.field final synthetic b:Lcom/miui/powercenter/mainui/MainBatteryView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/MainBatteryView;Lcom/miui/powercenter/mainui/MainBatteryView$o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$d;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    iput-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView$d;->a:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$d;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->c(Lcom/miui/powercenter/mainui/MainBatteryView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$d;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->d(Lcom/miui/powercenter/mainui/MainBatteryView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$d;->a:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v1}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->f()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$d;->a:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->j(F)V

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$d;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
