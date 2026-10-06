.class public Lmiui/hardware/shoulderkey/ShoulderKeyMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/hardware/shoulderkey/ShoulderKeyMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mDownCenterX:F

.field private mDownCenterY:F

.field private mExtra:Landroid/os/Bundle;

.field private mIsSeparateMapping:Z

.field private mUpCenterX:F

.field private mUpCenterY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKeyMap$1;

    invoke-direct {v0}, Lmiui/hardware/shoulderkey/ShoulderKeyMap$1;-><init>()V

    sput-object v0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    iput-boolean v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    const-string p2, "isSeparateMapping"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterX:F

    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterY:F

    iput p3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterX:F

    iput p4, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v2, "isSeparateMapping"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v1, "downCenterX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v0, "downCenterY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string p2, "upCenterX"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string p2, "upCenterY"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v1, "isSeparateMapping"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v0, "downCenterX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterX:F

    iget-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v0, "downCenterY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterY:F

    iget-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v0, "upCenterX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterX:F

    iget-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    const-string v0, "upCenterY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterY:F

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterX()F
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    return v0
.end method

.method public getDownCenterX()F
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterX:F

    return v0
.end method

.method public getDownCenterY()F
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterY:F

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUpCenterX()F
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterX:F

    return v0
.end method

.method public getUpCenterY()F
    .locals 1

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterY:F

    return v0
.end method

.method public isIsSeparateMapping()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoulderKeyMap{centerX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePosition(FF)V
    .locals 0

    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
