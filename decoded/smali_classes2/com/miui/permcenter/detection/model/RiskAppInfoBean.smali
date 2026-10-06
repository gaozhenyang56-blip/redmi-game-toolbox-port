.class public Lcom/miui/permcenter/detection/model/RiskAppInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PER_USER_RANGE:I = 0x186a0


# instance fields
.field public mHasXSpaceApp:Z

.field public mIconUrl:Ljava/lang/String;

.field public mIsCheck:Z

.field public mName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mUid:I

.field public mVersionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean$a;

    invoke-direct {v0}, Lcom/miui/permcenter/detection/model/RiskAppInfoBean$a;-><init>()V

    sput-object v0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mVersionCode:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIsCheck:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mHasXSpaceApp:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/permcenter/model/LocalAppInfoBean;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIconUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->versionCode:J

    iput-wide v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mVersionCode:J

    iget p1, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->uid:I

    iput p1, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mUid:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIsCheck:Z

    iput-boolean p2, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mHasXSpaceApp:Z

    return-void
.end method

.method public static getRiskList(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/LocalAppInfoBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/model/LocalAppInfoBean;

    iget-object v2, v1, Lcom/miui/permcenter/model/LocalAppInfoBean;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-object v3, v1, Lcom/miui/permcenter/model/LocalAppInfoBean;->packageName:Ljava/lang/String;

    invoke-static {p2, v3}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;-><init>(Lcom/miui/permcenter/model/LocalAppInfoBean;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getUserId(I)I
    .locals 1

    const v0, 0x186a0

    div-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIsCheck:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mHasXSpaceApp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
