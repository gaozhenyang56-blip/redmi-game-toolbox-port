.class Lcom/miui/powercenter/batteryhistory/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/p;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/p;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/p$a;->a:Lcom/miui/powercenter/batteryhistory/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/legacypowerrank/BatteryData;Lcom/miui/powercenter/legacypowerrank/BatteryData;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide p1

    sub-double/2addr v0, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    check-cast p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/p$a;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result p1

    return p1
.end method
