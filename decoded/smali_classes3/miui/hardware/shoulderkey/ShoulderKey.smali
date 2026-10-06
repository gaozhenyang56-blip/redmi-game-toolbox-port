.class public Lmiui/hardware/shoulderkey/ShoulderKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/hardware/shoulderkey/ShoulderKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keycode:I

.field mExtra:Landroid/os/Bundle;

.field private productId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKey$1;

    invoke-direct {v0}, Lmiui/hardware/shoulderkey/ShoulderKey$1;-><init>()V

    sput-object v0, Lmiui/hardware/shoulderkey/ShoulderKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->productId:I

    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->keycode:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->productId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->keycode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->productId:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->keycode:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getKeycode()I
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->keycode:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->productId:I

    return v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoulderKey{productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->productId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->keycode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->productId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->keycode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
