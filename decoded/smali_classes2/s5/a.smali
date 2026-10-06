.class public Ls5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/a$a;
    }
.end annotation


# static fields
.field private static b:Ls5/a;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "game_box_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ls5/a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Ls5/a;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Ls5/a;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_boosting"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Ls5/a;
    .locals 2

    const-class v0, Ls5/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls5/a;->b:Ls5/a;

    if-nez v1, :cond_0

    new-instance v1, Ls5/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Ls5/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Ls5/a;->b:Ls5/a;

    :cond_0
    sget-object p0, Ls5/a;->b:Ls5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vtb_boosting"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public b()Ls5/a$a;
    .locals 1

    new-instance v0, Ls5/a$a;

    invoke-direct {v0, p0}, Ls5/a$a;-><init>(Ls5/a;)V

    return-object v0
.end method

.method public c()J
    .locals 4

    iget-object v0, p0, Ls5/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "gt_auto_add_game_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ls5/a;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_first_use_game_toolbox_v2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
