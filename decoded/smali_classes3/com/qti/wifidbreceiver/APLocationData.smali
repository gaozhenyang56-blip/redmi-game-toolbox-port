.class public final Lcom/qti/wifidbreceiver/APLocationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AP_LOC_HORIZONTAL_ERR_VALID:I = 0x2

.field public static final AP_LOC_MAR_VALID:I = 0x1

.field public static final AP_LOC_RELIABILITY_VALID:I = 0x4

.field public static final AP_LOC_WITH_LAT_LON:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHorizontalError:F

.field public mLatitude:F

.field public mLongitude:F

.field public mMacAddress:Ljava/lang/String;

.field public mMaxAntenaRange:F

.field public mReliability:I

.field public mValidBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qti/wifidbreceiver/APLocationData$a;

    invoke-direct {v0}, Lcom/qti/wifidbreceiver/APLocationData$a;-><init>()V

    sput-object v0, Lcom/qti/wifidbreceiver/APLocationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APLocationData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APLocationData$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/wifidbreceiver/APLocationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLatitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLongitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMaxAntenaRange:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mHorizontalError:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mReliability:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/wifidbreceiver/APLocationData;->mValidBits:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLatitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLongitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMaxAntenaRange:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APLocationData;->mHorizontalError:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APLocationData;->mReliability:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APLocationData;->mValidBits:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
