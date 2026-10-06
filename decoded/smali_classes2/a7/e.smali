.class public La7/e;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/gamebooster/service/w;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 1

    invoke-direct {p0}, La7/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La7/e;->d:I

    iput-object p1, p0, La7/e;->a:Landroid/content/Context;

    iput-object p2, p0, La7/e;->b:Lcom/miui/gamebooster/service/w;

    const-string p1, "android.provider.MiuiSettings$ScreenEffect"

    const-string p2, "GAME_MODE"

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, La7/e;->f:Ljava/lang/String;

    :cond_0
    const-string p2, "GAME_HDR_LEVEL"

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, La7/e;->g:Ljava/lang/String;

    :cond_1
    const-string p2, "GAME_MODE_ENABLE_HDR"

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, La7/e;->h:I

    :cond_2
    const-string p2, "GAME_MODE_DISABLE_EYECARE"

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, La7/e;->i:I

    :cond_3
    return-void
.end method

.method private g()Z
    .locals 1

    invoke-static {}, La8/r;->c()Z

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFeatureFromDB : packageUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , boosterPkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizedService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, La7/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, La8/j0;->j(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "settings_hdr"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/e;->d:I

    const-string p1, "settings_4d"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v3, p2

    :cond_0
    iput-boolean v3, p0, La7/e;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFeatureFromDB hdrDBValue = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La7/e;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  , is4dSupported = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, La7/e;->e:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, La7/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La7/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, La7/e;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private j(Z)V
    .locals 8

    const-string v0, "audio_game_4D_switch="

    invoke-static {}, Lo6/b;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioParameters is4dSupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, La7/e;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomizedService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p1, :cond_6

    iget-boolean v1, p0, La7/e;->e:Z

    if-eqz v1, :cond_6

    :cond_1
    :try_start_0
    invoke-static {}, Lo6/b;->b()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, La7/e;->b:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, La7/e;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "on"

    const-string v5, "off"

    if-eqz p1, :cond_3

    move-object v6, v4

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, La7/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "audio_game_4d"

    if-eqz p1, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    const/4 v7, -0x2

    invoke-static {v1, v3, v6, v7}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoosterService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private k()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->G(Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHDRFeature hdrValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, La7/e;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isCloseReadingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", gameMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La7/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mGameModeDisableEyecare = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, La7/e;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CustomizedService"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, La7/e;->d:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, La7/e;->g()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, La7/e;->h:I

    if-eqz v0, :cond_1

    iget v0, p0, La7/e;->i:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, La7/e;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, La7/e;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, La7/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, La7/e;->g:Ljava/lang/String;

    iget v5, p0, La7/e;->d:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, La7/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, La7/e;->f:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateHdrOld:  gameModeKey : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La7/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", gameHdrKey : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La7/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", gameModeValue = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gameHdrValue = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La7/e;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mGameModeEnableHdr = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La7/e;->h:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La7/e;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mGameModeEnableHdr = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La7/e;->h:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v1, p0, La7/e;->d:I

    iget-object v4, p0, La7/e;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/gamebooster/service/w;->z(Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, v1, v4}, La7/e;->l(II)V

    if-eqz v0, :cond_4

    iget-object v0, p0, La7/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, La7/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, La7/e;->f:Ljava/lang/String;

    iget v4, p0, La7/e;->i:I

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHdr by new way. gameMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La7/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La7/e;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, La7/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, La7/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, La7/e;->f:Ljava/lang/String;

    iget v2, p0, La7/e;->i:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    invoke-direct {p0}, La7/e;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, La7/e;->d:I

    if-nez v0, :cond_7

    iget-object v1, p0, La7/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/service/w;->z(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, La7/e;->l(II)V

    :cond_7
    return-void
.end method

.method private l(II)V
    .locals 1

    iget-object v0, p0, La7/e;->b:Lcom/miui/gamebooster/service/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, La8/r;->d(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "CustomizedService"

    const-string p2, "setHdrValueNew: mManager= null , skip set!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, La7/e;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, La8/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, La7/e;->i()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La7/e;->j(Z)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    invoke-static {}, La8/g0;->v()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, La7/e;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La7/e;->b:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La7/e;->b:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->E()I

    move-result v1

    invoke-direct {p0, v0, v1}, La7/e;->h(Ljava/lang/String;I)V

    invoke-static {}, La8/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, La7/e;->k()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, La7/e;->j(Z)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La7/e;->c:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public f()V
    .locals 1

    invoke-static {}, La8/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, La7/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, La7/e;->l(II)V

    :cond_0
    return-void
.end method
