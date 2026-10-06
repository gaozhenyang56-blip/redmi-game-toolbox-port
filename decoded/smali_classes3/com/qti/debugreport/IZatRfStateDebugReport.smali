.class public Lcom/qti/debugreport/IZatRfStateDebugReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatRfStateDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "IZatRfStateReport"

.field private static final VERBOSE:Z


# instance fields
.field private mADCAmplitudeI:J

.field private mADCAmplitudeQ:J

.field private mBDSBPAmpI:J

.field private mBDSBPAmpQ:J

.field private mErrorRecovery:J

.field private mGALBPAmpI:J

.field private mGALBPAmpQ:J

.field private mGLOBPAmpI:J

.field private mGLOBPAmpQ:J

.field private mGPSBPAmpI:J

.field private mGPSBPAmpQ:J

.field private mJammerMetricBds:J

.field private mJammerMetricGPS:J

.field private mJammerMetricGal:J

.field private mJammerMetricGlonass:J

.field private mPGAGain:I

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatRfStateReport"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatRfStateDebugReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatRfStateDebugReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    move-object v1, p2

    iput-object v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    move v1, p3

    iput v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    move-wide v1, p4

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    move-wide v1, p8

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    move-wide/from16 v1, p26

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    move-wide/from16 v1, p28

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    move-wide/from16 v1, p30

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getADCAmplitudeI()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    return-wide v0
.end method

.method public getADCAmplitudeQ()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    return-wide v0
.end method

.method public getBDSBPAmpI()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    return-wide v0
.end method

.method public getBDSBPAmpQ()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    return-wide v0
.end method

.method public getGALBPAmpI()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    return-wide v0
.end method

.method public getGALBPAmpQ()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    return-wide v0
.end method

.method public getGLOBPAmpI()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    return-wide v0
.end method

.method public getGLOBPAmpQ()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    return-wide v0
.end method

.method public getGPSBPAmpI()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    return-wide v0
.end method

.method public getGPSBPAmpQ()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    return-wide v0
.end method

.method public getJammerMetricBds()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    return-wide v0
.end method

.method public getJammerMetricGPS()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    return-wide v0
.end method

.method public getJammerMetricGal()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    return-wide v0
.end method

.method public getJammerMetricGlonass()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    return-wide v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getPGAGain()I
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    return v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
