.class public Lcom/qti/debugreport/IZatLocationReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatLocationReport$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatLocationReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_HORIZONTAL_COMPONENT:I = 0x1

.field private static final HAS_SOURCE:I = 0x4

.field private static final HAS_VERTICAL_COMPONENT:I = 0x2

.field private static TAG:Ljava/lang/String; = "IZatLocationReport"

.field private static final VERBOSE:Z


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mAltitudeUncertainity:F

.field private mLatitude:D

.field private mLongitude:D

.field private mSource:Lcom/qti/debugreport/IZatLocationReport$b;

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

.field private mValidityBit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatLocationReport"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatLocationReport;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatLocationReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatLocationReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    :cond_0
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    :cond_1
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatLocationReport$b;->values()[Lcom/qti/debugreport/IZatLocationReport$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$b;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/qti/debugreport/IZatLocationReport$b;->b:Lcom/qti/debugreport/IZatLocationReport$b;

    iput-object p1, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$b;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IDDFDFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    iput-object p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    iput p3, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    iput-wide p4, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    iput-wide p6, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    iput p8, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    :cond_0
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    iput-wide p9, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    iput p11, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    :cond_1
    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatLocationReport$b;->values()[Lcom/qti/debugreport/IZatLocationReport$b;

    move-result-object p1

    aget-object p1, p1, p12

    iput-object p1, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$b;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/qti/debugreport/IZatLocationReport$b;->b:Lcom/qti/debugreport/IZatLocationReport$b;

    iput-object p1, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$b;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    return-wide v0
.end method

.method public getAltitudeUncertainity()F
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    return-wide v0
.end method

.method public getSource()Lcom/qti/debugreport/IZatLocationReport$b;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$b;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public hasHorizontalFix()Z
    .locals 2

    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSource()Z
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVerticalFix()Z
    .locals 1

    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x2

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

    iget-object p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_0
    iget p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_1
    iget p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$b;

    invoke-virtual {p2}, Lcom/qti/debugreport/IZatLocationReport$b;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method
