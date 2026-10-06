.class public Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e5

    iput v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mInterval:I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xd

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v6, 0x7f110013

    invoke-virtual {v5, p1, v6, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v6, 0x7f11001e

    invoke-virtual {v5, p1, v6, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f11001d

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f110008

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f110007

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f11001b

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f11001a

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f110004

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f110010

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f11001c

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f110011

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f110002

    invoke-virtual {v4, p1, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110003

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110025

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;I)I
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundId:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)Landroid/media/SoundPool;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)I
    .locals 0

    iget p0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mInterval:I

    return p0
.end method

.method private addToPlayList1(II)V
    .locals 10

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lez p2, :cond_b

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/16 v5, 0xb

    const/4 v6, 0x1

    const/16 v7, 0xa

    if-gt p2, v7, :cond_3

    iget-object v7, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    iget-object v8, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1
    if-ne v6, p1, :cond_2

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-ne v4, p1, :cond_a

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3
    div-int/lit8 v8, p2, 0xa

    rem-int/lit8 v9, p2, 0xa

    if-eqz v1, :cond_7

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-ne v6, p1, :cond_5

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_5
    if-ne v4, p1, :cond_6

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    if-ne v6, v8, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    if-nez v9, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    :cond_a
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private addToPlayList2()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private playSound()V
    .locals 4

    new-instance v0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound$1;-><init>(Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public playGuide1()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->stop()V

    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->addToPlayList1(II)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->playSound()V

    return-void
.end method

.method public playGuide2()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->stop()V

    const/16 v0, 0x500

    iput v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mInterval:I

    invoke-direct {p0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->addToPlayList2()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->playSound()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
