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
.field private final synthetic val$candidate:Ljava/lang/String;

.field private final synthetic val$game:Ljava/lang/String;

.field private final synthetic val$offset:I

.field private final synthetic val$session:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 134
    iput-object p1, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$game:Ljava/lang/String;

    iput-object p2, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$candidate:Ljava/lang/String;

    iput p3, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$offset:I

    iput p4, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 137
    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_5
    iget-object v5, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$game:Ljava/lang/String;

    iget-object v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$candidate:Ljava/lang/String;

    iget v7, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$offset:I

    invoke-static {v5, v6, v7}, Lcom/gzy/redmiport/FpsShellCommand;->forGame(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    # invokes: Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    invoke-static {v5, v6}, Lcom/gzy/redmiport/PortRuntime;->access$10(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    .line 138
    if-nez v5, :cond_31

    .line 139
    iget v5, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v6

    if-ne v5, v6, :cond_29

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    const-string v5, "\u8bf7\u542f\u52a8 Shizuku \u5e76\u6388\u6743"

    # invokes: Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_12c

    .line 160
    :cond_29
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    return-void

    .line 142
    :cond_31
    :try_start_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_12c

    .line 143
    const/4 v7, 0x0

    :try_start_37
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_122

    .line 144
    :cond_43
    :try_start_43
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4a

    :goto_49
    goto :goto_5d

    :cond_4a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_11c

    const v9, 0x7d000

    if-le v5, v9, :cond_43

    goto :goto_49

    .line 145
    :goto_5d
    :try_start_5d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_122

    .line 146
    :try_start_60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/gzy/redmiport/FrameSampleParser;->parse(Ljava/lang/String;J)Lcom/gzy/redmiport/FrameSampleParser$Result;

    move-result-object v5

    .line 147
    iget v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v8

    if-ne v6, v8, :cond_114

    iget-object v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$game:Ljava/lang/String;

    # invokes: Lcom/gzy/redmiport/PortRuntime;->activeGame()Ljava/lang/String;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$11()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    goto/16 :goto_114

    .line 148
    :cond_82
    invoke-virtual {v5}, Lcom/gzy/redmiport/FrameSampleParser$Result;->available()Z

    move-result v6

    if-nez v6, :cond_c3

    .line 149
    invoke-static {v7}, Lcom/gzy/redmiport/PortRuntime;->access$12(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$13(J)V

    .line 150
    iget-object v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$candidate:Ljava/lang/String;

    if-nez v6, :cond_99

    iget v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$offset:I

    add-int/lit8 v6, v6, 0x2

    rem-int/lit8 v6, v6, 0x8

    goto :goto_9a

    :cond_99
    move v6, v4

    :goto_9a
    invoke-static {v6}, Lcom/gzy/redmiport/PortRuntime;->access$14(I)V

    .line 151
    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->reason:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uff1b\u6b63\u5728\u91cd\u65b0\u67e5\u627e\u6e38\u620f\u56fe\u5c42"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_60 .. :try_end_bb} :catchall_12c

    .line 160
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 151
    return-void

    .line 153
    :cond_c3
    :try_start_c3
    iget-object v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    # getter for: Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$15()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    # getter for: Lcom/gzy/redmiport/PortRuntime;->previousTimestamp:J
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$16()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_db

    move-wide v6, v2

    goto :goto_dd

    :cond_db
    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->fps:J

    :goto_dd
    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    .line 154
    iget-object v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    invoke-static {v6}, Lcom/gzy/redmiport/PortRuntime;->access$12(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$13(J)V

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FPS\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/gzy/redmiport/PortRuntime;->fps:J
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$17()J

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

    # invokes: Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_c3 .. :try_end_113} :catchall_12c

    .line 157
    goto :goto_145

    .line 160
    :cond_114
    :goto_114
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    return-void

    .line 145
    :catchall_11c
    move-exception v5

    move-object v7, v5

    :try_start_11e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_122
    .catchall {:try_start_11e .. :try_end_122} :catchall_122

    :catchall_122
    move-exception v5

    if-eqz v7, :cond_12b

    if-eq v7, v5, :cond_12a

    :try_start_127
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12a
    move-object v5, v7

    :cond_12b
    throw v5
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_12c

    .line 157
    :catchall_12c
    move-exception v5

    .line 158
    :try_start_12d
    iget v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v7

    if-ne v6, v7, :cond_140

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    const-string v0, "\u5e27\u7387\u8bfb\u53d6\u5931\u8d25"

    # invokes: Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V

    .line 159
    :cond_140
    const-string v0, "SurfaceFlinger FPS sample"

    invoke-static {v0, v5}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_145
    .catchall {:try_start_12d .. :try_end_145} :catchall_14d

    .line 160
    :goto_145
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    return-void

    .line 160
    :catchall_14d
    move-exception v0

    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
