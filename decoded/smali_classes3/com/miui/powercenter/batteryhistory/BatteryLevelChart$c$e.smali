.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->e:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->a:F

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->b:F

    iput p4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->c:F

    iput p5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->d:F

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

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->e:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->a:F

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->b:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->c:F

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->d:F

    sub-float v3, v2, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->u(FF)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;->e:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
