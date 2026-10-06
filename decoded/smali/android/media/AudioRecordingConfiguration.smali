.class public final Landroid/media/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClientPackageName:Ljava/lang/String;

.field private final mClientSource:I

.field private final mClientUid:I

.field private final mPatchHandle:I

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "AudioRecordingConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioRecordingConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioRecordingConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    iput p2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iput p3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iput p6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iput-object p7, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public getClientAudioSessionId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    return v0
.end method

.method public getClientAudioSource()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    return v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUid()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
