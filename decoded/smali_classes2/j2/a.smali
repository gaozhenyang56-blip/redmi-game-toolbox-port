.class public Lj2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/a$a;,
        Lj2/a$b;
    }
.end annotation


# static fields
.field private static volatile d:Lj2/a;

.field private static final e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj2/a;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj2/a;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lj2/a;->a:Landroid/content/Context;

    const-string v1, "SmsEnginePreference"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lj2/a;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lj2/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lj2/a;->c:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lj2/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lj2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lj2/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Lj2/a;
    .locals 2

    sget-object v0, Lj2/a;->d:Lj2/a;

    if-nez v0, :cond_1

    const-class v0, Lj2/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj2/a;->d:Lj2/a;

    if-nez v1, :cond_0

    new-instance v1, Lj2/a;

    invoke-direct {v1, p0}, Lj2/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lj2/a;->d:Lj2/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lj2/a;->d:Lj2/a;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj2/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lj2/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public declared-synchronized d(Lj2/a$b;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lj2/a;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lj2/a;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SmsEngineUpdateManager"

    const-string v2, "fail: no need update, current version\uff1a 2.1.2"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lj2/a$b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj2/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "SmsEngineUpdateManager"

    const-string v3, " update start!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lj2/a;->c:Z

    new-instance v0, Lj2/a$a;

    iget-object v1, p0, Lj2/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lj2/a$a;-><init>(Landroid/content/Context;Lj2/a$b;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    :try_start_2
    const-string v0, "SmsEngineUpdateManager"

    const-string v1, "fail : no connected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    invoke-interface {p1, v2}, Lj2/a$b;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :goto_1
    :try_start_3
    const-string v0, "SmsEngineUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail: mUpdating\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lj2/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lj2/a$b;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Z
    .locals 2

    invoke-direct {p0}, Lj2/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.1.2"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
