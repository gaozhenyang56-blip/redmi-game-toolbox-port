.class public Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final FREE_LEVEL_TIME:[J

.field private static final SIZE_1:I = 0xa

.field private static final SIZE_2:I = 0x14

.field private static final SIZE_3:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FboPackageBean"

.field private static final groupSort:[I


# instance fields
.field private curPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupIndex:I

.field private transient isOver30Day:Z

.field private level1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startLevelTime:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupSort:[I

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->FREE_LEVEL_TIME:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 8
        0x240c8400
        0x48190800
        0x90321000L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level2:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level3:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->startLevelTime:[J

    return-void
.end method

.method private getFinishList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "KEY_FBO_RESULT_PKG_LIST"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinishList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FboPackageBean"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getInstance()Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    invoke-static {}, Lta/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u5730\u7f13\u5b58\u7684\u6570\u636e\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FboPackageBean"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;

    invoke-static {v0, v1}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;

    invoke-direct {v0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;-><init>()V

    :cond_0
    iget-object v1, v0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "init load data list ~ "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->setDataList()V

    :cond_1
    invoke-static {}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->isLastFinishOver30Days()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->isOver30Day:Z

    return-object v0
.end method

.method private getLevelList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level3:Ljava/util/List;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level2:Ljava/util/List;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    return-object p1
.end method

.method private getNextLevelList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->isNextReady()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isNextReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FboPackageBean"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupSort:[I

    array-length v3, v1

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->startLevelTime:[J

    aget v0, v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v3, v0

    const-string v0, "reset fbo result pkg list~"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "KEY_FBO_RESULT_PKG_LIST"

    invoke-static {v2, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->getLevelList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isLastFinishOver30Days()Z
    .locals 6

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lta/f;->f(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextReady()Z
    .locals 7

    sget-object v0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupSort:[I

    iget v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, v0

    rem-int/2addr v1, v3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->startLevelTime:[J

    if-eqz v1, :cond_2

    array-length v1, v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->startLevelTime:[J

    aget-wide v5, v1, v0

    sub-long/2addr v3, v5

    sget-object v1, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->FREE_LEVEL_TIME:[J

    aget-wide v0, v1, v0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public getPackageList()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FboPackageBean"

    if-nez v0, :cond_0

    const-string v0, "level1 data is empty ~"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->getFinishList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-static {v0}, Lta/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->getNextLevelList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "nextList is null ~ "

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->saveToLocal()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-static {v0}, Lta/e;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    return-object v0
.end method

.method public saveToLocal()V
    .locals 3

    invoke-static {p0}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveToLocal , json :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FboPackageBean"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lta/f;->h(Ljava/lang/String;)V

    return-void
.end method

.method public setDataList()V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    new-instance v0, Lta/a;

    invoke-direct {v0}, Lta/a;-><init>()V

    invoke-virtual {v0}, Lta/a;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    const/16 v4, 0x13

    const/16 v5, 0x9

    const/16 v6, 0x14

    const/16 v7, 0xa

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level3:Ljava/util/List;

    const/16 v3, 0x1d

    :goto_0
    invoke-interface {v0, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level2:Ljava/util/List;

    invoke-interface {v0, v7, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v0, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->saveToLocal()V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_2

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_3

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->saveToLocal()V

    return-void
.end method

.method public upLoadPackageList()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lta/d;->b()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fboIsSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FboPackageBean"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6ca1\u6709\u53ef\u4ee5\u6574\u7406\u7684\u5217\u8868"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->isOver30Day:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->level1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    const-string v0, "Is over 30 day, reload data list ~"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->setDataList()V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->getPackageList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkgList = null , groupIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lta/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lta/f;->k(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lta/f;->l(J)V

    iget v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    const/4 v3, 0x1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->isOver30Day:Z

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lta/d;->e(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "groupIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupIndex:I

    sget-object v1, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->groupSort:[I

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->curPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "End of round, reload data list ~ "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/fbo/FboPackageBean;->setDataList()V

    :cond_7
    return-void
.end method
