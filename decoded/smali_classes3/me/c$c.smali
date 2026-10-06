.class Lme/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private d:Ljava/lang/Runnable;

.field private e:Lcom/miui/powercenter/utils/ChargeInfo;

.field final synthetic f:Lme/c;


# direct methods
.method private constructor <init>(Lme/c;)V
    .locals 0

    iput-object p1, p0, Lme/c$c;->f:Lme/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lme/c$c;->a:Z

    iput-boolean p1, p0, Lme/c$c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lme/c;Lme/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lme/c$c;-><init>(Lme/c;)V

    return-void
.end method

.method static synthetic a(Lme/c$c;Lcom/miui/powercenter/utils/ChargeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lme/c$c;->h(Lcom/miui/powercenter/utils/ChargeInfo;)V

    return-void
.end method

.method static synthetic b(Lme/c$c;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lme/c$c;->f(ZI)V

    return-void
.end method

.method static synthetic c(Lme/c$c;)Z
    .locals 0

    invoke-direct {p0}, Lme/c$c;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lme/c$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lme/c$c;->b:Z

    return p1
.end method

.method static synthetic e(Lme/c$c;)Lcom/miui/powercenter/utils/ChargeInfo;
    .locals 0

    iget-object p0, p0, Lme/c$c;->e:Lcom/miui/powercenter/utils/ChargeInfo;

    return-object p0
.end method

.method private f(ZI)V
    .locals 5

    iget-object v0, p0, Lme/c$c;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/c$c;->f:Lme/c;

    invoke-static {v0}, Lme/c;->d(Lme/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/c$c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lme/c$c;->d:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lme/c$c;->e:Lcom/miui/powercenter/utils/ChargeInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/powercenter/utils/ChargeInfo;

    invoke-direct {v0}, Lcom/miui/powercenter/utils/ChargeInfo;-><init>()V

    iput-object v0, p0, Lme/c$c;->e:Lcom/miui/powercenter/utils/ChargeInfo;

    :cond_1
    iget-boolean v0, p0, Lme/c$c;->a:Z

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    div-long/2addr v3, v1

    iget-object p1, p0, Lme/c$c;->e:Lcom/miui/powercenter/utils/ChargeInfo;

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/miui/powercenter/utils/ChargeInfo;->charged:J

    iget-wide v0, p0, Lme/c$c;->c:J

    sub-long/2addr v3, v0

    iput-wide v3, p1, Lcom/miui/powercenter/utils/ChargeInfo;->duration:J

    iget-object p1, p0, Lme/c$c;->f:Lme/c;

    invoke-static {p1}, Lme/c;->d(Lme/c;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lme/c$c$a;

    invoke-direct {p2, p0}, Lme/c$c$a;-><init>(Lme/c$c;)V

    iput-object p2, p0, Lme/c$c;->d:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lme/c$c;->a:Z

    iget-object p1, p0, Lme/c$c;->e:Lcom/miui/powercenter/utils/ChargeInfo;

    int-to-long v3, p2

    iput-wide v3, p1, Lcom/miui/powercenter/utils/ChargeInfo;->charging:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    div-long/2addr p1, v1

    iput-wide p1, p0, Lme/c$c;->c:J

    :cond_3
    :goto_0
    return-void
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lme/c$c;->b:Z

    return v0
.end method

.method private h(Lcom/miui/powercenter/utils/ChargeInfo;)V
    .locals 4

    iget-wide v0, p1, Lcom/miui/powercenter/utils/ChargeInfo;->charged:J

    iget-wide v2, p1, Lcom/miui/powercenter/utils/ChargeInfo;->charging:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p1, Lcom/miui/powercenter/utils/ChargeInfo;->duration:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lme/c$c;->f:Lme/c;

    invoke-static {v0}, Lme/c;->a(Lme/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lme/c$c;->f:Lme/c;

    invoke-static {v1}, Lme/c;->b(Lme/c;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "charge_report_list"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/powercenter/utils/ChargeInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lme/c$c;->f:Lme/c;

    invoke-static {p1}, Lme/c;->b(Lme/c;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "charge_report_list"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
