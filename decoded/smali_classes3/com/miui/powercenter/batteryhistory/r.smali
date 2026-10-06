.class public Lcom/miui/powercenter/batteryhistory/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/miui/powercenter/legacypowerrank/BatteryData;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/r;->c:I

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/r;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/r;->a:I

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/r;->c:I

    return-void
.end method

.method public constructor <init>(ILcom/miui/powercenter/legacypowerrank/BatteryData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/r;->a:I

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/r;->b:Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/r;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/miui/powercenter/legacypowerrank/BatteryData;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/r;->b:Lcom/miui/powercenter/legacypowerrank/BatteryData;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/r;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/r;->c:I

    return v0
.end method
