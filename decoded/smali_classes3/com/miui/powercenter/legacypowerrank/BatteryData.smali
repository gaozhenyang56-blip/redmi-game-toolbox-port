.class public Lcom/miui/powercenter/legacypowerrank/BatteryData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final AMBIENT_DISPLAY:I = 0xb

.field public static final APP:I = 0x6

.field public static final BLUETOOTH:I = 0x4

.field public static final CAMERA:I = 0x9

.field public static final CELL:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLASHLIGHT:I = 0x7

.field public static final IDLE:I = 0x0

.field public static final OTHER:I = 0xa

.field public static final PHONE:I = 0x2

.field public static final SCREEN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BatteryData"

.field public static final USER:I = 0x8

.field public static final WIFI:I = 0x3


# instance fields
.field public cpuFgTime:J

.field public cpuTime:J

.field public defaultPackageName:Ljava/lang/String;

.field public drainType:I

.field public gpsTime:J

.field public mobileRxBytes:J

.field public mobileTxBytes:J

.field public name:Ljava/lang/String;

.field public noCoveragePercent:D

.field public screenPower:D

.field public uid:I

.field public usageTime:J

.field public value:D

.field public wakeLockTime:J

.field public wifiRunningTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/BatteryData$a;

    invoke-direct {v0}, Lcom/miui/powercenter/legacypowerrank/BatteryData$a;-><init>()V

    sput-object v0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    iget-object v0, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    iget v0, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    iget v0, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    iget-object v0, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->add(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    return-void
.end method

.method public constructor <init>(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getUid()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getDrainType()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->add(Lmiui/securitycenter/powercenter/BatterySipper;)V

    return-void
.end method

.method private checkDoubleNaN()V
    .locals 8

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, " drainType "

    const-string v4, " packageName "

    const-string v5, "BatteryData"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value is NaN !! name: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :cond_0
    iget-wide v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noCoveragePercent is NaN !! name: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    :cond_1
    iget-wide v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenPower is NaN !! name: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    return-void
.end method

.method public add(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    const-string v2, "value"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    const-string v2, "usageTime"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    const-string v2, "cpuTime"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    const-string v2, "gpsTime"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    const-string v2, "wifiRunningTime"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    const-string v2, "cpuFgTime"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    const-string v2, "wakeLockTime"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    const-string v2, "mobileRxBytes"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    const-string v2, "mobileTxBytes"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    const-string v2, "noCoveragePercent"

    invoke-virtual {p1, v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->checkDoubleNaN()V

    return-void
.end method

.method public compareTo(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->compareTo(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    return v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
