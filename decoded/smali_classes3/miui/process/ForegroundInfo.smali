.class public Lcom/gzy/redmiport/compat/process/ForegroundInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gzy/redmiport/compat/process/ForegroundInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FOREGROUND_COLD_START:I = 0x1


# instance fields
.field public mFlags:I

.field public mForegroundDisplayId:I

.field public mForegroundPackageName:Ljava/lang/String;

.field public mForegroundPid:I

.field public mForegroundUid:I

.field public mLastForegroundDisplayId:I

.field public mLastForegroundPackageName:Ljava/lang/String;

.field public mLastForegroundPid:I

.field public mLastForegroundUid:I

.field public mMultiWindowForegroundPackageName:Ljava/lang/String;

.field public mMultiWindowForegroundUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gzy/redmiport/compat/process/ForegroundInfo$1;

    invoke-direct {v0}, Lcom/gzy/redmiport/compat/process/ForegroundInfo$1;-><init>()V

    sput-object v0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/gzy/redmiport/compat/process/ForegroundInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gzy/redmiport/compat/process/ForegroundInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iget p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    iput p1, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1

    iget v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isColdStart()Z
    .locals 2

    iget v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public resetFlags()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForegroundInfo{mForegroundPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mForegroundUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mForegroundPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mForegroundDisplayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastForegroundPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLastForegroundUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastForegroundPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastForegroundDisplayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMultiWindowForegroundPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiWindowForegroundUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

    iget-object p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
