.class public Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public shutDownDuration:J

.field public shutDownIndex:I

.field public shutDownPlusTime:J

.field public shutDownTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem$a;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem$a;-><init>()V

    sput-object v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownIndex:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownDuration:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
