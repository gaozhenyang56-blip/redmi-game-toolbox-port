.class public Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONFIDENCE_HIGH:I = 0x3

.field public static final CONFIDENCE_LOW:I = 0x1

.field public static final CONFIDENCE_MIDDLE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEO_EVENT_ENTERED:I = 0xb

.field public static final GEO_EVENT_EXITED:I = 0xc

.field public static final GEO_EVENT_UNKNOWN:I = 0x14

.field public static final TRANSITION_TYPE_ENTER:I = 0x1

.field public static final TRANSITION_TYPE_ENTER_AND_EXIT:I = 0x3

.field public static final TRANSITION_TYPE_EXIT:I = 0x2

.field public static final TRIGGER_ALWAYS:I = 0x0

.field public static final TRIGGER_IGNORE_FIRST:I = 0x1


# instance fields
.field private confidence:I

.field private id:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private packageName:Ljava/lang/String;

.field private radius:I

.field private transitionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence$1;

    invoke-direct {v0}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence$1;-><init>()V

    sput-object v0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static equalsSettings(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)Z
    .locals 4

    iget-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->latitude:D

    iget-wide v2, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->longitude:D

    iget-wide v2, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->longitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->radius:I

    iget v1, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->radius:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->transitionType:I

    iget v1, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->transitionType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->confidence:I

    iget v1, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->confidence:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    invoke-static {p0, p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->equalsSettings(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getConfidence()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->confidence:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->longitude:D

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->radius:I

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->transitionType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->radius:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->transitionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->confidence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->packageName:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->latitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->longitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->radius:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->transitionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->confidence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setConfidence(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->confidence:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->longitude:D

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->radius:I

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->transitionType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->radius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->transitionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->confidence:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
