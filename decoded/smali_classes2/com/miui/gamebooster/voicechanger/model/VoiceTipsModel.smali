.class public Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bgRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private titleColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel$a;

    invoke-direct {v0}, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel$a;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->titleColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->bgRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->title:Ljava/lang/String;

    iput p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->titleColor:I

    iput p3, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->bgRes:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBgRes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->bgRes:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->titleColor:I

    return v0
.end method

.method public setBgRes(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->bgRes:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->titleColor:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->titleColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->bgRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
