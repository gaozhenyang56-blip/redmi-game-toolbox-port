.class Lcom/gzy/redmiport/PortRuntime$7;
.super Ljava/lang/Object;
.source "PortRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/gzy/redmiport/PortRuntime$7;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 104
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/gzy/redmiport/PortRuntime$7;->val$process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1f

    .line 105
    const/16 v2, 0x400

    :try_start_9
    new-array v2, v2, [B

    :cond_b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_18

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 106
    if-eqz v1, :cond_2b

    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2b

    :catchall_18
    move-exception v0

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v1

    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_29

    :try_start_24
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_28
    move-object v0, v1

    :cond_29
    :goto_29
    throw v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    .line 107
    :cond_2b
    :goto_2b
    return-void
.end method
