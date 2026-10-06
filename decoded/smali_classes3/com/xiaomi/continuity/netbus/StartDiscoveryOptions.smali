.class public final Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataType:I

.field private mFrequency:I

.field private mMediumType:I

.field private mRealtimeDiscovery:Z

.field private mSameAccount:Z

.field private mSameGroup:Z

.field private mSameNoGroup:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;->NORMAL:Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;->NORMAL:Lcom/xiaomi/continuity/netbus/DiscoveryOptions$DiscoveryDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameGroup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameNoGroup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;-><init>()V

    return-void
.end method

.method public static synthetic access$276(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;I)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    return p1
.end method

.method public static synthetic access$302(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    return p1
.end method

.method public static synthetic access$402(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    return p1
.end method

.method public static synthetic access$502(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    return p1
.end method

.method public static synthetic access$602(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameGroup:Z

    return p1
.end method

.method public static synthetic access$702(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameNoGroup:Z

    return p1
.end method

.method public static synthetic access$802(Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

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

    iget v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    return v0
.end method

.method public getMediumType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    return v0
.end method

.method public isRealtimeDiscovery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

    return v0
.end method

.method public isSameAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    return v0
.end method

.method public isSameGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameGroup:Z

    return v0
.end method

.method public isSameNoGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameNoGroup:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "StartDiscoveryOptions{mMediumType="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSameAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mMediumType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mDataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mFrequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameAccount:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mSameNoGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;->mRealtimeDiscovery:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
