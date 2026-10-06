.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->r(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->g(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->v(Ljava/util/List;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Z)Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;->c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
