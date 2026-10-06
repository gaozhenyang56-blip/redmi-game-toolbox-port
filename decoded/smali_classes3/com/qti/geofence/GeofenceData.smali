.class public Lcom/qti/geofence/GeofenceData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/geofence/GeofenceData$b;,
        Lcom/qti/geofence/GeofenceData$c;,
        Lcom/qti/geofence/GeofenceData$d;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_IS_SET:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/geofence/GeofenceData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DWELL_NOTIFY_IS_SET:I = 0x20

.field public static final LATITUDE_IS_SET:I = 0x1

.field public static final LONGITUDE_IS_SET:I = 0x2

.field public static final RADIUS_IS_SET:I = 0x4

.field public static final RESPONSIVENESS_IS_SET:I = 0x40

.field private static TAG:Ljava/lang/String; = "GeofenceData"

.field public static final TRANSITION_TYPES_IS_SET:I = 0x8

.field private static final VERBOSE:Z


# instance fields
.field private mAppBundleData:Landroid/os/Bundle;

.field private mAppTextData:Ljava/lang/String;

.field private mConfidence:Lcom/qti/geofence/GeofenceData$c;

.field private mDwellTime:I

.field private mDwellType:Lcom/qti/geofence/GeofenceData$b;

.field private mGeofenceId:I

.field private mIsPaused:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mNotifyResponsiveness:I

.field private mRadius:D

.field private mTransitionType:Lcom/qti/geofence/GeofenceData$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GeofenceData"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/geofence/GeofenceData;->VERBOSE:Z

    new-instance v0, Lcom/qti/geofence/GeofenceData$a;

    invoke-direct {v0}, Lcom/qti/geofence/GeofenceData$a;-><init>()V

    sput-object v0, Lcom/qti/geofence/GeofenceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IDDDIIIILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    iput-wide p2, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    iput-wide p4, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    iput-wide p6, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    invoke-virtual {p0, p8}, Lcom/qti/geofence/GeofenceData;->setTransitionType(I)V

    invoke-virtual {p0, p9}, Lcom/qti/geofence/GeofenceData;->setConfidence(I)V

    invoke-virtual {p0, p10}, Lcom/qti/geofence/GeofenceData;->setDwellType(I)V

    iput p11, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    iput-object p12, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    iput-object p13, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    iput p14, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/geofence/GeofenceData$d;->valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$d;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/geofence/GeofenceData$c;->valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$c;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/geofence/GeofenceData$b;->valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$b;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    invoke-static {p1}, Lcom/miui/permission/a;->a(Landroid/os/Parcel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppBundleData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAppTextData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()Lcom/qti/geofence/GeofenceData$c;
    .locals 1

    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;

    return-object v0
.end method

.method public getDwellTime()I
    .locals 1

    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    return v0
.end method

.method public getDwellType()Lcom/qti/geofence/GeofenceData$b;
    .locals 1

    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;

    return-object v0
.end method

.method public getGeofenceId()I
    .locals 1

    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    return-wide v0
.end method

.method public getNotifyResponsiveness()I
    .locals 1

    iget v0, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    return-wide v0
.end method

.method public getTransitionType()Lcom/qti/geofence/GeofenceData$d;
    .locals 1

    iget-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    return v0
.end method

.method public setConfidence(I)V
    .locals 5

    sget-object v0, Lcom/qti/geofence/GeofenceData$c;->b:Lcom/qti/geofence/GeofenceData$c;

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;

    invoke-static {}, Lcom/qti/geofence/GeofenceData$c;->values()[Lcom/qti/geofence/GeofenceData$c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/qti/geofence/GeofenceData$c;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    iput-object v3, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setDwellTime(I)V
    .locals 0

    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    return-void
.end method

.method public setDwellType(I)V
    .locals 5

    sget-object v0, Lcom/qti/geofence/GeofenceData$b;->b:Lcom/qti/geofence/GeofenceData$b;

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;

    invoke-static {}, Lcom/qti/geofence/GeofenceData$b;->values()[Lcom/qti/geofence/GeofenceData$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/qti/geofence/GeofenceData$b;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    iput-object v3, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setGeofenceId(I)V
    .locals 0

    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    return-void
.end method

.method public setNotifyResponsiveness(I)V
    .locals 0

    iput p1, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    return-void
.end method

.method public setPausedStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    return-void
.end method

.method public setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    return-void
.end method

.method public setTransitionType(I)V
    .locals 5

    sget-object v0, Lcom/qti/geofence/GeofenceData$d;->b:Lcom/qti/geofence/GeofenceData$d;

    iput-object v0, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;

    invoke-static {}, Lcom/qti/geofence/GeofenceData$d;->values()[Lcom/qti/geofence/GeofenceData$d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/qti/geofence/GeofenceData$d;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    iput-object v3, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in GeofenceData: toString responsiveness is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; latitude is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; longitude is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; radius is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; transitionTypes is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; confidence is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTimeMask is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; AppTextData is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Geofence id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    sget-boolean p2, Lcom/qti/geofence/GeofenceData;->VERBOSE:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/qti/geofence/GeofenceData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in GeofenceData: writeToParcel(); responsiveness is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; latitude is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; longitude is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; radius is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; transitionTypes is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; confidence is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTimeMask is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; AppTextData is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Geofence id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p2, p0, Lcom/qti/geofence/GeofenceData;->mNotifyResponsiveness:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/qti/geofence/GeofenceData;->mRadius:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/qti/geofence/GeofenceData;->mTransitionType:Lcom/qti/geofence/GeofenceData$d;

    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qti/geofence/GeofenceData;->mConfidence:Lcom/qti/geofence/GeofenceData$c;

    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qti/geofence/GeofenceData;->mDwellType:Lcom/qti/geofence/GeofenceData$b;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/qti/geofence/GeofenceData;->mDwellTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/qti/geofence/GeofenceData;->mAppTextData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qti/geofence/GeofenceData;->mAppBundleData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Lcom/qti/geofence/GeofenceData;->mGeofenceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/qti/geofence/GeofenceData;->mIsPaused:Z

    invoke-static {p1, p2}, Lcom/miui/permission/b;->a(Landroid/os/Parcel;Z)V

    return-void
.end method
