.class public Lcom/miui/warningcenter/mijia/MijiaPlaySound;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/warningcenter/mijia/MijiaPlaySound;I)I
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mSoundId:I

    return p1
.end method


# virtual methods
.method public playSound(I)V
    .locals 4

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v0, Lcom/miui/warningcenter/mijia/MijiaPlaySound$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/mijia/MijiaPlaySound$1;-><init>(Lcom/miui/warningcenter/mijia/MijiaPlaySound;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->mSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    return-void
.end method
