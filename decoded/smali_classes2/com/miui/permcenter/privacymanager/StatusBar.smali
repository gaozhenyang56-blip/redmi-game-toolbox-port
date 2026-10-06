.class public Lcom/miui/permcenter/privacymanager/StatusBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final isTerminal:Z

.field private mActiveOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePerm:J

.field private mHistoryPerm:J

.field private mNotedOps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final pkgName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mHistoryPerm:J

    iput p1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    iput-object p2, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    return-void
.end method

.method private dumpOps(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "nothing"

    return-object p1
.end method

.method private opToPermissionId(Ljava/util/Collection;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->switchOpToMiuiFlaresPermission(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/miui/permcenter/privacymanager/StatusBar;
    .locals 4

    new-instance v0, Lcom/miui/permcenter/privacymanager/StatusBar;

    iget v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/permcenter/privacymanager/StatusBar;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    return-object v0
.end method

.method public clone(J)Lcom/miui/permcenter/privacymanager/StatusBar;
    .locals 4

    new-instance v0, Lcom/miui/permcenter/privacymanager/StatusBar;

    iget v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/permcenter/privacymanager/StatusBar;-><init>(ILjava/lang/String;Z)V

    iput-wide p1, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/StatusBar;->clone()Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/miui/permcenter/privacymanager/StatusBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/privacymanager/StatusBar;

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    iget p1, p1, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getActiveOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    return-object v0
.end method

.method public getActivePerm()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    return-wide v0
.end method

.method public getHighestPerm()J
    .locals 8

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    const-wide/16 v2, 0x1

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x1000

    and-long v4, v0, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    return-wide v2

    :cond_1
    const-wide/32 v2, 0x20000

    and-long v4, v0, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    return-wide v2

    :cond_2
    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    return-wide v2

    :cond_3
    return-wide v6
.end method

.method public getHistoryPerm()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mHistoryPerm:J

    return-wide v0
.end method

.method public getRunningPerm()J
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->opToPermissionId(Ljava/util/Collection;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPrivacyAccess()Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    const-wide/32 v2, 0x21020

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasScreenShare()Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTerminalScreen()Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mHistoryPerm:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    return v0
.end method

.method public onOpNoted(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mNotedOps:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mNotedOps:Ljava/util/Set;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mNotedOps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mNotedOps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->opToPermissionId(Ljava/util/Collection;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mNotedOps:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->opToPermissionId(Ljava/util/Collection;)J

    move-result-wide v0

    or-long/2addr p1, v0

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    iput-wide p1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onOpState(IZZ)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->opToPermissionId(Ljava/util/Collection;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mNotedOps:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/miui/permcenter/privacymanager/StatusBar;->opToPermissionId(Ljava/util/Collection;)J

    move-result-wide v2

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_4

    iput-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActivePerm:J

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->removeHistory(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->recordHistory(I)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public recordHistory(I)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mHistoryPerm:J

    invoke-static {p1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->switchOpToMiuiFlaresPermission(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mHistoryPerm:J

    return-void
.end method

.method public removeHistory(I)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mHistoryPerm:J

    invoke-static {p1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->switchOpToMiuiFlaresPermission(I)J

    move-result-wide v2

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mHistoryPerm:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> isTerminal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> Active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mActiveOps:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->dumpOps(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Noted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/StatusBar;->mNotedOps:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->dumpOps(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
