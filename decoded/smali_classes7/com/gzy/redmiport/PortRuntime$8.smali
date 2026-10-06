.class Lcom/gzy/redmiport/PortRuntime$8;
.super Ljava/io/FilterInputStream;
.source "PortRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$process:Ljava/lang/Process;

.field private final synthetic val$timeout:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Process;)V
    .registers 4

    .line 103
    iput-object p2, p0, Lcom/gzy/redmiport/PortRuntime$8;->val$timeout:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/gzy/redmiport/PortRuntime$8;->val$process:Ljava/lang/Process;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 106
    iget-object v1, p0, Lcom/gzy/redmiport/PortRuntime$8;->val$timeout:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 107
    :try_start_9
    iget-object v0, p0, Lcom/gzy/redmiport/PortRuntime$8;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception v0

    .line 109
    :goto_10
    return-void

    .line 105
    :catchall_11
    move-exception v1

    .line 106
    iget-object v2, p0, Lcom/gzy/redmiport/PortRuntime$8;->val$timeout:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 107
    :try_start_17
    iget-object v0, p0, Lcom/gzy/redmiport/PortRuntime$8;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_1e

    :catchall_1d
    move-exception v0

    .line 108
    :goto_1e
    throw v1
.end method
