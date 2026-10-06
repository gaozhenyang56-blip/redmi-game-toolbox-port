.class public Lcom/miui/gamebooster/ui/GameVideoPlayActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;,
        Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lcom/miui/gamebooster/model/y;",
        ">;>;"
    }
.end annotation


# instance fields
.field private c:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field protected f:F

.field private g:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private i:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private j:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private k:Z

.field protected l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/net/Uri;

.field protected r:Landroid/media/AudioManager;

.field private s:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private t:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

.field private x:Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->m:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->p:Z

    new-instance v0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$a;-><init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->s:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y:Ljava/util/List;

    return-void
.end method

.method private C0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentWindowIndex()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->p:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentWindowIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/y;

    invoke-static {v2}, La8/i2;->d(Lcom/miui/gamebooster/model/y;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private f0()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->r:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->r:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->r:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->s:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->C0()V

    return-void
.end method

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->u:Ljava/lang/String;

    const-string v1, "key_game_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->v:Ljava/lang/String;

    const-string v1, "key_download_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f0b01a8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, La8/k2;->A()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f0b08cf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    const v1, 0x7f0b0ab8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0b039c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->setResetOnNetworkTypeChange(Z)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->t:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->n0(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->g:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->j:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->q0()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->n:Z

    return p1
.end method

.method static synthetic l0(Lcom/google/android/exoplayer2/PlaybackException;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->r0(Lcom/google/android/exoplayer2/PlaybackException;)Z

    move-result p0

    return p0
.end method

.method private m0(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->o0(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private n0(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->t:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->m0(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private o0(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 2

    const-string v0, "ExoPlayerDemo"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private p0(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->g:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->g:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static r0(Lcom/google/android/exoplayer2/PlaybackException;)Z
    .locals 2

    instance-of v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private s0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->q:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/Util;->maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    new-array v2, v3, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->w:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->q:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->p0(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->w:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->w:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    iput-boolean v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->n:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->m:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key_match_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "key_video_play_gamebox_volume"

    goto :goto_0

    :cond_2
    const-string v0, "key_video_play_match_volume"

    :goto_0
    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->l:Z

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->A0(Z)V

    return-void
.end method

.method private w0()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->r:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->r:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->r:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->s:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v1, v4

    :cond_1
    return v1
.end method

.method private y0(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->o:Z

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$b;-><init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;Lcom/miui/gamebooster/model/y;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private z0()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->o:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "key_download_click"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr0/a;->d(Landroid/content/Intent;)Z

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public A0(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->l:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "key_video_play_gamebox_volume"

    goto :goto_0

    :cond_0
    const-string v0, "key_video_play_match_volume"

    :goto_0
    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->l:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->B0(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public B0(F)V
    .locals 2

    iput p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iput v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    :cond_0
    iget p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iput v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    :cond_1
    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->m:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    iget p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->w0()Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->f0()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->t0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->z0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a8

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b039c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0ab8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->A0(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y:Ljava/util/List;

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/y;

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y0(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->z0()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f1301d9

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, La8/g0;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01bb

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {p0}, La8/k2;->w(Landroid/app/Activity;)V

    invoke-static {p0}, La8/b2;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->s0()V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x145

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;-><init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->x:Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->x:Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->v0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->A0()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->x0()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->u0()V

    return-void
.end method

.method public q0()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v4, p0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    iput-object v4, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->i:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->j:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    new-instance v5, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->i:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v4, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$d;-><init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;Lcom/miui/gamebooster/ui/GameVideoPlayActivity$a;)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerAutoShow(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerHideOnTouch(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerShowTimeoutMs(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->n:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->s0()V

    :cond_4
    return-void
.end method

.method public t0(Lq0/c;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x145

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    :try_start_0
    invoke-static {p2}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->y:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/y;

    invoke-static {v4}, La8/i2;->b(Lcom/miui/gamebooster/model/y;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Leg/i;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->u:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move p1, v2

    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->p0(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->w:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->w:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "GameVideoPlayActivity"

    const-string v0, "process error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public u0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->pause()V

    :cond_0
    return-void
.end method

.method public v0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->i:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->j:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->i:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->m:Z

    :cond_1
    return-void
.end method

.method public x0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->h:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->play()V

    :cond_1
    return-void
.end method
