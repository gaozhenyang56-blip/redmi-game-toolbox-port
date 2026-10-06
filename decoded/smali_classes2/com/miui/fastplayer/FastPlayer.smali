.class public Lcom/miui/fastplayer/FastPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;
    }
.end annotation


# static fields
.field public static final BLUR_EFFECT:I = 0x8

.field public static final BRIGHTNESS_EFFECT:I = 0x7

.field public static final EVENT_END_PLAYER:I = 0x6

.field public static final EVENT_END_STREAM:I = 0x5

.field public static final EVENT_FIRST_FRAME:I = 0x2

.field public static final EVENT_OPENDECODER_FAIL:I = 0x9

.field public static final EVENT_PAUSE:I = 0x4

.field public static final EVENT_READY:I = 0x1

.field public static final EVENT_RUN:I = 0x3

.field public static final EVENT_SOFTDECODER:I = 0x7

.field public static final EVENT_START:I = 0xa

.field public static final EVENT_UNDEFINED:I = 0x0

.field public static final EVENT_UNSUPPORT:I = 0x8

.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_CAPTURE_FRAMERATE:I = 0x19

.field public static final METADATA_KEY_CAPTURE_ORIGIN_TRACK:I = 0x1a

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_CHANNELS:I = 0x65

.field public static final METADATA_KEY_CODEC_NAME:I = 0x67

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_COM_ANDROID_MANUFACTURER:I = 0x38

.field public static final METADATA_KEY_COM_ANDROID_MODEL:I = 0x39

.field public static final METADATA_KEY_COM_ANDROID_VERSION:I = 0x37

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_EXIST_MI_RECORD_LOG:I = 0x3a

.field public static final METADATA_KEY_EXIST_MI_RECORD_MIMOVIE:I = 0x3b

.field public static final METADATA_KEY_EXIST_MI_SUBTITLE:I = 0x35

.field public static final METADATA_KEY_EXIST_MI_VIDEO_TAGS:I = 0x36

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LANGUAGE:I = 0x66

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_NUM_AUDIO_TRACKS:I = 0x3d

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_NUM_VIDEO_TRACKS:I = 0x33

.field public static final METADATA_KEY_PROFILE:I = 0x68

.field public static final METADATA_KEY_REAL_8K_VIDEO:I = 0x3e

.field public static final METADATA_KEY_REAL_FRAMERATE:I = 0x32

.field public static final METADATA_KEY_SAMPLERATE:I = 0x64

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_VIDEO_DURATION:I = 0x3c

.field public static final METADATA_KEY_VIDEO_HDR:I = 0x34

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final MORUGLASS_EFFECT:I = 0x5

.field public static final MORU_COMGLASS_EFFECT:I = 0xb

.field public static final MORU_PRISMGLASS_EFFECT:I = 0xa

.field public static final PLAYER_END:I = 0x4

.field public static final PLAYER_PAUSE:I = 0x3

.field public static final PLAYER_READY:I = 0x1

.field public static final PLAYER_RUN:I = 0x2

.field public static final PLAYER_UNDEFINED:I = 0x0

.field public static final POOR_BLUR_EFFECT:I = 0x9

.field public static final RECTGLASS_EFFECT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FastPlayer"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private mDataSourceId:I

.field private mFrameRate:F

.field private mHeight:I

.field private mIsPlay:Z

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMediaEncoder:Lcom/miui/fastplayer/a;

.field private mNativeContext:J

.field private mOutputPath:Ljava/lang/String;

.field private mPauseRender:Z

.field private mRelease:Z

.field private mRenderMode:I

.field private mRenderPic:Z

.field private mSTMatrix:[F

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceInput:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "miffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "fastplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/fastplayer/FastPlayer;->native_init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load the library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mRelease:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mMediaEncoder:Lcom/miui/fastplayer/a;

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/fastplayer/FastPlayer;->mFrameRate:F

    iput v0, p0, Lcom/miui/fastplayer/FastPlayer;->mHeight:I

    iput v0, p0, Lcom/miui/fastplayer/FastPlayer;->mWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/fastplayer/FastPlayer;->mDataSourceId:I

    iput-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mSurfaceInput:Landroid/view/Surface;

    iput v0, p0, Lcom/miui/fastplayer/FastPlayer;->mRenderMode:I

    iput-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/fastplayer/FastPlayer;->mCondition:Ljava/util/concurrent/locks/Condition;

    iput-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mIsPlay:Z

    iput-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mOutputPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mPauseRender:Z

    iput-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mRenderPic:Z

    iput-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mSurface:Landroid/view/Surface;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mSTMatrix:[F

    :try_start_0
    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->native_setup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private HandleDataThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/fastplayer/FastPlayer$a;

    invoke-direct {v1, p0}, Lcom/miui/fastplayer/FastPlayer$a;-><init>(Lcom/miui/fastplayer/FastPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private native _addDataSource(Ljava/io/FileDescriptor;JJIZ)V
.end method

.method private native _addDataSource(Ljava/lang/String;I)V
.end method

.method private native _addDataSource(Ljava/lang/String;Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method private native _addShaderBitmap(Landroid/graphics/Bitmap;I)V
.end method

.method private native _addShaderSource(Ljava/lang/String;I)V
.end method

.method private native _disableShader(Z)V
.end method

.method private native _extractMetadata(II)Ljava/lang/String;
.end method

.method private native _extractMetadata(III)Ljava/lang/String;
.end method

.method private native _getCurrentPosition()J
.end method

.method private native _getPlayerMode()I
.end method

.method private final native _native_finalize()V
.end method

.method private native _pause()I
.end method

.method private native _playAudio(Z)V
.end method

.method private native _removeDataSource(I)V
.end method

.method private native _seekto(FJIZ)I
.end method

.method private native _setBlurEffectUniform([F[F)V
.end method

.method private native _setBrightnessEffect(Z)V
.end method

.method private native _setBrightnessEffectUniform([FFII)V
.end method

.method private native _setDecoderMode(I)I
.end method

.method private native _setHue(F)V
.end method

.method private native _setLoop(ZI)I
.end method

.method private native _setMoruGlassEffectUniform(FFFFFFFFFFFFFFFFFF)V
.end method

.method private native _setMoruPrismGlassEffectUniform(FFFFFFFFFFFFFFFFFFF)V
.end method

.method private native _setOpenGLSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;I)I
.end method

.method private native _setPlayTime(J)I
.end method

.method private native _setPlayerSpeed(FI)I
.end method

.method private native _setPoorBlurEffectUniform([FFII)V
.end method

.method private native _setRectGlassEffectUniform(FFFFFFFF)V
.end method

.method private native _setState(F)V
.end method

.method private native _setSurface(Landroid/view/Surface;)I
.end method

.method private native _setUseMatrix([F)I
.end method

.method private native _setVideoClipping(JJI)V
.end method

.method private native _setVideoScalingMode(III)V
.end method

.method private native _setVolume(I)V
.end method

.method private native _set_callback(Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;)V
.end method

.method private native _start()I
.end method

.method static synthetic access$000(Lcom/miui/fastplayer/FastPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/fastplayer/FastPlayer;->mRelease:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/fastplayer/FastPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/fastplayer/FastPlayer;->mIsPlay:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/fastplayer/FastPlayer;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/fastplayer/FastPlayer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/FastPlayer;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/fastplayer/FastPlayer;)F
    .locals 0

    iget p0, p0, Lcom/miui/fastplayer/FastPlayer;->mFrameRate:F

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/fastplayer/FastPlayer;F)F
    .locals 0

    iput p1, p0, Lcom/miui/fastplayer/FastPlayer;->mFrameRate:F

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/fastplayer/FastPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/fastplayer/FastPlayer;->mDataSourceId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/fastplayer/FastPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/fastplayer/FastPlayer;->mHeight:I

    return p0
.end method

.method static synthetic access$1302(Lcom/miui/fastplayer/FastPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/miui/fastplayer/FastPlayer;->mHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/fastplayer/FastPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/fastplayer/FastPlayer;->mWidth:I

    return p0
.end method

.method static synthetic access$1402(Lcom/miui/fastplayer/FastPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/miui/fastplayer/FastPlayer;->mWidth:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/fastplayer/FastPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->setWaitMode2Player(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/fastplayer/FastPlayer;)Lcom/miui/fastplayer/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mMediaEncoder:Lcom/miui/fastplayer/a;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/miui/fastplayer/FastPlayer;Lcom/miui/fastplayer/a;)Lcom/miui/fastplayer/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/FastPlayer;->mMediaEncoder:Lcom/miui/fastplayer/a;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/miui/fastplayer/FastPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mOutputPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/fastplayer/FastPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/fastplayer/FastPlayer;->mPauseRender:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/miui/fastplayer/FastPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/fastplayer/FastPlayer;->mPauseRender:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/fastplayer/FastPlayer;)[F
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mSTMatrix:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/fastplayer/FastPlayer;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mSurfaceInput:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/fastplayer/FastPlayer;[F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->renderPicture([F)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/fastplayer/FastPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/fastplayer/FastPlayer;->mRenderMode:I

    return p0
.end method

.method static synthetic access$500(Lcom/miui/fastplayer/FastPlayer;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->gettextureid()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/fastplayer/FastPlayer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/FastPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/fastplayer/FastPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/fastplayer/FastPlayer;->mRenderPic:Z

    return p0
.end method

.method static synthetic access$802(Lcom/miui/fastplayer/FastPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/fastplayer/FastPlayer;->mRenderPic:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/miui/fastplayer/FastPlayer;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private native gettextureid()I
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method

.method private native nativerelease()V
.end method

.method private native renderPicture([F)I
.end method

.method private setMoruPrismGlassEffectUniform(FFFFFFFFFFFFFFFFFFF)V
    .locals 2

    :try_start_0
    invoke-direct/range {p0 .. p19}, Lcom/miui/fastplayer/FastPlayer;->_setMoruPrismGlassEffectUniform(FFFFFFFFFFFFFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private native setWaitMode2Player(Z)V
.end method


# virtual methods
.method public addDataSource(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 11

    const-string v0, "open fd failed, finally!"

    const-string v1, "FastPlayer"

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "r"

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "open fd failed, fd is NULL!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v10, 0x1

    move-object v3, p0

    move v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/miui/fastplayer/FastPlayer;->_addDataSource(Ljava/io/FileDescriptor;JJIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    const/4 v10, 0x1

    move-object v3, p0

    move v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/miui/fastplayer/FastPlayer;->_addDataSource(Ljava/io/FileDescriptor;JJIZ)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p1, "open fd failed, IOException!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    goto :goto_1

    :catch_1
    :try_start_3
    const-string p1, "open fd failed, SecurityException!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/fastplayer/FastPlayer;->mDataSourceId:I

    return-void

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addDataSource(Ljava/io/FileDescriptor;I)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Ljava/io/FileDescriptor;JJI)V

    iput p2, p0, Lcom/miui/fastplayer/FastPlayer;->mDataSourceId:I

    return-void
.end method

.method public addDataSource(Ljava/io/FileDescriptor;JJI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/miui/fastplayer/FastPlayer;->_addDataSource(Ljava/io/FileDescriptor;JJIZ)V

    iput p6, p0, Lcom/miui/fastplayer/FastPlayer;->mDataSourceId:I

    return-void
.end method

.method public addDataSource(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_addDataSource(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addDataSource(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fastplayer/FastPlayer;->_addDataSource(Ljava/lang/String;Ljava/util/Map;I)V

    iput p3, p0, Lcom/miui/fastplayer/FastPlayer;->mDataSourceId:I

    return-void
.end method

.method public addShaderBitmap(Landroid/content/Context;II)I
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FastPlayer"

    const-string p2, "decode bitmap failed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/miui/fastplayer/FastPlayer;->addShaderBitmap(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v1
.end method

.method public addShaderBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_addShaderBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addShaderSource(Landroid/content/Context;II)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p3, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {p3, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p3, ""

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3, p2}, Lcom/miui/fastplayer/FastPlayer;->addShaderSource(Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "read shader source failed"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "IOException occurred"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "can not get InputStream"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string p2, "UnsupportedEncodingException occrred"

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addShaderSource(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_addShaderSource(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disableShader(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_disableShader(Z)V

    return-void
.end method

.method public extractMetadata(II)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_extractMetadata(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public extractMetadata(III)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fastplayer/FastPlayer;->_extractMetadata(III)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->_getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayerMode()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->_getPlayerMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final native_finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->_native_finalize()V

    return-void
.end method

.method public pause()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->_pause()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public pauseRenderFrame()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mPauseRender:Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public playAudio(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_playAudio(Z)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mRelease:Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->nativerelease()V

    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mMediaEncoder:Lcom/miui/fastplayer/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/fastplayer/a;->o()V

    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mMediaEncoder:Lcom/miui/fastplayer/a;

    invoke-virtual {v0}, Lcom/miui/fastplayer/a;->k()V

    :cond_0
    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    return-void

    :goto_1
    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeDataSource(I)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_removeDataSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public seekto(FJI)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/fastplayer/FastPlayer;->seekto(FJIZ)I

    move-result p1

    return p1
.end method

.method public seekto(FJIZ)I
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/miui/fastplayer/FastPlayer;->_seekto(FJIZ)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setBlurEffectUniform([F[F)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_setBlurEffectUniform([F[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBrightnessEffect(Z)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_setBrightnessEffect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBrightnessEffectUniform([FFII)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/fastplayer/FastPlayer;->_setBrightnessEffectUniform([FFII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCallback(Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->set_callback(Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;)V

    return-void
.end method

.method public setDecoderMode(I)I
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_setDecoderMode(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setHue(F)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_setHue(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setLoop(ZI)I
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_setLoop(ZI)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setMoruComGlassEffectUniform(FFF[F[F[F[F[F)V
    .locals 27

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    array-length v5, v1

    if-ne v5, v6, :cond_1

    array-length v5, v2

    if-ne v5, v6, :cond_1

    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    array-length v5, v4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    aget v11, v0, v5

    const/4 v7, 0x1

    aget v12, v0, v7

    aget v13, v0, v6

    const/4 v8, 0x3

    aget v14, v0, v8

    aget v15, v1, v5

    aget v16, v1, v7

    aget v17, v1, v6

    aget v18, v1, v8

    aget v19, v2, v5

    aget v20, v2, v7

    aget v21, v2, v6

    aget v22, v2, v8

    aget v23, v3, v5

    aget v24, v3, v7

    aget v25, v4, v5

    aget v26, v4, v7

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v7 .. v26}, Lcom/miui/fastplayer/FastPlayer;->setMoruPrismGlassEffectUniform(FFFFFFFFFFFFFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string v0, "FastPlayer"

    const-string v1, "sMoruPrismGlass, Array input error, please check it"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMoruGlassEffectUniform(FFFFFFFFFFFFFFFFFF)V
    .locals 2

    :try_start_0
    invoke-direct/range {p0 .. p18}, Lcom/miui/fastplayer/FastPlayer;->_setMoruGlassEffectUniform(FFFFFFFFFFFFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMoruGlassEffectUniform(FF[F[F[F[F[F)V
    .locals 26

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    array-length v5, v1

    if-ne v5, v6, :cond_1

    array-length v5, v2

    if-ne v5, v6, :cond_1

    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    array-length v5, v4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    aget v10, v0, v5

    const/4 v7, 0x1

    aget v11, v0, v7

    aget v12, v0, v6

    const/4 v8, 0x3

    aget v13, v0, v8

    aget v14, v1, v5

    aget v15, v1, v7

    aget v16, v1, v6

    aget v17, v1, v8

    aget v18, v2, v5

    aget v19, v2, v7

    aget v20, v2, v6

    aget v21, v2, v8

    aget v22, v3, v5

    aget v23, v3, v7

    aget v24, v4, v5

    aget v25, v4, v7

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v7 .. v25}, Lcom/miui/fastplayer/FastPlayer;->setMoruGlassEffectUniform(FFFFFFFFFFFFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string v0, "FastPlayer"

    const-string v1, " Array input error, please check it"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMoruPrismGlassEffectUniform(FFF[F[F[F[F[F)V
    .locals 27

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    array-length v5, v1

    if-ne v5, v6, :cond_1

    array-length v5, v2

    if-ne v5, v6, :cond_1

    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    array-length v5, v4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    aget v11, v0, v5

    const/4 v7, 0x1

    aget v12, v0, v7

    aget v13, v0, v6

    const/4 v8, 0x3

    aget v14, v0, v8

    aget v15, v1, v5

    aget v16, v1, v7

    aget v17, v1, v6

    aget v18, v1, v8

    aget v19, v2, v5

    aget v20, v2, v7

    aget v21, v2, v6

    aget v22, v2, v8

    aget v23, v3, v5

    aget v24, v3, v7

    aget v25, v4, v5

    aget v26, v4, v7

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v7 .. v26}, Lcom/miui/fastplayer/FastPlayer;->setMoruPrismGlassEffectUniform(FFFFFFFFFFFFFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string v0, "FastPlayer"

    const-string v1, "sMoruPrismGlass, Array input error, please check it"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOpenGLSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;I)I
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fastplayer/FastPlayer;->_setOpenGLSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public setPlayTime(J)I
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_setPlayTime(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setPlayerSpeed(FI)I
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/fastplayer/FastPlayer;->_setPlayerSpeed(FI)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setPoorBlurEffectUniform([FFII)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/fastplayer/FastPlayer;->_setPoorBlurEffectUniform([FFII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRectGlassEffectUniform(FFFFFFFF)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/miui/fastplayer/FastPlayer;->_setRectGlassEffectUniform(FFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRectGlassEffectUniform([F[F)V
    .locals 10

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    array-length v0, p2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget v2, p1, v0

    const/4 v1, 0x1

    aget v3, p1, v1

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget p1, p1, v6

    aget v0, p2, v0

    aget v7, p2, v1

    aget v8, p2, v4

    aget v9, p2, v6

    move-object v1, p0

    move v4, v5

    move v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v9}, Lcom/miui/fastplayer/FastPlayer;->_setRectGlassEffectUniform(FFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "FastPlayer"

    const-string p2, " Array input error, please check it"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setState(F)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_setState(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_setSurface(Landroid/view/Surface;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/fastplayer/FastPlayer;->setSurface(Landroid/view/Surface;ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;ILandroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/fastplayer/FastPlayer;->mSurfaceInput:Landroid/view/Surface;

    iput p2, p0, Lcom/miui/fastplayer/FastPlayer;->mRenderMode:I

    iput-object p3, p0, Lcom/miui/fastplayer/FastPlayer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/fastplayer/FastPlayer;->mIsPlay:Z

    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->HandleDataThread()V

    return-void
.end method

.method public setTranscodePath(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/FastPlayer;->mOutputPath:Ljava/lang/String;

    iput p2, p0, Lcom/miui/fastplayer/FastPlayer;->mRenderMode:I

    iput-object p3, p0, Lcom/miui/fastplayer/FastPlayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->HandleDataThread()V

    return-void
.end method

.method public setUseMatrix([F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_setUseMatrix([F)I

    return-void
.end method

.method public setVideoClipping(JJI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/fastplayer/FastPlayer;->_setVideoClipping(JJI)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 6

    const/16 v0, 0x18

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/fastplayer/FastPlayer;->extractMetadata(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x12

    invoke-virtual {p0, v2, v1}, Lcom/miui/fastplayer/FastPlayer;->extractMetadata(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13

    invoke-virtual {p0, v3, v1}, Lcom/miui/fastplayer/FastPlayer;->extractMetadata(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "FastPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoScalingMode, mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v2, v1}, Lcom/miui/fastplayer/FastPlayer;->_setVideoScalingMode(III)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/fastplayer/FastPlayer;->_setVideoScalingMode(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setVolume(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_setVolume(I)V

    return-void
.end method

.method public set_callback(Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/fastplayer/FastPlayer;->_set_callback(Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start()I
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/fastplayer/FastPlayer;->mPauseRender:Z

    invoke-direct {p0}, Lcom/miui/fastplayer/FastPlayer;->_start()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method
