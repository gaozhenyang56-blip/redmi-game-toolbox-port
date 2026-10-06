.class Lcom/miui/powercenter/batteryhistory/q$b;
.super Lcom/miui/powercenter/batteryhistory/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/q;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/batteryhistory/q;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/q$b;->a:Lcom/miui/powercenter/batteryhistory/q;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/batteryhistory/q;Lcom/miui/powercenter/batteryhistory/q$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/q$b;-><init>(Lcom/miui/powercenter/batteryhistory/q;)V

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

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/q$b;->a:Lcom/miui/powercenter/batteryhistory/q;

    invoke-static {p2, p1}, Lcom/miui/powercenter/batteryhistory/q;->a(Lcom/miui/powercenter/batteryhistory/q;Lcom/miui/powercenter/batteryhistory/i$a;)Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/q$b;->a:Lcom/miui/powercenter/batteryhistory/q;

    invoke-static {p2, p3}, Lcom/miui/powercenter/batteryhistory/q;->b(Lcom/miui/powercenter/batteryhistory/q;Ljava/util/List;)Ljava/util/List;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/miui/powercenter/batteryhistory/q$b$a;

    invoke-direct {p3, p0, p1}, Lcom/miui/powercenter/batteryhistory/q$b$a;-><init>(Lcom/miui/powercenter/batteryhistory/q$b;Lcom/miui/powercenter/batteryhistory/i$a;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
