.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/lang/Float;

.field private b:Ljava/lang/Float;

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a:Ljava/lang/Float;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->b:Ljava/lang/Float;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a:Ljava/lang/Float;

    return-object p0
.end method
