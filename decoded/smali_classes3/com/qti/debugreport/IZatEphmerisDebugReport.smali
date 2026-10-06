.class public Lcom/qti/debugreport/IZatEphmerisDebugReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatEphmerisDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "IZatEphmeris"

.field private static final VERBOSE:Z


# instance fields
.field private mBdsEphemrisDataValidity:J

.field private mGalEphemrisDataValidity:J

.field private mGlonassEphemrisDataValidity:I

.field private mGpsEphemrisDataValidity:I

.field private mQzssEphemrisDataValidity:B

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatEphmeris"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatEphmerisDebugReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatEphmerisDebugReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IIJJB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    iput-object p2, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    iput p3, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    iput p4, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    iput-wide p5, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    iput-wide p7, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    iput-byte p9, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEphmerisForBDS()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    return-wide v0
.end method

.method public getEphmerisForGPS()I
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    return v0
.end method

.method public getEphmerisForGal()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    return-wide v0
.end method

.method public getEphmerisForGlonass()I
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    return v0
.end method

.method public getEphmerisForQzss()B
    .locals 1

    iget-byte v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-byte p2, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
