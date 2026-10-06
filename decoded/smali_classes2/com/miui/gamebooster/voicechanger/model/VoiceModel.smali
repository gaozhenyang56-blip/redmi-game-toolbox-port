.class public Lcom/miui/gamebooster/voicechanger/model/VoiceModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_FREE:I = 0x1

.field public static final GROUP_XUNYOU:I = 0x2


# instance fields
.field private mGroup:I

.field private mIcon:Ljava/lang/String;

.field private mModeTitle:Ljava/lang/String;

.field private mNormalIconRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mOriginalUrl:Ljava/lang/String;

.field private mPreviewUrl:Ljava/lang/String;

.field private mSelectIcon:Ljava/lang/String;

.field private mSelected:Z

.field private mSelectedIconRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel$a;

    invoke-direct {v0}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel$a;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mGroup:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mModeTitle:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mGroup:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mModeTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mNormalIconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectedIconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mGroup:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mGroup:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getModeTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mModeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalIconRes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mNormalIconRes:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mPreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIconRes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectedIconRes:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelected:Z

    return v0
.end method

.method public setGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mGroup:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 4

    const-string v0, "selected"

    const-string v1, "normal"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mIcon:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectIcon:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mIcon:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setModeTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mModeTitle:Ljava/lang/String;

    return-void
.end method

.method public setNormalIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mNormalIconRes:I

    return-void
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mOriginalUrl:Ljava/lang/String;

    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mPreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelected:Z

    return-void
.end method

.method public setSelectedIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectedIconRes:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mModeTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mNormalIconRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectedIconRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelectIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mGroup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->mSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
