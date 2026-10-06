.class public Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataType:I

.field private mMediumType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/continuity/netbus/AdvertisingOptions$AdvertisingDataType;->NORMAL:Lcom/xiaomi/continuity/netbus/AdvertisingOptions$AdvertisingDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mDataType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/continuity/netbus/AdvertisingOptions$AdvertisingDataType;->NORMAL:Lcom/xiaomi/continuity/netbus/AdvertisingOptions$AdvertisingDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mDataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mMediumType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mDataType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;-><init>()V

    return-void
.end method

.method public static synthetic access$176(Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;I)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mMediumType:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mMediumType:I

    return p1
.end method

.method public static synthetic access$202(Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mDataType:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mDataType:I

    return v0
.end method

.method public getMediumType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mMediumType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "StopAdvertisingOptions{mMediumType="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mMediumType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mMediumType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;->mDataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
