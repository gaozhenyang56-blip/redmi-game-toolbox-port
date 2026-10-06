.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->z(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$c;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$c;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$c;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->u(FF)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$c;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
