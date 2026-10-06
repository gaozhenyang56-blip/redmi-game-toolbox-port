.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
