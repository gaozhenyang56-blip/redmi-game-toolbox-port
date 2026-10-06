.class public Lcom/miui/permission/PermissionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/permission/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_NO_ASK:I = 0x10

.field public static final FLAG_SUPPORT_FOREGROUND:I = 0x40


# instance fields
.field private appCount:I

.field private desc:Ljava/lang/String;

.field private flags:I

.field private group:I

.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permission/PermissionInfo$1;

    invoke-direct {v0}, Lcom/miui/permission/PermissionInfo$1;-><init>()V

    sput-object v0, Lcom/miui/permission/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/permission/PermissionInfo;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permission/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permission/PermissionInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/permission/PermissionInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/permission/PermissionInfo;->appCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/permission/PermissionInfo;->group:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/permission/PermissionInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permission/PermissionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppCount()I
    .locals 1

    iget v0, p0, Lcom/miui/permission/PermissionInfo;->appCount:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permission/PermissionInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/miui/permission/PermissionInfo;->flags:I

    return v0
.end method

.method public getGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/permission/PermissionInfo;->group:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/permission/PermissionInfo;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permission/PermissionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permission/PermissionInfo;->appCount:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permission/PermissionInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permission/PermissionInfo;->flags:I

    return-void
.end method

.method public setGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permission/PermissionInfo;->group:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/permission/PermissionInfo;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permission/PermissionInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/permission/PermissionInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/permission/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permission/PermissionInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/permission/PermissionInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/permission/PermissionInfo;->appCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/permission/PermissionInfo;->group:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
