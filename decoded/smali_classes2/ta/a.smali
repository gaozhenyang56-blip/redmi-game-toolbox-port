.class public Lta/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lta/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lta/a;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lta/a;->f:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lta/a;->a:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    :cond_5
    if-nez v0, :cond_0

    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lta/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lta/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lta/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lta/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 8
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

    invoke-static {}, Lta/f;->a()J

    move-result-wide v1

    invoke-virtual {p0}, Lta/a;->e()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    invoke-virtual {v6}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->getSize()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-ltz v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    invoke-virtual {v6}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->getmPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private g()V
    .locals 13

    iget-object v0, p0, Lta/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v7, v0

    move v6, v1

    :goto_0
    iget-object v8, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v6, v8, :cond_5

    if-ne v6, v1, :cond_2

    iget-object v4, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    if-ne v4, v9, :cond_1

    const-string v4, "AppUsageStatsManager"

    const-string v8, "  refreshOneTimeDetailList()     warning : \u6bcf\u6b21\u6253\u5f00\u4e00\u4e2aapp  \u7b2c\u4e00\u4e2aactivity\u7684\u7c7b\u578b\u662f 2     "

    invoke-static {v4, v8}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_4

    iget-object v8, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v10

    if-ne v6, v8, :cond_4

    move v7, v6

    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    move v1, v7

    :goto_2
    invoke-direct {p0, v5}, Lta/a;->b(Ljava/util/ArrayList;)V

    move v6, v10

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v7}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v7

    if-ne v7, v9, :cond_6

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v8

    if-ne v8, v10, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v7}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v7

    sub-long/2addr v11, v7

    add-long/2addr v2, v11

    :cond_6
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    :cond_7
    new-instance v6, Lta/g;

    invoke-direct {v6, v4, v2, v3, v5}, Lta/g;-><init>(Ljava/lang/String;JLjava/util/ArrayList;)V

    iget-object v2, p0, Lta/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    if-lt v1, v2, :cond_0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lta/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lta/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lta/g;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lta/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lta/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lta/g;

    invoke-virtual {v3}, Lta/g;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  calculateUseTime : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUsageStatsManager"

    invoke-static {v0, p1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lta/a;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lta/a$a;

    invoke-direct {v1, p0}, Lta/a$a;-><init>(Lta/a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lab/a;->c(J)J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    iget-object v4, p0, Lta/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lza/b;->c(Landroid/content/Context;)Lza/b;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lza/b;->d(JJ)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lta/a;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Lta/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lza/b;->c(Landroid/content/Context;)Lza/b;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lza/b;->e(JJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lta/a;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lta/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lta/a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lta/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lta/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lta/a;->g()V

    invoke-virtual {p0}, Lta/a;->h()V

    invoke-direct {p0}, Lta/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "AppUsageStatsManager"

    const-string v1, " UseTimeDataManager-refreshData()   \u672a\u67e5\u5230events"

    invoke-static {v0, v1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lta/a;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "dumpsys SurfaceFlinger --latency SurfaceView"

    invoke-static {v0, v1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 9

    iget-object v0, p0, Lta/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lta/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lta/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lta/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    const/4 v4, 0x0

    iget-object v3, p0, Lta/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lta/a;->a(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v3, p0, Lta/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lta/a;->a:Landroid/content/Context;

    iget-object v8, p0, Lta/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Leg/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lta/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->getmPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lab/d;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->setSize(J)V

    iget-object v3, p0, Lta/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lta/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lta/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->getmPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    move v3, v0

    :goto_2
    iget-object v4, p0, Lta/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lta/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lta/g;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lta/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lta/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    invoke-virtual {v4}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->addCount()V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
