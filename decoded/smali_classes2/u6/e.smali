.class public Lu6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Ljava/lang/Object;

.field private static j:Lu6/e;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/miui/gamebooster/service/w;

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu6/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lu6/e;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lu6/e;->d:I

    new-instance v0, Lu6/e$a;

    invoke-direct {v0, p0}, Lu6/e$a;-><init>(Lu6/e;)V

    iput-object v0, p0, Lu6/e;->g:Ljava/lang/Runnable;

    new-instance v0, Lu6/e$b;

    invoke-direct {v0, p0}, Lu6/e$b;-><init>(Lu6/e;)V

    iput-object v0, p0, Lu6/e;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lu6/e;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lu6/e;)V
    .locals 0

    invoke-direct {p0}, Lu6/e;->r()V

    return-void
.end method

.method static synthetic c(Lu6/e;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lu6/e;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lu6/e;)Z
    .locals 0

    iget-boolean p0, p0, Lu6/e;->b:Z

    return p0
.end method

.method static synthetic e(Lu6/e;)V
    .locals 0

    invoke-direct {p0}, Lu6/e;->o()V

    return-void
.end method

.method static synthetic f(Lu6/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lu6/e;->v(Z)V

    return-void
.end method

.method static synthetic g(Lu6/e;)I
    .locals 0

    iget p0, p0, Lu6/e;->d:I

    return p0
.end method

.method static synthetic h(Lu6/e;I)I
    .locals 0

    iput p1, p0, Lu6/e;->d:I

    return p1
.end method

.method static synthetic i(Lu6/e;)Z
    .locals 0

    iget-boolean p0, p0, Lu6/e;->c:Z

    return p0
.end method

.method static synthetic j(Lu6/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lu6/e;->c:Z

    return p1
.end method

.method static synthetic k(Lu6/e;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lu6/e;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l(Lu6/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lu6/e;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lu6/e;)V
    .locals 0

    invoke-direct {p0}, Lu6/e;->u()V

    return-void
.end method

.method public static n()Lu6/e;
    .locals 2

    sget-object v0, Lu6/e;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu6/e;->j:Lu6/e;

    if-nez v1, :cond_0

    new-instance v1, Lu6/e;

    invoke-direct {v1}, Lu6/e;-><init>()V

    sput-object v1, Lu6/e;->j:Lu6/e;

    :cond_0
    sget-object v1, Lu6/e;->j:Lu6/e;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private o()V
    .locals 1

    new-instance v0, Lu6/e$d;

    invoke-direct {v0, p0}, Lu6/e$d;-><init>(Lu6/e;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private q()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "key_wifi_detect"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x2bf20

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "WlanSpeedUpManager"

    const-string v3, "error proccess detect"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private r()V
    .locals 1

    new-instance v0, Lu6/e$e;

    invoke-direct {v0, p0}, Lu6/e$e;-><init>(Lu6/e;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lu6/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    invoke-direct {p0}, Lu6/e;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_detect"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lu6/e;->s()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lu6/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_detect"

    invoke-static {v1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private v(Z)V
    .locals 3

    iget-object v0, p0, Lu6/e;->e:Lcom/miui/gamebooster/service/w;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lu6/e;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lu6/e;->f:Z

    if-nez v1, :cond_0

    invoke-static {}, Lu6/f;->d()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x7a

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/service/w;->T(Landroid/os/Message;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu6/e;->f:Z

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    new-instance v0, Lu6/e$c;

    invoke-direct {v0, p0}, Lu6/e$c;-><init>(Lu6/e;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lu6/e;->b:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lu6/e;->s()V

    :cond_0
    return-void
.end method

.method public y(Landroid/content/Context;Lcom/miui/gamebooster/service/w;Z)V
    .locals 0

    iput-object p2, p0, Lu6/e;->e:Lcom/miui/gamebooster/service/w;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lu6/e;->f:Z

    invoke-virtual {p0, p3}, Lu6/e;->w(Z)V

    invoke-direct {p0}, Lu6/e;->t()V

    invoke-static {}, Lef/x;->z()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Ld2/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lu6/f;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lu6/e;->q()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lu6/e;->x()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lu6/e;->v(Z)V

    invoke-direct {p0}, Lu6/e;->s()V

    return-void
.end method
