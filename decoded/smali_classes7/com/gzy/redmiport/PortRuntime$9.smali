.class Lcom/gzy/redmiport/PortRuntime$9;
.super Ljava/lang/Object;
.source "PortRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/PortRuntime;->sampleFps()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$session:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 126
    iput p1, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 129
    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_5
    const-string v5, "p=$(dumpsys activity activities|sed -n \'s/.*[Rr]esumedActivity:.* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&p=$(dumpsys window|sed -n \'s/.*mCurrentFocus=.* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&exit 1;printf \'PACKAGE:%s\\n\' \"$p\";ls=$(dumpsys SurfaceFlinger --list|grep -F \"$p\");{ printf \'%s\\n\' \"$ls\"|grep SurfaceView; printf \'%s\\n\' \"$ls\"|grep -v SurfaceView; }|head -8|while IFS= read -r l; do [ -z \"$l\" ]&&continue;printf \'LAYER:%s\\n\' \"$l\";dumpsys SurfaceFlinger --latency \"$l\";done"

    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 130
    if-nez v5, :cond_28

    .line 131
    iget v5, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v6

    if-ne v5, v6, :cond_20

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    const-string v5, "\u8bf7\u542f\u52a8 Shizuku \u5e76\u6388\u6743"

    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_ed

    .line 148
    :cond_20
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    return-void

    .line 134
    :cond_28
    :try_start_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_ed

    .line 135
    const/4 v7, 0x0

    :try_start_2e
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_e3

    .line 136
    :cond_3a
    :try_start_3a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_41

    :goto_40
    goto :goto_54

    :cond_41
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_dd

    const v9, 0x7d000

    if-le v5, v9, :cond_3a

    goto :goto_40

    .line 137
    :goto_54
    :try_start_54
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_e3

    .line 138
    :try_start_57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/gzy/redmiport/FrameSampleParser;->parse(Ljava/lang/String;J)Lcom/gzy/redmiport/FrameSampleParser$Result;

    move-result-object v5

    .line 139
    iget v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v7
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_ed

    if-eq v6, v7, :cond_73

    .line 148
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    return-void

    .line 140
    :cond_73
    :try_start_73
    invoke-virtual {v5}, Lcom/gzy/redmiport/FrameSampleParser$Result;->available()Z

    move-result v6

    if-nez v6, :cond_8c

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    iget-object v5, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->reason:Ljava/lang/String;

    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_ed

    .line 148
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    return-void

    .line 141
    :cond_8c
    :try_start_8c
    iget-object v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    # getter for: Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$10()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    # getter for: Lcom/gzy/redmiport/PortRuntime;->previousTimestamp:J
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$11()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_a4

    move-wide v6, v2

    goto :goto_a6

    :cond_a4
    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->fps:J

    :goto_a6
    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    .line 142
    iget-object v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    invoke-static {v6}, Lcom/gzy/redmiport/PortRuntime;->access$12(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$13(J)V

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FPS\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/gzy/redmiport/PortRuntime;->fps:J
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$14()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\u56fe\u5c42\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_8c .. :try_end_dc} :catchall_ed

    .line 145
    goto :goto_106

    .line 137
    :catchall_dd
    move-exception v5

    move-object v7, v5

    :try_start_df
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_e3

    :catchall_e3
    move-exception v5

    if-eqz v7, :cond_ec

    if-eq v7, v5, :cond_eb

    :try_start_e8
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_eb
    move-object v5, v7

    :cond_ec
    throw v5
    :try_end_ed
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_ed

    .line 145
    :catchall_ed
    move-exception v5

    .line 146
    :try_start_ee
    iget v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v7

    if-ne v6, v7, :cond_101

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    const-string v0, "\u5e27\u7387\u8bfb\u53d6\u5931\u8d25"

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V

    .line 147
    :cond_101
    const-string v0, "SurfaceFlinger FPS sample"

    invoke-static {v0, v5}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_106
    .catchall {:try_start_ee .. :try_end_106} :catchall_10e

    .line 148
    :goto_106
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    return-void

    .line 148
    :catchall_10e
    move-exception v0

    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
