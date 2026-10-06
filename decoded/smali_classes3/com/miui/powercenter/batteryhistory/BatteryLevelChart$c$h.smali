.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->y()V
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

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Z)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Z)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    return-void
.end method
