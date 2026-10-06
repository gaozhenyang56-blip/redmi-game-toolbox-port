.class public Lo2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lo2/f;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo2/f;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lo2/f;
    .locals 2

    const-class v0, Lo2/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/f;->b:Lo2/f;

    if-nez v1, :cond_0

    new-instance v1, Lo2/f;

    invoke-direct {v1, p0}, Lo2/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo2/f;->b:Lo2/f;

    :cond_0
    sget-object p0, Lo2/f;->b:Lo2/f;
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
.method public b()J
    .locals 3

    const-string v0, "update_dialog_pop_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 3

    const-string v0, "engine_suggest_update_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lo2/f;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lo2/f;->g(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lo2/f;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lo2/f;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lo2/f;->h(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lo2/f;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo2/f;->a:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const p3, 0x7f1213f5

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public g(J)V
    .locals 1

    const-string v0, "update_dialog_pop_time"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public h(J)V
    .locals 1

    const-string v0, "engine_suggest_update_time"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public i(Lcom/miui/guardprovider/VirusObserver;)V
    .locals 2

    iget-object v0, p0, Lo2/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    new-instance v1, Lo2/f$a;

    invoke-direct {v1, p0, p1}, Lo2/f$a;-><init>(Lo2/f;Lcom/miui/guardprovider/VirusObserver;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    return-void
.end method
