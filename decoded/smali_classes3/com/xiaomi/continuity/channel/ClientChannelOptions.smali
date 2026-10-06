.class public Lcom/xiaomi/continuity/channel/ClientChannelOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/channel/ClientChannelOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connectMediumType:I

.field private protocolType:I

.field public timeout:I

.field public trustLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/continuity/channel/ClientChannelOptions$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/channel/ClientChannelOptions$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->connectMediumType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->trustLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->timeout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->protocolType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectMediumType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->connectMediumType:I

    return v0
.end method

.method public getProtocolType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->protocolType:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->timeout:I

    return v0
.end method

.method public getTrustLevel()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->trustLevel:I

    return v0
.end method

.method public setConnectMediumType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->connectMediumType:I

    return-void
.end method

.method public setProtocolType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->protocolType:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->timeout:I

    return-void
.end method

.method public setTrustLevel(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->trustLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ChannelOptions{, connectMediumType="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->connectMediumType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trustLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->trustLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", protocolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->protocolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->connectMediumType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->trustLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->timeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->protocolType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
