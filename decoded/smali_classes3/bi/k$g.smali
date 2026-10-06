.class Lbi/k$g;
.super Lcom/qti/gnssconfig/IGnssConfigCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field final synthetic k:Lbi/k;


# direct methods
.method private constructor <init>(Lbi/k;)V
    .locals 0

    iput-object p1, p0, Lbi/k$g;->k:Lbi/k;

    invoke-direct {p0}, Lcom/qti/gnssconfig/IGnssConfigCallback$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbi/k$g;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lbi/k;Lbi/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbi/k$g;-><init>(Lbi/k;)V

    return-void
.end method


# virtual methods
.method public k2(Lcom/qti/gnssconfig/RLConfigData;)V
    .locals 2

    new-instance v0, Lbi/e;

    invoke-direct {v0}, Lbi/e;-><init>()V

    iget v1, p1, Lcom/qti/gnssconfig/RLConfigData;->validMask:I

    iput v1, v0, Lbi/e;->a:I

    iget-boolean v1, p1, Lcom/qti/gnssconfig/RLConfigData;->enableStatus:Z

    iput-boolean v1, v0, Lbi/e;->b:Z

    iget-boolean v1, p1, Lcom/qti/gnssconfig/RLConfigData;->enableStatusForE911:Z

    iput-boolean v1, v0, Lbi/e;->c:Z

    iget v1, p1, Lcom/qti/gnssconfig/RLConfigData;->major:I

    iput v1, v0, Lbi/e;->d:I

    iget p1, p1, Lcom/qti/gnssconfig/RLConfigData;->minor:I

    iput p1, v0, Lbi/e;->e:I

    invoke-static {}, Lbi/k;->s()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lbi/k$g;->k:Lbi/k;

    invoke-static {v1}, Lbi/k;->t(Lbi/k;)Lbi/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lbi/d;->a(Lbi/e;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s7([I)V
    .locals 8

    invoke-static {}, Lbi/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGnssSvTypeConfigCb"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, p1, v3

    invoke-static {v4}, Lbi/g;->a(I)Lbi/g;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    not-int v5, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Lbi/g;->a(I)Lbi/g;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid sv type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lbi/k;->q()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lbi/k$g;->k:Lbi/k;

    invoke-static {v2}, Lbi/k;->r(Lbi/k;)Lbi/f;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lbi/f;->a(Ljava/util/Set;Ljava/util/Set;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
