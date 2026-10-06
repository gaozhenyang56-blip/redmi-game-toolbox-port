.class public Lcom/miui/antivirus/model/DangerousInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/antivirus/model/DangerousInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_VERSION_CODE:I = -0x3e9

.field public static final NOTIFY_TYPE_ALLOW_CANCEL:I = 0x2

.field public static final NOTIFY_TYPE_NOT_CANCEL:I = 0x1


# instance fields
.field private fileMd5:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private notifyType:I

.field private packageName:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/model/DangerousInfo$a;

    invoke-direct {v0}, Lcom/miui/antivirus/model/DangerousInfo$a;-><init>()V

    sput-object v0, Lcom/miui/antivirus/model/DangerousInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e9

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->versionCode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e9

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->notifyType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->sign:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->fileMd5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/antivirus/model/DangerousInfo$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/model/DangerousInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/miui/antivirus/model/DangerousInfo;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/model/DangerousInfo;

    invoke-direct {v0}, Lcom/miui/antivirus/model/DangerousInfo;-><init>()V

    const-string v1, "nt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->notifyType:I

    const-string v1, "pkg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    const-string v1, "sign"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->sign:Ljava/lang/String;

    const-string v1, "ver"

    const/16 v2, -0x3e9

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->versionCode:I

    const-string v1, "md5"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->fileMd5:Ljava/lang/String;

    const-string v1, "language"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    const-string v1, "msg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/antivirus/model/DangerousInfo;->msg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->fileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyType()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->notifyType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->versionCode:I

    return v0
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->fileMd5:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setNotifyType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->notifyType:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->sign:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/model/DangerousInfo;->versionCode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/miui/antivirus/model/DangerousInfo;->notifyType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/antivirus/model/DangerousInfo;->sign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/antivirus/model/DangerousInfo;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/antivirus/model/DangerousInfo;->fileMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/antivirus/model/DangerousInfo;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
