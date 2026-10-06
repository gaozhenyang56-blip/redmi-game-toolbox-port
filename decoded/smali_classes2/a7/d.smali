.class public La7/d;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/gamebooster/service/w;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:La7/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 1

    invoke-direct {p0}, La7/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La7/d;->d:I

    iput v0, p0, La7/d;->e:I

    iput v0, p0, La7/d;->f:I

    iput v0, p0, La7/d;->g:I

    iput v0, p0, La7/d;->h:I

    iput v0, p0, La7/d;->k:I

    iput-object p1, p0, La7/d;->b:Landroid/content/Context;

    iput-object p2, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-static {}, La8/b;->u()Z

    move-result p1

    iput-boolean p1, p0, La7/d;->i:Z

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1}, La8/b;->v()Z

    move-result p1

    iput-boolean p1, p0, La7/d;->j:Z

    return-void
.end method

.method private f()I
    .locals 1

    iget-object v0, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->L()Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

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

    const-string v1, "CompetitionModeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, La7/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, La8/j0;->j(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "settings_gs"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/d;->d:I

    const-string p1, "settings_ts"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/d;->e:I

    iget-boolean p1, p0, La7/d;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "settings_op_stability"

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/d;->g:I

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, La7/d;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "settings_sensitivity"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/d;->f:I

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/d;->g:I

    const-string p1, "settings_touch_mode"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/d;->h:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x6

    iput p1, p0, La7/d;->h:I

    :cond_1
    :goto_0
    const-string p1, "settings_edge"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, La7/d;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFeatureFromDB tmode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La7/d;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tt0="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La7/d;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tt1="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La7/d;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tt2="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La7/d;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tt3="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La7/d;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tedge="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La7/d;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_2
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private i()V
    .locals 3

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-direct {p0}, La7/d;->f()I

    move-result v1

    invoke-static {}, La8/b;->d()La8/b;

    sget v2, La8/b;->d:I

    invoke-virtual {v0, v1, v2}, La8/b;->w(II)Z

    return-void
.end method

.method private j(Z)V
    .locals 9

    const-string v0, "audio_game_sound_mode_switch="

    const-string v1, "audio_game_sound_effect_switch="

    invoke-static {}, La8/g0;->q()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, La8/g0;->r()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, La7/d;->b:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-static {}, La8/g0;->r()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "CompetitionModeService"

    const-string v5, "="

    const-string v6, "audio_game_package_name"

    const-string v7, "on;"

    const-string v8, "off;"

    if-eqz v3, :cond_3

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    move-object v3, v7

    goto :goto_0

    :cond_1
    move-object v3, v8

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v8

    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    move-object v3, v7

    goto :goto_3

    :cond_4
    move-object v3, v8

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v7, v8

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoosterService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, La7/d;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, La7/d;->o()V

    :cond_0
    iget-boolean v0, p0, La7/d;->i:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, La7/d;->n()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, La7/d;->m()V

    :goto_0
    sget v0, La8/b;->h:I

    iget v1, p0, La7/d;->k:I

    invoke-direct {p0, v0, v1}, La7/d;->l(II)V

    return-void
.end method

.method private l(II)V
    .locals 4

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-direct {p0}, La7/d;->f()I

    move-result v1

    invoke-virtual {v0, v1, p1}, La8/b;->i(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    invoke-virtual {v0, v1, p1, v3}, La8/b;->A(III)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setITouchFeatureSingle: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\tvalue="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\tdef="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CompetitionModeService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private m()V
    .locals 2

    invoke-static {}, La8/b;->d()La8/b;

    sget v0, La8/b;->f:I

    iget v1, p0, La7/d;->d:I

    invoke-direct {p0, v0, v1}, La7/d;->l(II)V

    sget v0, La8/b;->g:I

    iget v1, p0, La7/d;->e:I

    invoke-direct {p0, v0, v1}, La7/d;->l(II)V

    return-void
.end method

.method private n()V
    .locals 6

    invoke-static {}, La8/b;->d()La8/b;

    iget v0, p0, La7/d;->h:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, La7/d;->l(II)V

    invoke-direct {p0, v4, v0}, La7/d;->l(II)V

    invoke-direct {p0, v2, v0}, La7/d;->l(II)V

    :goto_0
    invoke-direct {p0, v1, v0}, La7/d;->l(II)V

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    const/4 v0, 0x0

    const-string v1, "key_currentbooster_pkg_uid"

    invoke-static {v1, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const/4 v1, 0x6

    invoke-static {v0}, La8/b;->r(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    iget v0, p0, La7/d;->d:I

    invoke-direct {p0, v3, v0}, La7/d;->l(II)V

    iget v0, p0, La7/d;->e:I

    invoke-direct {p0, v4, v0}, La7/d;->l(II)V

    iget v0, p0, La7/d;->f:I

    invoke-direct {p0, v2, v0}, La7/d;->l(II)V

    iget v0, p0, La7/d;->g:I

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private o()V
    .locals 2

    iget v0, p0, La7/d;->d:I

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, La7/d;->l(II)V

    iget v0, p0, La7/d;->g:I

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, La7/d;->l(II)V

    return-void
.end method

.method private p(Z)V
    .locals 0

    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method private q(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "gb_function_user_auto_sync"

    if-eqz p1, :cond_0

    invoke-direct {p0}, La7/d;->g()Z

    move-result p1

    invoke-static {v1, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, La7/d;->p(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, La7/d;->g()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, La7/d;->p(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, La7/d;->a:Z

    const-string v1, "GameBoosterService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, La7/d;->j(Z)V

    iget-object v0, p0, La7/d;->m:La7/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La7/n;->l()V

    :cond_0
    iget-object v0, p0, La7/d;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lp6/a;->a(Landroid/content/Context;Z)V

    invoke-static {v2}, La8/j1;->a(I)V

    iget-boolean v0, p0, La7/d;->l:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, La7/d;->i()V

    :cond_1
    const-string v0, "mIsNetPriority...stop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "mIsAutoSync...stop "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, La7/d;->q(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 5

    iget-boolean v0, p0, La7/d;->a:Z

    const-string v1, "GameBoosterService"

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Lm6/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, La7/d;->j(Z)V

    :cond_0
    invoke-static {}, Lm6/a;->n()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    new-instance v0, La7/n;

    iget-object v4, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-direct {v0, v4}, La7/n;-><init>(Lcom/miui/gamebooster/service/w;)V

    iput-object v0, p0, La7/d;->m:La7/n;

    invoke-virtual {v0}, La7/n;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La7/d;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lp6/a;->a(Landroid/content/Context;Z)V

    :cond_1
    iget-object v0, p0, La7/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v3}, Lm6/a;->O(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lm6/a;->C(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, La8/j1;->a(I)V

    const-string v0, "mIsNetPriority...start "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lm6/a;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, La8/g0;->W()Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v2

    :cond_4
    iput-boolean v3, p0, La7/d;->l:Z

    if-eqz v3, :cond_5

    invoke-direct {p0}, La7/d;->f()I

    move-result v0

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v3

    sget v4, La8/b;->d:I

    invoke-virtual {v3, v0, v4, v2}, La8/b;->A(III)Z

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v3

    sget v4, La8/b;->e:I

    invoke-virtual {v3, v0, v4, v2}, La8/b;->A(III)Z

    iget-object v0, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, La7/d;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/w;->E()I

    move-result v3

    invoke-direct {p0, v0, v3}, La7/d;->h(Ljava/lang/String;I)V

    invoke-direct {p0}, La7/d;->k()V

    :cond_5
    const-string v0, "mIsAutoSync...start "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, La7/d;->q(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La7/d;->a:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
