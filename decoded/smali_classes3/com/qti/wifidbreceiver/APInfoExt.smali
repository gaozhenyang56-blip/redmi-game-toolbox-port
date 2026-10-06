.class public final Lcom/qti/wifidbreceiver/APInfoExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbreceiver/APInfoExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCellRegionID1:I

.field public mCellRegionID2:I

.field public mCellRegionID3:I

.field public mCellRegionID4:I

.field public mCellType:I

.field public mFdalStatus:I

.field public mMacAddress:Ljava/lang/String;

.field public mSSID:[B

.field public mTimestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qti/wifidbreceiver/APInfoExt$a;

    invoke-direct {v0}, Lcom/qti/wifidbreceiver/APInfoExt$a;-><init>()V

    sput-object v0, Lcom/qti/wifidbreceiver/APInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APInfoExt;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APInfoExt$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/wifidbreceiver/APInfoExt;-><init>(Landroid/os/Parcel;)V

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

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID4:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mSSID:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mTimestamp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mFdalStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID3:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID4:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mSSID:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mTimestamp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mFdalStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
