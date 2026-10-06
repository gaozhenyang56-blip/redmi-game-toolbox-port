.class public Lra/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lra/i0$a;
    }
.end annotation


# static fields
.field private static b:Lra/i0;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lra/i0;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "storage_manager"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lra/i0;->a:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lra/i0;
    .locals 2

    const-class v0, Lra/i0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lra/i0;->b:Lra/i0;

    if-nez v1, :cond_0

    new-instance v1, Lra/i0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lra/i0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lra/i0;->b:Lra/i0;

    :cond_0
    sget-object p0, Lra/i0;->b:Lra/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lra/i0$a;
    .locals 2

    new-instance v0, Lra/i0$a;

    iget-object v1, p0, Lra/i0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lra/i0$a;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public c()J
    .locals 4

    iget-object v0, p0, Lra/i0;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_space_status_upload_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
