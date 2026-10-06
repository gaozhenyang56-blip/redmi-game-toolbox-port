.class public La8/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La8/b0$b;
    }
.end annotation


# static fields
.field private static volatile b:La8/b0;

.field private static final c:Lcom/google/gson/Gson;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La8/b0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, La8/b0;->c:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, La8/b0;->g()V

    return-void
.end method

.method private c()Z
    .locals 7

    iget-object v0, p0, La8/b0;->a:Ljava/util/Map;

    const-string v1, "feature_ai_pick_sound"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La8/b0$b;

    if-nez v0, :cond_0

    new-instance v0, La8/b0$b;

    invoke-direct {v0}, La8/b0$b;-><init>()V

    :cond_0
    const-string v2, "com.miui.accessibility"

    iput-object v2, v0, La8/b0$b;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, La8/b0;->e(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    const/4 v5, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v4, v2}, La8/b0$b;->a(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    iput v4, v0, La8/b0$b;->b:I

    iput-boolean v2, v0, La8/b0$b;->d:Z

    if-eqz v2, :cond_3

    sget-object v2, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {v2}, Ld6/c$a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v5

    :cond_3
    iput-boolean v3, v0, La8/b0$b;->c:Z

    iget-object v2, p0, La8/b0;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v6
.end method

.method public static d()La8/b0;
    .locals 2

    sget-object v0, La8/b0;->b:La8/b0;

    if-nez v0, :cond_1

    const-class v0, La8/b0;

    monitor-enter v0

    :try_start_0
    sget-object v1, La8/b0;->b:La8/b0;

    if-nez v1, :cond_0

    new-instance v1, La8/b0;

    invoke-direct {v1}, La8/b0;-><init>()V

    sput-object v1, La8/b0;->b:La8/b0;

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
    sget-object v0, La8/b0;->b:La8/b0;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "FunctionFeatureManager"

    const-string v0, "get package info error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static f(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La8/b0$b;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, La8/b0;->c:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    new-instance v1, La8/b0$a;

    invoke-direct {v1}, La8/b0$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    const-string p0, "FunctionFeatureManager"

    const-string v0, "parse json to map for conversation feature"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_0
    return-object p0
.end method

.method private g()V
    .locals 0

    invoke-direct {p0}, La8/b0;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "function_feature"

    const-string v1, "{}"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/b0;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, La8/b0;->a:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, La8/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "function_feature"

    iget-object v1, p0, La8/b0;->a:Ljava/util/Map;

    invoke-static {v1}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, La8/b0;->g()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, La8/b0;->j()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La8/b0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La8/b0$b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p1, La8/b0$b;->c:Z

    return p1
.end method
