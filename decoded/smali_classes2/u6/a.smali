.class public Lu6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/a$b;
    }
.end annotation


# static fields
.field private static f:Lu6/a;

.field private static g:Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lu6/a$b;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu6/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lu6/a;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lu6/a;->b:Ljava/util/List;

    new-instance v0, Lu6/a$a;

    invoke-direct {v0, p0}, Lu6/a$a;-><init>(Lu6/a;)V

    iput-object v0, p0, Lu6/a;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lu6/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lu6/a;)I
    .locals 0

    iget p0, p0, Lu6/a;->c:I

    return p0
.end method

.method static synthetic c(Lu6/a;)I
    .locals 2

    iget v0, p0, Lu6/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lu6/a;->c:I

    return v0
.end method

.method static synthetic d(Lu6/a;Ljava/lang/String;)F
    .locals 0

    invoke-direct {p0, p1}, Lu6/a;->l(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static synthetic e(Lu6/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lu6/a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lu6/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lu6/a;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lu6/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lu6/a;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lu6/a;)F
    .locals 0

    invoke-direct {p0}, Lu6/a;->j()F

    move-result p0

    return p0
.end method

.method static synthetic i(Lu6/a;)Lu6/a$b;
    .locals 0

    iget-object p0, p0, Lu6/a;->d:Lu6/a$b;

    return-object p0
.end method

.method private j()F
    .locals 3

    iget-object v0, p0, Lu6/a;->b:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu6/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu6/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_1
    return v1
.end method

.method public static k()Lu6/a;
    .locals 2

    sget-object v0, Lu6/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu6/a;->f:Lu6/a;

    if-nez v1, :cond_0

    new-instance v1, Lu6/a;

    invoke-direct {v1}, Lu6/a;-><init>()V

    sput-object v1, Lu6/a;->f:Lu6/a;

    :cond_0
    sget-object v1, Lu6/a;->f:Lu6/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private l(Ljava/lang/String;)F
    .locals 7

    const-string v0, "WlanMeasureManager"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2710

    :try_start_1
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v1, "User-Agent"

    const-string v5, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-virtual {v4, v1, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",time="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms ret="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ping failed with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_1
    long-to-float p1, v2

    return p1

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw p1
.end method


# virtual methods
.method public m(Lu6/a$b;)V
    .locals 1

    iput-object p1, p0, Lu6/a;->d:Lu6/a$b;

    const/4 p1, 0x0

    iput p1, p0, Lu6/a;->c:I

    iget-object p1, p0, Lu6/a;->a:Landroid/os/Handler;

    iget-object v0, p0, Lu6/a;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
