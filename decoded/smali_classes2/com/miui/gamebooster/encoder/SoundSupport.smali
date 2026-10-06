.class public Lcom/miui/gamebooster/encoder/SoundSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundSupport"

.field private static sLoadSuc:Z


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    invoke-static {}, La8/g0;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "jni_sound_effect_2_0"

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "jni_sound_effect"

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    const-string v1, "SoundSupport"

    const-string v2, "SoundSupport load lib failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    sget-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    if-nez v0, :cond_0

    const-string p1, "SoundSupport"

    const-string p2, "SoundSupport load lib error"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/miui/gamebooster/encoder/SoundSupport;->nativeNewInstance(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    return-void
.end method

.method public static native nativeFlush(J)V
.end method

.method public static native nativeNewInstance(II)J
.end method

.method public static native nativePutSamples(J[S)V
.end method

.method public static native nativeReceiveSamples(JI)[S
.end method

.method public static native nativeRelease(J)V
.end method

.method public static native nativeSetMode(JF)V
.end method

.method public static native nativeSetStrechRatio(JF)V
.end method


# virtual methods
.method public flush()V
    .locals 2

    sget-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    if-nez v0, :cond_0

    const-string v0, "SoundSupport"

    const-string v1, "SoundSupport load lib error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    invoke-static {v0, v1}, Lcom/miui/gamebooster/encoder/SoundSupport;->nativeFlush(J)V

    return-void
.end method

.method public putSamples([S)V
    .locals 2

    sget-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    if-nez v0, :cond_0

    const-string p1, "SoundSupport"

    const-string v0, "SoundSupport load lib error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    invoke-static {v0, v1, p1}, Lcom/miui/gamebooster/encoder/SoundSupport;->nativePutSamples(J[S)V

    return-void
.end method

.method public receiveSamples(I)[S
    .locals 2

    sget-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    if-nez v0, :cond_0

    const-string p1, "SoundSupport"

    const-string v0, "SoundSupport load lib error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    invoke-static {v0, v1, p1}, Lcom/miui/gamebooster/encoder/SoundSupport;->nativeReceiveSamples(JI)[S

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    sget-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    if-nez v0, :cond_0

    const-string v0, "SoundSupport"

    const-string v1, "SoundSupport load lib error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    invoke-static {v0, v1}, Lcom/miui/gamebooster/encoder/SoundSupport;->nativeRelease(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    return-void
.end method

.method public setMode(F)V
    .locals 2

    sget-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    if-nez v0, :cond_0

    const-string p1, "SoundSupport"

    const-string v0, "SoundSupport load lib error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    invoke-static {v0, v1, p1}, Lcom/miui/gamebooster/encoder/SoundSupport;->nativeSetMode(JF)V

    return-void
.end method

.method public setStrechRatio(F)V
    .locals 2

    sget-boolean v0, Lcom/miui/gamebooster/encoder/SoundSupport;->sLoadSuc:Z

    if-nez v0, :cond_0

    const-string p1, "SoundSupport"

    const-string v0, "SoundSupport load lib error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/gamebooster/encoder/SoundSupport;->handle:J

    invoke-static {v0, v1, p1}, Lcom/miui/gamebooster/encoder/SoundSupport;->nativeSetStrechRatio(JF)V

    return-void
.end method
