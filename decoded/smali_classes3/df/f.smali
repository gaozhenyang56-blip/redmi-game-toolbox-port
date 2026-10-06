.class public Ldf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "f"

.field private static c:Ldf/f;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sp_name_ime_use_record"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static b(Landroid/content/Context;)Ldf/f;
    .locals 2

    sget-object v0, Ldf/f;->c:Ldf/f;

    if-nez v0, :cond_1

    const-class v0, Ldf/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldf/f;->c:Ldf/f;

    if-nez v1, :cond_0

    new-instance v1, Ldf/f;

    invoke-direct {v1, p0}, Ldf/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Ldf/f;->c:Ldf/f;

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
    sget-object p0, Ldf/f;->c:Ldf/f;

    return-object p0
.end method

.method private g(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Ldf/f;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    rem-int/lit8 v3, v0, 0xa

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    div-int/lit8 v0, v0, 0xa

    const/16 v4, 0x46

    if-gt v0, v4, :cond_2

    move v1, v2

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-static {p1}, Ldf/g;->e(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method private j(J)V
    .locals 2

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_im_start_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private k(I)V
    .locals 2

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_im_used_counts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private l(J)V
    .locals 2

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_im_used_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private m()Z
    .locals 4

    invoke-virtual {p0}, Ldf/f;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-virtual {p0}, Ldf/f;->f()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Ldf/f;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ldf/f;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endRecord usedTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Ldf/f;->l(J)V

    return-void
.end method

.method public c()J
    .locals 4

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_im_pre_track_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 4

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_im_start_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_im_used_counts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()J
    .locals 4

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_im_used_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 2

    sget-object v0, Ldf/f;->b:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldf/f;->k(I)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ldf/f;->l(J)V

    invoke-direct {p0, v0, v1}, Ldf/f;->j(J)V

    return-void
.end method

.method public i(J)V
    .locals 2

    iget-object v0, p0, Ldf/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_im_pre_track_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public n(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ldf/f;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ldf/f;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Ldf/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecord newCounts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Ldf/f;->k(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ldf/f;->j(J)V

    invoke-direct {p0, p1}, Ldf/f;->g(Landroid/content/Context;)V

    return-void
.end method
