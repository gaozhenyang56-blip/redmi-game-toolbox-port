.class Lcom/miui/gamebooster/customview/AuditionView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/customview/AuditionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/AuditionView;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;Lcom/miui/gamebooster/customview/AuditionView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/AuditionView$j;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    return-void
.end method

.method private a()I
    .locals 2

    invoke-static {}, La8/g0;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->k(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->k(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->e(Lcom/miui/gamebooster/customview/AuditionView;)Z

    move-result v0

    const/16 v1, 0x3e80

    const-string v2, "AuditionView"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "selectVoiceEffect id error"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    :goto_0
    sget-boolean v5, Luf/a;->a:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "effectid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v3}, Lo8/k;->U(III)I

    :cond_1
    iget-object v5, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v5, v0}, Lcom/miui/gamebooster/customview/AuditionView;->f(Lcom/miui/gamebooster/customview/AuditionView;Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->g(Lcom/miui/gamebooster/customview/AuditionView;)Z

    move-result v0

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v8}, Lcom/miui/gamebooster/customview/AuditionView;->k(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-static {v0, v7}, Lcom/miui/gamebooster/customview/AuditionView;->j(Lcom/miui/gamebooster/customview/AuditionView;I)I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v7, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/AuditionView;->k(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v7

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView$j;->a()I

    move-result v8

    invoke-virtual {v0, v7, v8, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_3
    const/4 v0, 0x2

    invoke-static {v1, v6, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    new-instance v14, Landroid/media/AudioTrack;

    iget-object v7, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/AuditionView;->k(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v8

    const/16 v9, 0x3e80

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v13, 0x1

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-static {v1, v14}, Lcom/miui/gamebooster/customview/AuditionView;->m(Lcom/miui/gamebooster/customview/AuditionView;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7}, Landroid/media/AudioTrack;->setVolume(F)I

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->d(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$i;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->n(Lcom/miui/gamebooster/customview/AuditionView;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->o(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->p(Lcom/miui/gamebooster/customview/AuditionView;)Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->o(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    if-ne v7, v5, :cond_4

    iget-object v7, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v1, v4, v8}, Landroid/media/AudioTrack;->write([SII)I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->o(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v7, "tracker write error"

    invoke-static {v2, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v1

    invoke-virtual {v1}, Lo8/k;->r()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->o(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1, v3}, Lcom/miui/gamebooster/customview/AuditionView;->q(Lcom/miui/gamebooster/customview/AuditionView;Z)Z

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->d(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$i;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->g(Lcom/miui/gamebooster/customview/AuditionView;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->r(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v1

    invoke-virtual {v0, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->s(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v1

    invoke-virtual {v0, v4, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->k(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/customview/AuditionView$j;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v2}, Lcom/miui/gamebooster/customview/AuditionView;->i(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_7
    return-void
.end method
