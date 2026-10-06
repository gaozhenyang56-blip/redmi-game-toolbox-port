.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field private a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

.field private b:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->c:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    return-object p1
.end method

.method static synthetic c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    return-object p1
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->a:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
