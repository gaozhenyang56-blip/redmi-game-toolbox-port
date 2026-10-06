.class public final Lcom/qti/wwandbreceiver/BSSpecialInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wwandbreceiver/BSSpecialInfo;",
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

.field public mInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qti/wwandbreceiver/BSSpecialInfo$a;

    invoke-direct {v0}, Lcom/qti/wwandbreceiver/BSSpecialInfo$a;-><init>()V

    sput-object v0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, p1}, Lcom/qti/wwandbreceiver/BSSpecialInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wwandbreceiver/BSSpecialInfo$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/wwandbreceiver/BSSpecialInfo;-><init>(Landroid/os/Parcel;)V

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID4:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mInfo:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID3:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID4:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
