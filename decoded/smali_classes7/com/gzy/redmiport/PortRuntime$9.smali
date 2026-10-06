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

    .line 135
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

    .line 138
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

    .line 139
    if-nez v5, :cond_31

    .line 140
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
    .catchall {:try_start_5 .. :try_end_29} :catchall_16b

    .line 162
    :cond_29
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    return-void

    .line 143
    :cond_31
    :try_start_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_16b

    .line 144
    const/4 v7, 0x0

    :try_start_37
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_161

    .line 145
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
    .catchall {:try_start_43 .. :try_end_57} :catchall_15b

    const v9, 0x7d000

    if-le v5, v9, :cond_43

    goto :goto_49

    .line 146
    :goto_5d
    :try_start_5d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_161

    .line 147
    :try_start_60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/gzy/redmiport/FrameSampleParser;->parse(Ljava/lang/String;J)Lcom/gzy/redmiport/FrameSampleParser$Result;

    move-result-object v5

    .line 148
    iget v8, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v9

    if-ne v8, v9, :cond_153

    iget-object v8, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$game:Ljava/lang/String;

    # invokes: Lcom/gzy/redmiport/PortRuntime;->activeGame()Ljava/lang/String;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$11()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_82

    goto/16 :goto_153

    .line 149
    :cond_82
    invoke-virtual {v5}, Lcom/gzy/redmiport/FrameSampleParser$Result;->available()Z

    move-result v8

    if-nez v8, :cond_f5

    .line 150
    invoke-static {v7}, Lcom/gzy/redmiport/PortRuntime;->access$12(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$13(J)V

    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gzy/redmiport/FpsShellCommand;->layerCount(Ljava/lang/String;)I

    move-result v6

    .line 152
    iget-object v7, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$candidate:Ljava/lang/String;

    if-nez v7, :cond_a5

    iget v7, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$offset:I

    add-int/lit8 v7, v7, 0x2

    if-ge v7, v6, :cond_a5

    iget v7, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$offset:I

    add-int/lit8 v7, v7, 0x2

    goto :goto_a6

    :cond_a5
    move v7, v4

    :goto_a6
    invoke-static {v7}, Lcom/gzy/redmiport/PortRuntime;->access$14(I)V

    .line 153
    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->reason:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uff1b\u626b\u63cf\u56fe\u5c42 "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$offset:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\u2013"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$offset:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1b\u6b63\u5728\u91cd\u65b0\u67e5\u627e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_60 .. :try_end_ed} :catchall_16b

    .line 162
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    return-void

    .line 155
    :cond_f5
    :try_start_f5
    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->fps:J

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    .line 156
    iget-object v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    invoke-static {v6}, Lcom/gzy/redmiport/PortRuntime;->access$12(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$13(J)V

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FPS\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/gzy/redmiport/PortRuntime;->fps:J
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$15()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff1b\u6709\u6548\u5e27\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff1b\u6700\u8fd1\u5e27\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v9, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms\n\u56fe\u5c42\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_f5 .. :try_end_152} :catchall_16b

    .line 159
    goto :goto_184

    .line 162
    :cond_153
    :goto_153
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    return-void

    .line 146
    :catchall_15b
    move-exception v5

    move-object v7, v5

    :try_start_15d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_161
    .catchall {:try_start_15d .. :try_end_161} :catchall_161

    :catchall_161
    move-exception v5

    if-eqz v7, :cond_16a

    if-eq v7, v5, :cond_169

    :try_start_166
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_169
    move-object v5, v7

    :cond_16a
    throw v5
    :try_end_16b
    .catchall {:try_start_166 .. :try_end_16b} :catchall_16b

    .line 159
    :catchall_16b
    move-exception v5

    .line 160
    :try_start_16c
    iget v6, p0, Lcom/gzy/redmiport/PortRuntime$9;->val$session:I

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v7

    if-ne v6, v7, :cond_17f

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    invoke-static {v2, v3}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    const-string v0, "\u5e27\u7387\u8bfb\u53d6\u5931\u8d25"

    # invokes: Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V

    .line 161
    :cond_17f
    const-string v0, "SurfaceFlinger FPS sample"

    invoke-static {v0, v5}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_184
    .catchall {:try_start_16c .. :try_end_184} :catchall_18c

    .line 162
    :goto_184
    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    return-void

    .line 162
    :catchall_18c
    move-exception v0

    # getter for: Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$9()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
