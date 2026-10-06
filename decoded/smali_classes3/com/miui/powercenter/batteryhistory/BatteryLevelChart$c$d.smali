.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$d;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$d;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    return-void
.end method
