.class Lcom/miui/powercenter/mainui/MainBatteryView$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/mainui/MainBatteryView;->setCurrentValue(I)V
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

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$n;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$n;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView;->q(Lcom/miui/powercenter/mainui/MainBatteryView;F)F

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$n;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
