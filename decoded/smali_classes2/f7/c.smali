.class public Lf7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lf7/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf7/c;->a:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lf7/c;->b:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lf7/c;->a:Landroid/content/Context;

    invoke-static {v0}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lf7/c;
    .locals 2

    const-class v0, Lf7/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf7/c;->c:Lf7/c;

    if-nez v1, :cond_0

    new-instance v1, Lf7/c;

    invoke-direct {v1, p0}, Lf7/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf7/c;->c:Lf7/c;

    :cond_0
    sget-object p0, Lf7/c;->c:Lf7/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d(Ljava/lang/String;IZ)V
    .locals 0
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lf7/c;->a:Landroid/content/Context;

    const-string v1, "top_200_games.json"

    invoke-static {v0, v1}, La8/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterNewApp"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isGameFromJson true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isGameFromJson false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "GameBoosterNewApp"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lf7/c;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Lm7/a;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isGameFromLocal true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "GameBoosterReflectUtils"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isGameFromLocal false"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_0
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private h(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lf7/c;->a:Landroid/content/Context;

    const-string v2, "https://adv.sec.miui.com/game/pkg"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pkgs"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lp4/i;

    const-string v6, "gamebooster_gameboosternewapphandler"

    invoke-direct {v5, v6}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lp4/c;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Ln6/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf7/c;->a:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v2, v3}, La8/x0;->l(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Iterable;)V

    :cond_0
    const-string v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "GameBoosterNewApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isGameFromNet true"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {p1}, Lf7/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GameBoosterReflectUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lf7/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lf7/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppToGameBox: isGameBoosterOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameBoosterNewApp"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lf7/c;->b:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x2000

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {v0}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, La8/j0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p1}, Lf7/c;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2, v2}, Lf7/c;->d(Ljava/lang/String;IZ)V

    return v2

    :cond_5
    invoke-direct {p0, p1}, Lf7/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2, v2}, Lf7/c;->d(Ljava/lang/String;IZ)V

    return v2

    :cond_6
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lf7/c;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2, v2}, Lf7/c;->d(Ljava/lang/String;IZ)V

    return v2

    :cond_7
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return v1
.end method

.method public e(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lf7/c;->i(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v0, p1, v1}, Lf7/c;->d(Ljava/lang/String;IZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public i(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lf7/f;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lf7/c;->f(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lf7/c;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lf7/c;->a:Landroid/content/Context;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v3, v4, v0}, Lm7/a;->c(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-static {}, Lef/x;->z()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lf7/c;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    return v0
.end method
