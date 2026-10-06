.class public Lo8/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lo8/g;


# instance fields
.field private a:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo8/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo8/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized b()Lo8/g;
    .locals 2

    const-class v0, Lo8/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo8/g;->b:Lo8/g;

    if-nez v1, :cond_0

    new-instance v1, Lo8/g;

    invoke-direct {v1}, Lo8/g;-><init>()V

    sput-object v1, Lo8/g;->b:Lo8/g;

    :cond_0
    sget-object v1, Lo8/g;->b:Lo8/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p1, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VoiceEffectPlayer"

    const-string v1, "playUrl: error "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "VoiceEffectPlayer"

    const-string v0, "playUrl: invalid url"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lo8/f;

    invoke-direct {v0, p0, p1}, Lo8/f;-><init>(Lo8/g;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo8/g;->a:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
