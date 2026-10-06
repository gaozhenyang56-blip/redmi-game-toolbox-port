.class public final Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/netbus/ConnectionUserInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAcceptCode:I

.field private mPrivateData:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mAcceptCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mPrivateData:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/continuity/netbus/ConnectionUserInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/continuity/netbus/ConnectionUserInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$202(Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mAcceptCode:I

    return p1
.end method

.method public static synthetic access$302(Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mPrivateData:[B

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAcceptCode()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mAcceptCode:I

    return v0
.end method

.method public getPrivateData()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mPrivateData:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ConnectionUserInfo{mAcceptCode="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mAcceptCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrivateData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mPrivateData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mAcceptCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/continuity/netbus/ConnectionUserInfo;->mPrivateData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
