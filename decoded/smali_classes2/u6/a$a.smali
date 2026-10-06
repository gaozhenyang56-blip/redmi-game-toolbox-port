.class Lu6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu6/a;


# direct methods
.method constructor <init>(Lu6/a;)V
    .locals 0

    iput-object p1, p0, Lu6/a$a;->a:Lu6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lu6/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu6/a$a;->a:Lu6/a;

    invoke-static {v1}, Lu6/a;->b(Lu6/a;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v1, Lu6/a$a$a;

    invoke-direct {v1, p0}, Lu6/a$a$a;-><init>(Lu6/a$a;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lu6/a$a;->a:Lu6/a;

    invoke-static {v1}, Lu6/a;->h(Lu6/a;)F

    move-result v1

    iget-object v2, p0, Lu6/a$a;->a:Lu6/a;

    invoke-static {v2}, Lu6/a;->i(Lu6/a;)Lu6/a$b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu6/a$a;->a:Lu6/a;

    invoke-static {v2}, Lu6/a;->i(Lu6/a;)Lu6/a$b;

    move-result-object v2

    invoke-interface {v2, v1}, Lu6/a$b;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WlanMeasureManager"

    const-string v3, "ping error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lu6/a$a;->a:Lu6/a;

    invoke-static {v1}, Lu6/a;->c(Lu6/a;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
