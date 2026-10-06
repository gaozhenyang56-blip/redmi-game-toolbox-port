.class public Lcom/miui/permcenter/AppPermissionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private isAdaptedRpData:Z

.field private isAllowStartByWakePath:Z

.field private isDisableSociality:Z

.field private isRunning:Z

.field private isSystem:Z

.field private label:Ljava/lang/String;

.field private noScopedStorage:Z

.field private packageName:Ljava/lang/String;

.field private permissionToAction:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private permissionToDesc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pyInfo:Le3/g;

.field private requiredPermission:J

.field private targetSdkVersion:I

.field private uid:I

.field private usageEvent:Ljava/lang/String;

.field private usageRecentDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/AppPermissionInfo$a;

    invoke-direct {v0}, Lcom/miui/permcenter/AppPermissionInfo$a;-><init>()V

    sput-object v0, Lcom/miui/permcenter/AppPermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->isDisableSociality:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->isDisableSociality:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->label:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageEvent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageRecentDay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAllowStartByWakePath:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isRunning:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isSystem:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAdaptedRpData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isDisableSociality:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->targetSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    :cond_5
    iput-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->noScopedStorage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->requiredPermission:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->permissionToAction:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addRequiredPermission(J)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->requiredPermission:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->requiredPermission:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->count:I

    return v0
.end method

.method public getIsAllowStartByWakePath()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAllowStartByWakePath:Z

    return v0
.end method

.method public getIsRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->isRunning:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNoScopedStorage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->noScopedStorage:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUser()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->uid:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionToAction()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->permissionToAction:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPermissionToDesc(J)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->permissionToDesc:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->permissionToDesc:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPyInfo()Le3/g;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->pyInfo:Le3/g;

    return-object v0
.end method

.method public getRequiredPermission()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->requiredPermission:J

    return-wide v0
.end method

.method public getTargetSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->targetSdkVersion:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->uid:I

    return v0
.end method

.method public getUsageEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageRecentDay()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageRecentDay:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    return v0
.end method

.method public isAdaptedRpData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAdaptedRpData:Z

    return v0
.end method

.method public isDisableSociality()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->isDisableSociality:Z

    return v0
.end method

.method public isSystem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->isSystem:Z

    return v0
.end method

.method public setAdaptedRpData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAdaptedRpData:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->count:I

    return-void
.end method

.method public setDisableSociality(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isDisableSociality:Z

    return-void
.end method

.method public setIsAllowStartByWakePath(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAllowStartByWakePath:Z

    return-void
.end method

.method public setIsRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isRunning:Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->label:Ljava/lang/String;

    return-void
.end method

.method public setNoScopedStorage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->noScopedStorage:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPermissionToAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->permissionToAction:Ljava/util/HashMap;

    return-void
.end method

.method public setPermissionToDesc(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->permissionToDesc:Ljava/util/HashMap;

    return-void
.end method

.method public setPyInfo(Le3/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->pyInfo:Le3/g;

    return-void
.end method

.method public setSystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->isSystem:Z

    return-void
.end method

.method public setTargetSdkVersion(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->targetSdkVersion:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->uid:I

    return-void
.end method

.method public setUsageEvent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageEvent:Ljava/lang/String;

    return-void
.end method

.method public setUsageRecentDay(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageRecentDay:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppPermissionInfo [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/AppPermissionInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->usageRecentDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAllowStartByWakePath:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->isRunning:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->isSystem:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->isAdaptedRpData:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->isDisableSociality:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->targetSdkVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->noScopedStorage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/miui/permcenter/AppPermissionInfo;->requiredPermission:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/permcenter/AppPermissionInfo;->permissionToAction:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
