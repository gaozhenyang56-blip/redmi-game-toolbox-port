.class public Lcom/qti/debugreport/IZatXTRADebugReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatXTRADebugReport$f;,
        Lcom/qti/debugreport/IZatXTRADebugReport$c;,
        Lcom/qti/debugreport/IZatXTRADebugReport$b;,
        Lcom/qti/debugreport/IZatXTRADebugReport$d;,
        Lcom/qti/debugreport/IZatXTRADebugReport$e;
    }
.end annotation


# static fields
.field private static final BDS_XTRA_DATA_AVAILABLE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatXTRADebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAL_XTRA_DATA_AVAILABLE:I = 0x8

.field private static final GLONASS_XTRA_DATA_AVAILABLE:I = 0x2

.field private static final GPS_XTRA_DATA_AVAILABLE:I = 0x1

.field private static final QZSS_XTRA_DATA_AVAILABLE:I = 0x10

.field private static TAG:Ljava/lang/String; = "IZatXTRAReport"

.field private static final VERBOSE:Z


# instance fields
.field private mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

.field private mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

.field private mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

.field private mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

.field private mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

.field private mValidityMask:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatXTRAReport"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatXTRADebugReport;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatXTRADebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$e;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$e;->b(Lcom/qti/debugreport/IZatXTRADebugReport$e;I)I

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$e;->d(Lcom/qti/debugreport/IZatXTRADebugReport$e;I)I

    :cond_0
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$d;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$d;->b(Lcom/qti/debugreport/IZatXTRADebugReport$d;I)I

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$d;->d(Lcom/qti/debugreport/IZatXTRADebugReport$d;I)I

    :cond_1
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$b;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qti/debugreport/IZatXTRADebugReport$b;->b(Lcom/qti/debugreport/IZatXTRADebugReport$b;J)J

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$b;->d(Lcom/qti/debugreport/IZatXTRADebugReport$b;I)I

    :cond_2
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$c;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qti/debugreport/IZatXTRADebugReport$c;->b(Lcom/qti/debugreport/IZatXTRADebugReport$c;J)J

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$c;->d(Lcom/qti/debugreport/IZatXTRADebugReport$c;I)I

    :cond_3
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$f;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$f;->b(Lcom/qti/debugreport/IZatXTRADebugReport$f;B)B

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {v0, p1}, Lcom/qti/debugreport/IZatXTRADebugReport$f;->d(Lcom/qti/debugreport/IZatXTRADebugReport$f;I)I

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;BIIIIJIJIBI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    iput-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    iput-byte p3, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-direct {p1, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$e;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-static {p1, p4}, Lcom/qti/debugreport/IZatXTRADebugReport$e;->b(Lcom/qti/debugreport/IZatXTRADebugReport$e;I)I

    iget-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-static {p1, p5}, Lcom/qti/debugreport/IZatXTRADebugReport$e;->d(Lcom/qti/debugreport/IZatXTRADebugReport$e;I)I

    :cond_0
    iget-byte p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    new-instance p1, Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-direct {p1, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$d;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-static {p1, p6}, Lcom/qti/debugreport/IZatXTRADebugReport$d;->b(Lcom/qti/debugreport/IZatXTRADebugReport$d;I)I

    iget-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-static {p1, p7}, Lcom/qti/debugreport/IZatXTRADebugReport$d;->d(Lcom/qti/debugreport/IZatXTRADebugReport$d;I)I

    :cond_1
    iget-byte p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    new-instance p1, Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-direct {p1, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$b;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-static {p1, p8, p9}, Lcom/qti/debugreport/IZatXTRADebugReport$b;->b(Lcom/qti/debugreport/IZatXTRADebugReport$b;J)J

    iget-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-static {p1, p10}, Lcom/qti/debugreport/IZatXTRADebugReport$b;->d(Lcom/qti/debugreport/IZatXTRADebugReport$b;I)I

    :cond_2
    iget-byte p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    new-instance p1, Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-direct {p1, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$c;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-static {p1, p11, p12}, Lcom/qti/debugreport/IZatXTRADebugReport$c;->b(Lcom/qti/debugreport/IZatXTRADebugReport$c;J)J

    iget-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-static {p1, p13}, Lcom/qti/debugreport/IZatXTRADebugReport$c;->d(Lcom/qti/debugreport/IZatXTRADebugReport$c;I)I

    :cond_3
    iget-byte p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    new-instance p1, Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-direct {p1, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$f;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-static {p1, p14}, Lcom/qti/debugreport/IZatXTRADebugReport$f;->b(Lcom/qti/debugreport/IZatXTRADebugReport$f;B)B

    iget-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-static {p1, p15}, Lcom/qti/debugreport/IZatXTRADebugReport$f;->d(Lcom/qti/debugreport/IZatXTRADebugReport$f;I)I

    :cond_4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getXtraDataValidityForBDS()Lcom/qti/debugreport/IZatXTRADebugReport$b;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

    return-object v0
.end method

.method public getXtraDataValidityForGPS()Lcom/qti/debugreport/IZatXTRADebugReport$e;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

    return-object v0
.end method

.method public getXtraDataValidityForGal()Lcom/qti/debugreport/IZatXTRADebugReport$c;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

    return-object v0
.end method

.method public getXtraDataValidityForGlonass()Lcom/qti/debugreport/IZatXTRADebugReport$d;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

    return-object v0
.end method

.method public getXtraDataValidityForQzss()Lcom/qti/debugreport/IZatXTRADebugReport$f;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

    return-object v0
.end method

.method public hasBdsXtraInfo()Z
    .locals 1

    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGalXtraInfo()Z
    .locals 1

    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGlonassXtraInfo()Z
    .locals 1

    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGpsXtraInfo()Z
    .locals 2

    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasQzssXtraInfo()Z
    .locals 1

    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-byte p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$e;->a(Lcom/qti/debugreport/IZatXTRADebugReport$e;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$e;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$e;->c(Lcom/qti/debugreport/IZatXTRADebugReport$e;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-byte p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$d;->a(Lcom/qti/debugreport/IZatXTRADebugReport$d;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$d;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$d;->c(Lcom/qti/debugreport/IZatXTRADebugReport$d;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-byte p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$b;->a(Lcom/qti/debugreport/IZatXTRADebugReport$b;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$b;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$b;->c(Lcom/qti/debugreport/IZatXTRADebugReport$b;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    iget-byte p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$c;->a(Lcom/qti/debugreport/IZatXTRADebugReport$c;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$c;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$c;->c(Lcom/qti/debugreport/IZatXTRADebugReport$c;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-byte p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$f;->a(Lcom/qti/debugreport/IZatXTRADebugReport$f;)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$f;

    invoke-static {p2}, Lcom/qti/debugreport/IZatXTRADebugReport$f;->c(Lcom/qti/debugreport/IZatXTRADebugReport$f;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    return-void
.end method
