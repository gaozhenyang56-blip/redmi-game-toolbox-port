.class Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameVideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;Lcom/miui/gamebooster/ui/GameVideoPlayActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;-><init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->a(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->b(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->c(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->d(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->e(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->f(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->g(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->h(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->i(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->j(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->k(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->l(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->m(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->n(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->o(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->p(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->q(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->r(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->s(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->j0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->k0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->l0(Lcom/google/android/exoplayer2/PlaybackException;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->q0()V

    :cond_1
    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->u(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :goto_1
    const/4 v2, 0x3

    if-nez p1, :cond_3

    if-ne p2, v2, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->i0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V

    :cond_2
    return-void

    :cond_3
    if-eq p2, v2, :cond_5

    if-eq p2, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->j0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPosition()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->j0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->i0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;->a:Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    iget-boolean p2, p1, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->l:Z

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->A0(Z)V

    :goto_2
    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->w(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->x(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/j2;->y(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/j2;->z(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->A(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->B(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->C(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/j2;->D(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->E(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->F(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->G(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j2;->H(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->I(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->J(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->K(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j2;->L(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method
