.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->x()V
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

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$b;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$b;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;F)F

    return-void
.end method
