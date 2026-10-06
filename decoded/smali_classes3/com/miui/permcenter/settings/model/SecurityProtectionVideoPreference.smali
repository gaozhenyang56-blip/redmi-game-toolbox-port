.class public Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/b;


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Landroid/view/ViewStub;

.field private e:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private g:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

.field private h:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

.field private i:Z

.field private j:Lcom/google/android/exoplayer2/Player$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->i:Z

    new-instance p2, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference$b;

    invoke-direct {p2, p0}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference$b;-><init>(Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;)V

    iput-object p2, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->j:Lcom/google/android/exoplayer2/Player$Listener;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->a:Landroid/content/Context;

    const p1, 0x7f0e043d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic d(Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->b:Landroid/view/View;

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    const-string v0, "ExoPlayerDemo"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v1
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    new-instance v2, Lcom/miui/securityscan/ui/main/a;

    invoke-direct {v2, v0}, Lcom/miui/securityscan/ui/main/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->j:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const v1, 0x7f110019

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v2, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    invoke-static {v0, v2}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->e(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->g:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->k:Ljava/lang/String;

    const-string v2, "get mediaSource error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    iput-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->h:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iget-object v2, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->g:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->e:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->e:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShutterBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->e:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->c:Z

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->d:Landroid/view/ViewStub;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->i:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->f()V

    invoke-virtual {p0, v1}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->g(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->h:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->k:Ljava/lang/String;

    const-string v2, "start play error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference$a;-><init>(Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b0654

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->b:Landroid/view/View;

    const v0, 0x7f0b0d75

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->d:Landroid/view/ViewStub;

    iget-boolean p1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->i:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/model/SecurityProtectionVideoPreference;->h()V

    :cond_1
    return-void
.end method
