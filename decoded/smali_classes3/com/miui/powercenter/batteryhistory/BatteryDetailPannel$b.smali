.class Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;
.super Lcom/miui/powercenter/batteryhistory/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;->a:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/powercenter/batteryhistory/i$a;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;->a:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;

    invoke-static {p1, p3}, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->a(Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
