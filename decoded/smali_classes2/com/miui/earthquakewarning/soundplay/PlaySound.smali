.class public Lcom/miui/earthquakewarning/soundplay/PlaySound;
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
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mInterval:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xf

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f110013

    invoke-virtual {v4, p1, v5, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f11001e

    invoke-virtual {v4, p1, v5, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f11001d

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110008

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110007

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f11001b

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f11001a

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110004

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110010

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f11001c

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110011

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110002

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110003

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    const v4, 0x7f110025

    invoke-virtual {v3, p1, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/soundplay/PlaySound;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/soundplay/PlaySound;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/soundplay/PlaySound;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/earthquakewarning/soundplay/PlaySound;)I
    .locals 0

    iget p0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mInterval:I

    return p0
.end method

.method static synthetic access$402(Lcom/miui/earthquakewarning/soundplay/PlaySound;I)I
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundId:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/earthquakewarning/soundplay/PlaySound;)Landroid/media/SoundPool;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method private addToPlayList(II)V
    .locals 11

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :goto_0
    const/16 v3, -0xb

    if-le v1, v3, :cond_d

    const/16 v3, 0xb

    if-ne v1, p2, :cond_0

    :goto_1
    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_0
    if-gtz v1, :cond_1

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    const/16 v5, 0xe

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_3
    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1
    const/16 v4, 0xd

    const/16 v5, 0xc

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0xa

    if-lez v1, :cond_4

    if-gt v1, v8, :cond_4

    iget-object v8, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v9, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-ne v7, p1, :cond_3

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    goto :goto_2

    :cond_3
    if-ne v6, p1, :cond_c

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_4
    const/16 v9, 0x63

    if-gt v1, v9, :cond_b

    div-int/lit8 v9, v1, 0xa

    rem-int/lit8 v10, v1, 0xa

    if-eqz v2, :cond_8

    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_5
    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    if-ne v7, p1, :cond_6

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_6
    if-ne v6, p1, :cond_7

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    :cond_7
    :goto_6
    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v0

    goto :goto_9

    :cond_8
    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    if-ne v7, v9, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_7
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    if-nez v10, :cond_a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8

    :cond_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_8
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v7

    goto :goto_9

    :cond_b
    iget-object v4, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mMusicId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    :goto_9
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private playSound()V
    .locals 4

    new-instance v0, Lcom/miui/earthquakewarning/soundplay/PlaySound$1;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/soundplay/PlaySound$1;-><init>(Lcom/miui/earthquakewarning/soundplay/PlaySound;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public play(IF)V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/miui/earthquakewarning/soundplay/PlaySound;->addToPlayList(II)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/miui/earthquakewarning/soundplay/PlaySound;->playSound()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/earthquakewarning/soundplay/PlaySound;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
