.class Lcom/miui/powercenter/mainui/MainBatteryView$g;
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

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$g;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$g;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView;->n(Lcom/miui/powercenter/mainui/MainBatteryView;I)I

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$g;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {p1}, Lcom/miui/powercenter/mainui/MainBatteryView;->o(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$g;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->m(Lcom/miui/powercenter/mainui/MainBatteryView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$g;->a:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
