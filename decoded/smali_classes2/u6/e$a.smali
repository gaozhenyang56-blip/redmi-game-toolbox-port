.class Lu6/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu6/e;


# direct methods
.method constructor <init>(Lu6/e;)V
    .locals 0

    iput-object p1, p0, Lu6/e$a;->a:Lu6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lu6/e;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lu6/a;->k()Lu6/a;

    move-result-object v1

    new-instance v2, Lu6/e$a$a;

    invoke-direct {v2, p0}, Lu6/e$a$a;-><init>(Lu6/e$a;)V

    invoke-virtual {v1, v2}, Lu6/a;->m(Lu6/a$b;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
