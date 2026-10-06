.class Lcom/miui/gamebooster/beauty/BeautyService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/BeautyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/beauty/BeautyService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$c;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->h:Lf7/e;

    return-object v0
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 5

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    :cond_0
    if-eq v0, v2, :cond_2

    if-eq v1, v0, :cond_2

    :cond_1
    return v3

    :cond_2
    const-string v0, "BeautyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundInfoChanged: Cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/beauty/BeautyService;->D()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$c;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/BeautyService;->E(Lcom/miui/gamebooster/beauty/BeautyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {p1}, Lw5/f;->z0(Ljava/lang/String;)V

    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
