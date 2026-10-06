.class public Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tag:S

.field public final version:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo$a;

    invoke-direct {v0}, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo$a;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->version:J

    iput-short p3, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->tag:S

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->version:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->tag:S

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyBagKeyInfo{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->tag:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->version:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-short p2, p0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->tag:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
