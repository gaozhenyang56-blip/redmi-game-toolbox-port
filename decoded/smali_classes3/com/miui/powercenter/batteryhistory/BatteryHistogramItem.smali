.class public Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field public batteryDataStr:Ljava/lang/String;

.field public endTime:J

.field public histogramDataStr:Ljava/lang/String;

.field public id:I

.field public idleUsageTime:J

.field public minLastItemHold:J

.field public screenUsageTime:J

.field public shutdownDuration:J

.field public startTime:J

.field public startUTCTime:J

.field public totalConsume:D

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem$a;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem$a;-><init>()V

    sput-object v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->screenUsageTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->idleUsageTime:J

    sget-object v0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public cloneItem()Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;
    .locals 3

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;-><init>()V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->id:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->id:I

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->screenUsageTime:J

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->screenUsageTime:J

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->idleUsageTime:J

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->idleUsageTime:J

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->screenUsageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->idleUsageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
