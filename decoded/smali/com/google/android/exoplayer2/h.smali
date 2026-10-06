.class public final synthetic Lcom/google/android/exoplayer2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/google/android/exoplayer2/ExoPlayer;)Lcom/google/android/exoplayer2/PlaybackException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method
