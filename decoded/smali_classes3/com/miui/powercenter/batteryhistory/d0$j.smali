.class Lcom/miui/powercenter/batteryhistory/d0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$j;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-long v0, p1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$j;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-virtual {p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/d0;->h0(J)V

    return-void
.end method
