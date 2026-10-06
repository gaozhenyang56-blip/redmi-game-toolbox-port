.class public Lcom/xiaomi/continuity/networking/BusinessServiceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/networking/BusinessServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private packageName:Ljava/lang/String;

.field private serviceData:[B

.field private serviceName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    :goto_1
    return-void
.end method

.method private static equalsArray([B[B)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
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
    check-cast p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    iget-object p1, p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    invoke-static {v2, p1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->equalsArray([B[B)Z

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

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceData()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setServiceData([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BusinessServiceInfo{serviceName=\'"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", serviceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

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

    iget-object p2, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->serviceData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
