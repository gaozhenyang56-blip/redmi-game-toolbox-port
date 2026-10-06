.class Lcom/miui/powercenter/mainui/MainBatteryView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/mainui/MainBatteryView;->setCurrentValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/powercenter/mainui/MainBatteryView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/MainBatteryView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$c;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    iput p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView$c;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$c;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->a(Lcom/miui/powercenter/mainui/MainBatteryView;Z)Z

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$c;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$c;->a:I

    invoke-static {p1, v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->b(Lcom/miui/powercenter/mainui/MainBatteryView;I)I

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$c;->b:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
