.class public La8/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, La8/t;->y(Z)V

    invoke-static {}, La8/t;->r()V

    invoke-static {}, La8/t;->q()V

    const-string v0, "SoundEffecUtils"

    const-string v1, "disableSoundEffectV1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b()V
    .locals 3

    invoke-static {}, La8/t;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, La8/t;->v(I)V

    invoke-static {}, Lj8/k;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-static {v1}, La8/t;->A(I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableSoundEffectV2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundEffecUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static c()V
    .locals 2

    invoke-static {}, La8/t;->f()I

    move-result v0

    invoke-static {v0}, Li8/c;->f0(I)V

    const/4 v0, 0x1

    invoke-static {v0}, La8/t;->y(Z)V

    invoke-static {}, Li8/c;->h()I

    move-result v0

    invoke-static {v0}, La8/t;->v(I)V

    invoke-static {}, Lj8/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li8/c;->w()I

    move-result v0

    invoke-static {v0}, La8/t;->A(I)V

    :cond_0
    const-string v0, "SoundEffecUtils"

    const-string v1, "enableSoundEffectV1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d()V
    .locals 3

    invoke-static {}, La8/t;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li8/c;->h()I

    move-result v1

    invoke-static {v1}, La8/t;->v(I)V

    invoke-static {}, Lj8/k;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Li8/c;->w()I

    move-result v1

    invoke-static {v1}, La8/t;->A(I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSoundEffectV2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundEffecUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e()V
    .locals 3

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitVideoBoxMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La8/t;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportFWAudio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundEffecUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/c1;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, La8/c1;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, La8/c1;->e(Z)V

    :cond_0
    invoke-static {}, La8/t;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, La8/z1;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, La8/z1;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->n(I)V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->o(I)V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->m(Z)V

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->h()V

    :goto_0
    return-void
.end method

.method public static f()V
    .locals 3

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoBoxMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La8/t;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportFWAudio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundEffecUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-static {}, La8/c1;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, La8/c1;->e(Z)V

    :cond_0
    invoke-static {}, La8/t;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, La8/t;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_1

    invoke-static {}, La8/z1;->d()V

    goto :goto_0

    :cond_1
    invoke-static {}, La8/z1;->c()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->m(Z)V

    invoke-static {}, Li8/c;->n()I

    move-result v0

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->n(I)V

    invoke-static {}, Li8/c;->o()I

    move-result v0

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->o(I)V

    :cond_4
    :goto_0
    return-void
.end method
