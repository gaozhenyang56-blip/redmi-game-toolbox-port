.class public Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/networking/TrustedDeviceInfo$TrustedTypeFlags;,
        Lcom/xiaomi/continuity/networking/TrustedDeviceInfo$MediumTypeFlags;,
        Lcom/xiaomi/continuity/networking/TrustedDeviceInfo$DeviceTypeFlags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE_NONE:I = 0x0

.field public static final DEVICE_TYPE_PAD:I = 0x2

.field public static final DEVICE_TYPE_PC:I = 0x4

.field public static final DEVICE_TYPE_PHONE:I = 0x1

.field public static final DEVICE_TYPE_SOUND:I = 0x5

.field public static final DEVICE_TYPE_TV:I = 0x3

.field public static final DEVICE_TYPE_VELA_SOUND:I = 0x7

.field public static final DEVICE_TYPE_VELA_WEAR:I = 0x6

.field public static final MEDIUM_TYPES_BLE:I = 0x2

.field public static final MEDIUM_TYPES_P2P:I = 0x20

.field public static final MEDIUM_TYPES_WLAN:I = 0x80

.field public static final TRUSTED_TYPES_P2P_GROUP:I = 0x2

.field public static final TRUSTED_TYPES_SAME_ACCOUNT:I = 0x1


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:I

.field private mMediumTypes:I

.field private mTrustedTypes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    iget v0, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    iput v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    iget-object v0, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v0, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    iput v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    iget p1, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    iput p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    return-void
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
    check-cast p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    iget v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    iget v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    iget v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

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

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    return v0
.end method

.method public getMediumTypes()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    return v0
.end method

.method public getTrustedTypes()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    return v0
.end method

.method public hasBle()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediumType(I)Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasP2p()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrustedType(I)Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasWlan()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    return-void
.end method

.method public setMediumTypes(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    return-void
.end method

.method public setTrustedTypes(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TrustedDeviceInfo{mDeviceId=\'"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMediumTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTrustedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mMediumTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->mTrustedTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
