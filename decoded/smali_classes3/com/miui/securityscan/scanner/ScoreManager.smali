.class public Lcom/miui/securityscan/scanner/ScoreManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;
    }
.end annotation


# static fields
.field private static final p:Z

.field private static q:Lcom/miui/securityscan/scanner/ScoreManager;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkf/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation
.end field

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Luf/a;->a:Z

    sput-boolean v0, Lcom/miui/securityscan/scanner/ScoreManager;->p:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->f:Z

    iput v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->o:I

    return-void
.end method

.method private f()I
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/scanner/ScoreManager;->k:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const/16 v0, 0xf

    return v0

    :cond_1
    const-wide/32 v2, 0xa4cb800

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const/16 v0, 0xa

    return v0

    :cond_2
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    const-wide/32 v2, 0x2932e00

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    return v5
.end method

.method public static declared-synchronized j()Lcom/miui/securityscan/scanner/ScoreManager;
    .locals 2

    const-class v0, Lcom/miui/securityscan/scanner/ScoreManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/ScoreManager;->q:Lcom/miui/securityscan/scanner/ScoreManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-direct {v1}, Lcom/miui/securityscan/scanner/ScoreManager;-><init>()V

    sput-object v1, Lcom/miui/securityscan/scanner/ScoreManager;->q:Lcom/miui/securityscan/scanner/ScoreManager;

    :cond_0
    sget-object v1, Lcom/miui/securityscan/scanner/ScoreManager;->q:Lcom/miui/securityscan/scanner/ScoreManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private n(J)I
    .locals 7

    const-string v0, "ScoreManager"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/securityscan/scanner/ScoreManager;->k:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-static {}, Lx4/t;->m()J

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tm = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    if-nez v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x64

    mul-long/2addr p1, v5

    div-long/2addr p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p1, p1

    :goto_0
    const/16 p2, 0x32

    if-lt p1, p2, :cond_2

    const/16 p1, 0xf

    return p1

    :cond_2
    const/16 p2, 0x28

    if-lt p1, p2, :cond_3

    const/16 p1, 0xa

    return p1

    :cond_3
    const/16 p2, 0x1e

    if-lt p1, p2, :cond_4

    const/16 p1, 0x8

    return p1

    :cond_4
    const/16 p2, 0x14

    if-lt p1, p2, :cond_5

    const/4 p1, 0x5

    return p1

    :cond_5
    return v2

    :catch_0
    move-exception p1

    const-string p2, "getMemoryMinusPredictScore"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return v2
.end method

.method private o()I
    .locals 8

    sget-boolean v0, Lcom/miui/securityscan/scanner/ScoreManager;->p:Z

    const-string v1, "ScoreManager"

    if-eqz v0, :cond_0

    const-string v0, "getMinusPredictScore------------------------------------------------ "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v5}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v6

    sget-object v7, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v6

    add-int/2addr v3, v6

    sget-boolean v6, Lcom/miui/securityscan/scanner/ScoreManager;->p:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemModel Minus ItemKey ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/miui/securityscan/scanner/ScoreManager;->p:Z

    if-eqz v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemModel Minus Score = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->g()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miui/securityscan/scanner/ScoreManager;->n(J)I

    move-result v4

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory Minus Score = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->f()I

    move-result v4

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache Minus Score = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/2addr v3, v4

    if-nez v3, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->f:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v5}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v6

    sget-object v7, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v6, v7, :cond_9

    invoke-virtual {v5}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v6

    add-int/2addr v2, v6

    sget-boolean v6, Lcom/miui/securityscan/scanner/ScoreManager;->p:Z

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ManualModel Minus ItemKey ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    sget-boolean v0, Lcom/miui/securityscan/scanner/ScoreManager;->p:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual Minus Score = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/securityscan/scanner/ScoreManager;->o:I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->o:I

    invoke-static {v0, v1}, Lef/x;->c0(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v0

    const/16 v1, 0x29

    if-nez v0, :cond_c

    if-ge v3, v1, :cond_c

    move v3, v1

    :cond_c
    return v3
.end method


# virtual methods
.method public A()Z
    .locals 7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_latest_virus_scan_date"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-lez v0, :cond_1

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->w()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->v()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/32 v2, 0xf731400

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->w()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->v()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    return v1
.end method

.method protected B(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size before "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "removeAppInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public D(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->getIndex()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_1

    :cond_4
    :goto_0
    return-void
.end method

.method protected E()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public F()V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    invoke-virtual {v5}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/miui/securitycenter/memory/MemoryModel;->getMemorySize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    iput-wide v3, p0, Lcom/miui/securityscan/scanner/ScoreManager;->i:J

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    invoke-virtual {v3}, Lcom/miui/securitycenter/memory/MemoryModel;->getMemorySize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_1

    :cond_2
    iput-wide v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->j:J

    return-void
.end method

.method public G()V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkf/c;

    invoke-virtual {v3}, Lkf/c;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lkf/c;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iput-wide v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->h:J

    return-void
.end method

.method public H(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->k:J

    return-void
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->m:I

    return-void
.end method

.method protected J(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    return-void
.end method

.method protected K(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->a:Ljava/util/List;

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->g:I

    return-void
.end method

.method public M()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->n:Ljava/util/List;

    return-void
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->l:I

    return-void
.end method

.method public O(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->j:J

    return-void
.end method

.method public P(Lcom/miui/securityscan/model/AbsModel;Lcom/miui/securityscan/model/AbsModel$State;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p2}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public Q()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->o:I

    invoke-static {v0, v1}, Lef/x;->c0(Landroid/content/Context;I)V

    return-void
.end method

.method public R()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/model/i;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/i;->g()Lo2/b$d;

    move-result-object v3

    sget-object v4, Lo2/b$d;->d:Lo2/b$d;

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->m:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->l:I

    invoke-static {v0}, Lo2/h;->J(I)V

    iget v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->m:I

    invoke-static {v0}, Lo2/h;->I(I)V

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->m:I

    iput v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->l:I

    invoke-static {v1}, Lo2/h;->I(I)V

    invoke-static {v1}, Lo2/h;->J(I)V

    :goto_1
    return-void
.end method

.method public S(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/model/i;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/i;->f()Lo2/b$c;

    move-result-object v3

    sget-object v4, Lo2/b$c;->a:Lo2/b$c;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/miui/antivirus/model/i;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->C(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public T()V
    .locals 6

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/GroupModel;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/AbsModel;

    instance-of v4, v4, Lcom/miui/securityscan/model/system/VirusScanModel;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/GroupModel;->scan()V

    move v2, v5

    :cond_2
    if-ne v2, v5, :cond_0

    :cond_3
    return-void
.end method

.method protected a(Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/securitycenter/memory/MemoryModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Lkf/c;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lkf/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lcom/miui/antivirus/model/i;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->j:J

    return-wide v0
.end method

.method public g()J
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkf/c;

    invoke-virtual {v3}, Lkf/c;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lkf/c;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->h:J

    return-wide v0
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->p()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v1

    const/16 v2, 0x29

    if-nez v1, :cond_0

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    sub-int/2addr v1, v0

    return v1
.end method

.method public k()I
    .locals 6

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public l()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v4, v5, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkf/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/ScoreManager;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkf/c;

    invoke-virtual {v2}, Lkf/c;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public p()I
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lef/x;->m(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->o()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    sub-int/2addr v1, v0

    return v1
.end method

.method public r()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v4, v5, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v5

    sget-object v6, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/miui/securityscan/model/AbsModel;->isScanHide()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->g:I

    return v0
.end method

.method public u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public w()I
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->l:I

    iget v1, p0, Lcom/miui/securityscan/scanner/ScoreManager;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public y()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lpf/g;->i(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->k:J

    invoke-static {}, Lo2/h;->h()I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->m:I

    invoke-static {}, Lo2/h;->i()I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->l:I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lef/x;->m(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->o:I

    return-void
.end method

.method public z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/ScoreManager;->w()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
