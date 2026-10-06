.class public Lcom/qti/debugreport/IZatGpsTimeDebugReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatGpsTimeDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "IZatGpsTimeReport"

.field private static final VERBOSE:Z


# instance fields
.field private mClockFrequencyBias:I

.field private mClockFrequencyBiasUncertainity:I

.field private mGpsTimeOfWeekInMs:J

.field private mGpsWeek:I

.field private mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

.field private mTimeUncertainity:I

.field private mTimeValid:Z

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatGpsTimeReport"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    invoke-static {}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;->values()[Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IJZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    iput-object p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    iput p3, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    iput-wide p4, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    iput-boolean p6, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;->values()[Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

    move-result-object p1

    aget-object p1, p1, p7

    iput-object p1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;->b:Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

    iput-object p1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

    :goto_0
    iput p8, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    iput p9, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    iput p10, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    return-void
.end method


# virtual methods
.method public IsTimeValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClockFrequencyBias()I
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    return v0
.end method

.method public getClockFrequencyBiasUncertainity()I
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    return v0
.end method

.method public getGpsTimeOfWeek()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    return-wide v0
.end method

.method public getGpsWeek()I
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getTimeSource()Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

    return-object v0
.end method

.method public getTimeUncertainity()I
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    return v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;

    invoke-virtual {p2}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$b;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
