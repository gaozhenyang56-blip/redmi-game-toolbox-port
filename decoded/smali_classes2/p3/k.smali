.class public Lp3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lp3/k;


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/k;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 0

    invoke-static {p0, p1}, Lp3/k;->e(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result p0

    return p0
.end method

.method public static c()Lp3/k;
    .locals 2

    sget-object v0, Lp3/k;->c:Lp3/k;

    if-nez v0, :cond_1

    const-class v0, Lp3/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp3/k;->c:Lp3/k;

    if-nez v1, :cond_0

    new-instance v1, Lp3/k;

    invoke-direct {v1}, Lp3/k;-><init>()V

    sput-object v1, Lp3/k;->c:Lp3/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lp3/k;->c:Lp3/k;

    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-string v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lp3/j;

    invoke-direct {v0}, Lp3/j;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private static synthetic e(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 2

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p0}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    long-to-float p0, v0

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lp3/k;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp3/k;->f()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lp3/k;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lp3/k;->a:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lp3/k;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lp3/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lp3/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
