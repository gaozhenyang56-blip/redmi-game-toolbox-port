.class public Lcom/xiaomi/onetrack/api/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/onetrack/api/ak;
.implements Lcom/xiaomi/onetrack/api/at$a;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackSystemImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x7d000

.field private static final d:I = 0x2


# instance fields
.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/api/at;

.field private h:Lcom/xiaomi/onetrack/util/w;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aq;->f:Lcom/xiaomi/onetrack/Configuration;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/aq;->h:Lcom/xiaomi/onetrack/util/w;

    invoke-static {}, Lcom/xiaomi/onetrack/api/at;->a()Lcom/xiaomi/onetrack/api/at;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aq;->g:Lcom/xiaomi/onetrack/api/at;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/api/at;->a(Lcom/xiaomi/onetrack/api/at$a;)V

    new-instance p1, Lcom/xiaomi/onetrack/api/ar;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/api/ar;-><init>(Lcom/xiaomi/onetrack/api/aq;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aq;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "H"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v1, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "OneTrackSystemImp"

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v2, "onetrack_bug_report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const-string v2, "OneTrackSystemImp"

    if-nez p3, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_4

    const-string p1, "Event size exceed limitation!"

    :goto_1
    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const p2, 0x7d000

    if-le p1, p2, :cond_4

    const-string p1, "ad Event size exceed limitation!"

    goto :goto_1

    :cond_4
    return v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aq;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/m;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aq;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aq;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/m;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackCachedEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackSystemImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/api/as;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/as;-><init>(Lcom/xiaomi/onetrack/api/aq;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aq;->g:Lcom/xiaomi/onetrack/api/at;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/at;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/xiaomi/onetrack/api/aq;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aq;->h:Lcom/xiaomi/onetrack/util/w;

    const-string v2, "OneTrackSystemImp"

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string p1, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/onetrack/api/aq;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/c/j;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onetrack_cta_status"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/j;->a(Lcom/xiaomi/onetrack/api/ak;)V

    :cond_3
    sget-boolean v1, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aq;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aq;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aq;->g:Lcom/xiaomi/onetrack/api/at;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaomi/onetrack/api/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/onetrack/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "track mIOneTrackService is null! SystemImpCacheManager cache data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 0

    sget-boolean p1, Lcom/xiaomi/onetrack/api/an;->k:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/j;->a(Lcom/xiaomi/onetrack/api/ak;)V

    :cond_0
    return-void
.end method
