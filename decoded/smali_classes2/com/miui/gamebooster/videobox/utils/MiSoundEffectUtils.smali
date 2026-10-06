.class public Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils$MovieSurroundLevel;,
        Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils$MovieVocalLevel;
    }
.end annotation


# static fields
.field private static a:La8/h1;


# direct methods
.method private static a()V
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, La8/h1;

    invoke-direct {v0, v1, v1}, La8/h1;-><init>(II)V

    sput-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    invoke-virtual {v0}, La8/h1;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    invoke-virtual {v0}, La8/h1;->b()V

    new-instance v0, La8/h1;

    invoke-direct {v0, v1, v1}, La8/h1;-><init>(II)V

    sput-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 2

    const-string v0, "ro.vendor.audio.spk.stereo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vocal"

    invoke-static {v0}, Lj8/c;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, La8/t;->l()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "surround_level"

    invoke-static {v0}, Lj8/c;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ro.vendor.audio.surround.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lj8/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lj8/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vocal"

    invoke-static {v0}, Lj8/c;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ro.vendor.audio.vocal.support"

    invoke-static {v1, v0}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 2

    const-string v0, "ro.vendor.audio.surround.headphone.only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static g()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.misound.ACTION_3D_SURROUND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.misound"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static h()V
    .locals 4

    const-string v0, "MiSoundEffectUtils"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a()V

    sget-object v1, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    invoke-virtual {v1}, La8/h1;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static i(I)V
    .locals 1

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p0, "surround"

    invoke-static {p0, v0}, Lj8/c;->j(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->j(I)V

    :goto_1
    return-void
.end method

.method private static j(I)V
    .locals 3

    invoke-static {}, Lj8/m;->b()Z

    move-result v0

    const-string v1, "MiSoundEffectUtils"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq v0, p0, :cond_1

    :cond_0
    invoke-static {}, Lj8/m;->b()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set3dSurround: invalid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set3dSurround:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a()V

    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    invoke-virtual {v0, p0}, La8/h1;->c(I)V

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set3dSurround: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static k(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a()V

    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, La8/h1;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "MiSoundEffectUtils"

    const-string v1, "setHifiMode error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static l(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMiSoundEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiSoundEffectUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a()V

    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    invoke-virtual {v0, p0}, La8/h1;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "setMiSoundEnable error"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static m(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMovieModeEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiSoundEffectUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a()V

    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, La8/h1;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "setMovieModeEnable error"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static n(I)V
    .locals 3

    const-string v0, "MiSoundEffectUtils"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMovieSurroundLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lj8/k;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a()V

    sget-object v1, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    invoke-virtual {v1, p0}, La8/h1;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string v1, "setMovieSurroundLevel error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static o(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMovieVocalLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiSoundEffectUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a()V

    sget-object v0, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->a:La8/h1;

    invoke-virtual {v0, p0}, La8/h1;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "setMovieVocalLevel error"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
