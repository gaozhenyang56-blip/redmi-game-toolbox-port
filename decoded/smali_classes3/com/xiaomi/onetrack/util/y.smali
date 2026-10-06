.class public Lcom/xiaomi/onetrack/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/y$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "/track/key_get"

.field private static final B:Ljava/lang/String; = "/api/v4/detail/config"

.field private static final C:Ljava/lang/String; = "/api/v4/detail/config_common"

.field private static final D:Ljava/lang/String; = "/api/v1/token"

.field private static F:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "RegionDomainManager"

.field private static final b:Ljava/lang/String; = "CN"

.field private static final c:Ljava/lang/String; = "INTL"

.field private static final d:Ljava/lang/String; = "IN"

.field private static final e:Ljava/lang/String; = "RU"

.field private static final f:Ljava/lang/String; = "http://"

.field private static final g:Ljava/lang/String; = "https://"

.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String; = ""

.field private static k:Ljava/lang/String; = ""

.field private static l:Ljava/lang/String; = ""

.field private static m:Ljava/lang/String; = ""

.field private static n:Ljava/lang/String; = ""

.field private static o:Ljava/lang/String; = ""

.field private static p:Ljava/lang/String; = ""

.field private static final q:[B

.field private static final r:[B

.field private static final s:[B

.field private static final t:[B

.field private static final u:[B

.field private static final v:[B

.field private static final w:[B

.field private static final x:[B

.field private static final y:[B

.field private static final z:Ljava/lang/String; = "/track/v4"


# instance fields
.field private E:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->q:[B

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->r:[B

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->s:[B

    const/16 v0, 0x17

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/xiaomi/onetrack/util/y;->t:[B

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/xiaomi/onetrack/util/y;->u:[B

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    sput-object v1, Lcom/xiaomi/onetrack/util/y;->v:[B

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    sput-object v1, Lcom/xiaomi/onetrack/util/y;->w:[B

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    sput-object v1, Lcom/xiaomi/onetrack/util/y;->x:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->y:[B

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->F:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x69t
        0x6et
        0x74t
        0x6ct
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x72t
        0x75t
        0x73t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x69t
        0x6et
        0x64t
        0x69t
        0x61t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_4
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_5
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x69t
        0x6et
        0x74t
        0x6ct
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x69t
        0x6et
        0x64t
        0x69t
        0x61t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x72t
        0x75t
        0x73t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_8
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x65t
        0x75t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->g()V

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->F:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/xiaomi/onetrack/util/y;->k:Ljava/lang/String;

    const-string v2, "IN"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->F:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/xiaomi/onetrack/util/y;->j:Ljava/lang/String;

    const-string v2, "RU"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->h()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/util/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/y;
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/util/y$a;->a()Lcom/xiaomi/onetrack/util/y;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/xiaomi/onetrack/util/y;->h:Ljava/lang/String;

    return-object p1

    :cond_0
    sget-object p1, Lcom/xiaomi/onetrack/util/y;->F:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/xiaomi/onetrack/util/y;->i:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method private g()V
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->q:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->h:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->r:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->i:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->s:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->j:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->t:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->k:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->u:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->l:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->v:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->m:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->w:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->n:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->x:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->o:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->y:[B

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/y;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/y;->p:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/ab;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/util/y;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    const-string v0, "https://"

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->k()Z

    move-result v0

    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/onetrack/util/y;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->k()Z

    move-result v0

    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->l:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "IN"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->n:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "RU"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->o:Ljava/lang/String;

    return-object v0

    :cond_2
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/util/a;->j:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->p:Ljava/lang/String;

    return-object v0

    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/util/y;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RegionDomainManager"

    const-string v2, "getSdkConfigHost error: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Ljava/lang/String;
    .locals 4

    const-string v0, "RegionDomainManager"

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transmitToString host:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "RegionDomainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/xiaomi/onetrack/util/y;->F:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/onetrack/util/y;->F:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/ab;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "RegionDomainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, "RegionDomainManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/xiaomi/onetrack/util/y;->F:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/ab;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionDomainManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/v4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config_common"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/key_get"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/ab;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionDomainManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/y;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v1/token"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
